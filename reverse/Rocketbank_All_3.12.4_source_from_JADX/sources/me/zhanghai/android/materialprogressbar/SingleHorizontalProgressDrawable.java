package me.zhanghai.android.materialprogressbar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import me.zhanghai.android.materialprogressbar.internal.ThemeUtils;

class SingleHorizontalProgressDrawable extends ProgressDrawableBase {
    private static final int LEVEL_MAX = 10000;
    private static final float PADDED_INTRINSIC_HEIGHT_DP = 16.0f;
    private static final float PROGRESS_INTRINSIC_HEIGHT_DP = 3.2f;
    private static final RectF RECT_BOUND = new RectF(-180.0f, -1.0f, 180.0f, 1.0f);
    private static final RectF RECT_PADDED_BOUND = new RectF(-180.0f, -5.0f, 180.0f, 5.0f);
    private int mPaddedIntrinsicHeight;
    private int mProgressIntrinsicHeight;
    private boolean mShowTrack = true;
    private float mTrackAlpha;

    public SingleHorizontalProgressDrawable(Context context) {
        super(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.mProgressIntrinsicHeight = Math.round(PROGRESS_INTRINSIC_HEIGHT_DP * f);
        this.mPaddedIntrinsicHeight = Math.round(PADDED_INTRINSIC_HEIGHT_DP * f);
        this.mTrackAlpha = ThemeUtils.getFloatFromAttrRes(16842803, context);
    }

    public boolean getShowTrack() {
        return this.mShowTrack;
    }

    public void setShowTrack(boolean z) {
        if (this.mShowTrack != z) {
            this.mShowTrack = z;
            invalidateSelf();
        }
    }

    public int getIntrinsicHeight() {
        return this.mUseIntrinsicPadding ? this.mPaddedIntrinsicHeight : this.mProgressIntrinsicHeight;
    }

    protected boolean onLevelChange(int i) {
        invalidateSelf();
        return true;
    }

    protected void onPreparePaint(Paint paint) {
        paint.setStyle(Style.FILL);
    }

    protected void onDraw(Canvas canvas, int i, int i2, Paint paint) {
        if (this.mUseIntrinsicPadding) {
            canvas.scale(((float) i) / RECT_PADDED_BOUND.width(), ((float) i2) / RECT_PADDED_BOUND.height());
            canvas.translate(RECT_PADDED_BOUND.width() / 1073741824, RECT_PADDED_BOUND.height() / 1073741824);
        } else {
            canvas.scale(((float) i) / RECT_BOUND.width(), ((float) i2) / RECT_BOUND.height());
            canvas.translate(RECT_BOUND.width() / 1073741824, RECT_BOUND.height() / 1073741824);
        }
        if (this.mShowTrack != 0) {
            paint.setAlpha(Math.round(((float) this.mAlpha) * this.mTrackAlpha));
            drawTrackRect(canvas, paint);
            paint.setAlpha(this.mAlpha);
        }
        drawProgressRect(canvas, paint);
    }

    private static void drawTrackRect(Canvas canvas, Paint paint) {
        canvas.drawRect(RECT_BOUND, paint);
    }

    private void drawProgressRect(Canvas canvas, Paint paint) {
        int level = getLevel();
        if (level != 0) {
            int save = canvas.save();
            canvas.scale(((float) level) / 10000.0f, 1.0f, RECT_BOUND.left, BitmapDescriptorFactory.HUE_RED);
            canvas.drawRect(RECT_BOUND, paint);
            canvas.restoreToCount(save);
        }
    }
}
