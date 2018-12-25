package com.bumptech.glide.load.resource;

import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.OutputStream;

public final class NullEncoder<T> implements AnimatorUpdateListener<T> {
    private static final NullEncoder<?> NULL_ENCODER = new NullEncoder();

    public final boolean encode(T t, OutputStream outputStream) {
        return false;
    }

    public final String getId() {
        return "";
    }

    public static <T> AnimatorUpdateListener<T> get$2e726854() {
        return NULL_ENCODER;
    }
}
