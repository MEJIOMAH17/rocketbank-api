package com.bumptech.glide;

import android.content.Context;
import android.support.v4.os.BuildCompat;
import android.support.v4.os.ParcelableCompat;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.request.target.Target;
import java.io.File;

public final class GenericTranscodeRequest<ModelType, DataType, ResourceType> extends GenericRequestBuilder<ModelType, DataType, ResourceType, ResourceType> {
    private final Class<DataType> dataClass;
    private final ModelLoader<ModelType, DataType> modelLoader;
    private final RequestManager optionsApplier$56025085;
    private final Class<ResourceType> resourceClass;

    GenericTranscodeRequest(Class<ResourceType> cls, GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder, ModelLoader<ModelType, DataType> modelLoader, Class<DataType> cls2, Class<ResourceType> cls3, RequestManager requestManager) {
        super(new ParcelableCompat(modelLoader, UnitTranscoder.get(), genericRequestBuilder.glide.buildDataProvider(cls2, cls3)), cls, genericRequestBuilder);
        this.modelLoader = modelLoader;
        this.dataClass = cls2;
        this.resourceClass = cls3;
        this.optionsApplier$56025085 = requestManager;
    }

    GenericTranscodeRequest(Context context, Glide glide, Class<ModelType> cls, ModelLoader<ModelType, DataType> modelLoader, Class<DataType> cls2, Class<ResourceType> cls3, BuildCompat buildCompat, Lifecycle lifecycle, RequestManager requestManager) {
        ModelLoader<ModelType, DataType> modelLoader2 = modelLoader;
        Class<DataType> cls4 = cls2;
        Class<ResourceType> cls5 = cls3;
        Glide glide2 = glide;
        super(context, cls, new ParcelableCompat(modelLoader2, UnitTranscoder.get(), glide2.buildDataProvider(cls4, cls5)), cls5, glide2, buildCompat, lifecycle);
        this.modelLoader = modelLoader2;
        this.dataClass = cls4;
        this.resourceClass = cls5;
        this.optionsApplier$56025085 = requestManager;
    }

    public final <Y extends Target<File>> Y downloadOnly(Y y) {
        return new GenericRequestBuilder(new ParcelableCompat(this.modelLoader, UnitTranscoder.get(), this.glide.buildDataProvider(this.dataClass, File.class)), File.class, this).priority(Priority.LOW).diskCacheStrategy(DiskCacheStrategy.SOURCE).skipMemoryCache(true).into((Target) y);
    }
}
