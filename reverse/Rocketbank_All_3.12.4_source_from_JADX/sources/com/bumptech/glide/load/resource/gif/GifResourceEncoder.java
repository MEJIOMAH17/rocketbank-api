package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.support.coreui.C0888R.style;
import android.util.Log;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifencoder.AnimatedGifEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.util.LogTime;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.OutputStream;

public final class GifResourceEncoder implements AnimatorUpdateListener<GifDrawable> {
    private static final Factory FACTORY = new Factory();
    private final BitmapPool bitmapPool;
    private final Factory factory;
    private final BitmapProvider provider;

    static class Factory {
        Factory() {
        }
    }

    public final String getId() {
        return "";
    }

    public GifResourceEncoder(BitmapPool bitmapPool) {
        this(bitmapPool, FACTORY);
    }

    private GifResourceEncoder(BitmapPool bitmapPool, Factory factory) {
        this.bitmapPool = bitmapPool;
        this.provider = new GifBitmapProvider(bitmapPool);
        this.factory = factory;
    }

    private boolean encode(Resource<GifDrawable> resource, OutputStream outputStream) {
        long logTime = LogTime.getLogTime();
        GifDrawable gifDrawable = (GifDrawable) resource.get();
        Transformation frameTransformation = gifDrawable.getFrameTransformation();
        if (frameTransformation instanceof UnitTransformation) {
            return writeDataDirect(gifDrawable.getData(), outputStream);
        }
        byte[] data = gifDrawable.getData();
        GifHeaderParser gifHeaderParser = new GifHeaderParser();
        gifHeaderParser.setData(data);
        GifHeader parseHeader = gifHeaderParser.parseHeader();
        GifDecoder gifDecoder = new GifDecoder(this.provider);
        gifDecoder.setData(parseHeader, data);
        gifDecoder.advance();
        AnimatedGifEncoder animatedGifEncoder = new AnimatedGifEncoder();
        if (animatedGifEncoder.start(outputStream) == null) {
            return false;
        }
        outputStream = null;
        while (outputStream < gifDecoder.getFrameCount()) {
            Resource style = new style(gifDecoder.getNextFrame(), this.bitmapPool);
            Resource transform = frameTransformation.transform(style, gifDrawable.getIntrinsicWidth(), gifDrawable.getIntrinsicHeight());
            if (!style.equals(transform)) {
                style.recycle();
            }
            if (animatedGifEncoder.addFrame((Bitmap) transform.get())) {
                try {
                    animatedGifEncoder.setDelay(gifDecoder.getDelay(gifDecoder.getCurrentFrameIndex()));
                    gifDecoder.advance();
                    transform.recycle();
                    outputStream++;
                } catch (Resource<GifDrawable> resource2) {
                    transform.recycle();
                    throw resource2;
                }
            }
            transform.recycle();
            return false;
        }
        outputStream = animatedGifEncoder.finish();
        if (Log.isLoggable("GifEncoder", 2)) {
            StringBuilder stringBuilder = new StringBuilder("Encoded gif with ");
            stringBuilder.append(gifDecoder.getFrameCount());
            stringBuilder.append(" frames and ");
            stringBuilder.append(gifDrawable.getData().length);
            stringBuilder.append(" bytes in ");
            stringBuilder.append(LogTime.getElapsedMillis(logTime));
            stringBuilder.append(" ms");
            Log.v("GifEncoder", stringBuilder.toString());
        }
        return outputStream;
    }

    private static boolean writeDataDirect(byte[] bArr, OutputStream outputStream) {
        try {
            outputStream.write(bArr);
            return 1;
        } catch (byte[] bArr2) {
            if (Log.isLoggable("GifEncoder", 3) != null) {
                Log.d("GifEncoder", "Failed to write data to output stream in GifResourceEncoder", bArr2);
            }
            return null;
        }
    }
}
