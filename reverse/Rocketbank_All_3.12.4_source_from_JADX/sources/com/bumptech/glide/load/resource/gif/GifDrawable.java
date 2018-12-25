package com.bumptech.glide.load.resource.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.view.Gravity;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.gif.GifFrameLoader.FrameCallback;

public class GifDrawable extends GlideDrawable implements FrameCallback {
    private boolean applyGravity;
    private final GifDecoder decoder;
    private final Rect destRect;
    private final GifFrameLoader frameLoader;
    private boolean isRecycled;
    private boolean isRunning;
    private boolean isStarted;
    private boolean isVisible;
    private int loopCount;
    private int maxLoopCount;
    private final Paint paint;
    private final GifState state;

    static class GifState extends ConstantState {
        BitmapPool bitmapPool;
        BitmapProvider bitmapProvider;
        Context context;
        byte[] data;
        Bitmap firstFrame;
        Transformation<Bitmap> frameTransformation;
        GifHeader gifHeader;
        int targetHeight;
        int targetWidth;

        public final int getChangingConfigurations() {
            return 0;
        }

        public GifState(GifHeader gifHeader, byte[] bArr, Context context, Transformation<Bitmap> transformation, int i, int i2, BitmapProvider bitmapProvider, BitmapPool bitmapPool, Bitmap bitmap) {
            if (bitmap == null) {
                throw new NullPointerException("The first frame of the GIF must not be null");
            }
            this.gifHeader = gifHeader;
            this.data = bArr;
            this.bitmapPool = bitmapPool;
            this.firstFrame = bitmap;
            this.context = context.getApplicationContext();
            this.frameTransformation = transformation;
            this.targetWidth = i;
            this.targetHeight = i2;
            this.bitmapProvider = bitmapProvider;
        }

        public final Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        public final Drawable newDrawable() {
            return new GifDrawable(this);
        }
    }

    public int getOpacity() {
        return -2;
    }

    public final boolean isAnimated() {
        return true;
    }

    public GifDrawable(Context context, BitmapProvider bitmapProvider, BitmapPool bitmapPool, Transformation<Bitmap> transformation, int i, int i2, GifHeader gifHeader, byte[] bArr, Bitmap bitmap) {
        this(new GifState(gifHeader, bArr, context, transformation, i, i2, bitmapProvider, bitmapPool, bitmap));
    }

    public GifDrawable(GifDrawable gifDrawable, Bitmap bitmap, Transformation<Bitmap> transformation) {
        this(new GifState(gifDrawable.state.gifHeader, gifDrawable.state.data, gifDrawable.state.context, transformation, gifDrawable.state.targetWidth, gifDrawable.state.targetHeight, gifDrawable.state.bitmapProvider, gifDrawable.state.bitmapPool, bitmap));
    }

    GifDrawable(GifState gifState) {
        this.destRect = new Rect();
        this.isVisible = true;
        this.maxLoopCount = -1;
        this.state = gifState;
        this.decoder = new GifDecoder(gifState.bitmapProvider);
        this.paint = new Paint();
        this.decoder.setData(gifState.gifHeader, gifState.data);
        this.frameLoader = new GifFrameLoader(gifState.context, this, this.decoder, gifState.targetWidth, gifState.targetHeight);
        this.frameLoader.setFrameTransformation(gifState.frameTransformation);
    }

    public final Bitmap getFirstFrame() {
        return this.state.firstFrame;
    }

    public final Transformation<Bitmap> getFrameTransformation() {
        return this.state.frameTransformation;
    }

    public final byte[] getData() {
        return this.state.data;
    }

    public final int getFrameCount() {
        return this.decoder.getFrameCount();
    }

    public void start() {
        this.isStarted = true;
        this.loopCount = 0;
        if (this.isVisible) {
            startRunning();
        }
    }

    public void stop() {
        this.isStarted = false;
        this.isRunning = false;
        this.frameLoader.stop();
        if (VERSION.SDK_INT < 11) {
            this.frameLoader.clear();
            invalidateSelf();
        }
    }

    private void startRunning() {
        if (this.decoder.getFrameCount() == 1) {
            invalidateSelf();
            return;
        }
        if (!this.isRunning) {
            this.isRunning = true;
            this.frameLoader.start();
            invalidateSelf();
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        this.isVisible = z;
        if (!z) {
            this.isRunning = false;
            this.frameLoader.stop();
        } else if (this.isStarted) {
            startRunning();
        }
        return super.setVisible(z, z2);
    }

    public int getIntrinsicWidth() {
        return this.state.firstFrame.getWidth();
    }

    public int getIntrinsicHeight() {
        return this.state.firstFrame.getHeight();
    }

    public boolean isRunning() {
        return this.isRunning;
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyGravity = true;
    }

    public void draw(Canvas canvas) {
        if (!this.isRecycled) {
            if (this.applyGravity) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), this.destRect);
                this.applyGravity = false;
            }
            Bitmap currentFrame = this.frameLoader.getCurrentFrame();
            if (currentFrame == null) {
                currentFrame = this.state.firstFrame;
            }
            canvas.drawBitmap(currentFrame, null, this.destRect, this.paint);
        }
    }

    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @TargetApi(11)
    public final void onFrameReady(int i) {
        if (VERSION.SDK_INT < 11 || getCallback() != null) {
            invalidateSelf();
            if (i == this.decoder.getFrameCount() - 1) {
                this.loopCount++;
            }
            if (this.maxLoopCount != -1 && this.loopCount >= this.maxLoopCount) {
                stop();
            }
            return;
        }
        stop();
        this.frameLoader.clear();
        invalidateSelf();
    }

    public ConstantState getConstantState() {
        return this.state;
    }

    public final void recycle() {
        this.isRecycled = true;
        this.state.bitmapPool.put(this.state.firstFrame);
        this.frameLoader.clear();
        this.frameLoader.stop();
    }

    public final void setLoopCount(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        } else if (i == 0) {
            i = this.decoder.getTotalIterationCount();
            if (i == 0) {
                i = -1;
            }
            this.maxLoopCount = i;
        } else {
            this.maxLoopCount = i;
        }
    }
}
