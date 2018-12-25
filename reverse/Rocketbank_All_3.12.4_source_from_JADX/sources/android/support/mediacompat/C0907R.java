package android.support.mediacompat;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.support.compat.C0886R.string;
import android.support.constraint.C0887R;
import android.support.coreui.C0888R.style;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.file.FileResource;
import com.bumptech.glide.load.resource.file.FileToStreamDecoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: android.support.mediacompat.R */
public final class C0907R implements ResourceDecoder<ImageVideoWrapper, Bitmap> {
    private final ResourceDecoder<ParcelFileDescriptor, Bitmap> fileDescriptorDecoder;
    private final ResourceDecoder<InputStream, Bitmap> streamDecoder;

    /* renamed from: android.support.mediacompat.R$color */
    public static final class color implements DataLoadProvider<ImageVideoWrapper, Bitmap> {
        private final ResourceDecoder<File, Bitmap> cacheDecoder;
        private final AnimatorUpdateListener<Bitmap> encoder$8b2b29d$527e0935;
        private final C0907R sourceDecoder$43461fc5;
        private final string sourceEncoder$f0e4596;

        public color(DataLoadProvider<InputStream, Bitmap> dataLoadProvider, DataLoadProvider<ParcelFileDescriptor, Bitmap> dataLoadProvider2) {
            this.encoder$8b2b29d$527e0935 = dataLoadProvider.getEncoder$743e27e$2e726854();
            this.sourceEncoder$f0e4596 = new string(dataLoadProvider.getSourceEncoder$2e726854(), dataLoadProvider2.getSourceEncoder$2e726854());
            this.cacheDecoder = dataLoadProvider.getCacheDecoder();
            this.sourceDecoder$43461fc5 = new C0907R(dataLoadProvider.getSourceDecoder(), dataLoadProvider2.getSourceDecoder());
        }

        public final ResourceDecoder<File, Bitmap> getCacheDecoder() {
            return this.cacheDecoder;
        }

        public final ResourceDecoder<ImageVideoWrapper, Bitmap> getSourceDecoder() {
            return this.sourceDecoder$43461fc5;
        }

        public final AnimatorUpdateListener<ImageVideoWrapper> getSourceEncoder$2e726854() {
            return this.sourceEncoder$f0e4596;
        }

        public final AnimatorUpdateListener<Bitmap> getEncoder$743e27e$2e726854() {
            return this.encoder$8b2b29d$527e0935;
        }
    }

    /* renamed from: android.support.mediacompat.R$id */
    public static final class id implements DataLoadProvider<InputStream, Bitmap> {
        private final FileToStreamDecoder<Bitmap> cacheDecoder;
        private final integer decoder$152dc1a5;
        private final BitmapEncoder encoder;
        private final C0887R sourceEncoder$3e7a537b = new C0887R();

        public id(BitmapPool bitmapPool, DecodeFormat decodeFormat) {
            this.decoder$152dc1a5 = new integer(bitmapPool, decodeFormat);
            this.encoder = new BitmapEncoder();
            this.cacheDecoder = new FileToStreamDecoder(this.decoder$152dc1a5);
        }

        public final ResourceDecoder<File, Bitmap> getCacheDecoder() {
            return this.cacheDecoder;
        }

        public final ResourceDecoder<InputStream, Bitmap> getSourceDecoder() {
            return this.decoder$152dc1a5;
        }

        public final AnimatorUpdateListener<InputStream> getSourceEncoder$2e726854() {
            return this.sourceEncoder$3e7a537b;
        }

        public final AnimatorUpdateListener<Bitmap> getEncoder$743e27e$2e726854() {
            return this.encoder;
        }
    }

    /* renamed from: android.support.mediacompat.R$integer */
    public static final class integer implements ResourceDecoder<InputStream, Bitmap> {
        private BitmapPool bitmapPool;
        private DecodeFormat decodeFormat;
        private final Downsampler downsampler;
        private String id;

        public integer(BitmapPool bitmapPool, DecodeFormat decodeFormat) {
            this(Downsampler.AT_LEAST, bitmapPool, decodeFormat);
        }

        public integer(Downsampler downsampler, BitmapPool bitmapPool, DecodeFormat decodeFormat) {
            this.downsampler = downsampler;
            this.bitmapPool = bitmapPool;
            this.decodeFormat = decodeFormat;
        }

        public final String getId() {
            if (this.id == null) {
                StringBuilder stringBuilder = new StringBuilder("StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap");
                stringBuilder.append(this.downsampler.getId());
                stringBuilder.append(this.decodeFormat.name());
                this.id = stringBuilder.toString();
            }
            return this.id;
        }

        public final /* bridge */ /* synthetic */ Resource decode(Object obj, int i, int i2) throws IOException {
            obj = this.downsampler.decode((InputStream) obj, this.bitmapPool, i, i2, this.decodeFormat);
            return obj == null ? null : new style(obj, this.bitmapPool);
        }
    }

    /* renamed from: android.support.mediacompat.R$layout */
    public static final class layout implements ResourceDecoder<File, File> {
        public final String getId() {
            return "";
        }

        public final /* bridge */ /* synthetic */ Resource decode(Object obj, int i, int i2) throws IOException {
            return new FileResource((File) obj);
        }
    }

    public final String getId() {
        return "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }

    public C0907R(ResourceDecoder<InputStream, Bitmap> resourceDecoder, ResourceDecoder<ParcelFileDescriptor, Bitmap> resourceDecoder2) {
        this.streamDecoder = resourceDecoder;
        this.fileDescriptorDecoder = resourceDecoder2;
    }

    private Resource<Bitmap> decode(ImageVideoWrapper imageVideoWrapper, int i, int i2) throws IOException {
        Resource<Bitmap> decode;
        InputStream stream = imageVideoWrapper.getStream();
        if (stream != null) {
            try {
                decode = this.streamDecoder.decode(stream, i, i2);
            } catch (Throwable e) {
                if (Log.isLoggable("ImageVideoDecoder", 2)) {
                    Log.v("ImageVideoDecoder", "Failed to load image from stream, trying FileDescriptor", e);
                }
            }
            if (decode == null) {
                return decode;
            }
            imageVideoWrapper = imageVideoWrapper.getFileDescriptor();
            return imageVideoWrapper == null ? this.fileDescriptorDecoder.decode(imageVideoWrapper, i, i2) : decode;
        }
        decode = null;
        if (decode == null) {
            return decode;
        }
        imageVideoWrapper = imageVideoWrapper.getFileDescriptor();
        if (imageVideoWrapper == null) {
        }
    }
}
