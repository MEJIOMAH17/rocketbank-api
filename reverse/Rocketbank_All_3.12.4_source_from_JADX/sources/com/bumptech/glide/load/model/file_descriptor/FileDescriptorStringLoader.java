package com.bumptech.glide.load.model.file_descriptor;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.coreui.C0888R;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;

public final class FileDescriptorStringLoader extends C0888R<ParcelFileDescriptor> implements OnLoadCompleteListener<String> {

    public static class Factory implements ModelLoaderFactory<String, ParcelFileDescriptor> {
        public final ModelLoader<String, ParcelFileDescriptor> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new FileDescriptorStringLoader(genericLoaderFactory.buildModelLoader(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public FileDescriptorStringLoader(ModelLoader<Uri, ParcelFileDescriptor> modelLoader) {
        super(modelLoader);
    }
}
