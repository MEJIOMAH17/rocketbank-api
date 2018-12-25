package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Queue;

public final class GifResourceDecoder implements ResourceDecoder<InputStream, GifDrawable> {
    private static final GifDecoderPool DECODER_POOL = new GifDecoderPool();
    private static final GifHeaderParserPool PARSER_POOL = new GifHeaderParserPool();
    private final BitmapPool bitmapPool;
    private final Context context;
    private final GifDecoderPool decoderPool;
    private final GifHeaderParserPool parserPool;
    private final GifBitmapProvider provider;

    static class GifDecoderPool {
        private final Queue<GifDecoder> pool = Util.createQueue(0);

        GifDecoderPool() {
        }

        public final synchronized GifDecoder obtain(BitmapProvider bitmapProvider) {
            GifDecoder gifDecoder;
            gifDecoder = (GifDecoder) this.pool.poll();
            if (gifDecoder == null) {
                gifDecoder = new GifDecoder(bitmapProvider);
            }
            return gifDecoder;
        }

        public final synchronized void release(GifDecoder gifDecoder) {
            gifDecoder.clear();
            this.pool.offer(gifDecoder);
        }
    }

    static class GifHeaderParserPool {
        private final Queue<GifHeaderParser> pool = Util.createQueue(0);

        GifHeaderParserPool() {
        }

        public final synchronized GifHeaderParser obtain(byte[] bArr) {
            GifHeaderParser gifHeaderParser;
            gifHeaderParser = (GifHeaderParser) this.pool.poll();
            if (gifHeaderParser == null) {
                gifHeaderParser = new GifHeaderParser();
            }
            return gifHeaderParser.setData(bArr);
        }

        public final synchronized void release(GifHeaderParser gifHeaderParser) {
            gifHeaderParser.clear();
            this.pool.offer(gifHeaderParser);
        }
    }

    public final String getId() {
        return "";
    }

    public GifResourceDecoder(Context context, BitmapPool bitmapPool) {
        this(context, bitmapPool, PARSER_POOL, DECODER_POOL);
    }

    private GifResourceDecoder(Context context, BitmapPool bitmapPool, GifHeaderParserPool gifHeaderParserPool, GifDecoderPool gifDecoderPool) {
        this.context = context.getApplicationContext();
        this.bitmapPool = bitmapPool;
        this.decoderPool = gifDecoderPool;
        this.provider = new GifBitmapProvider(bitmapPool);
        this.parserPool = gifHeaderParserPool;
    }

    private GifDrawableResource decode(InputStream inputStream, int i, int i2) {
        byte[] inputStreamToBytes = inputStreamToBytes(inputStream);
        inputStream = this.parserPool.obtain(inputStreamToBytes);
        GifDecoder obtain = this.decoderPool.obtain(this.provider);
        try {
            GifHeader parseHeader = inputStream.parseHeader();
            GifDrawableResource gifDrawableResource = null;
            if (parseHeader.getNumFrames() > 0) {
                if (parseHeader.getStatus() == 0) {
                    obtain.setData(parseHeader, inputStreamToBytes);
                    obtain.advance();
                    Bitmap nextFrame = obtain.getNextFrame();
                    if (nextFrame != null) {
                        gifDrawableResource = new GifDrawableResource(new GifDrawable(this.context, this.provider, this.bitmapPool, UnitTransformation.get(), i, i2, parseHeader, inputStreamToBytes, nextFrame));
                    }
                }
            }
            this.parserPool.release(inputStream);
            this.decoderPool.release(obtain);
            return gifDrawableResource;
        } catch (Throwable th) {
            this.parserPool.release(inputStream);
            this.decoderPool.release(obtain);
        }
    }

    private static byte[] inputStreamToBytes(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            byteArrayOutputStream.flush();
        } catch (InputStream inputStream2) {
            Log.w("GifResourceDecoder", "Error reading data from stream", inputStream2);
        }
        return byteArrayOutputStream.toByteArray();
    }
}
