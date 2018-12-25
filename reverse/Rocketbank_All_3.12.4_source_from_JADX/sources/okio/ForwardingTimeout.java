package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public final class ForwardingTimeout extends Timeout {
    private Timeout delegate;

    public ForwardingTimeout(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = timeout;
    }

    public final Timeout delegate() {
        return this.delegate;
    }

    public final ForwardingTimeout setDelegate(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = timeout;
        return this;
    }

    public final Timeout timeout(long j, TimeUnit timeUnit) {
        return this.delegate.timeout(j, timeUnit);
    }

    public final long timeoutNanos() {
        return this.delegate.timeoutNanos();
    }

    public final boolean hasDeadline() {
        return this.delegate.hasDeadline();
    }

    public final long deadlineNanoTime() {
        return this.delegate.deadlineNanoTime();
    }

    public final Timeout deadlineNanoTime(long j) {
        return this.delegate.deadlineNanoTime(j);
    }

    public final Timeout clearTimeout() {
        return this.delegate.clearTimeout();
    }

    public final Timeout clearDeadline() {
        return this.delegate.clearDeadline();
    }

    public final void throwIfReached() throws IOException {
        this.delegate.throwIfReached();
    }
}
