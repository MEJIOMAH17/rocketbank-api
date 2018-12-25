package okhttp3;

import android.arch.lifecycle.GeneratedAdapter;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import okhttp3.internal.cache.DiskLruCache;

public final class Cache implements Closeable, Flushable {
    final DiskLruCache cache;
    final GeneratedAdapter internalCache$5db781e9;

    public final void flush() throws IOException {
        this.cache.flush();
    }

    public final void close() throws IOException {
        this.cache.close();
    }
}
