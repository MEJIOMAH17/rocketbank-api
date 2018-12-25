package com.flurry.sdk;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;
import java.util.concurrent.TimeUnit;

public class ke<T extends lx> {
    /* renamed from: a */
    private static final String f330a = "ke";
    /* renamed from: b */
    private final jw<Object, T> f331b = new jw();
    /* renamed from: c */
    private final HashMap<T, Object> f332c = new HashMap();
    /* renamed from: d */
    private final HashMap<T, Future<?>> f333d = new HashMap();
    /* renamed from: e */
    private final ThreadPoolExecutor f334e;

    /* renamed from: com.flurry.sdk.ke$2 */
    class C05012 extends DiscardPolicy {
        /* renamed from: a */
        final /* synthetic */ ke f329a;

        C05012(ke keVar) {
            this.f329a = keVar;
        }

        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            super.rejectedExecution(runnable, threadPoolExecutor);
            final lx a = ke.m163a(runnable);
            if (a != null) {
                synchronized (this.f329a.f333d) {
                    this.f329a.f333d.remove(a);
                }
                this.f329a.m167b(a);
                new lw(this) {
                    /* renamed from: b */
                    final /* synthetic */ C05012 f638b;

                    /* renamed from: a */
                    public final void mo1370a() {
                    }
                }.run();
            }
        }
    }

    public ke(String str, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        this.f334e = new ThreadPoolExecutor(this, timeUnit, blockingQueue) {
            /* renamed from: a */
            final /* synthetic */ ke f328a;

            protected final void beforeExecute(Thread thread, Runnable runnable) {
                super.beforeExecute(thread, runnable);
                thread = ke.m163a(runnable);
                if (thread != null) {
                    new lw(this) {
                        /* renamed from: b */
                        final /* synthetic */ C05001 f634b;

                        /* renamed from: a */
                        public final void mo1370a() {
                        }
                    }.run();
                }
            }

            protected final void afterExecute(Runnable runnable, Throwable th) {
                super.afterExecute(runnable, th);
                final lx a = ke.m163a(runnable);
                if (a != null) {
                    synchronized (this.f328a.f333d) {
                        this.f328a.f333d.remove(a);
                    }
                    this.f328a.m167b(a);
                    new lw(this) {
                        /* renamed from: b */
                        final /* synthetic */ C05001 f636b;

                        /* renamed from: a */
                        public final void mo1370a() {
                        }
                    }.run();
                }
            }

            protected final <V> RunnableFuture<V> newTaskFor(Callable<V> callable) {
                throw new UnsupportedOperationException("Callable not supported");
            }

            protected final <V> RunnableFuture<V> newTaskFor(Runnable runnable, V v) {
                RunnableFuture kdVar = new kd(runnable, v);
                synchronized (this.f328a.f333d) {
                    this.f328a.f333d.put((lx) runnable, kdVar);
                }
                return kdVar;
            }
        };
        this.f334e.setRejectedExecutionHandler(new C05012(this));
        this.f334e.setThreadFactory(new lk(str));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: a */
    public final synchronized void m171a(java.lang.Object r1, T r2) {
        /*
        r0 = this;
        monitor-enter(r0);
        if (r1 == 0) goto L_0x0013;
    L_0x0003:
        if (r2 != 0) goto L_0x0006;
    L_0x0005:
        goto L_0x0013;
    L_0x0006:
        r0.m168b(r1, r2);	 Catch:{ all -> 0x0010 }
        r1 = r0.f334e;	 Catch:{ all -> 0x0010 }
        r1.submit(r2);	 Catch:{ all -> 0x0010 }
        monitor-exit(r0);
        return;
    L_0x0010:
        r1 = move-exception;
        monitor-exit(r0);
        throw r1;
    L_0x0013:
        monitor-exit(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ke.a(java.lang.Object, com.flurry.sdk.lx):void");
    }

    /* renamed from: a */
    public final synchronized void m170a(Object obj) {
        if (obj != null) {
            Collection<lx> hashSet = new HashSet();
            hashSet.addAll(this.f331b.m134a(obj));
            for (lx a : hashSet) {
                m166a(a);
            }
        }
    }

    /* renamed from: a */
    private synchronized void m166a(final T t) {
        if (t != null) {
            Future future;
            synchronized (this.f333d) {
                future = (Future) this.f333d.remove(t);
            }
            m167b((lx) t);
            if (future != null) {
                future.cancel(true);
            }
            new lw(this) {
                /* renamed from: b */
                final /* synthetic */ ke f640b;

                /* renamed from: a */
                public final void mo1370a() {
                    t.mo3226g();
                }
            }.run();
        }
    }

    /* renamed from: c */
    public final synchronized void m173c() {
        Set<Object> hashSet = new HashSet();
        hashSet.addAll(this.f331b.f315a.keySet());
        for (Object a : hashSet) {
            m170a(a);
        }
    }

    /* renamed from: b */
    public final synchronized long m172b(Object obj) {
        if (obj == null) {
            return 0;
        }
        return (long) this.f331b.m134a(obj).size();
    }

    /* renamed from: b */
    private synchronized void m168b(Object obj, T t) {
        this.f331b.m138a(obj, (Object) t);
        this.f332c.put(t, obj);
    }

    /* renamed from: b */
    private synchronized void m167b(T t) {
        m169c(this.f332c.get(t), t);
    }

    /* renamed from: c */
    private synchronized void m169c(Object obj, T t) {
        this.f331b.m141b(obj, t);
        this.f332c.remove(t);
    }

    /* renamed from: a */
    static /* synthetic */ lx m163a(Runnable runnable) {
        if (runnable instanceof kd) {
            return (lx) ((kd) runnable).m162a();
        }
        if (runnable instanceof lx) {
            return (lx) runnable;
        }
        String str = f330a;
        StringBuilder stringBuilder = new StringBuilder("Unknown runnable class: ");
        stringBuilder.append(runnable.getClass().getName());
        kf.m176a(6, str, stringBuilder.toString());
        return null;
    }
}
