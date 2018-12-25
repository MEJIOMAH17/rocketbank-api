package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.util.Util;
import java.util.Queue;

abstract class BaseKeyPool<T extends Poolable> {
    private final Queue<T> keyPool = Util.createQueue(20);

    protected abstract T create();

    BaseKeyPool() {
    }

    protected final T get() {
        Poolable poolable = (Poolable) this.keyPool.poll();
        return poolable == null ? create() : poolable;
    }

    public final void offer(T t) {
        if (this.keyPool.size() < 20) {
            this.keyPool.offer(t);
        }
    }
}
