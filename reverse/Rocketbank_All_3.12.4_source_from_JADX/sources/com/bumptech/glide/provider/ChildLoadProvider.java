package com.bumptech.glide.provider;

import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;

public final class ChildLoadProvider<A, T, Z, R> implements LoadProvider<A, T, Z, R>, Cloneable {
    private ResourceDecoder<File, Z> cacheDecoder;
    private final LoadProvider<A, T, Z, R> parent;
    private ResourceDecoder<T, Z> sourceDecoder;
    private AnimatorUpdateListener<T> sourceEncoder$527e0935;

    public ChildLoadProvider(LoadProvider<A, T, Z, R> loadProvider) {
        this.parent = loadProvider;
    }

    public final ModelLoader<A, T> getModelLoader() {
        return this.parent.getModelLoader();
    }

    public final void setCacheDecoder(ResourceDecoder<File, Z> resourceDecoder) {
        this.cacheDecoder = resourceDecoder;
    }

    public final void setSourceDecoder(ResourceDecoder<T, Z> resourceDecoder) {
        this.sourceDecoder = resourceDecoder;
    }

    public final void setSourceEncoder$2afe9be6(AnimatorUpdateListener<T> animatorUpdateListener) {
        this.sourceEncoder$527e0935 = animatorUpdateListener;
    }

    public final ResourceDecoder<File, Z> getCacheDecoder() {
        if (this.cacheDecoder != null) {
            return this.cacheDecoder;
        }
        return this.parent.getCacheDecoder();
    }

    public final ResourceDecoder<T, Z> getSourceDecoder() {
        if (this.sourceDecoder != null) {
            return this.sourceDecoder;
        }
        return this.parent.getSourceDecoder();
    }

    public final AnimatorUpdateListener<T> getSourceEncoder$2e726854() {
        if (this.sourceEncoder$527e0935 != null) {
            return this.sourceEncoder$527e0935;
        }
        return this.parent.getSourceEncoder$2e726854();
    }

    public final AnimatorUpdateListener<Z> getEncoder$743e27e$2e726854() {
        return this.parent.getEncoder$743e27e$2e726854();
    }

    public final ResourceTranscoder<Z, R> getTranscoder() {
        return this.parent.getTranscoder();
    }

    public final ChildLoadProvider<A, T, Z, R> clone() {
        try {
            return (ChildLoadProvider) super.clone();
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
