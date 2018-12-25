package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;
import okhttp3.OkHttpClient;

public final class OkHttpUrlLoader implements ModelLoader<GlideUrl, InputStream> {
    private final okhttp3.Call.Factory client;

    public static class Factory implements ModelLoaderFactory<GlideUrl, InputStream> {
        private static volatile okhttp3.Call.Factory internalClient;
        private okhttp3.Call.Factory client;

        public Factory() {
            this(getInternalClient());
        }

        public Factory(okhttp3.Call.Factory factory) {
            this.client = factory;
        }

        private static okhttp3.Call.Factory getInternalClient() {
            if (internalClient == null) {
                synchronized (Factory.class) {
                    if (internalClient == null) {
                        internalClient = new OkHttpClient();
                    }
                }
            }
            return internalClient;
        }

        public final ModelLoader<GlideUrl, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new OkHttpUrlLoader(this.client);
        }
    }

    public final /* bridge */ /* synthetic */ DataFetcher getResourceFetcher(Object obj, int i, int i2) {
        return new OkHttpStreamFetcher(this.client, (GlideUrl) obj);
    }

    public OkHttpUrlLoader(okhttp3.Call.Factory factory) {
        this.client = factory;
    }
}
