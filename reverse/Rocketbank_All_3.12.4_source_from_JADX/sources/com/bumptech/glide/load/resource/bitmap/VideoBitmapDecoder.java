package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

public final class VideoBitmapDecoder implements BitmapDecoder<ParcelFileDescriptor> {
    private static final MediaMetadataRetrieverFactory DEFAULT_FACTORY = new MediaMetadataRetrieverFactory();
    private MediaMetadataRetrieverFactory factory;
    private int frame;

    static class MediaMetadataRetrieverFactory {
        MediaMetadataRetrieverFactory() {
        }
    }

    public final String getId() {
        return "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }

    public VideoBitmapDecoder() {
        this(DEFAULT_FACTORY);
    }

    private VideoBitmapDecoder(MediaMetadataRetrieverFactory mediaMetadataRetrieverFactory) {
        this.factory = mediaMetadataRetrieverFactory;
        this.frame = -1;
    }

    public final Bitmap decode$5e836846(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        Bitmap frameAtTime;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        if (this.frame >= 0) {
            frameAtTime = mediaMetadataRetriever.getFrameAtTime((long) this.frame);
        } else {
            frameAtTime = mediaMetadataRetriever.getFrameAtTime();
        }
        mediaMetadataRetriever.release();
        parcelFileDescriptor.close();
        return frameAtTime;
    }
}
