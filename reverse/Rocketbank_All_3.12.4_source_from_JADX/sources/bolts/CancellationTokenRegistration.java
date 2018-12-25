package bolts;

import java.io.Closeable;

public final class CancellationTokenRegistration implements Closeable {
    private Runnable action;
    private boolean closed;
    private final Object lock;
    private CancellationTokenSource tokenSource;

    public final void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            CancellationTokenSource.unregister(this);
            this.tokenSource = null;
            this.action = null;
        }
    }
}
