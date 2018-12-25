package com.bumptech.glide.load.model;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.data.DataFetcher;
import com.google.firebase.analytics.FirebaseAnalytics.Param;

public abstract class UriLoader<T> implements ModelLoader<Uri, T> {
    private final Context context;
    private final ModelLoader<GlideUrl, T> urlLoader;

    protected abstract DataFetcher<T> getAssetPathFetcher(Context context, String str);

    protected abstract DataFetcher<T> getLocalUriFetcher(Context context, Uri uri);

    public final /* bridge */ /* synthetic */ DataFetcher getResourceFetcher(Object obj, int i, int i2) {
        Object obj2;
        Uri uri = (Uri) obj;
        String scheme = uri.getScheme();
        if (!("file".equals(scheme) || Param.CONTENT.equals(scheme))) {
            if (!"android.resource".equals(scheme)) {
                obj2 = null;
                if (obj2 != null) {
                    return (this.urlLoader == null && ("http".equals(scheme) || "https".equals(scheme))) ? this.urlLoader.getResourceFetcher(new GlideUrl(uri.toString()), i, i2) : null;
                } else {
                    if (AssetUriParser.isAssetUri(uri) != 0) {
                        return getLocalUriFetcher(this.context, uri);
                    }
                    return getAssetPathFetcher(this.context, AssetUriParser.toAssetPath(uri));
                }
            }
        }
        obj2 = 1;
        if (obj2 != null) {
            if (this.urlLoader == null) {
            }
        } else if (AssetUriParser.isAssetUri(uri) != 0) {
            return getLocalUriFetcher(this.context, uri);
        } else {
            return getAssetPathFetcher(this.context, AssetUriParser.toAssetPath(uri));
        }
    }

    public UriLoader(Context context, ModelLoader<GlideUrl, T> modelLoader) {
        this.context = context;
        this.urlLoader = modelLoader;
    }
}
