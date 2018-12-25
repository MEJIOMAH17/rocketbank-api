package com.bumptech.glide.load.resource.gifbitmap;

import android.graphics.Bitmap;
import android.support.coreui.C0888R.style;
import android.support.v4.content.res.FontResourcesParserCompat;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.ByteArrayPool;
import java.io.IOException;
import java.io.InputStream;

public final class GifBitmapWrapperResourceDecoder implements ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> {
    private static final ImageTypeParser DEFAULT_PARSER = new ImageTypeParser();
    private static final BufferedStreamFactory DEFAULT_STREAM_FACTORY = new BufferedStreamFactory();
    private final ResourceDecoder<ImageVideoWrapper, Bitmap> bitmapDecoder;
    private final BitmapPool bitmapPool;
    private final ResourceDecoder<InputStream, GifDrawable> gifDecoder;
    private String id;
    private final ImageTypeParser parser;
    private final BufferedStreamFactory streamFactory;

    static class BufferedStreamFactory {
        BufferedStreamFactory() {
        }
    }

    static class ImageTypeParser {
        ImageTypeParser() {
        }
    }

    public GifBitmapWrapperResourceDecoder(ResourceDecoder<ImageVideoWrapper, Bitmap> resourceDecoder, ResourceDecoder<InputStream, GifDrawable> resourceDecoder2, BitmapPool bitmapPool) {
        this(resourceDecoder, resourceDecoder2, bitmapPool, DEFAULT_PARSER, DEFAULT_STREAM_FACTORY);
    }

    private GifBitmapWrapperResourceDecoder(ResourceDecoder<ImageVideoWrapper, Bitmap> resourceDecoder, ResourceDecoder<InputStream, GifDrawable> resourceDecoder2, BitmapPool bitmapPool, ImageTypeParser imageTypeParser, BufferedStreamFactory bufferedStreamFactory) {
        this.bitmapDecoder = resourceDecoder;
        this.gifDecoder = resourceDecoder2;
        this.bitmapPool = bitmapPool;
        this.parser = imageTypeParser;
        this.streamFactory = bufferedStreamFactory;
    }

    private Resource<GifBitmapWrapper> decode(ImageVideoWrapper imageVideoWrapper, int i, int i2) throws IOException {
        ByteArrayPool byteArrayPool = ByteArrayPool.get();
        byte[] bytes = byteArrayPool.getBytes();
        try {
            GifBitmapWrapper gifBitmapWrapper;
            if (imageVideoWrapper.getStream() != null) {
                InputStream recyclableBufferedInputStream = new RecyclableBufferedInputStream(imageVideoWrapper.getStream(), bytes);
                recyclableBufferedInputStream.mark(2048);
                ImageType type = new ImageHeaderParser(recyclableBufferedInputStream).getType();
                recyclableBufferedInputStream.reset();
                if (type == ImageType.GIF) {
                    Resource decode = this.gifDecoder.decode(recyclableBufferedInputStream, i, i2);
                    if (decode != null) {
                        GifDrawable gifDrawable = (GifDrawable) decode.get();
                        gifBitmapWrapper = gifDrawable.getFrameCount() > 1 ? new GifBitmapWrapper(null, decode) : new GifBitmapWrapper(new style(gifDrawable.getFirstFrame(), this.bitmapPool), null);
                        if (gifBitmapWrapper == null) {
                            gifBitmapWrapper = decodeBitmapWrapper(new ImageVideoWrapper(recyclableBufferedInputStream, imageVideoWrapper.getFileDescriptor()), i, i2);
                        }
                    }
                }
                gifBitmapWrapper = null;
                if (gifBitmapWrapper == null) {
                    gifBitmapWrapper = decodeBitmapWrapper(new ImageVideoWrapper(recyclableBufferedInputStream, imageVideoWrapper.getFileDescriptor()), i, i2);
                }
            } else {
                gifBitmapWrapper = decodeBitmapWrapper(imageVideoWrapper, i, i2);
            }
            byteArrayPool.releaseBytes(bytes);
            if (gifBitmapWrapper != null) {
                return new FontResourcesParserCompat(gifBitmapWrapper);
            }
            return null;
        } catch (Throwable th) {
            byteArrayPool.releaseBytes(bytes);
        }
    }

    private GifBitmapWrapper decodeBitmapWrapper(ImageVideoWrapper imageVideoWrapper, int i, int i2) throws IOException {
        imageVideoWrapper = this.bitmapDecoder.decode(imageVideoWrapper, i, i2);
        if (imageVideoWrapper != null) {
            return new GifBitmapWrapper(imageVideoWrapper, null);
        }
        return null;
    }

    public final String getId() {
        if (this.id == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.gifDecoder.getId());
            stringBuilder.append(this.bitmapDecoder.getId());
            this.id = stringBuilder.toString();
        }
        return this.id;
    }
}
