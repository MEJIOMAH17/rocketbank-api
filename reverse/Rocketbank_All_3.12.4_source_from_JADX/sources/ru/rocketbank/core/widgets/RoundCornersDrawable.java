package ru.rocketbank.core.widgets;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class RoundCornersDrawable extends Drawable {
    private Bitmap bitmap;
    private BitmapShader mBitmapShader;
    private final float mCornerRadius;
    private final int mMargin;
    private final Paint mPaint;
    private final RectF mRect = new RectF();

    public final int getOpacity() {
        return -3;
    }

    public RoundCornersDrawable(Bitmap bitmap, float f) {
        this.bitmap = bitmap;
        this.mCornerRadius = f;
        TileMode tileMode = TileMode.CLAMP;
        this.mBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(Float.MIN_VALUE);
        this.mPaint.setShader(this.mBitmapShader);
        this.mMargin = null;
    }

    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int width = rect.width();
        rect = rect.height();
        if (this.bitmap != null) {
            if (!this.bitmap.isRecycled()) {
                this.bitmap = Bitmap.createScaledBitmap(this.bitmap, width, rect, false);
                Bitmap bitmap = this.bitmap;
                TileMode tileMode = TileMode.CLAMP;
                this.mBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                this.mPaint.setShader(this.mBitmapShader);
                this.mRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) width, (float) rect);
            }
        }
    }

    public final void draw(Canvas canvas) {
        canvas.drawRoundRect(this.mRect, this.mCornerRadius, this.mCornerRadius, this.mPaint);
    }

    public final void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }
}
