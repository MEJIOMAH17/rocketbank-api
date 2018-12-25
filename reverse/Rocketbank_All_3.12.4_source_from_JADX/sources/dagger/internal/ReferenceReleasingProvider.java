package dagger.internal;

import java.lang.ref.WeakReference;
import javax.inject.Provider;

public final class ReferenceReleasingProvider<T> implements Provider<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object NULL = new Object();
    private final Provider<T> provider;
    private volatile Object strongReference;
    private volatile WeakReference<T> weakReference;

    public final void releaseStrongReference() {
        Object obj = this.strongReference;
        if (obj != null && obj != NULL) {
            synchronized (this) {
                this.weakReference = new WeakReference(obj);
                this.strongReference = null;
            }
        }
    }

    public final void restoreStrongReference() {
        Object obj = this.strongReference;
        if (this.weakReference != null && obj == null) {
            synchronized (this) {
                obj = this.strongReference;
                if (this.weakReference != null && obj == null) {
                    obj = this.weakReference.get();
                    if (obj != null) {
                        this.strongReference = obj;
                        this.weakReference = null;
                    }
                }
            }
        }
    }

    public final T get() {
        T t = this.strongReference;
        if (t == null) {
            t = this.weakReference != null ? this.weakReference.get() : null;
        }
        if (t == null) {
            synchronized (this) {
                t = this.strongReference;
                if (t == null) {
                    t = this.weakReference != null ? this.weakReference.get() : null;
                }
                if (t == null) {
                    t = this.provider.get();
                    if (t == null) {
                        t = NULL;
                    }
                    this.strongReference = t;
                }
            }
        }
        if (t == NULL) {
            return null;
        }
        return t;
    }
}
