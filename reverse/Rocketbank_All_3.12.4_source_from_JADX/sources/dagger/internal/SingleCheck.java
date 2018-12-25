package dagger.internal;

import javax.inject.Provider;

public final class SingleCheck<T> implements Provider<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    private SingleCheck(Provider<T> provider) {
        this.provider = provider;
    }

    public final T get() {
        Provider provider = this.provider;
        if (this.instance == UNINITIALIZED) {
            this.instance = provider.get();
            this.provider = null;
        }
        return this.instance;
    }

    public static <P extends Provider<T>, T> Provider<T> provider(P p) {
        if (!(p instanceof SingleCheck)) {
            if (!(p instanceof DoubleCheck)) {
                return new SingleCheck((Provider) p);
            }
        }
        return p;
    }
}
