package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.NullEncoder;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.UUID;

final class GifFrameLoader {
    private final FrameCallback callback;
    private DelayTarget current;
    private final GifDecoder gifDecoder;
    private final Handler handler;
    private boolean isCleared;
    private boolean isLoadPending;
    private boolean isRunning;
    private GenericRequestBuilder<GifDecoder, GifDecoder, Bitmap, Bitmap> requestBuilder;

    public interface FrameCallback {
        void onFrameReady(int i);
    }

    class FrameLoaderCallback implements Callback {
        private FrameLoaderCallback() {
        }

        public final boolean handleMessage(Message message) {
            if (message.what == 1) {
                GifFrameLoader.this.onFrameReady((DelayTarget) message.obj);
                return true;
            }
            if (message.what == 2) {
                Glide.clear((DelayTarget) message.obj);
            }
            return null;
        }
    }

    static class FrameSignature implements Key {
        private final UUID uuid;

        public FrameSignature() {
            this(UUID.randomUUID());
        }

        private FrameSignature(UUID uuid) {
            this.uuid = uuid;
        }

        public final boolean equals(Object obj) {
            return obj instanceof FrameSignature ? ((FrameSignature) obj).uuid.equals(this.uuid) : null;
        }

        public final int hashCode() {
            return this.uuid.hashCode();
        }

        public final void updateDiskCacheKey(MessageDigest messageDigest) throws UnsupportedEncodingException {
            throw new UnsupportedOperationException("Not implemented");
        }
    }

    static class DelayTarget extends SimpleTarget<Bitmap> {
        private final Handler handler;
        private final int index;
        private Bitmap resource;
        private final long targetTime;

        public final /* bridge */ /* synthetic */ void onResourceReady(Object obj, GlideAnimation glideAnimation) {
            this.resource = (Bitmap) obj;
            this.handler.sendMessageAtTime(this.handler.obtainMessage(1, this), this.targetTime);
        }

        public DelayTarget(Handler handler, int i, long j) {
            this.handler = handler;
            this.index = i;
            this.targetTime = j;
        }

        public final Bitmap getResource() {
            return this.resource;
        }
    }

    public GifFrameLoader(Context context, FrameCallback frameCallback, GifDecoder gifDecoder, int i, int i2) {
        ResourceDecoder gifFrameResourceDecoder = new GifFrameResourceDecoder(Glide.get(context).getBitmapPool());
        ModelLoader gifFrameModelLoader = new GifFrameModelLoader();
        this(frameCallback, gifDecoder, Glide.with(context).using(gifFrameModelLoader, GifDecoder.class).load(gifDecoder).as(Bitmap.class).sourceEncoder$29772719(NullEncoder.get$2e726854()).decoder(gifFrameResourceDecoder).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE).override(i, i2));
    }

    private GifFrameLoader(FrameCallback frameCallback, GifDecoder gifDecoder, GenericRequestBuilder<GifDecoder, GifDecoder, Bitmap, Bitmap> genericRequestBuilder) {
        this.isRunning = false;
        this.isLoadPending = false;
        Handler handler = new Handler(Looper.getMainLooper(), new FrameLoaderCallback());
        this.callback = frameCallback;
        this.gifDecoder = gifDecoder;
        this.handler = handler;
        this.requestBuilder = genericRequestBuilder;
    }

    public final void setFrameTransformation(Transformation<Bitmap> transformation) {
        if (transformation == null) {
            throw new NullPointerException("Transformation must not be null");
        }
        this.requestBuilder = this.requestBuilder.transform(transformation);
    }

    public final void start() {
        if (!this.isRunning) {
            this.isRunning = true;
            this.isCleared = false;
            loadNextFrame();
        }
    }

    public final void stop() {
        this.isRunning = false;
    }

    public final Bitmap getCurrentFrame() {
        return this.current != null ? this.current.getResource() : null;
    }

    private void loadNextFrame() {
        if (this.isRunning) {
            if (!this.isLoadPending) {
                this.isLoadPending = true;
                long uptimeMillis = SystemClock.uptimeMillis() + ((long) this.gifDecoder.getNextDelay());
                this.gifDecoder.advance();
                this.requestBuilder.signature(new FrameSignature()).into(new DelayTarget(this.handler, this.gifDecoder.getCurrentFrameIndex(), uptimeMillis));
            }
        }
    }

    final void onFrameReady(DelayTarget delayTarget) {
        if (this.isCleared) {
            this.handler.obtainMessage(2, delayTarget).sendToTarget();
            return;
        }
        DelayTarget delayTarget2 = this.current;
        this.current = delayTarget;
        this.callback.onFrameReady(delayTarget.index);
        if (delayTarget2 != null) {
            this.handler.obtainMessage(2, delayTarget2).sendToTarget();
        }
        this.isLoadPending = null;
        loadNextFrame();
    }

    public final void clear() {
        this.isRunning = false;
        if (this.current != null) {
            Glide.clear(this.current);
            this.current = null;
        }
        this.isCleared = true;
    }
}
