package io.fabric.sdk.android.services.events;

import android.content.Context;
import android.support.v7.recyclerview.C0945R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public final class GZIPQueueFileEventStorage extends C0945R {
    public GZIPQueueFileEventStorage(Context context, File file, String str, String str2) throws IOException {
        super(context, file, str, str2);
    }

    public final OutputStream getMoveOutputStream(File file) throws IOException {
        return new GZIPOutputStream(new FileOutputStream(file));
    }
}
