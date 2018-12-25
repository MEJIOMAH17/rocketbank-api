package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public class AsyncTimeout extends Timeout {
    private static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60);
    private static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
    @Nullable
    static AsyncTimeout head;
    private boolean inQueue;
    @Nullable
    private AsyncTimeout next;
    private long timeoutAt;

    static final class Watchdog extends Thread {
        Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        public final void run() {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r3 = this;
        L_0x0000:
            r0 = okio.AsyncTimeout.class;	 Catch:{ InterruptedException -> 0x0000 }
            monitor-enter(r0);	 Catch:{ InterruptedException -> 0x0000 }
            r1 = okio.AsyncTimeout.awaitTimeout();	 Catch:{ all -> 0x0019 }
            if (r1 != 0) goto L_0x000b;	 Catch:{ all -> 0x0019 }
        L_0x0009:
            monitor-exit(r0);	 Catch:{ all -> 0x0019 }
            goto L_0x0000;	 Catch:{ all -> 0x0019 }
        L_0x000b:
            r2 = okio.AsyncTimeout.head;	 Catch:{ all -> 0x0019 }
            if (r1 != r2) goto L_0x0014;	 Catch:{ all -> 0x0019 }
        L_0x000f:
            r1 = 0;	 Catch:{ all -> 0x0019 }
            okio.AsyncTimeout.head = r1;	 Catch:{ all -> 0x0019 }
            monitor-exit(r0);	 Catch:{ all -> 0x0019 }
            return;	 Catch:{ all -> 0x0019 }
        L_0x0014:
            monitor-exit(r0);	 Catch:{ all -> 0x0019 }
            r1.timedOut();	 Catch:{ InterruptedException -> 0x0000 }
            goto L_0x0000;
        L_0x0019:
            r1 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0019 }
            throw r1;	 Catch:{ InterruptedException -> 0x0000 }
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout.Watchdog.run():void");
        }
    }

    /* renamed from: okio.AsyncTimeout$1 */
    class C13161 implements Sink {
        final /* synthetic */ Sink val$sink;

        C13161(Sink sink) {
            this.val$sink = sink;
        }

        public final void write(Buffer buffer, long j) throws IOException {
            Util.checkOffsetAndCount(buffer.size, 0, j);
            while (true) {
                long j2 = 0;
                if (j > 0) {
                    Segment segment = buffer.head;
                    while (j2 < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        long j3 = j2 + ((long) (segment.limit - segment.pos));
                        if (j3 >= j) {
                            j2 = j;
                            break;
                        } else {
                            segment = segment.next;
                            j2 = j3;
                        }
                    }
                    AsyncTimeout.this.enter();
                    try {
                        this.val$sink.write(buffer, j2);
                        long j4 = j - j2;
                        AsyncTimeout.this.exit(true);
                        j = j4;
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    } catch (Throwable th) {
                        AsyncTimeout.this.exit(false);
                    }
                } else {
                    return;
                }
            }
        }

        public final void flush() throws IOException {
            AsyncTimeout.this.enter();
            try {
                this.val$sink.flush();
                AsyncTimeout.this.exit(true);
            } catch (IOException e) {
                throw AsyncTimeout.this.exit(e);
            } catch (Throwable th) {
                AsyncTimeout.this.exit(false);
            }
        }

        public final void close() throws IOException {
            AsyncTimeout.this.enter();
            try {
                this.val$sink.close();
                AsyncTimeout.this.exit(true);
            } catch (IOException e) {
                throw AsyncTimeout.this.exit(e);
            } catch (Throwable th) {
                AsyncTimeout.this.exit(false);
            }
        }

        public final Timeout timeout() {
            return AsyncTimeout.this;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("AsyncTimeout.sink(");
            stringBuilder.append(this.val$sink);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    /* renamed from: okio.AsyncTimeout$2 */
    class C13172 implements Source {
        final /* synthetic */ Source val$source;

        C13172(Source source) {
            this.val$source = source;
        }

        public final long read(Buffer buffer, long j) throws IOException {
            AsyncTimeout.this.enter();
            try {
                buffer = this.val$source.read(buffer, j);
                AsyncTimeout.this.exit(true);
                return buffer;
            } catch (IOException e) {
                throw AsyncTimeout.this.exit(e);
            } catch (Throwable th) {
                AsyncTimeout.this.exit(false);
            }
        }

        public final void close() throws IOException {
            try {
                this.val$source.close();
                AsyncTimeout.this.exit(true);
            } catch (IOException e) {
                throw AsyncTimeout.this.exit(e);
            } catch (Throwable th) {
                AsyncTimeout.this.exit(false);
            }
        }

        public final Timeout timeout() {
            return AsyncTimeout.this;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("AsyncTimeout.source(");
            stringBuilder.append(this.val$source);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    protected void timedOut() {
    }

    public final void enter() {
        if (this.inQueue) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long timeoutNanos = timeoutNanos();
        boolean hasDeadline = hasDeadline();
        if (timeoutNanos != 0 || hasDeadline) {
            this.inQueue = true;
            scheduleTimeout(this, timeoutNanos, hasDeadline);
        }
    }

    private static synchronized void scheduleTimeout(AsyncTimeout asyncTimeout, long j, boolean z) {
        synchronized (AsyncTimeout.class) {
            if (head == null) {
                head = new AsyncTimeout();
                new Watchdog().start();
            }
            long nanoTime = System.nanoTime();
            if (j != 0 && z) {
                asyncTimeout.timeoutAt = nanoTime + Math.min(j, asyncTimeout.deadlineNanoTime() - nanoTime);
            } else if (j != 0) {
                asyncTimeout.timeoutAt = nanoTime + j;
            } else if (z) {
                asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
            } else {
                throw new AssertionError();
            }
            long j2 = asyncTimeout.timeoutAt - nanoTime;
            j = head;
            while (j.next != null) {
                if (j2 < j.next.timeoutAt - nanoTime) {
                    break;
                }
                j = j.next;
            }
            asyncTimeout.next = j.next;
            j.next = asyncTimeout;
            if (j == head) {
                AsyncTimeout.class.notify();
                return;
            }
        }
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    private static synchronized boolean cancelScheduledTimeout(AsyncTimeout asyncTimeout) {
        synchronized (AsyncTimeout.class) {
            for (AsyncTimeout asyncTimeout2 = head; asyncTimeout2 != null; asyncTimeout2 = asyncTimeout2.next) {
                if (asyncTimeout2.next == asyncTimeout) {
                    asyncTimeout2.next = asyncTimeout.next;
                    asyncTimeout.next = null;
                    return null;
                }
            }
            return true;
        }
    }

    protected IOException newTimeoutException(@Nullable IOException iOException) {
        IOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    @Nullable
    static AsyncTimeout awaitTimeout() throws InterruptedException {
        AsyncTimeout asyncTimeout = head.next;
        if (asyncTimeout == null) {
            long nanoTime = System.nanoTime();
            AsyncTimeout.class.wait(IDLE_TIMEOUT_MILLIS);
            if (head.next != null || System.nanoTime() - nanoTime < IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return head;
        }
        long nanoTime2 = asyncTimeout.timeoutAt - System.nanoTime();
        if (nanoTime2 > 0) {
            long j = nanoTime2 / 1000000;
            AsyncTimeout.class.wait(j, (int) (nanoTime2 - (1000000 * j)));
            return null;
        }
        head.next = asyncTimeout.next;
        asyncTimeout.next = null;
        return asyncTimeout;
    }

    final void exit(boolean z) throws IOException {
        boolean z2 = false;
        if (this.inQueue) {
            this.inQueue = false;
            z2 = cancelScheduledTimeout(this);
        }
        if (z2 && z) {
            throw newTimeoutException(false);
        }
    }

    final IOException exit(IOException iOException) throws IOException {
        boolean z = false;
        if (this.inQueue) {
            this.inQueue = false;
            z = cancelScheduledTimeout(this);
        }
        return !z ? iOException : newTimeoutException(iOException);
    }
}
