package bolts;

import java.io.Closeable;
import java.util.List;
import java.util.Locale;

public final class CancellationTokenSource implements Closeable {
    private boolean closed;
    private final Object lock;
    private final List<CancellationTokenRegistration> registrations;

    public final boolean isCancellationRequested() {
        synchronized (this.lock) {
            if (this.closed) {
                throw new IllegalStateException("Object already closed");
            }
        }
        return false;
    }

    public final void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            for (CancellationTokenRegistration close : this.registrations) {
                close.close();
            }
            this.registrations.clear();
            this.closed = true;
        }
    }

    static void unregister(CancellationTokenRegistration cancellationTokenRegistration) {
        synchronized (null.lock) {
            if (null.closed) {
                throw new IllegalStateException("Object already closed");
            }
            null.registrations.remove(cancellationTokenRegistration);
        }
    }

    public final String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", new Object[]{getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(isCancellationRequested())});
    }
}
