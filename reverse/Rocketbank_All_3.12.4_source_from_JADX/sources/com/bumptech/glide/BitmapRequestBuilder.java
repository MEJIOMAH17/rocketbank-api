package com.bumptech.glide;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.ParcelFileDescriptor;
import android.support.graphics.drawable.AnimatorInflaterCompat;
import android.support.mediacompat.C0907R;
import android.support.mediacompat.C0907R.integer;
import android.widget.ImageView;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.VideoBitmapDecoder;
import com.bumptech.glide.load.resource.file.FileToStreamDecoder;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.target.Target;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.InputStream;

public class BitmapRequestBuilder<ModelType, TranscodeType> extends GenericRequestBuilder<ModelType, ImageVideoWrapper, Bitmap, TranscodeType> {
    private final BitmapPool bitmapPool;
    private DecodeFormat decodeFormat;
    private Downsampler downsampler = Downsampler.AT_LEAST;
    private ResourceDecoder<InputStream, Bitmap> imageDecoder;
    private ResourceDecoder<ParcelFileDescriptor, Bitmap> videoDecoder;

    BitmapRequestBuilder(LoadProvider<ModelType, ImageVideoWrapper, Bitmap, TranscodeType> loadProvider, Class<TranscodeType> cls, GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder) {
        super(loadProvider, cls, genericRequestBuilder);
        this.bitmapPool = genericRequestBuilder.glide.getBitmapPool();
        this.decodeFormat = genericRequestBuilder.glide.getDecodeFormat();
        this.imageDecoder = new integer(this.bitmapPool, this.decodeFormat);
        this.videoDecoder = new AnimatorInflaterCompat(this.bitmapPool, this.decodeFormat);
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> format(DecodeFormat decodeFormat) {
        this.decodeFormat = decodeFormat;
        this.imageDecoder = new integer(this.downsampler, this.bitmapPool, decodeFormat);
        this.videoDecoder = new AnimatorInflaterCompat(new VideoBitmapDecoder(), this.bitmapPool, decodeFormat);
        super.cacheDecoder(new FileToStreamDecoder(new integer(this.downsampler, this.bitmapPool, decodeFormat)));
        super.decoder(new C0907R(this.imageDecoder, this.videoDecoder));
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> centerCrop() {
        super.transform(this.glide.getBitmapCenterCrop());
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> fitCenter() {
        super.transform(this.glide.getBitmapFitCenter());
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> transform(Transformation<Bitmap>... transformationArr) {
        super.transform(transformationArr);
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> dontAnimate() {
        super.dontAnimate();
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> placeholder(Drawable drawable) {
        super.placeholder(drawable);
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> error(int i) {
        super.error(i);
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> error(Drawable drawable) {
        super.error(drawable);
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> listener(RequestListener<? super ModelType, TranscodeType> requestListener) {
        super.listener(requestListener);
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        super.diskCacheStrategy(diskCacheStrategy);
        return this;
    }

    public final BitmapRequestBuilder<ModelType, TranscodeType> override(int i, int i2) {
        super.override(i, i2);
        return this;
    }

    public final Target<TranscodeType> into(ImageView imageView) {
        return super.into(imageView);
    }

    final void applyFitCenter() {
        super.transform(this.glide.getBitmapFitCenter());
    }

    final void applyCenterCrop() {
        super.transform(this.glide.getBitmapCenterCrop());
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder load(Object obj) {
        super.load(obj);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder signature(Key key) {
        super.signature(key);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder skipMemoryCache(boolean z) {
        super.skipMemoryCache(z);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder animate(GlideAnimationFactory glideAnimationFactory) {
        super.animate(glideAnimationFactory);
        return this;
    }

    public final /* bridge */ /* synthetic */ GenericRequestBuilder dontTransform() {
        super.dontTransform();
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
