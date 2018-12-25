package com.bumptech.glide.load.resource.transcode;

import android.support.v4.util.DebugUtils;
import java.util.HashMap;
import java.util.Map;

public final class TranscoderRegistry {
    private static final DebugUtils GET_KEY$48603a6b = new DebugUtils();
    private final Map<DebugUtils, ResourceTranscoder<?, ?>> factories = new HashMap();

    public final <Z, R> void register(Class<Z> cls, Class<R> cls2, ResourceTranscoder<Z, R> resourceTranscoder) {
        this.factories.put(new DebugUtils(cls, cls2), resourceTranscoder);
    }

    public final <Z, R> ResourceTranscoder<Z, R> get(Class<Z> cls, Class<R> cls2) {
        if (cls.equals(cls2)) {
            return UnitTranscoder.get();
        }
        synchronized (GET_KEY$48603a6b) {
            GET_KEY$48603a6b.set(cls, cls2);
            ResourceTranscoder<Z, R> resourceTranscoder = (ResourceTranscoder) this.factories.get(GET_KEY$48603a6b);
        }
        if (resourceTranscoder != null) {
            return resourceTranscoder;
        }
        StringBuilder stringBuilder = new StringBuilder("No transcoder registered for ");
        stringBuilder.append(cls);
        stringBuilder.append(" and ");
        stringBuilder.append(cls2);
        throw new IllegalArgumentException(stringBuilder.toString());
    }
}
