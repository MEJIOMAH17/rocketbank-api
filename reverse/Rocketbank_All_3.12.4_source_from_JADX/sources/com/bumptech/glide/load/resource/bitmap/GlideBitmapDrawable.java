package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.view.Gravity;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;

public class GlideBitmapDrawable extends GlideDrawable {
    private boolean applyGravity;
    private final Rect destRect;
    private int height;
    private boolean mutated;
    private BitmapState state;
    private int width;

    static class BitmapState extends ConstantState {
        private static final Paint DEFAULT_PAINT = new Paint(6);
        final Bitmap bitmap;
        Paint paint;
        int targetDensity;

        public final int getChangingConfigurations() {
            return 0;
        }

        public BitmapState(Bitmap bitmap) {
            this.paint = DEFAULT_PAINT;
            this.bitmap = bitmap;
        }

        BitmapState(BitmapState bitmapState) {
            this(bitmapState.bitmap);
            this.targetDensity = bitmapState.targetDensity;
        }

        final void mutatePaint() {
            if (DEFAULT_PAINT == this.paint) {
                this.paint = new Paint(6);
            }
        }

        public final Drawable newDrawable() {
            return new GlideBitmapDrawable(null, this);
        }

        public final Drawable newDrawable(Resources resources) {
            return new GlideBitmapDrawable(resources, this);
        }
    }

    public final boolean isAnimated() {
        return false;
    }

    public boolean isRunning() {
        return false;
    }

    public final void setLoopCount(int i) {
    }

    public void start() {
    }

    public void stop() {
    }

    public GlideBitmapDrawable(Resources resources, Bitmap bitmap) {
        this(resources, new BitmapState(bitmap));
    }

    GlideBitmapDrawable(Resources resources, BitmapState bitmapState) {
        this.destRect = new Rect();
        this.state = bitmapState;
        if (resources != null) {
            resources = resources.getDisplayMetrics().densityDpi;
            if (resources == null) {
                resources = 160;
            }
            bitmapState.targetDensity = resources;
        } else {
            resources = bitmapState.targetDensity;
        }
        this.width = bitmapState.bitmap.getScaledWidth(resources);
        this.height = bitmapState.bitmap.getScaledHeight(resources);
    }

    public int getIntrinsicWidth() {
        return this.width;
    }

    public int getIntrinsicHeight() {
        return this.height;
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyGravity = true;
    }

    public ConstantState getConstantState() {
        return this.state;
    }

    public void draw(Canvas canvas) {
        if (this.applyGravity) {
            Gravity.apply(119, this.width, this.height, getBounds(), this.destRect);
            this.applyGravity = false;
        }
        canvas.drawBitmap(this.state.bitmap, null, this.destRect, this.state.paint);
    }

    public void setAlpha(int i) {
        if (this.state.paint.getAlpha() != i) {
            BitmapState bitmapState = this.state;
            bitmapState.mutatePaint();
            bitmapState.paint.setAlpha(i);
            invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        BitmapState bitmapState = this.state;
        bitmapState.mutatePaint();
        bitmapState.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public int getOpacity() {
        Bitmap bitmap = this.state.bitmap;
        if (!(bitmap == null || bitmap.hasAlpha())) {
            if (this.state.paint.getAlpha() >= 255) {
                return -1;
            }
        }
        return -3;
    }

    public Drawable mutate() {
        if (!this.mutated && super.mutate() == this) {
            this.state = new BitmapState(this.state);
            this.mutated = true;
        }
        return this;
    }

    public final Bitmap getBitmap() {
        return this.state.bitmap;
    }
}
