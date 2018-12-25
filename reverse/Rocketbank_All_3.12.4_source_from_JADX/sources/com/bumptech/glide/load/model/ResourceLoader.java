package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.data.DataFetcher;

public class ResourceLoader<T> implements ModelLoader<Integer, T> {
    private final Resources resources;
    private final ModelLoader<Uri, T> uriLoader;

    public ResourceLoader(Context context, ModelLoader<Uri, T> modelLoader) {
        this(context.getResources(), (ModelLoader) modelLoader);
    }

    private ResourceLoader(Resources resources, ModelLoader<Uri, T> modelLoader) {
        this.resources = resources;
        this.uriLoader = modelLoader;
    }

    private DataFetcher<T> getResourceFetcher(Integer num, int i, int i2) {
        Object parse;
        try {
            StringBuilder stringBuilder = new StringBuilder("android.resource://");
            stringBuilder.append(this.resources.getResourcePackageName(num.intValue()));
            stringBuilder.append('/');
            stringBuilder.append(this.resources.getResourceTypeName(num.intValue()));
            stringBuilder.append('/');
            stringBuilder.append(this.resources.getResourceEntryName(num.intValue()));
            parse = Uri.parse(stringBuilder.toString());
        } catch (Throwable e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: ".concat(String.valueOf(num)), e);
            }
            parse = null;
        }
        if (parse != null) {
            return this.uriLoader.getResourceFetcher(parse, i, i2);
        }
        return null;
    }
}
