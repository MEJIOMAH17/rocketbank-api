package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

final class Http2Reader implements Closeable {
    static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private final ContinuationSource continuation = new ContinuationSource(this.source);
    final Reader hpackReader = new Reader(this.continuation);
    private final BufferedSource source;

    interface Handler {
        void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException;

        void goAway$4b802bc(int i, ByteString byteString);

        void headers$64c3d190(boolean z, int i, List<Header> list);

        void ping(boolean z, int i, int i2);

        void pushPromise$16014a7a(int i, List<Header> list) throws IOException;

        void rstStream(int i, ErrorCode errorCode);

        void settings$14e94388(Settings settings);

        void windowUpdate(int i, long j);
    }

    static final class ContinuationSource implements Source {
        byte flags;
        int left;
        int length;
        short padding;
        private final BufferedSource source;
        int streamId;

        public final void close() throws IOException {
        }

        ContinuationSource(BufferedSource bufferedSource) {
            this.source = bufferedSource;
        }

        public final long read(Buffer buffer, long j) throws IOException {
            while (this.left == 0) {
                this.source.skip((long) this.padding);
                this.padding = (short) 0;
                if ((this.flags & 4) != 0) {
                    return -1;
                }
                int i = this.streamId;
                int readMedium = Http2Reader.readMedium(this.source);
                this.left = readMedium;
                this.length = readMedium;
                byte readByte = (byte) this.source.readByte();
                this.flags = (byte) this.source.readByte();
                if (Http2Reader.logger.isLoggable(Level.FINE)) {
                    Http2Reader.logger.fine(Http2.frameLog(true, this.streamId, this.length, readByte, this.flags));
                }
                this.streamId = this.source.readInt() & ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                if (readByte != (byte) 9) {
                    throw Http2.ioException("%s != TYPE_CONTINUATION", new Object[]{Byte.valueOf(readByte)});
                } else if (this.streamId != i) {
                    throw Http2.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
                }
            }
            buffer = this.source.read(buffer, Math.min(j, (long) this.left));
            if (buffer == -1) {
                return -1;
            }
            this.left = (int) (((long) this.left) - buffer);
            return buffer;
        }

        public final Timeout timeout() {
            return this.source.timeout();
        }
    }

    Http2Reader(BufferedSource bufferedSource, boolean z) {
        this.source = bufferedSource;
        this.client = z;
    }

