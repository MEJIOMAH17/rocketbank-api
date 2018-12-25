package com.bumptech.glide.provider;

import com.bumptech.glide.load.ResourceDecoder;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;

public interface DataLoadProvider<T, Z> {
    ResourceDecoder<File, Z> getCacheDecoder();

    AnimatorUpdateListener<Z> getEncoder$743e27e$2e726854();

    ResourceDecoder<T, Z> getSourceDecoder();

    AnimatorUpdateListener<T> getSourceEncoder$2e726854();
}
