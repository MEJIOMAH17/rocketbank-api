package io.fabric.sdk.android.services.cache;

public final class MemoryValueCache<T> extends AbstractValueCache<T> {
    private T value;

    public MemoryValueCache() {
        this((byte) 0);
    }

    private MemoryValueCache(byte b) {
    }

    protected final T getCached$dc0f261() {
        return this.value;
    }

    protected final void cacheValue$127ac70f(T t) {
        this.value = t;
    }
}
