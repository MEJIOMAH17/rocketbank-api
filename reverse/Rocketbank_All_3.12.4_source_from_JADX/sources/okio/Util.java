package okio;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import java.nio.charset.Charset;
import ru.rocketbank.r2d2.root.chat.ChatFragment;

final class Util {
    public static final Charset UTF_8 = Charset.forName("UTF-8");

    public static int reverseBytesInt(int i) {
        return ((i & 255) << 24) | ((((ViewCompat.MEASURED_STATE_MASK & i) >>> 24) | ((16711680 & i) >>> 8)) | ((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i) << 8));
    }

    public static short reverseBytesShort(short s) {
        int i = s & ChatFragment.TYPE_MESSAGE_TYPING;
        return (short) (((i & 255) << 8) | ((i >>> 8) & 255));
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) >= 0 && j2 <= j) {
            if (j - j2 >= j3) {
                return;
            }
        }
        throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", new Object[]{Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)}));
    }

    public static boolean arrayRangeEquals(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return 1;
    }

    public static void sneakyRethrow(Throwable th) {
        throw th;
    }
}
