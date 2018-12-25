package com.flurry.sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public final class kd<V> extends FutureTask<V> {
    /* renamed from: a */
    private final WeakReference<Callable<V>> f326a = new WeakReference(null);
    /* renamed from: b */
    private final WeakReference<Runnable> f327b;

    public kd(Runnable runnable, V v) {
        super(runnable, v);
        this.f327b = new WeakReference(runnable);
    }

    /* renamed from: a */
    public final Runnable m162a() {
        return (Runnable) this.f327b.get();
    }
}
