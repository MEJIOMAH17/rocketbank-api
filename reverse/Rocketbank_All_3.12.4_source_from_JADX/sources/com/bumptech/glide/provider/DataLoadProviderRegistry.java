package com.bumptech.glide.provider;

import android.support.v4.util.DebugUtils;
import java.util.HashMap;
import java.util.Map;

public final class DataLoadProviderRegistry {
    private static final DebugUtils GET_KEY$48603a6b = new DebugUtils();
    private final Map<DebugUtils, DataLoadProvider<?, ?>> providers = new HashMap();

    public final <T, Z> void register(Class<T> cls, Class<Z> cls2, DataLoadProvider<T, Z> dataLoadProvider) {
        this.providers.put(new DebugUtils(cls, cls2), dataLoadProvider);
    }

    public final <T, Z> DataLoadProvider<T, Z> get(Class<T> cls, Class<Z> cls2) {
        DataLoadProvider dataLoadProvider;
        synchronized (GET_KEY$48603a6b) {
            GET_KEY$48603a6b.set(cls, cls2);
            dataLoadProvider = (DataLoadProvider) this.providers.get(GET_KEY$48603a6b);
        }
        return dataLoadProvider == null ? EmptyDataLoadProvider.get() : dataLoadProvider;
    }
}
