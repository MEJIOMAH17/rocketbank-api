package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.disklrucache.DiskLruCache.Editor;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.cache.DiskCache.Writer;
import java.io.File;
import java.io.IOException;

public final class DiskLruCacheWrapper implements DiskCache {
    private static DiskLruCacheWrapper wrapper;
    private final File directory;
    private DiskLruCache diskLruCache;
    private final int maxSize;
    private final SafeKeyGenerator safeKeyGenerator;
    private final DiskCacheWriteLocker writeLocker = new DiskCacheWriteLocker();

    public static synchronized DiskCache get$582a2567(File file) {
        synchronized (DiskLruCacheWrapper.class) {
            if (wrapper == null) {
                wrapper = new DiskLruCacheWrapper(file, 262144000);
            }
            file = wrapper;
        }
        return file;
    }

    private DiskLruCacheWrapper(File file, int i) {
        this.directory = file;
        this.maxSize = 262144000;
        this.safeKeyGenerator = new SafeKeyGenerator();
    }

    private synchronized DiskLruCache getDiskCache() throws IOException {
        if (this.diskLruCache == null) {
            this.diskLruCache = DiskLruCache.open$641e3723(this.directory, (long) this.maxSize);
        }
        return this.diskLruCache;
    }

    public final File get(Key key) {
        try {
            key = getDiskCache().get(this.safeKeyGenerator.getSafeKey(key));
            if (key != null) {
                return key.getFile$54ec799f();
            }
            return null;
        } catch (Key key2) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", key2);
            return null;
        }
    }

    public final void put(Key key, Writer writer) {
        Editor edit;
        String safeKey = this.safeKeyGenerator.getSafeKey(key);
        this.writeLocker.acquire(key);
        try {
            edit = getDiskCache().edit(safeKey);
            if (edit != null) {
                if (writer.write(edit.getFile$54ec799f()) != null) {
                    edit.commit();
                }
                edit.abortUnlessCommitted();
            }
        } catch (Writer writer2) {
            try {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", writer2);
                }
            } catch (Throwable th) {
                this.writeLocker.release(key);
            }
        } catch (Throwable th2) {
            edit.abortUnlessCommitted();
        }
        this.writeLocker.release(key);
    }

    public final void delete(Key key) {
        try {
            getDiskCache().remove(this.safeKeyGenerator.getSafeKey(key));
        } catch (Key key2) {
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to delete from disk cache", key2);
            }
        }
    }
}
