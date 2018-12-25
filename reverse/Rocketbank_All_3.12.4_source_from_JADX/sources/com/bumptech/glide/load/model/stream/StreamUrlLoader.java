package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.support.coreui.C0888R.attr;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;
import java.net.URL;

public final class StreamUrlLoader extends attr<InputStream> {

    public static class Factory implements ModelLoaderFactory<URL, InputStream> {
        public final ModelLoader<URL, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamUrlLoader(genericLoaderFactory.buildModelLoader(GlideUrl.class, InputStream.class));
        }
    }

    public StreamUrlLoader(ModelLoader<GlideUrl, InputStream> modelLoader) {
        super(modelLoader);
    }
}
