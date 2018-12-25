package com.bumptech.glide.load.resource.bitmap;

import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import ru.rocketbank.r2d2.root.chat.ChatFragment;

public final class ImageHeaderParser {
    private static final int[] BYTES_PER_FORMAT = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};
    private static final byte[] JPEG_EXIF_SEGMENT_PREAMBLE_BYTES;
    private final StreamReader streamReader;

    public enum ImageType {
        GIF(true),
        JPEG(false),
        PNG_A(true),
        PNG(false),
        UNKNOWN(false);
        
        private final boolean hasAlpha;

        private ImageType(boolean z) {
            this.hasAlpha = z;
        }

        public final boolean hasAlpha() {
            return this.hasAlpha;
        }
    }

    static class RandomAccessReader {
        private final ByteBuffer data;

        public RandomAccessReader(byte[] bArr) {
            this.data = ByteBuffer.wrap(bArr);
            this.data.order(ByteOrder.BIG_ENDIAN);
        }

        public final void order(ByteOrder byteOrder) {
            this.data.order(byteOrder);
        }

        public final int length() {
            return this.data.array().length;
        }

        public final int getInt32(int i) {
            return this.data.getInt(i);
        }

        public final short getInt16(int i) {
            return this.data.getShort(i);
        }
    }

    static class StreamReader {
        private final InputStream is;

        public StreamReader(InputStream inputStream) {
            this.is = inputStream;
        }

        public final int getUInt16() throws IOException {
            return ((this.is.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.is.read() & 255);
        }

        public final short getUInt8() throws IOException {
            return (short) (this.is.read() & 255);
        }

        public final long skip(long j) throws IOException {
            if (j < 0) {
                return 0;
            }
            long j2 = j;
            while (j2 > 0) {
                long j3;
                long skip = this.is.skip(j2);
                if (skip <= 0) {
                    if (this.is.read() == -1) {
                        break;
                    }
                    j3 = j2 - 1;
                } else {
                    j3 = j2 - skip;
                }
                j2 = j3;
            }
            return j - j2;
        }

        public final int read(byte[] bArr) throws IOException {
            int length = bArr.length;
            while (length > 0) {
                int read = this.is.read(bArr, bArr.length - length, length);
                if (read == -1) {
                    break;
                }
                length -= read;
            }
            return bArr.length - length;
        }

        public final int getByte() throws IOException {
            return this.is.read();
        }
    }

    static {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = 13;
        r0 = new int[r0];
        r0 = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};
        BYTES_PER_FORMAT = r0;
        r0 = 0;
        r0 = new byte[r0];
        r1 = "Exif\u0000\u0000";	 Catch:{ UnsupportedEncodingException -> 0x0015 }
        r2 = "UTF-8";	 Catch:{ UnsupportedEncodingException -> 0x0015 }
        r1 = r1.getBytes(r2);	 Catch:{ UnsupportedEncodingException -> 0x0015 }
        r0 = r1;
    L_0x0015:
        JPEG_EXIF_SEGMENT_PREAMBLE_BYTES = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.<clinit>():void");
    }

    public ImageHeaderParser(InputStream inputStream) {
        this.streamReader = new StreamReader(inputStream);
    }

    public final ImageType getType() throws IOException {
        int uInt16 = this.streamReader.getUInt16();
        if (uInt16 == 65496) {
            return ImageType.JPEG;
        }
        uInt16 = ((uInt16 << 16) & -65536) | (this.streamReader.getUInt16() & ChatFragment.TYPE_MESSAGE_TYPING);
        if (uInt16 == -1991225785) {
            this.streamReader.skip(21);
            return this.streamReader.getByte() >= 3 ? ImageType.PNG_A : ImageType.PNG;
        } else if ((uInt16 >> 8) == 4671814) {
            return ImageType.GIF;
        } else {
            return ImageType.UNKNOWN;
        }
    }

    public final int getOrientation() throws IOException {
        Object obj;
        long skip;
        long j;
        short uInt8;
        byte[] bArr;
        int uInt16;
        byte[] bArr2;
        int read;
        StringBuilder stringBuilder;
        int uInt162 = this.streamReader.getUInt16();
        Object obj2 = 1;
        if (!((uInt162 & 65496) == 65496 || uInt162 == 19789)) {
            if (uInt162 != 18761) {
                obj = null;
                if (obj == null) {
                    return -1;
                }
                do {
                    uInt8 = this.streamReader.getUInt8();
                    bArr = null;
                    if (uInt8 != (short) 255) {
                        uInt8 = this.streamReader.getUInt8();
                        if (uInt8 == (short) 218) {
                            break;
                        } else if (uInt8 == (short) 217) {
                            uInt16 = this.streamReader.getUInt16() - 2;
                            if (uInt8 == (short) 225) {
                                j = (long) uInt16;
                                skip = this.streamReader.skip(j);
                            } else {
                                bArr2 = new byte[uInt16];
                                read = this.streamReader.read(bArr2);
                                if (read != uInt16) {
                                    bArr = bArr2;
                                } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    stringBuilder = new StringBuilder("Unable to read segment data, type: ");
                                    stringBuilder.append(uInt8);
                                    stringBuilder.append(", length: ");
                                    stringBuilder.append(uInt16);
                                    stringBuilder.append(", actually read: ");
                                    stringBuilder.append(read);
                                    Log.d("ImageHeaderParser", stringBuilder.toString());
                                }
                            }
                        } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Found MARKER_EOI in exif segment");
                        }
                    } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                        Log.d("ImageHeaderParser", "Unknown segmentId=".concat(String.valueOf(uInt8)));
                    }
                } while (skip == j);
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    stringBuilder = new StringBuilder("Unable to skip enough data, type: ");
                    stringBuilder.append(uInt8);
                    stringBuilder.append(", wanted to skip: ");
                    stringBuilder.append(uInt16);
                    stringBuilder.append(", but actually skipped: ");
                    stringBuilder.append(skip);
                    Log.d("ImageHeaderParser", stringBuilder.toString());
                }
                if (bArr != null || bArr.length <= JPEG_EXIF_SEGMENT_PREAMBLE_BYTES.length) {
                    obj2 = null;
                }
                if (obj2 != null) {
                    for (uInt162 = 0; uInt162 < JPEG_EXIF_SEGMENT_PREAMBLE_BYTES.length; uInt162++) {
                        if (bArr[uInt162] != JPEG_EXIF_SEGMENT_PREAMBLE_BYTES[uInt162]) {
                            obj2 = null;
                            break;
                        }
                    }
                }
                if (obj2 == null) {
                    return parseExifSegment(new RandomAccessReader(bArr));
                }
                return -1;
            }
        }
        obj = 1;
        if (obj == null) {
            return -1;
        }
        do {
            uInt8 = this.streamReader.getUInt8();
            bArr = null;
            if (uInt8 != (short) 255) {
                uInt8 = this.streamReader.getUInt8();
                if (uInt8 == (short) 218) {
                    break;
                } else if (uInt8 == (short) 217) {
                    uInt16 = this.streamReader.getUInt16() - 2;
                    if (uInt8 == (short) 225) {
                        bArr2 = new byte[uInt16];
                        read = this.streamReader.read(bArr2);
                        if (read != uInt16) {
                            bArr = bArr2;
                        } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                            stringBuilder = new StringBuilder("Unable to read segment data, type: ");
                            stringBuilder.append(uInt8);
                            stringBuilder.append(", length: ");
                            stringBuilder.append(uInt16);
                            stringBuilder.append(", actually read: ");
                            stringBuilder.append(read);
                            Log.d("ImageHeaderParser", stringBuilder.toString());
                        }
                    } else {
                        j = (long) uInt16;
                        skip = this.streamReader.skip(j);
                    }
                } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
            } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Unknown segmentId=".concat(String.valueOf(uInt8)));
            }
        } while (skip == j);
        if (Log.isLoggable("ImageHeaderParser", 3)) {
            stringBuilder = new StringBuilder("Unable to skip enough data, type: ");
            stringBuilder.append(uInt8);
            stringBuilder.append(", wanted to skip: ");
            stringBuilder.append(uInt16);
            stringBuilder.append(", but actually skipped: ");
            stringBuilder.append(skip);
            Log.d("ImageHeaderParser", stringBuilder.toString());
        }
        if (bArr != null) {
        }
        obj2 = null;
        if (obj2 != null) {
            for (uInt162 = 0; uInt162 < JPEG_EXIF_SEGMENT_PREAMBLE_BYTES.length; uInt162++) {
                if (bArr[uInt162] != JPEG_EXIF_SEGMENT_PREAMBLE_BYTES[uInt162]) {
                    obj2 = null;
                    break;
                }
            }
        }
        if (obj2 == null) {
            return -1;
        }
        return parseExifSegment(new RandomAccessReader(bArr));
    }

    private static int parseExifSegment(RandomAccessReader randomAccessReader) {
        ByteOrder byteOrder;
        int int32;
        short int16;
        short s;
        int i;
        short int162;
        short int163;
        int int322;
        short int164 = randomAccessReader.getInt16(6);
        if (int164 != (short) 19789) {
            if (int164 == (short) 18761) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
                randomAccessReader.order(byteOrder);
                int32 = randomAccessReader.getInt32(10) + 6;
                int16 = randomAccessReader.getInt16(int32);
                for (s = (short) 0; s < int16; s++) {
                    i = (int32 + 2) + (s * 12);
                    int162 = randomAccessReader.getInt16(i);
                    if (int162 == (short) 274) {
                        int163 = randomAccessReader.getInt16(i + 2);
                        if (int163 > (short) 0) {
                            if (int163 > (short) 12) {
                                int322 = randomAccessReader.getInt32(i + 4);
                                if (int322 < 0) {
                                    if (Log.isLoggable("ImageHeaderParser", 3)) {
                                        StringBuilder stringBuilder = new StringBuilder("Got tagIndex=");
                                        stringBuilder.append(s);
                                        stringBuilder.append(" tagType=");
                                        stringBuilder.append(int162);
                                        stringBuilder.append(" formatCode=");
                                        stringBuilder.append(int163);
                                        stringBuilder.append(" componentCount=");
                                        stringBuilder.append(int322);
                                        Log.d("ImageHeaderParser", stringBuilder.toString());
                                    }
                                    int322 += BYTES_PER_FORMAT[int163];
                                    if (int322 > 4) {
                                        i += 8;
                                        if (i >= 0) {
                                            if (i > randomAccessReader.length()) {
                                                if (int322 >= 0) {
                                                    if (int322 + i > randomAccessReader.length()) {
                                                        return randomAccessReader.getInt16(i);
                                                    }
                                                }
                                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                                    Log.d("ImageHeaderParser", "Illegal number of bytes for TI tag data tagType=".concat(String.valueOf(int162)));
                                                }
                                            }
                                        }
                                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                                            StringBuilder stringBuilder2 = new StringBuilder("Illegal tagValueOffset=");
                                            stringBuilder2.append(i);
                                            stringBuilder2.append(" tagType=");
                                            stringBuilder2.append(int162);
                                            Log.d("ImageHeaderParser", stringBuilder2.toString());
                                        }
                                    } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                                        Log.d("ImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=".concat(String.valueOf(int163)));
                                    }
                                } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    Log.d("ImageHeaderParser", "Negative tiff component count");
                                }
                            }
                        }
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Got invalid format code=".concat(String.valueOf(int163)));
                        }
                    }
                }
                return -1;
            } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Unknown endianness = ".concat(String.valueOf(int164)));
            }
        }
        byteOrder = ByteOrder.BIG_ENDIAN;
        randomAccessReader.order(byteOrder);
        int32 = randomAccessReader.getInt32(10) + 6;
        int16 = randomAccessReader.getInt16(int32);
        for (s = (short) 0; s < int16; s++) {
            i = (int32 + 2) + (s * 12);
            int162 = randomAccessReader.getInt16(i);
            if (int162 == (short) 274) {
                int163 = randomAccessReader.getInt16(i + 2);
                if (int163 > (short) 0) {
                    if (int163 > (short) 12) {
                        int322 = randomAccessReader.getInt32(i + 4);
                        if (int322 < 0) {
                            if (Log.isLoggable("ImageHeaderParser", 3)) {
                                StringBuilder stringBuilder3 = new StringBuilder("Got tagIndex=");
                                stringBuilder3.append(s);
                                stringBuilder3.append(" tagType=");
                                stringBuilder3.append(int162);
                                stringBuilder3.append(" formatCode=");
                                stringBuilder3.append(int163);
                                stringBuilder3.append(" componentCount=");
                                stringBuilder3.append(int322);
                                Log.d("ImageHeaderParser", stringBuilder3.toString());
                            }
                            int322 += BYTES_PER_FORMAT[int163];
                            if (int322 > 4) {
                                i += 8;
                                if (i >= 0) {
                                    if (i > randomAccessReader.length()) {
                                        if (int322 >= 0) {
                                            if (int322 + i > randomAccessReader.length()) {
                                                return randomAccessReader.getInt16(i);
                                            }
                                        }
                                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                                            Log.d("ImageHeaderParser", "Illegal number of bytes for TI tag data tagType=".concat(String.valueOf(int162)));
                                        }
                                    }
                                }
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    StringBuilder stringBuilder22 = new StringBuilder("Illegal tagValueOffset=");
                                    stringBuilder22.append(i);
                                    stringBuilder22.append(" tagType=");
                                    stringBuilder22.append(int162);
                                    Log.d("ImageHeaderParser", stringBuilder22.toString());
                                }
                            } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                                Log.d("ImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=".concat(String.valueOf(int163)));
                            }
                        } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Negative tiff component count");
                        }
                    }
                }
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Got invalid format code=".concat(String.valueOf(int163)));
                }
            }
        }
        return -1;
    }
}
