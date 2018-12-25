package com.bumptech.glide.load.resource.file;

import android.support.constraint.C0887R;
import android.support.mediacompat.C0907R.layout;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.NullResourceEncoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public final class StreamFileDataLoadProvider implements DataLoadProvider<InputStream, File> {
    private static final ErrorSourceDecoder ERROR_DECODER = new ErrorSourceDecoder();
    private final ResourceDecoder<File, File> cacheDecoder = new layout();
    private final AnimatorUpdateListener<InputStream> encoder$527e0935 = new C0887R();

    static class ErrorSourceDecoder implements ResourceDecoder<InputStream, File> {
        public final String getId() {
            return "";
        }

        private ErrorSourceDecoder() {
        }

        public final /* bridge */ /* synthetic */ Resource decode(Object obj, int i, int i2) throws IOException {
            throw new Error("You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder");
        }
    }

    public final ResourceDecoder<File, File> getCacheDecoder() {
        return this.cacheDecoder;
    }

    public final ResourceDecoder<InputStream, File> getSourceDecoder() {
        return ERROR_DECODER;
    }

    public final AnimatorUpdateListener<InputStream> getSourceEncoder$2e726854() {
        return this.encoder$527e0935;
    }

    public final AnimatorUpdateListener<File> getEncoder$743e27e$2e726854() {
        return NullResourceEncoder.get();
    }
}
