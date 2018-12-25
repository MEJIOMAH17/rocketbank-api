package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.HttpUrlFetcher;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;

public final class HttpUrlGlideUrlLoader implements OnLoadCompleteListener<GlideUrl> {
    private final ModelCache<GlideUrl, GlideUrl> modelCache;

    public static class Factory implements ModelLoaderFactory<GlideUrl, InputStream> {
        private final ModelCache<GlideUrl, GlideUrl> modelCache = new ModelCache(500);

        public final ModelLoader<GlideUrl, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new HttpUrlGlideUrlLoader(this.modelCache);
        }
    }

    public final /* bridge */ /* synthetic */ DataFetcher getResourceFetcher(Object obj, int i, int i2) {
        obj = (GlideUrl) obj;
        if (this.modelCache != 0) {
            GlideUrl glideUrl = (GlideUrl) this.modelCache.get$74acb8df(obj);
            if (glideUrl == null) {
                this.modelCache.put$64124233(obj, obj);
            } else {
                obj = glideUrl;
            }
        }
        return new HttpUrlFetcher(obj);
    }

    public HttpUrlGlideUrlLoader() {
        this(null);
    }

    public HttpUrlGlideUrlLoader(ModelCache<GlideUrl, GlideUrl> modelCache) {
        this.modelCache = modelCache;
    }
}
