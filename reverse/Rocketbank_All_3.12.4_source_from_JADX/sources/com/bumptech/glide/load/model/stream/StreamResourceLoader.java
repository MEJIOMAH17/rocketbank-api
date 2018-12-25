package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ResourceLoader;
import java.io.InputStream;

public final class StreamResourceLoader extends ResourceLoader<InputStream> implements OnLoadCompleteListener<Integer> {

    public static class Factory implements ModelLoaderFactory<Integer, InputStream> {
        public final ModelLoader<Integer, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamResourceLoader(context, genericLoaderFactory.buildModelLoader(Uri.class, InputStream.class));
        }
    }

    public StreamResourceLoader(Context context, ModelLoader<Uri, InputStream> modelLoader) {
        super(context, (ModelLoader) modelLoader);
    }
}
