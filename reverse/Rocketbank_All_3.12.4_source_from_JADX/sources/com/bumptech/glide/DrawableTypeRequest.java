package com.bumptech.glide;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.support.v4.os.BuildCompat;
import android.support.v4.os.ParcelableCompat;
import com.bumptech.glide.load.model.ImageVideoModelLoader;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.target.Target;
import java.io.File;
import java.io.InputStream;

public final class DrawableTypeRequest<ModelType> extends DrawableRequestBuilder<ModelType> {
    private final ModelLoader<ModelType, ParcelFileDescriptor> fileDescriptorModelLoader;
    private final RequestManager optionsApplier$56025085;
    private final ModelLoader<ModelType, InputStream> streamModelLoader;

    DrawableTypeRequest(Class<ModelType> cls, ModelLoader<ModelType, InputStream> modelLoader, ModelLoader<ModelType, ParcelFileDescriptor> modelLoader2, Context context, Glide glide, BuildCompat buildCompat, Lifecycle lifecycle, RequestManager requestManager) {
        LoadProvider loadProvider;
        DrawableRequestBuilder drawableRequestBuilder = this;
        ModelLoader<ModelType, InputStream> modelLoader3 = modelLoader;
        ModelLoader<ModelType, ParcelFileDescriptor> modelLoader4 = modelLoader2;
        Glide glide2 = glide;
        Class cls2 = GifBitmapWrapper.class;
        Class cls3 = GlideDrawable.class;
        if (modelLoader3 == null && modelLoader4 == null) {
            loadProvider = null;
        } else {
            loadProvider = new ParcelableCompat(new ImageVideoModelLoader(modelLoader3, modelLoader4), glide2.buildTranscoder(cls2, cls3), glide2.buildDataProvider(ImageVideoWrapper.class, cls2));
        }
        super(context, cls, loadProvider, glide2, buildCompat, lifecycle);
        drawableRequestBuilder.streamModelLoader = modelLoader3;
        drawableRequestBuilder.fileDescriptorModelLoader = modelLoader4;
        drawableRequestBuilder.optionsApplier$56025085 = requestManager;
    }

    public final BitmapTypeRequest<ModelType> asBitmap() {
        return new BitmapTypeRequest(this, this.streamModelLoader, this.fileDescriptorModelLoader, this.optionsApplier$56025085);
    }

    public final <Y extends Target<File>> Y downloadOnly(Y y) {
        return new GenericTranscodeRequest(File.class, this, this.streamModelLoader, InputStream.class, File.class, this.optionsApplier$56025085).downloadOnly(y);
    }
}
