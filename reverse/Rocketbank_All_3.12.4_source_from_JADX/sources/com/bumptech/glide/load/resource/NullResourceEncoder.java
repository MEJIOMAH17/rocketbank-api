package com.bumptech.glide.load.resource;

import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.OutputStream;

public final class NullResourceEncoder<T> implements AnimatorUpdateListener<T> {
    private static final NullResourceEncoder<?> NULL_ENCODER = new NullResourceEncoder();

    public final /* bridge */ /* synthetic */ boolean encode(Object obj, OutputStream outputStream) {
        return false;
    }

    public final String getId() {
        return "";
    }

    public static <T> NullResourceEncoder<T> get() {
        return NULL_ENCODER;
    }
}
