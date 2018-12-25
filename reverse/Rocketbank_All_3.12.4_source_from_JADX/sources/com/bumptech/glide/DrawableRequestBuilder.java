package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.v4.os.BuildCompat;
import android.widget.ImageView;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.animation.DrawableCrossFadeFactory;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.target.Target;
import com.mikepenz.materialdrawer.DrawerUtils;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;

public class DrawableRequestBuilder<ModelType> extends GenericRequestBuilder<ModelType, ImageVideoWrapper, GifBitmapWrapper, GlideDrawable> {
    DrawableRequestBuilder(Context context, Class<ModelType> cls, LoadProvider<ModelType, ImageVideoWrapper, GifBitmapWrapper, GlideDrawable> loadProvider, Glide glide, BuildCompat buildCompat, Lifecycle lifecycle) {
        super(context, cls, loadProvider, GlideDrawable.class, glide, buildCompat, lifecycle);
        super.animate(new DrawableCrossFadeFactory());
    }

    public final DrawableRequestBuilder<ModelType> centerCrop() {
        super.transform(this.glide.getDrawableCenterCrop$481ff18a());
        return this;
    }

    public final DrawableRequestBuilder<ModelType> fitCenter() {
        super.transform(this.glide.getDrawableFitCenter$481ff18a());
        return this;
    }

    public final DrawableRequestBuilder<ModelType> bitmapTransform(Transformation<Bitmap>... transformationArr) {
        Transformation[] transformationArr2 = new DrawerUtils[transformationArr.length];
        for (int i = 0; i < transformationArr.length; i++) {
            transformationArr2[i] = new DrawerUtils(this.glide.getBitmapPool(), transformationArr[i]);
        }
        super.transform(transformationArr2);
        return this;
    }

    public final DrawableRequestBuilder<ModelType> crossFade() {
        super.animate(new DrawableCrossFadeFactory());
        return this;
    }

    public final DrawableRequestBuilder<ModelType> placeholder(int i) {
        super.placeholder(i);
        return this;
    }

    public final DrawableRequestBuilder<ModelType> placeholder(Drawable drawable) {
        super.placeholder(drawable);
        return this;
    }

    public final DrawableRequestBuilder<ModelType> error(int i) {
        super.error(i);
        return this;
    }

    public final DrawableRequestBuilder<ModelType> error(Drawable drawable) {
        super.error(drawable);
        return this;
    }

    public final DrawableRequestBuilder<ModelType> listener(RequestListener<? super ModelType, GlideDrawable> requestListener) {
        super.listener(requestListener);
        return this;
    }

    public final DrawableRequestBuilder<ModelType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        super.diskCacheStrategy(diskCacheStrategy);
        return this;
    }

    public final DrawableRequestBuilder<ModelType> override(int i, int i2) {
        super.override(i, i2);
        return this;
    }

    public final DrawableRequestBuilder<ModelType> dontTransform() {
        super.dontTransform();
        return this;
    }

    public final DrawableRequestBuilder<ModelType> signature(Key key) {
        super.signature(key);
        return this;
    }

    public final DrawableRequestBuilder<ModelType> load(ModelType modelType) {
        super.load(modelType);
        return this;
    }

    public final Target<GlideDrawable> into(ImageView imageView) {
        return super.into(imageView);
    }

    final void applyFitCenter() {
        super.transform(this.glide.getDrawableFitCenter$481ff18a());
    }

    final void applyCenterCrop() {
        super.transform(this.glide.getDrawableCenterCrop$481ff18a());
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder skipMemoryCache(boolean z) {
        super.skipMemoryCache(z);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder animate(GlideAnimationFactory glideAnimationFactory) {
        super.animate(glideAnimationFactory);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder dontAnimate() {
        super.dontAnimate();
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder transform(Transformation[] transformationArr) {
        super.transform(transformationArr);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder priority(Priority priority) {
        super.priority(priority);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder sourceEncoder$29772719(AnimatorUpdateListener animatorUpdateListener) {
        super.sourceEncoder$29772719(animatorUpdateListener);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder cacheDecoder(ResourceDecoder resourceDecoder) {
        super.cacheDecoder(resourceDecoder);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder decoder(ResourceDecoder resourceDecoder) {
        super.decoder(resourceDecoder);
        return this;
    }
}
