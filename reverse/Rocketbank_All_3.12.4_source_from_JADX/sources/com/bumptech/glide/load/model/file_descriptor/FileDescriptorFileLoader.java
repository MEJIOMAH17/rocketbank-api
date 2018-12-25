package com.bumptech.glide.load.model.file_descriptor;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.compat.C0886R.layout;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.File;

public final class FileDescriptorFileLoader extends layout<ParcelFileDescriptor> implements OnLoadCompleteListener<File> {

    public static class Factory implements ModelLoaderFactory<File, ParcelFileDescriptor> {
        public final ModelLoader<File, ParcelFileDescriptor> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new FileDescriptorFileLoader(genericLoaderFactory.buildModelLoader(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public FileDescriptorFileLoader(ModelLoader<Uri, ParcelFileDescriptor> modelLoader) {
        super(modelLoader);
    }
}
