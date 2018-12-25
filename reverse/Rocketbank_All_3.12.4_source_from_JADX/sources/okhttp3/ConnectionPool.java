package okhttp3;

import com.google.gson.internal.Streams;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.connection.StreamAllocation.StreamAllocationReference;
import okhttp3.internal.platform.Platform;

public final class ConnectionPool {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Executor executor = new ThreadPoolExecutor(0, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp ConnectionPool", true));
    private final Runnable cleanupRunnable;
    boolean cleanupRunning;
    private final Deque<RealConnection> connections;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;
    final Streams routeDatabase$7baadc7e;

    /* renamed from: okhttp3.ConnectionPool$1 */
    class C07701 implements Runnable {
        C07701() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r8 = this;
        L_0x0000:
            r0 = okhttp3.ConnectionPool.this;
            r1 = java.lang.System.nanoTime();
            r0 = r0.cleanup(r1);
            r2 = -1;
            r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
            if (r4 != 0) goto L_0x0011;
        L_0x0010:
            return;
        L_0x0011:
            r2 = 0;
            r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
            if (r4 <= 0) goto L_0x0000;
        L_0x0017:
            r2 = 1000000; // 0xf4240 float:1.401298E-39 double:4.940656E-318;
            r4 = r0 / r2;
            r2 = r2 * r4;
            r6 = r0 - r2;
            r0 = okhttp3.ConnectionPool.this;
            monitor-enter(r0);
            r1 = okhttp3.ConnectionPool.this;	 Catch:{ InterruptedException -> 0x002b }
            r2 = (int) r6;	 Catch:{ InterruptedException -> 0x002b }
            r1.wait(r4, r2);	 Catch:{ InterruptedException -> 0x002b }
            goto L_0x002b;
        L_0x0029:
            r1 = move-exception;
            goto L_0x002d;
        L_0x002b:
            monitor-exit(r0);	 Catch:{ all -> 0x0029 }
            goto L_0x0000;	 Catch:{ all -> 0x0029 }
        L_0x002d:
            monitor-exit(r0);	 Catch:{ all -> 0x0029 }
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.ConnectionPool.1.run():void");
        }
    }

    public ConnectionPool() {
        this(TimeUnit.MINUTES);
    }

    private ConnectionPool(TimeUnit timeUnit) {
        this.cleanupRunnable = new C07701();
        this.connections = new ArrayDeque();
        this.routeDatabase$7baadc7e = new Streams();
        this.maxIdleConnections = 5;
        this.keepAliveDurationNs = timeUnit.toNanos(5);
    }

    @Nullable
    final RealConnection get(Address address, StreamAllocation streamAllocation, Route route) {
        for (RealConnection realConnection : this.connections) {
            if (realConnection.isEligible(address, route)) {
                streamAllocation.acquire(realConnection, true);
                return realConnection;
            }
        }
        return null;
    }

    @Nullable
    final Socket deduplicate(Address address, StreamAllocation streamAllocation) {
        for (RealConnection realConnection : this.connections) {
            if (realConnection.isEligible(address, null) && realConnection.isMultiplexed() && realConnection != streamAllocation.connection()) {
                return streamAllocation.releaseAndAcquire(realConnection);
            }
        }
        return null;
    }

    final void put(RealConnection realConnection) {
        if (!this.cleanupRunning) {
            this.cleanupRunning = true;
            executor.execute(this.cleanupRunnable);
        }
        this.connections.add(realConnection);
    }

    final boolean connectionBecameIdle(RealConnection realConnection) {
        if (realConnection.noNewStreams) {
            this.connections.remove(realConnection);
            return true;
        }
        notifyAll();
        return null;
    }

    final long cleanup(long j) {
        synchronized (this) {
            long j2 = Long.MIN_VALUE;
            int i = 0;
            RealConnection realConnection = null;
            int i2 = i;
            for (RealConnection realConnection2 : this.connections) {
                int i3;
                List list = realConnection2.allocations;
                int i4 = 0;
                while (i4 < list.size()) {
                    Reference reference = (Reference) list.get(i4);
                    if (reference.get() != null) {
                        i4++;
                    } else {
                        StreamAllocationReference streamAllocationReference = (StreamAllocationReference) reference;
                        StringBuilder stringBuilder = new StringBuilder("A connection to ");
                        stringBuilder.append(realConnection2.route().address.url);
                        stringBuilder.append(" was leaked. Did you forget to close a response body?");
                        Platform.get().logCloseableLeak(stringBuilder.toString(), streamAllocationReference.callStackTrace);
                        list.remove(i4);
                        realConnection2.noNewStreams = true;
                        if (list.isEmpty()) {
                            realConnection2.idleAtNanos = j - this.keepAliveDurationNs;
                            i3 = 0;
                            break;
                        }
                    }
                }
                i3 = list.size();
                if (i3 > 0) {
                    i++;
                } else {
                    i2++;
                    long j3 = j - realConnection2.idleAtNanos;
                    if (j3 > j2) {
                        realConnection = realConnection2;
                        j2 = j3;
                    }
                }
            }
            if (j2 < this.keepAliveDurationNs) {
                if (i2 <= 5) {
                    if (i2 > 0) {
                        long j4 = this.keepAliveDurationNs - j2;
                        return j4;
                    } else if (i > 0) {
                        j = this.keepAliveDurationNs;
                        return j;
                    } else {
                        this.cleanupRunning = false;
                        return -1;
                    }
                }
            }
            this.connections.remove(realConnection);
            Util.closeQuietly(realConnection.socket());
            return 0;
        }
    }
}