    public final void readConnectionPreface(Handler handler) throws IOException {
        if (!this.client) {
            handler = this.source.readByteString((long) Http2.CONNECTION_PREFACE.size());
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Util.format("<< CONNECTION %s", handler.hex()));
            }
            if (!Http2.CONNECTION_PREFACE.equals(handler)) {
                throw Http2.ioException("Expected a connection header but was %s", handler.utf8());
            }
        } else if (nextFrame(true, handler) == null) {
            throw Http2.ioException("Required SETTINGS preface not received", new Object[0]);
        }
    }

    public final boolean nextFrame(boolean r12, okhttp3.internal.http2.Http2Reader.Handler r13) throws java.io.IOException {
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
        r11 = this;
        r0 = 0;
        r1 = r11.source;	 Catch:{ IOException -> 0x02bb }
        r2 = 9;	 Catch:{ IOException -> 0x02bb }
        r1.require(r2);	 Catch:{ IOException -> 0x02bb }
        r1 = r11.source;
        r1 = readMedium(r1);
        r2 = 1;
        if (r1 < 0) goto L_0x02ac;
    L_0x0011:
        r3 = 16384; // 0x4000 float:2.2959E-41 double:8.0948E-320;
        if (r1 <= r3) goto L_0x0017;
    L_0x0015:
        goto L_0x02ac;
    L_0x0017:
        r4 = r11.source;
        r4 = r4.readByte();
        r4 = (byte) r4;
        r5 = 4;
        if (r12 == 0) goto L_0x0032;
    L_0x0021:
        if (r4 == r5) goto L_0x0032;
    L_0x0023:
        r12 = "Expected a SETTINGS frame but was %s";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Byte.valueOf(r4);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0032:
        r12 = r11.source;
        r12 = r12.readByte();
        r12 = (byte) r12;
        r6 = r11.source;
        r6 = r6.readInt();
        r7 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r6 = r6 & r7;
        r8 = logger;
        r9 = java.util.logging.Level.FINE;
        r8 = r8.isLoggable(r9);
        if (r8 == 0) goto L_0x0056;
    L_0x004d:
        r8 = logger;
        r9 = okhttp3.internal.http2.Http2.frameLog(r2, r6, r1, r4, r12);
        r8.fine(r9);
    L_0x0056:
        r8 = 8;
        switch(r4) {
            case 0: goto L_0x026b;
            case 1: goto L_0x0230;
            case 2: goto L_0x0207;
            case 3: goto L_0x01cb;
            case 4: goto L_0x0147;
            case 5: goto L_0x0119;
            case 6: goto L_0x00e8;
            case 7: goto L_0x009a;
            case 8: goto L_0x0063;
            default: goto L_0x005b;
        };
    L_0x005b:
        r12 = r11.source;
        r0 = (long) r1;
        r12.skip(r0);
        goto L_0x02ab;
    L_0x0063:
        if (r1 == r5) goto L_0x0074;
    L_0x0065:
        r12 = "TYPE_WINDOW_UPDATE length !=4: %s";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Integer.valueOf(r1);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0074:
        r12 = r11.source;
        r12 = r12.readInt();
        r3 = (long) r12;
        r7 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r9 = r3 & r7;
        r3 = 0;
        r12 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1));
        if (r12 != 0) goto L_0x0095;
    L_0x0086:
        r12 = "windowSizeIncrement was 0";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Long.valueOf(r9);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0095:
        r13.windowUpdate(r6, r9);
        goto L_0x02ab;
    L_0x009a:
        if (r1 >= r8) goto L_0x00ab;
    L_0x009c:
        r12 = "TYPE_GOAWAY length < 8: %s";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Integer.valueOf(r1);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x00ab:
        if (r6 == 0) goto L_0x00b6;
    L_0x00ad:
        r12 = "TYPE_GOAWAY streamId != 0";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x00b6:
        r12 = r11.source;
        r12 = r12.readInt();
        r3 = r11.source;
        r3 = r3.readInt();
        r1 = r1 - r8;
        r4 = okhttp3.internal.http2.ErrorCode.fromHttp2(r3);
        if (r4 != 0) goto L_0x00d8;
    L_0x00c9:
        r12 = "TYPE_GOAWAY unexpected error code: %d";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Integer.valueOf(r3);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x00d8:
        r0 = okio.ByteString.EMPTY;
        if (r1 <= 0) goto L_0x00e3;
    L_0x00dc:
        r0 = r11.source;
        r3 = (long) r1;
        r0 = r0.readByteString(r3);
    L_0x00e3:
        r13.goAway$4b802bc(r12, r0);
        goto L_0x02ab;
    L_0x00e8:
        if (r1 == r8) goto L_0x00f9;
    L_0x00ea:
        r12 = "TYPE_PING length != 8: %s";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Integer.valueOf(r1);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x00f9:
        if (r6 == 0) goto L_0x0104;
    L_0x00fb:
        r12 = "TYPE_PING streamId != 0";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0104:
        r1 = r11.source;
        r1 = r1.readInt();
        r3 = r11.source;
        r3 = r3.readInt();
        r12 = r12 & r2;
        if (r12 == 0) goto L_0x0114;
    L_0x0113:
        r0 = r2;
    L_0x0114:
        r13.ping(r0, r1, r3);
        goto L_0x02ab;
    L_0x0119:
        if (r6 != 0) goto L_0x0124;
    L_0x011b:
        r12 = "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0124:
        r3 = r12 & 8;
        if (r3 == 0) goto L_0x0131;
    L_0x0128:
        r0 = r11.source;
        r0 = r0.readByte();
        r0 = r0 & 255;
        r0 = (short) r0;
    L_0x0131:
        r3 = r11.source;
        r3 = r3.readInt();
        r3 = r3 & r7;
        r1 = r1 + -4;
        r1 = lengthWithoutPadding(r1, r12, r0);
        r12 = r11.readHeaderBlock(r1, r0, r12, r6);
        r13.pushPromise$16014a7a(r3, r12);
        goto L_0x02ab;
    L_0x0147:
        if (r6 == 0) goto L_0x0152;
    L_0x0149:
        r12 = "TYPE_SETTINGS streamId != 0";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0152:
        r12 = r12 & r2;
        if (r12 == 0) goto L_0x0160;
    L_0x0155:
        if (r1 == 0) goto L_0x02ab;
    L_0x0157:
        r12 = "FRAME_SIZE_ERROR ack frame should be empty!";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0160:
        r12 = r1 % 6;
        if (r12 == 0) goto L_0x0173;
    L_0x0164:
        r12 = "TYPE_SETTINGS length %% 6 != 0: %s";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Integer.valueOf(r1);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0173:
        r12 = new okhttp3.internal.http2.Settings;
        r12.<init>();
        r4 = r0;
    L_0x0179:
        if (r4 >= r1) goto L_0x01c6;
    L_0x017b:
        r6 = r11.source;
        r6 = r6.readShort();
        r7 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
        r6 = r6 & r7;
        r7 = r11.source;
        r7 = r7.readInt();
        switch(r6) {
            case 1: goto L_0x01c0;
            case 2: goto L_0x01b3;
            case 3: goto L_0x01b1;
            case 4: goto L_0x01a5;
            case 5: goto L_0x018f;
            default: goto L_0x018e;
        };
    L_0x018e:
        goto L_0x01c0;
    L_0x018f:
        if (r7 < r3) goto L_0x0196;
    L_0x0191:
        r8 = 16777215; // 0xffffff float:2.3509886E-38 double:8.2890456E-317;
        if (r7 <= r8) goto L_0x01c0;
    L_0x0196:
        r12 = "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Integer.valueOf(r7);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x01a5:
        r6 = 7;
        if (r7 >= 0) goto L_0x01c0;
    L_0x01a8:
        r12 = "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x01b1:
        r6 = r5;
        goto L_0x01c0;
    L_0x01b3:
        if (r7 == 0) goto L_0x01c0;
    L_0x01b5:
        if (r7 == r2) goto L_0x01c0;
    L_0x01b7:
        r12 = "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x01c0:
        r12.set(r6, r7);
        r4 = r4 + 6;
        goto L_0x0179;
    L_0x01c6:
        r13.settings$14e94388(r12);
        goto L_0x02ab;
    L_0x01cb:
        if (r1 == r5) goto L_0x01dc;
    L_0x01cd:
        r12 = "TYPE_RST_STREAM length: %d != 4";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Integer.valueOf(r1);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x01dc:
        if (r6 != 0) goto L_0x01e7;
    L_0x01de:
        r12 = "TYPE_RST_STREAM streamId == 0";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x01e7:
        r12 = r11.source;
        r12 = r12.readInt();
        r1 = okhttp3.internal.http2.ErrorCode.fromHttp2(r12);
        if (r1 != 0) goto L_0x0202;
    L_0x01f3:
        r13 = "TYPE_RST_STREAM unexpected error code: %d";
        r1 = new java.lang.Object[r2];
        r12 = java.lang.Integer.valueOf(r12);
        r1[r0] = r12;
        r12 = okhttp3.internal.http2.Http2.ioException(r13, r1);
        throw r12;
    L_0x0202:
        r13.rstStream(r6, r1);
        goto L_0x02ab;
    L_0x0207:
        r12 = 5;
        if (r1 == r12) goto L_0x0219;
    L_0x020a:
        r12 = "TYPE_PRIORITY length: %d != 5";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Integer.valueOf(r1);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0219:
        if (r6 != 0) goto L_0x0224;
    L_0x021b:
        r12 = "TYPE_PRIORITY streamId == 0";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0224:
        r12 = r11.source;
        r12.readInt();
        r12 = r11.source;
        r12.readByte();
        goto L_0x02ab;
    L_0x0230:
        if (r6 != 0) goto L_0x023b;
    L_0x0232:
        r12 = "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x023b:
        r3 = r12 & 1;
        if (r3 == 0) goto L_0x0241;
    L_0x023f:
        r3 = r2;
        goto L_0x0242;
    L_0x0241:
        r3 = r0;
    L_0x0242:
        r4 = r12 & 8;
        if (r4 == 0) goto L_0x024f;
    L_0x0246:
        r0 = r11.source;
        r0 = r0.readByte();
        r0 = r0 & 255;
        r0 = (short) r0;
    L_0x024f:
        r4 = r12 & 32;
        if (r4 == 0) goto L_0x025f;
    L_0x0253:
        r4 = r11.source;
        r4.readInt();
        r4 = r11.source;
        r4.readByte();
        r1 = r1 + -5;
    L_0x025f:
        r1 = lengthWithoutPadding(r1, r12, r0);
        r12 = r11.readHeaderBlock(r1, r0, r12, r6);
        r13.headers$64c3d190(r3, r6, r12);
        goto L_0x02ab;
    L_0x026b:
        if (r6 != 0) goto L_0x0276;
    L_0x026d:
        r12 = "PROTOCOL_ERROR: TYPE_DATA streamId == 0";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x0276:
        r3 = r12 & 1;
        if (r3 == 0) goto L_0x027c;
    L_0x027a:
        r3 = r2;
        goto L_0x027d;
    L_0x027c:
        r3 = r0;
    L_0x027d:
        r4 = r12 & 32;
        if (r4 == 0) goto L_0x0283;
    L_0x0281:
        r4 = r2;
        goto L_0x0284;
    L_0x0283:
        r4 = r0;
    L_0x0284:
        if (r4 == 0) goto L_0x028f;
    L_0x0286:
        r12 = "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA";
        r13 = new java.lang.Object[r0];
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x028f:
        r4 = r12 & 8;
        if (r4 == 0) goto L_0x029c;
    L_0x0293:
        r0 = r11.source;
        r0 = r0.readByte();
        r0 = r0 & 255;
        r0 = (short) r0;
    L_0x029c:
        r12 = lengthWithoutPadding(r1, r12, r0);
        r1 = r11.source;
        r13.data(r3, r6, r1, r12);
        r12 = r11.source;
        r0 = (long) r0;
        r12.skip(r0);
    L_0x02ab:
        return r2;
    L_0x02ac:
        r12 = "FRAME_SIZE_ERROR: %s";
        r13 = new java.lang.Object[r2];
        r1 = java.lang.Integer.valueOf(r1);
        r13[r0] = r1;
        r12 = okhttp3.internal.http2.Http2.ioException(r12, r13);
        throw r12;
    L_0x02bb:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Reader.nextFrame(boolean, okhttp3.internal.http2.Http2Reader$Handler):boolean");
    }

    private List<Header> readHeaderBlock(int i, short s, byte b, int i2) throws IOException {
        ContinuationSource continuationSource = this.continuation;
        this.continuation.left = i;
        continuationSource.length = i;
        this.continuation.padding = s;
        this.continuation.flags = b;
        this.continuation.streamId = i2;
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    public final void close() throws IOException {
        this.source.close();
    }

    static int readMedium(BufferedSource bufferedSource) throws IOException {
        return (bufferedSource.readByte() & 255) | (((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8));
    }

    private static int lengthWithoutPadding(int i, byte b, short s) throws IOException {
        if ((b & 8) != (byte) 0) {
            short s2 = i - 1;
        }
        if (s <= s2) {
            return (short) (s2 - s);
        }
        throw Http2.ioException("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(s2));
    }
}
