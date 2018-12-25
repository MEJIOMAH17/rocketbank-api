package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import android.support.compat.C0886R.layout;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.File;
import java.io.InputStream;

public final class StreamFileLoader extends layout<InputStream> implements OnLoadCompleteListener<File> {

    public static class Factory implements ModelLoaderFactory<File, InputStream> {
        public final ModelLoader<File, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamFileLoader(genericLoaderFactory.buildModelLoader(Uri.class, InputStream.class));
        }
    }

    public StreamFileLoader(ModelLoader<Uri, InputStream> modelLoader) {
        super(modelLoader);
    }
}
