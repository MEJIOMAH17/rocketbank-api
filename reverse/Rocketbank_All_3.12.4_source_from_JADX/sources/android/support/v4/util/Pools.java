package android.support.v4.util;

import android.os.ParcelFileDescriptor;
import com.github.barteksc.pdfviewer.source.DocumentSource;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;
import java.io.File;
import java.io.IOException;

public final class Pools implements DocumentSource {
    private File file;

    public interface Pool<T> {
        T acquire();

        boolean release(T t);
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[i];
        }

        public T acquire() {
            if (this.mPoolSize <= 0) {
                return null;
            }
            int i = this.mPoolSize - 1;
            T t = this.mPool[i];
            this.mPool[i] = null;
            this.mPoolSize--;
            return t;
        }

        public boolean release(T t) {
            boolean z;
            for (int i = 0; i < this.mPoolSize; i++) {
                if (this.mPool[i] == t) {
                    z = true;
                    break;
                }
            }
            z = false;
            if (z) {
                throw new IllegalStateException("Already in the pool!");
            } else if (this.mPoolSize >= this.mPool.length) {
                return false;
            } else {
                this.mPool[this.mPoolSize] = t;
                this.mPoolSize += 1;
                return true;
            }
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock = new Object();

        public SynchronizedPool(int i) {
            super(i);
        }

        public final T acquire() {
            T acquire;
            synchronized (this.mLock) {
                acquire = super.acquire();
            }
            return acquire;
        }

        public final boolean release(T t) {
            synchronized (this.mLock) {
                t = super.release(t);
            }
            return t;
        }
    }

    public Pools(File file) {
        this.file = file;
    }

    public final PdfDocument createDocument$49c2968a(PdfiumCore pdfiumCore, String str) throws IOException {
        return pdfiumCore.newDocument(ParcelFileDescriptor.open(this.file, 268435456), null);
    }
}
