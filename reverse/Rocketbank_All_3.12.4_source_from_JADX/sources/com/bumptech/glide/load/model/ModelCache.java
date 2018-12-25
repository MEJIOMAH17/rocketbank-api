package com.bumptech.glide.load.model;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.util.Queue;

public final class ModelCache<A, B> {
    private final LruCache<ModelKey<A>, B> cache;

    static final class ModelKey<A> {
        private static final Queue<ModelKey<?>> KEY_QUEUE = Util.createQueue(0);
        private int height;
        private A model;
        private int width;

        static <A> ModelKey<A> get$63658d4f(A a) {
            ModelKey<A> modelKey = (ModelKey) KEY_QUEUE.poll();
            if (modelKey == null) {
                modelKey = new ModelKey();
            }
            modelKey.model = a;
            modelKey.width = 0;
            modelKey.height = 0;
            return modelKey;
        }

        private ModelKey() {
        }

        public final void release() {
            KEY_QUEUE.offer(this);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ModelKey)) {
                return false;
            }
            if (this.model.equals(((ModelKey) obj).model) != null) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 0 + this.model.hashCode();
        }
    }

    public ModelCache() {
        this(Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    }

    public ModelCache(int i) {
        this.cache = new LruCache<ModelKey<A>, B>(i) {
            protected final /* bridge */ /* synthetic */ void onItemEvicted(Object obj, Object obj2) {
                ((ModelKey) obj).release();
            }
        };
    }

    public final B get$74acb8df(A a) {
        a = ModelKey.get$63658d4f(a);
        B b = this.cache.get(a);
        a.release();
        return b;
    }

    public final void put$64124233(A a, B b) {
        this.cache.put(ModelKey.get$63658d4f(a), b);
    }
}
