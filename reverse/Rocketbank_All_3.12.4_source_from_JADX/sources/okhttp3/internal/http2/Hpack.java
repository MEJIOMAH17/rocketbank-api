package okhttp3.internal.http2;

import com.flurry.android.Constants;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import ru.rocketbank.core.model.provider.ProviderField;

final class Hpack {
    static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX;
    static final Header[] STATIC_HEADER_TABLE;

    static final class Reader {
        Header[] dynamicTable;
        int dynamicTableByteCount;
        int headerCount;
        private final List<Header> headerList;
        private final int headerTableSizeSetting;
        private int maxDynamicTableByteCount;
        int nextHeaderIndex;
        private final BufferedSource source;

        Reader(Source source) {
            this(source, (byte) 0);
        }

        private Reader(Source source, byte b) {
            this.headerList = new ArrayList();
            this.dynamicTable = new Header[(byte) 8];
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = 4096;
            this.maxDynamicTableByteCount = 4096;
            this.source = Okio.buffer(source);
        }

        private void adjustDynamicTableByteCount() {
            if (this.maxDynamicTableByteCount < this.dynamicTableByteCount) {
                if (this.maxDynamicTableByteCount == 0) {
                    Arrays.fill(this.dynamicTable, null);
                    this.nextHeaderIndex = this.dynamicTable.length - 1;
                    this.headerCount = 0;
                    this.dynamicTableByteCount = 0;
                    return;
                }
                evictToRecoverBytes(this.dynamicTableByteCount - this.maxDynamicTableByteCount);
            }
        }

        private int evictToRecoverBytes(int i) {
            int i2 = 0;
            if (i > 0) {
                for (int length = this.dynamicTable.length - 1; length >= this.nextHeaderIndex && i > 0; length--) {
                    i -= this.dynamicTable[length].hpackSize;
                    this.dynamicTableByteCount -= this.dynamicTable[length].hpackSize;
                    this.headerCount--;
                    i2++;
                }
                System.arraycopy(this.dynamicTable, this.nextHeaderIndex + 1, this.dynamicTable, (this.nextHeaderIndex + 1) + i2, this.headerCount);
                this.nextHeaderIndex += i2;
            }
            return i2;
        }

        final void readHeaders() throws IOException {
            while (!this.source.exhausted()) {
                int readByte = this.source.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                } else if ((readByte & 128) == 128) {
                    Header[] headerArr;
                    int i;
                    int i2;
                    StringBuilder stringBuilder;
                    readByte = readInt(readByte, 127) - 1;
                    if (readByte >= 0) {
                        headerArr = Hpack.STATIC_HEADER_TABLE;
                        if (readByte <= 60) {
                            i = 1;
                            if (i == 0) {
                                this.headerList.add(Hpack.STATIC_HEADER_TABLE[readByte]);
                            } else {
                                headerArr = Hpack.STATIC_HEADER_TABLE;
                                i2 = (this.nextHeaderIndex + 1) + (readByte - 61);
                                if (i2 < 0) {
                                    if (i2 >= this.dynamicTable.length) {
                                        this.headerList.add(this.dynamicTable[i2]);
                                    }
                                }
                                stringBuilder = new StringBuilder("Header index too large ");
                                stringBuilder.append(readByte + 1);
                                throw new IOException(stringBuilder.toString());
                            }
                        }
                    }
                    i = 0;
                    if (i == 0) {
                        headerArr = Hpack.STATIC_HEADER_TABLE;
                        i2 = (this.nextHeaderIndex + 1) + (readByte - 61);
                        if (i2 < 0) {
                            if (i2 >= this.dynamicTable.length) {
                                this.headerList.add(this.dynamicTable[i2]);
                            }
                        }
                        stringBuilder = new StringBuilder("Header index too large ");
                        stringBuilder.append(readByte + 1);
                        throw new IOException(stringBuilder.toString());
                    }
                    this.headerList.add(Hpack.STATIC_HEADER_TABLE[readByte]);
                } else if (readByte == 64) {
                    insertIntoDynamicTable$459e6471(new Header(Hpack.checkLowercase(readByteString()), readByteString()));
                } else if ((readByte & 64) == 64) {
                    insertIntoDynamicTable$459e6471(new Header(getName(readInt(readByte, 63) - 1), readByteString()));
                } else if ((readByte & 32) == 32) {
                    this.maxDynamicTableByteCount = readInt(readByte, 31);
                    if (this.maxDynamicTableByteCount >= 0) {
                        if (this.maxDynamicTableByteCount <= 4096) {
                            adjustDynamicTableByteCount();
                        }
                    }
                    StringBuilder stringBuilder2 = new StringBuilder("Invalid dynamic table size update ");
                    stringBuilder2.append(this.maxDynamicTableByteCount);
                    throw new IOException(stringBuilder2.toString());
                } else {
                    if (readByte != 16) {
                        if (readByte != 0) {
                            this.headerList.add(new Header(getName(readInt(readByte, 15) - 1), readByteString()));
                        }
                    }
                    this.headerList.add(new Header(Hpack.checkLowercase(readByteString()), readByteString()));
                }
            }
        }

