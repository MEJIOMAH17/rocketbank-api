package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.StreamAssetPathFetcher;
import com.bumptech.glide.load.data.StreamLocalUriFetcher;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.UriLoader;
import java.io.InputStream;

public final class StreamUriLoader extends UriLoader<InputStream> implements OnLoadCompleteListener<Uri> {

    public static class Factory implements ModelLoaderFactory<Uri, InputStream> {
        public final ModelLoader<Uri, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamUriLoader(context, genericLoaderFactory.buildModelLoader(GlideUrl.class, InputStream.class));
        }
    }

    public StreamUriLoader(Context context, ModelLoader<GlideUrl, InputStream> modelLoader) {
        super(context, modelLoader);
    }

    protected final DataFetcher<InputStream> getLocalUriFetcher(Context context, Uri uri) {
        return new StreamLocalUriFetcher(context, uri);
    }

    protected final DataFetcher<InputStream> getAssetPathFetcher(Context context, String str) {
        return new StreamAssetPathFetcher(context.getApplicationContext().getAssets(), str);
    }
}
