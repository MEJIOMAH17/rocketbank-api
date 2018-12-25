package com.bumptech.glide.provider;

import com.bumptech.glide.load.ResourceDecoder;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;

public final class EmptyDataLoadProvider<T, Z> implements DataLoadProvider<T, Z> {
    private static final DataLoadProvider<?, ?> EMPTY_DATA_LOAD_PROVIDER = new EmptyDataLoadProvider();

    public final ResourceDecoder<File, Z> getCacheDecoder() {
        return null;
    }

    public final AnimatorUpdateListener<Z> getEncoder$743e27e$2e726854() {
        return null;
    }

    public final ResourceDecoder<T, Z> getSourceDecoder() {
        return null;
    }

    public final AnimatorUpdateListener<T> getSourceEncoder$2e726854() {
        return null;
    }

    public static <T, Z> DataLoadProvider<T, Z> get() {
        return EMPTY_DATA_LOAD_PROVIDER;
    }
}
