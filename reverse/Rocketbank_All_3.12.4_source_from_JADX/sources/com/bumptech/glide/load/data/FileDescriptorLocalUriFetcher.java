package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;

public final class FileDescriptorLocalUriFetcher extends LocalUriFetcher<ParcelFileDescriptor> {
    protected final /* bridge */ /* synthetic */ void close(Object obj) throws IOException {
        ((ParcelFileDescriptor) obj).close();
    }

    public FileDescriptorLocalUriFetcher(Context context, Uri uri) {
        super(context, uri);
    }

    protected final /* bridge */ /* synthetic */ Object loadResource(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        return contentResolver.openAssetFileDescriptor(uri, "r").getParcelFileDescriptor();
    }
}
