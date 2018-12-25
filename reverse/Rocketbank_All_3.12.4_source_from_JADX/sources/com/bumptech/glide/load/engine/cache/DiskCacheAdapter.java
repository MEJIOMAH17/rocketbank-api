package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.cache.DiskCache.Writer;
import java.io.File;

public final class DiskCacheAdapter implements DiskCache {
    public final void delete(Key key) {
    }

    public final File get(Key key) {
        return null;
    }

    public final void put(Key key, Writer writer) {
    }
}
