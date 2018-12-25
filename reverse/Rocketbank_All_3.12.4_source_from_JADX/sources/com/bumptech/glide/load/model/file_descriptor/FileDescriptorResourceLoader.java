package com.bumptech.glide.load.model.file_descriptor;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ResourceLoader;

public final class FileDescriptorResourceLoader extends ResourceLoader<ParcelFileDescriptor> implements OnLoadCompleteListener<Integer> {

    public static class Factory implements ModelLoaderFactory<Integer, ParcelFileDescriptor> {
        public final ModelLoader<Integer, ParcelFileDescriptor> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new FileDescriptorResourceLoader(context, genericLoaderFactory.buildModelLoader(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public FileDescriptorResourceLoader(Context context, ModelLoader<Uri, ParcelFileDescriptor> modelLoader) {
        super(context, (ModelLoader) modelLoader);
    }
}
