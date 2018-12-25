package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class LocalUriFetcher<T> implements DataFetcher<T> {
    private final Context context;
    private T data;
    private final Uri uri;

    public final void cancel() {
    }

    protected abstract void close(T t) throws IOException;

    protected abstract T loadResource(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    public LocalUriFetcher(Context context, Uri uri) {
        this.context = context.getApplicationContext();
        this.uri = uri;
    }

    public final T loadData(Priority priority) throws Exception {
        this.data = loadResource(this.uri, this.context.getContentResolver());
        return this.data;
    }

    public final void cleanup() {
        if (this.data != null) {
            try {
                close(this.data);
            } catch (Throwable e) {
                if (Log.isLoggable("LocalUriFetcher", 2)) {
                    Log.v("LocalUriFetcher", "failed to close data", e);
                }
            }
        }
    }

    public final String getId() {
        return this.uri.toString();
    }
}
