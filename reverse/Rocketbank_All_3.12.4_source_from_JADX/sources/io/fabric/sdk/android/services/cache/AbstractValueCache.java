package io.fabric.sdk.android.services.cache;

import android.content.Context;
import android.support.v4.content.Loader.OnLoadCompleteListener;

public abstract class AbstractValueCache<T> implements OnLoadCompleteListener<T> {
    private final OnLoadCompleteListener<T> childCache$44de7772 = null;

    protected abstract void cacheValue$127ac70f(T t);

    protected abstract T getCached$dc0f261();

    public final synchronized T get(Context context, ValueLoader<T> valueLoader) throws Exception {
        T cached$dc0f261;
        cached$dc0f261 = getCached$dc0f261();
        if (cached$dc0f261 == null) {
            cached$dc0f261 = valueLoader.load(context);
            if (cached$dc0f261 == null) {
                throw new NullPointerException();
            }
            cacheValue$127ac70f(cached$dc0f261);
        }
        return cached$dc0f261;
    }
}
