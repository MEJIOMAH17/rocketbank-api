package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

public final class FileDescriptorAssetPathFetcher extends AssetPathFetcher<ParcelFileDescriptor> {
    protected final /* bridge */ /* synthetic */ void close(Object obj) throws IOException {
        ((ParcelFileDescriptor) obj).close();
    }

    public FileDescriptorAssetPathFetcher(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    protected final /* bridge */ /* synthetic */ Object loadResource(AssetManager assetManager, String str) throws IOException {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }
}
