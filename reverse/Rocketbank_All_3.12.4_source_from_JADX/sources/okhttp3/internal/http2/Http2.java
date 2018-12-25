package okhttp3.internal.http2;

import java.io.IOException;
import okhttp3.internal.Util;
import okio.ByteString;

public final class Http2 {
    static final String[] BINARY = new String[256];
    static final ByteString CONNECTION_PREFACE = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    static final String[] FLAGS = new String[64];
    private static final String[] FRAME_NAMES;

    static {
        int i;
        r0 = new String[10];
        int i2 = 0;
        r0[0] = "DATA";
        r0[1] = "HEADERS";
        r0[2] = "PRIORITY";
        r0[3] = "RST_STREAM";
        r0[4] = "SETTINGS";
        r0[5] = "PUSH_PROMISE";
        r0[6] = "PING";
        r0[7] = "GOAWAY";
        r0[8] = "WINDOW_UPDATE";
        r0[9] = "CONTINUATION";
        FRAME_NAMES = r0;
        for (i = 0; i < 256; i++) {
            BINARY[i] = Util.format("%8s", Integer.toBinaryString(i)).replace(' ', '0');
        }
        FLAGS[0] = "";
        FLAGS[1] = "END_STREAM";
        int[] iArr = new int[]{1};
        FLAGS[8] = "PADDED";
        for (int i3 = 0; i3 <= 0; i3++) {
            i = iArr[0];
            String[] strArr = FLAGS;
            int i4 = i | 8;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(FLAGS[i]);
            stringBuilder.append("|PADDED");
            strArr[i4] = stringBuilder.toString();
        }
        FLAGS[4] = "END_HEADERS";
        FLAGS[32] = "PRIORITY";
        FLAGS[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = new int[]{4, 32, 36};
        for (int i5 = 0; i5 < 3; i5++) {
            i = iArr2[i5];
            for (int i6 = 0; i6 <= 0; i6++) {
                int i7 = iArr[i6];
                String[] strArr2 = FLAGS;
                int i8 = i7 | i;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(FLAGS[i7]);
                stringBuilder2.append('|');
                stringBuilder2.append(FLAGS[i]);
                strArr2[i8] = stringBuilder2.toString();
                strArr2 = FLAGS;
                i8 |= 8;
                stringBuilder2 = new StringBuilder();
                stringBuilder2.append(FLAGS[i7]);
                stringBuilder2.append('|');
                stringBuilder2.append(FLAGS[i]);
                stringBuilder2.append("|PADDED");
                strArr2[i8] = stringBuilder2.toString();
            }
        }
        while (i2 < 64) {
            if (FLAGS[i2] == null) {
                FLAGS[i2] = BINARY[i2];
            }
            i2++;
        }
    }

    private Http2() {
    }

    static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(Util.format(str, objArr));
    }

    static IOException ioException(String str, Object... objArr) throws IOException {
        throw new IOException(Util.format(str, objArr));
    }

    static String frameLog(boolean z, int i, int i2, byte b, byte b2) {
        String format = b < (byte) 10 ? FRAME_NAMES[b] : Util.format("0x%02x", Byte.valueOf(b));
        if (b2 != (byte) 0) {
            switch (b) {
                case (byte) 2:
                case (byte) 3:
                case (byte) 7:
                case (byte) 8:
                    b = BINARY[b2];
                    break;
                case (byte) 4:
                case (byte) 6:
                    if (b2 != (byte) 1) {
                        b = BINARY[b2];
                        break;
                    }
                    b = "ACK";
                    break;
                default:
                    String str;
                    if (b2 < (byte) 64) {
                        str = FLAGS[b2];
                    } else {
                        str = BINARY[b2];
                    }
                    if (b != (byte) 5 || (b2 & 4) == 0) {
                        if (b == (byte) 0 && (b2 & 32) != (byte) 0) {
                            b = str.replace("PRIORITY", "COMPRESSED");
                            break;
                        }
                        b = str;
                        break;
                    }
                    b = str.replace("HEADERS", "PUSH_PROMISE");
                    break;
            }
        }
        b = "";
        b2 = "%s 0x%08x %5d %-13s %s";
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i);
        objArr[true] = Integer.valueOf(i2);
        objArr[true] = format;
        objArr[true] = b;
        return Util.format(b2, objArr);
    }
}
