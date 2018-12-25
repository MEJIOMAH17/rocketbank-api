package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

public final class StreamAssetPathFetcher extends AssetPathFetcher<InputStream> {
    protected final /* bridge */ /* synthetic */ void close(Object obj) throws IOException {
        ((InputStream) obj).close();
    }

    public StreamAssetPathFetcher(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    protected final /* bridge */ /* synthetic */ Object loadResource(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }
}
