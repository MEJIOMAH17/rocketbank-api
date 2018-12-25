package okhttp3.internal.http2;

import java.io.IOException;
import okio.BufferedSource;

public interface PushObserver {
    public static final PushObserver CANCEL = new C13141();

    /* renamed from: okhttp3.internal.http2.PushObserver$1 */
    class C13141 implements PushObserver {
        C13141() {
        }

        public final boolean onData$749b27ff(BufferedSource bufferedSource, int i) throws IOException {
            bufferedSource.skip((long) i);
            return true;
        }
    }

    boolean onData$749b27ff(BufferedSource bufferedSource, int i) throws IOException;
}
