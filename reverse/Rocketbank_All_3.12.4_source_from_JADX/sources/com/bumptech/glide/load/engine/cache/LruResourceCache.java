package com.bumptech.glide.load.engine.cache;

import android.annotation.SuppressLint;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.cache.MemoryCache.ResourceRemovedListener;
import com.bumptech.glide.util.LruCache;

public final class LruResourceCache extends LruCache<Key, Resource<?>> implements MemoryCache {
    private ResourceRemovedListener listener;

    protected final /* bridge */ /* synthetic */ int getSize(Object obj) {
        return ((Resource) obj).getSize();
    }

    protected final /* bridge */ /* synthetic */ void onItemEvicted(Object obj, Object obj2) {
        Resource resource = (Resource) obj2;
        if (this.listener != null) {
            this.listener.onResourceRemoved(resource);
        }
    }

    public final /* bridge */ /* synthetic */ Resource put(Key key, Resource resource) {
        return (Resource) super.put(key, resource);
    }

    public final /* bridge */ /* synthetic */ Resource remove(Key key) {
        return (Resource) super.remove(key);
    }

    public LruResourceCache(int i) {
        super(i);
    }

    public final void setResourceRemovedListener(ResourceRemovedListener resourceRemovedListener) {
        this.listener = resourceRemovedListener;
    }

    @SuppressLint({"InlinedApi"})
    public final void trimMemory(int i) {
        if (i >= 60) {
            clearMemory();
            return;
        }
        if (i >= 40) {
            trimToSize(getCurrentSize() / 2);
        }
    }
}
