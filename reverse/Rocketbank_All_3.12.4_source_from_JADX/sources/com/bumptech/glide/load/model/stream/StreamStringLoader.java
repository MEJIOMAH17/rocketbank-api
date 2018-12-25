package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import android.support.coreui.C0888R;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;

public final class StreamStringLoader extends C0888R<InputStream> implements OnLoadCompleteListener<String> {

    public static class Factory implements ModelLoaderFactory<String, InputStream> {
        public final ModelLoader<String, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamStringLoader(genericLoaderFactory.buildModelLoader(Uri.class, InputStream.class));
        }
    }

    public StreamStringLoader(ModelLoader<Uri, InputStream> modelLoader) {
        super(modelLoader);
    }
}