        public final List<Header> getAndResetHeaderList() {
            List arrayList = new ArrayList(this.headerList);
            this.headerList.clear();
            return arrayList;
        }

        private void insertIntoDynamicTable$459e6471(Header header) {
            this.headerList.add(header);
            int i = header.hpackSize;
            if (i > this.maxDynamicTableByteCount) {
                Arrays.fill(this.dynamicTable, null);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.headerCount = 0;
                this.dynamicTableByteCount = 0;
                return;
            }
            evictToRecoverBytes((this.dynamicTableByteCount + i) - this.maxDynamicTableByteCount);
            if (this.headerCount + 1 > this.dynamicTable.length) {
                Object obj = new Header[(this.dynamicTable.length << 1)];
                System.arraycopy(this.dynamicTable, 0, obj, this.dynamicTable.length, this.dynamicTable.length);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.dynamicTable = obj;
            }
            int i2 = this.nextHeaderIndex;
            this.nextHeaderIndex = i2 - 1;
            this.dynamicTable[i2] = header;
            this.headerCount++;
            this.dynamicTableByteCount += i;
        }

        private ByteString getName(int i) throws IOException {
            Header[] headerArr;
            int i2;
            int i3;
            if (i >= 0) {
                headerArr = Hpack.STATIC_HEADER_TABLE;
                if (i <= 60) {
                    i2 = 1;
                    if (i2 != 0) {
                        return Hpack.STATIC_HEADER_TABLE[i].name;
                    }
                    headerArr = Hpack.STATIC_HEADER_TABLE;
                    i3 = (this.nextHeaderIndex + 1) + (i - 61);
                    if (i3 >= 0) {
                        if (i3 >= this.dynamicTable.length) {
                            return this.dynamicTable[i3].name;
                        }
                    }
                    StringBuilder stringBuilder = new StringBuilder("Header index too large ");
                    stringBuilder.append(i + 1);
                    throw new IOException(stringBuilder.toString());
                }
            }
            i2 = 0;
            if (i2 != 0) {
                return Hpack.STATIC_HEADER_TABLE[i].name;
            }
            headerArr = Hpack.STATIC_HEADER_TABLE;
            i3 = (this.nextHeaderIndex + 1) + (i - 61);
            if (i3 >= 0) {
                if (i3 >= this.dynamicTable.length) {
                    return this.dynamicTable[i3].name;
                }
            }
            StringBuilder stringBuilder2 = new StringBuilder("Header index too large ");
            stringBuilder2.append(i + 1);
            throw new IOException(stringBuilder2.toString());
        }

        private int readInt(int i, int i2) throws IOException {
            i &= i2;
            if (i < i2) {
                return i;
            }
            i = 0;
            while (true) {
                int readByte = this.source.readByte() & 255;
                if ((readByte & 128) == 0) {
                    return i2 + (readByte << i);
                }
                i2 += (readByte & 127) << i;
                i += 7;
            }
        }

