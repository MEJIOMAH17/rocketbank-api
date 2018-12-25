package com.bumptech.glide;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.support.v4.os.ParcelableCompat;
import com.bumptech.glide.load.model.ImageVideoModelLoader;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.provider.LoadProvider;
import java.io.InputStream;

public final class BitmapTypeRequest<ModelType> extends BitmapRequestBuilder<ModelType, Bitmap> {
    private final ModelLoader<ModelType, ParcelFileDescriptor> fileDescriptorModelLoader;
    private final Glide glide;
    private final RequestManager optionsApplier$56025085;
    private final ModelLoader<ModelType, InputStream> streamModelLoader;

    BitmapTypeRequest(GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder, ModelLoader<ModelType, InputStream> modelLoader, ModelLoader<ModelType, ParcelFileDescriptor> modelLoader2, RequestManager requestManager) {
        LoadProvider loadProvider;
        Glide glide = genericRequestBuilder.glide;
        Class cls = Bitmap.class;
        if (modelLoader == null && modelLoader2 == null) {
            loadProvider = null;
        } else {
            loadProvider = new ParcelableCompat(new ImageVideoModelLoader(modelLoader, modelLoader2), glide.buildTranscoder(Bitmap.class, cls), glide.buildDataProvider(ImageVideoWrapper.class, Bitmap.class));
        }
        super(loadProvider, Bitmap.class, genericRequestBuilder);
        this.streamModelLoader = modelLoader;
        this.fileDescriptorModelLoader = modelLoader2;
        this.glide = genericRequestBuilder.glide;
        this.optionsApplier$56025085 = requestManager;
    }
}
