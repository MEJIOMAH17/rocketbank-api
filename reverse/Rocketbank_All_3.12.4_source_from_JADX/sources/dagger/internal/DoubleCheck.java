package dagger.internal;

import javax.inject.Provider;

public final class DoubleCheck<T> implements Provider<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    private DoubleCheck(Provider<T> provider) {
        this.provider = provider;
    }

    public final T get() {
        T t = this.instance;
        if (t == UNINITIALIZED) {
            synchronized (this) {
                t = this.instance;
                if (t == UNINITIALIZED) {
                    t = this.provider.get();
                    T t2 = this.instance;
                    if (t2 == UNINITIALIZED || t2 == t) {
                        this.instance = t;
                        this.provider = null;
                    } else {
                        StringBuilder stringBuilder = new StringBuilder("Scoped provider was invoked recursively returning different results: ");
                        stringBuilder.append(t2);
                        stringBuilder.append(" & ");
                        stringBuilder.append(t);
                        stringBuilder.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(stringBuilder.toString());
                    }
                }
            }
        }
        return t;
    }

    public static <P extends Provider<T>, T> Provider<T> provider(P p) {
        if (p instanceof DoubleCheck) {
            return p;
        }
        return new DoubleCheck(p);
    }
}