        private ByteString readByteString() throws IOException {
            int readByte = this.source.readByte() & 255;
            Object obj = (readByte & 128) == 128 ? 1 : null;
            readByte = readInt(readByte, 127);
            if (obj != null) {
                return ByteString.of(Huffman.get().decode(this.source.readByteArray((long) readByte)));
            }
            return this.source.readByteString((long) readByte);
        }
    }

    static final class Writer {
        Header[] dynamicTable;
        int dynamicTableByteCount;
        private boolean emitDynamicTableSizeUpdate;
        int headerCount;
        int headerTableSizeSetting;
        int maxDynamicTableByteCount;
        int nextHeaderIndex;
        private final Buffer out;
        private int smallestHeaderTableSizeSetting;
        private final boolean useCompression;

        Writer(Buffer buffer) {
            this(buffer, (byte) 0);
        }

        private Writer(Buffer buffer, byte b) {
            this.smallestHeaderTableSizeSetting = Constants.UNKNOWN;
            this.dynamicTable = new Header[(byte) 8];
            this.nextHeaderIndex = this.dynamicTable.length - (byte) 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = 4096;
            this.maxDynamicTableByteCount = 4096;
            this.useCompression = true;
            this.out = buffer;
        }

        private int evictToRecoverBytes(int i) {
            int i2 = 0;
            if (i > 0) {
                for (int length = this.dynamicTable.length - 1; length >= this.nextHeaderIndex && i > 0; length--) {
                    i -= this.dynamicTable[length].hpackSize;
                    this.dynamicTableByteCount -= this.dynamicTable[length].hpackSize;
                    this.headerCount--;
                    i2++;
                }
                System.arraycopy(this.dynamicTable, this.nextHeaderIndex + 1, this.dynamicTable, (this.nextHeaderIndex + 1) + i2, this.headerCount);
                Arrays.fill(this.dynamicTable, this.nextHeaderIndex + 1, (this.nextHeaderIndex + 1) + i2, null);
                this.nextHeaderIndex += i2;
            }
            return i2;
        }

        private void insertIntoDynamicTable(Header header) {
            int i = header.hpackSize;
            if (i > this.maxDynamicTableByteCount) {
                Arrays.fill(this.dynamicTable, null);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.headerCount = 0;
                this.dynamicTableByteCount = 0;
                return;
            }
            evictToRecoverBytes((this.dynamicTableByteCount + i) - this.maxDynamicTableByteCount);
            if (this.headerCount + 1 > this.dynamicTable.length) {
                Object obj = new Header[(this.dynamicTable.length << 1)];
                System.arraycopy(this.dynamicTable, 0, obj, this.dynamicTable.length, this.dynamicTable.length);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.dynamicTable = obj;
            }
            int i2 = this.nextHeaderIndex;
            this.nextHeaderIndex = i2 - 1;
            this.dynamicTable[i2] = header;
            this.headerCount++;
            this.dynamicTableByteCount += i;
        }

        final void writeHeaders(List<Header> list) throws IOException {
            if (this.emitDynamicTableSizeUpdate) {
                if (this.smallestHeaderTableSizeSetting < this.maxDynamicTableByteCount) {
                    writeInt(this.smallestHeaderTableSizeSetting, 31, 32);
                }
                this.emitDynamicTableSizeUpdate = false;
                this.smallestHeaderTableSizeSetting = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                writeInt(this.maxDynamicTableByteCount, 31, 32);
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                int intValue;
                int i2;
                int length;
                int i3;
                Header[] headerArr;
                Header[] headerArr2;
                Header header = (Header) list.get(i);
                ByteString toAsciiLowercase = header.name.toAsciiLowercase();
                ByteString byteString = header.value;
                Integer num = (Integer) Hpack.NAME_TO_FIRST_INDEX.get(toAsciiLowercase);
                if (num != null) {
                    intValue = num.intValue() + 1;
                    if (intValue > 1 && intValue < 8) {
                        if (!Util.equal(Hpack.STATIC_HEADER_TABLE[intValue - 1].value, byteString)) {
                            if (Util.equal(Hpack.STATIC_HEADER_TABLE[intValue].value, byteString)) {
                                i2 = intValue;
                                intValue++;
                                if (intValue == -1) {
                                    length = this.dynamicTable.length;
                                    for (i3 = this.nextHeaderIndex + 1; i3 < length; i3++) {
                                        if (Util.equal(this.dynamicTable[i3].name, toAsciiLowercase)) {
                                            if (!Util.equal(this.dynamicTable[i3].value, byteString)) {
                                                i3 -= this.nextHeaderIndex;
                                                headerArr = Hpack.STATIC_HEADER_TABLE;
                                                intValue = i3 + 61;
                                                break;
                                            } else if (i2 != -1) {
                                                i2 = i3 - this.nextHeaderIndex;
                                                headerArr2 = Hpack.STATIC_HEADER_TABLE;
                                                i2 += 61;
                                            }
                                        }
                                    }
                                }
                                if (intValue == -1) {
                                    writeInt(intValue, 127, 128);
                                } else if (i2 == -1) {
                                    this.out.writeByte(64);
                                    writeByteString(toAsciiLowercase);
                                    writeByteString(byteString);
                                    insertIntoDynamicTable(header);
                                } else if (toAsciiLowercase.startsWith(Header.PSEUDO_PREFIX) || Header.TARGET_AUTHORITY.equals(toAsciiLowercase)) {
                                    writeInt(i2, 63, 64);
                                    writeByteString(byteString);
                                    insertIntoDynamicTable(header);
                                } else {
                                    writeInt(i2, 15, 0);
                                    writeByteString(byteString);
                                }
                            }
                        }
                    }
                    i2 = intValue;
                    intValue = -1;
                    if (intValue == -1) {
                        length = this.dynamicTable.length;
                        for (i3 = this.nextHeaderIndex + 1; i3 < length; i3++) {
                            if (Util.equal(this.dynamicTable[i3].name, toAsciiLowercase)) {
                                if (!Util.equal(this.dynamicTable[i3].value, byteString)) {
                                    i3 -= this.nextHeaderIndex;
                                    headerArr = Hpack.STATIC_HEADER_TABLE;
                                    intValue = i3 + 61;
                                    break;
                                } else if (i2 != -1) {
                                    i2 = i3 - this.nextHeaderIndex;
                                    headerArr2 = Hpack.STATIC_HEADER_TABLE;
                                    i2 += 61;
                                }
                            }
                        }
                    }
                    if (intValue == -1) {
                        writeInt(intValue, 127, 128);
                    } else if (i2 == -1) {
                        if (toAsciiLowercase.startsWith(Header.PSEUDO_PREFIX)) {
                        }
                        writeInt(i2, 63, 64);
                        writeByteString(byteString);
                        insertIntoDynamicTable(header);
                    } else {
                        this.out.writeByte(64);
                        writeByteString(toAsciiLowercase);
                        writeByteString(byteString);
                        insertIntoDynamicTable(header);
                    }
                } else {
                    intValue = -1;
                }
                i2 = intValue;
                if (intValue == -1) {
                    length = this.dynamicTable.length;
                    for (i3 = this.nextHeaderIndex + 1; i3 < length; i3++) {
                        if (Util.equal(this.dynamicTable[i3].name, toAsciiLowercase)) {
                            if (!Util.equal(this.dynamicTable[i3].value, byteString)) {
                                i3 -= this.nextHeaderIndex;
                                headerArr = Hpack.STATIC_HEADER_TABLE;
                                intValue = i3 + 61;
                                break;
                            } else if (i2 != -1) {
                                i2 = i3 - this.nextHeaderIndex;
                                headerArr2 = Hpack.STATIC_HEADER_TABLE;
                                i2 += 61;
                            }
                        }
                    }
                }
                if (intValue == -1) {
                    writeInt(intValue, 127, 128);
                } else if (i2 == -1) {
                    this.out.writeByte(64);
                    writeByteString(toAsciiLowercase);
                    writeByteString(byteString);
                    insertIntoDynamicTable(header);
                } else {
                    if (toAsciiLowercase.startsWith(Header.PSEUDO_PREFIX)) {
                    }
                    writeInt(i2, 63, 64);
                    writeByteString(byteString);
                    insertIntoDynamicTable(header);
                }
            }
        }

        private void writeInt(int i, int i2, int i3) {
            if (i < i2) {
                this.out.writeByte(i | i3);
                return;
            }
            this.out.writeByte(i3 | i2);
            i -= i2;
            while (i >= 128) {
                this.out.writeByte(128 | (i & 127));
                i >>>= 7;
            }
            this.out.writeByte(i);
        }

        private void writeByteString(ByteString byteString) throws IOException {
            Huffman.get();
            if (Huffman.encodedLength(byteString) < byteString.size()) {
                Object buffer = new Buffer();
                Huffman.get();
                Huffman.encode(byteString, buffer);
                byteString = buffer.readByteString();
                writeInt(byteString.size(), 127, 128);
                this.out.write(byteString);
                return;
            }
            writeInt(byteString.size(), 127, 0);
            this.out.write(byteString);
        }

        final void setHeaderTableSizeSetting(int i) {
            this.headerTableSizeSetting = i;
            i = Math.min(i, 16384);
            if (this.maxDynamicTableByteCount != i) {
                if (i < this.maxDynamicTableByteCount) {
                    this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, i);
                }
                this.emitDynamicTableSizeUpdate = true;
                this.maxDynamicTableByteCount = i;
                if (this.maxDynamicTableByteCount < this.dynamicTableByteCount) {
                    if (this.maxDynamicTableByteCount == 0) {
                        Arrays.fill(this.dynamicTable, null);
                        this.nextHeaderIndex = this.dynamicTable.length - 1;
                        this.headerCount = 0;
                        this.dynamicTableByteCount = 0;
                        return;
                    }
                    evictToRecoverBytes(this.dynamicTableByteCount - this.maxDynamicTableByteCount);
                }
            }
        }
    }

    static {
        r1 = new Header[61];
        int i = 0;
        r1[0] = new Header(Header.TARGET_AUTHORITY, "");
        r1[1] = new Header(Header.TARGET_METHOD, "GET");
        r1[2] = new Header(Header.TARGET_METHOD, "POST");
        r1[3] = new Header(Header.TARGET_PATH, "/");
        r1[4] = new Header(Header.TARGET_PATH, "/index.html");
        r1[5] = new Header(Header.TARGET_SCHEME, "http");
        r1[6] = new Header(Header.TARGET_SCHEME, "https");
        r1[7] = new Header(Header.RESPONSE_STATUS, "200");
        r1[8] = new Header(Header.RESPONSE_STATUS, "204");
        r1[9] = new Header(Header.RESPONSE_STATUS, "206");
        r1[10] = new Header(Header.RESPONSE_STATUS, "304");
        r1[11] = new Header(Header.RESPONSE_STATUS, "400");
        r1[12] = new Header(Header.RESPONSE_STATUS, "404");
        r1[13] = new Header(Header.RESPONSE_STATUS, "500");
        r1[14] = new Header("accept-charset", "");
        r1[15] = new Header("accept-encoding", "gzip, deflate");
        r1[16] = new Header("accept-language", "");
        r1[17] = new Header("accept-ranges", "");
        r1[18] = new Header("accept", "");
        r1[19] = new Header("access-control-allow-origin", "");
        r1[20] = new Header("age", "");
        r1[21] = new Header("allow", "");
        r1[22] = new Header("authorization", "");
        r1[23] = new Header("cache-control", "");
        r1[24] = new Header("content-disposition", "");
        r1[25] = new Header("content-encoding", "");
        r1[26] = new Header("content-language", "");
        r1[27] = new Header("content-length", "");
        r1[28] = new Header("content-location", "");
        r1[29] = new Header("content-range", "");
        r1[30] = new Header("content-type", "");
        r1[31] = new Header("cookie", "");
        r1[32] = new Header(ProviderField.DATE, "");
        r1[33] = new Header("etag", "");
        r1[34] = new Header("expect", "");
        r1[35] = new Header("expires", "");
        r1[36] = new Header("from", "");
        r1[37] = new Header("host", "");
        r1[38] = new Header("if-match", "");
        r1[39] = new Header("if-modified-since", "");
        r1[40] = new Header("if-none-match", "");
        r1[41] = new Header("if-range", "");
        r1[42] = new Header("if-unmodified-since", "");
        r1[43] = new Header("last-modified", "");
        r1[44] = new Header("link", "");
        r1[45] = new Header(Param.LOCATION, "");
        r1[46] = new Header("max-forwards", "");
        r1[47] = new Header("proxy-authenticate", "");
        r1[48] = new Header("proxy-authorization", "");
        r1[49] = new Header("range", "");
        r1[50] = new Header("referer", "");
        r1[51] = new Header("refresh", "");
        r1[52] = new Header("retry-after", "");
        r1[53] = new Header("server", "");
        r1[54] = new Header("set-cookie", "");
        r1[55] = new Header("strict-transport-security", "");
        r1[56] = new Header("transfer-encoding", "");
        r1[57] = new Header("user-agent", "");
        r1[58] = new Header("vary", "");
        r1[59] = new Header("via", "");
        r1[60] = new Header("www-authenticate", "");
        STATIC_HEADER_TABLE = r1;
        Map linkedHashMap = new LinkedHashMap(61);
        while (i < 61) {
            if (!linkedHashMap.containsKey(STATIC_HEADER_TABLE[i].name)) {
                linkedHashMap.put(STATIC_HEADER_TABLE[i].name, Integer.valueOf(i));
            }
            i++;
        }
        NAME_TO_FIRST_INDEX = Collections.unmodifiableMap(linkedHashMap);
    }

    static ByteString checkLowercase(ByteString byteString) throws IOException {
        int size = byteString.size();
        int i = 0;
        while (i < size) {
            byte b = byteString.getByte(i);
            if (b < (byte) 65 || b > (byte) 90) {
                i++;
            } else {
                StringBuilder stringBuilder = new StringBuilder("PROTOCOL_ERROR response malformed: mixed case name: ");
                stringBuilder.append(byteString.utf8());
                throw new IOException(stringBuilder.toString());
            }
        }
        return byteString;
    }
}
