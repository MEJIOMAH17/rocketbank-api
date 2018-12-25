package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.support.compat.C0886R.integer;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;

public final class StreamByteArrayLoader implements OnLoadCompleteListener<byte[]> {
    private final String id;

    public static class Factory implements ModelLoaderFactory<byte[], InputStream> {
        public final ModelLoader<byte[], InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamByteArrayLoader();
        }
    }

    public final /* bridge */ /* synthetic */ DataFetcher getResourceFetcher(Object obj, int i, int i2) {
        return new integer((byte[]) obj, this.id);
    }

    public StreamByteArrayLoader() {
        this("");
    }

    @Deprecated
    private StreamByteArrayLoader(String str) {
        this.id = str;
    }
}
