package android.support.v4.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class CircularProgressDrawable extends Drawable implements Animatable {
    private static final int[] COLORS = new int[]{ViewCompat.MEASURED_STATE_MASK};
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final Interpolator MATERIAL_INTERPOLATOR = new FastOutSlowInInterpolator();
    private Animator mAnimator;
    private boolean mFinishing;
    private Resources mResources;
    private final Ring mRing;
    private float mRotation;
    private float mRotationCount;

    static class Ring {
        int mAlpha = 255;
        Path mArrow;
        int mArrowHeight;
        final Paint mArrowPaint = new Paint();
        float mArrowScale = 1.0f;
        int mArrowWidth;
        final Paint mCirclePaint = new Paint();
        int mColorIndex;
        int[] mColors;
        int mCurrentColor;
        float mEndTrim = BitmapDescriptorFactory.HUE_RED;
        final Paint mPaint = new Paint();
        float mRingCenterRadius;
        float mRotation = BitmapDescriptorFactory.HUE_RED;
        boolean mShowArrow;
        float mStartTrim = BitmapDescriptorFactory.HUE_RED;
        float mStartingEndTrim;
        float mStartingRotation;
        float mStartingStartTrim;
        float mStrokeWidth = 5.0f;
        final RectF mTempBounds = new RectF();

        Ring() {
            this.mPaint.setStrokeCap(Cap.SQUARE);
            this.mPaint.setAntiAlias(true);
            this.mPaint.setStyle(Style.STROKE);
            this.mArrowPaint.setStyle(Style.FILL);
            this.mArrowPaint.setAntiAlias(true);
            this.mCirclePaint.setColor(0);
        }
    }

    public final int getOpacity() {
        return -3;
    }

    public CircularProgressDrawable(Context context) {
        if (context == null) {
            throw new NullPointerException();
        }
        this.mResources = context.getResources();
        this.mRing = new Ring();
        context = this.mRing;
        context.mColors = COLORS;
        context.mColorIndex = 0;
        context.mCurrentColor = context.mColors[context.mColorIndex];
        context = this.mRing;
        context.mStrokeWidth = 2.5f;
        context.mPaint.setStrokeWidth(2.5f);
        invalidateSelf();
        context = this.mRing;
        Animator ofFloat = ValueAnimator.ofFloat(new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f});
        ofFloat.addUpdateListener(new AnimatorUpdateListener() {
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                valueAnimator = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressDrawable.updateRingColor(valueAnimator, context);
                CircularProgressDrawable.access$100(CircularProgressDrawable.this, valueAnimator, context, false);
                CircularProgressDrawable.this.invalidateSelf();
            }
        });
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(LINEAR_INTERPOLATOR);
        ofFloat.addListener(new AnimatorListener() {
            public final void onAnimationCancel(Animator animator) {
            }

            public final void onAnimationEnd(Animator animator) {
            }

            public final void onAnimationStart(Animator animator) {
                CircularProgressDrawable.this.mRotationCount = BitmapDescriptorFactory.HUE_RED;
            }

            public final void onAnimationRepeat(Animator animator) {
                CircularProgressDrawable.access$100(CircularProgressDrawable.this, 1.0f, context, true);
                Ring ring = context;
                ring.mStartingStartTrim = ring.mStartTrim;
                ring.mStartingEndTrim = ring.mEndTrim;
                ring.mStartingRotation = ring.mRotation;
                ring = context;
                ring.mColorIndex = (ring.mColorIndex + 1) % ring.mColors.length;
                ring.mCurrentColor = ring.mColors[ring.mColorIndex];
                if (CircularProgressDrawable.this.mFinishing) {
                    CircularProgressDrawable.this.mFinishing = false;
                    animator.cancel();
                    animator.setDuration(1332);
                    animator.start();
                    animator = context;
                    if (animator.mShowArrow) {
                        animator.mShowArrow = false;
                    }
                    return;
                }
                CircularProgressDrawable.this.mRotationCount = CircularProgressDrawable.this.mRotationCount + 1.0f;
            }
        });
        this.mAnimator = ofFloat;
    }

    public final void setArrowEnabled(boolean z) {
        Ring ring = this.mRing;
        if (ring.mShowArrow != z) {
            ring.mShowArrow = z;
        }
        invalidateSelf();
    }

    public final void setArrowScale(float f) {
        Ring ring = this.mRing;
        if (f != ring.mArrowScale) {
            ring.mArrowScale = f;
        }
        invalidateSelf();
    }

    public final void setStartEndTrim$2548a35(float f) {
        this.mRing.mStartTrim = BitmapDescriptorFactory.HUE_RED;
        this.mRing.mEndTrim = f;
        invalidateSelf();
    }

    public final void setProgressRotation(float f) {
        this.mRing.mRotation = f;
        invalidateSelf();
    }

    public final void setColorSchemeColors(int... iArr) {
        Ring ring = this.mRing;
        ring.mColors = iArr;
        ring.mColorIndex = 0;
        ring.mCurrentColor = ring.mColors[ring.mColorIndex];
        ring = this.mRing;
        ring.mColorIndex = 0;
        ring.mCurrentColor = ring.mColors[ring.mColorIndex];
        invalidateSelf();
    }

    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.mRotation, bounds.exactCenterX(), bounds.exactCenterY());
        Ring ring = this.mRing;
        RectF rectF = ring.mTempBounds;
        float f = ring.mRingCenterRadius + (ring.mStrokeWidth / 2.0f);
        if (ring.mRingCenterRadius <= BitmapDescriptorFactory.HUE_RED) {
            f = (((float) Math.min(bounds.width(), bounds.height())) / 2.0f) - Math.max((((float) ring.mArrowWidth) * ring.mArrowScale) / 2.0f, ring.mStrokeWidth / 2.0f);
        }
        rectF.set(((float) bounds.centerX()) - f, ((float) bounds.centerY()) - f, ((float) bounds.centerX()) + f, ((float) bounds.centerY()) + f);
        float f2 = (ring.mStartTrim + ring.mRotation) * 360.0f;
        float f3 = ((ring.mEndTrim + ring.mRotation) * 360.0f) - f2;
        ring.mPaint.setColor(ring.mCurrentColor);
        ring.mPaint.setAlpha(ring.mAlpha);
        f = ring.mStrokeWidth / 2.0f;
        rectF.inset(f, f);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, ring.mCirclePaint);
        f = -f;
        rectF.inset(f, f);
        canvas.drawArc(rectF, f2, f3, false, ring.mPaint);
        if (ring.mShowArrow) {
            if (ring.mArrow == null) {
                ring.mArrow = new Path();
                ring.mArrow.setFillType(FillType.EVEN_ODD);
            } else {
                ring.mArrow.reset();
            }
            f = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f4 = (((float) ring.mArrowWidth) * ring.mArrowScale) / 2.0f;
            ring.mArrow.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            ring.mArrow.lineTo(((float) ring.mArrowWidth) * ring.mArrowScale, BitmapDescriptorFactory.HUE_RED);
            ring.mArrow.lineTo((((float) ring.mArrowWidth) * ring.mArrowScale) / 2.0f, ((float) ring.mArrowHeight) * ring.mArrowScale);
            ring.mArrow.offset((f + rectF.centerX()) - f4, rectF.centerY() + (ring.mStrokeWidth / 2.0f));
            ring.mArrow.close();
            ring.mArrowPaint.setColor(ring.mCurrentColor);
            ring.mArrowPaint.setAlpha(ring.mAlpha);
            canvas.save();
            canvas.rotate(f2 + f3, rectF.centerX(), rectF.centerY());
            canvas.drawPath(ring.mArrow, ring.mArrowPaint);
            canvas.restore();
        }
        canvas.restore();
    }

    public final void setAlpha(int i) {
        this.mRing.mAlpha = i;
        invalidateSelf();
    }

    public final int getAlpha() {
        return this.mRing.mAlpha;
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.mRing.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public final boolean isRunning() {
        return this.mAnimator.isRunning();
    }

    public final void start() {
        this.mAnimator.cancel();
        Ring ring = this.mRing;
        ring.mStartingStartTrim = ring.mStartTrim;
        ring.mStartingEndTrim = ring.mEndTrim;
        ring.mStartingRotation = ring.mRotation;
        if (this.mRing.mEndTrim != this.mRing.mStartTrim) {
            this.mFinishing = true;
            this.mAnimator.setDuration(666);
            this.mAnimator.start();
            return;
        }
        ring = this.mRing;
        ring.mColorIndex = 0;
        ring.mCurrentColor = ring.mColors[ring.mColorIndex];
        ring = this.mRing;
        ring.mStartingStartTrim = BitmapDescriptorFactory.HUE_RED;
        ring.mStartingEndTrim = BitmapDescriptorFactory.HUE_RED;
        ring.mStartingRotation = BitmapDescriptorFactory.HUE_RED;
        ring.mStartTrim = BitmapDescriptorFactory.HUE_RED;
        ring.mEndTrim = BitmapDescriptorFactory.HUE_RED;
        ring.mRotation = BitmapDescriptorFactory.HUE_RED;
        this.mAnimator.setDuration(1332);
        this.mAnimator.start();
    }

    public final void stop() {
        this.mAnimator.cancel();
        this.mRotation = BitmapDescriptorFactory.HUE_RED;
        Ring ring = this.mRing;
        if (ring.mShowArrow) {
            ring.mShowArrow = false;
        }
        ring = this.mRing;
        ring.mColorIndex = 0;
        ring.mCurrentColor = ring.mColors[ring.mColorIndex];
        ring = this.mRing;
        ring.mStartingStartTrim = BitmapDescriptorFactory.HUE_RED;
        ring.mStartingEndTrim = BitmapDescriptorFactory.HUE_RED;
        ring.mStartingRotation = BitmapDescriptorFactory.HUE_RED;
        ring.mStartTrim = BitmapDescriptorFactory.HUE_RED;
        ring.mEndTrim = BitmapDescriptorFactory.HUE_RED;
        ring.mRotation = BitmapDescriptorFactory.HUE_RED;
        invalidateSelf();
    }

    public final void setStyle$13462e() {
        Ring ring = this.mRing;
        float f = this.mResources.getDisplayMetrics().density;
        float f2 = 2.5f * f;
        ring.mStrokeWidth = f2;
        ring.mPaint.setStrokeWidth(f2);
        ring.mRingCenterRadius = 7.5f * f;
        ring.mColorIndex = 0;
        ring.mCurrentColor = ring.mColors[ring.mColorIndex];
        float f3 = 5.0f * f;
        ring.mArrowWidth = (int) (10.0f * f);
        ring.mArrowHeight = (int) f3;
        invalidateSelf();
    }

    private static void updateRingColor(float f, Ring ring) {
        if (f > 0.75f) {
            f = (f - 0.75f) / 0.25f;
            int i = ring.mColors[ring.mColorIndex];
            int i2 = ring.mColors[(ring.mColorIndex + 1) % ring.mColors.length];
            int i3 = i >>> 24;
            int i4 = (i >> 16) & 255;
            int i5 = (i >> 8) & 255;
            i &= 255;
            ring.mCurrentColor = ((((i3 + ((int) (((float) ((i2 >>> 24) - i3)) * f))) << 24) | ((i4 + ((int) (((float) (((i2 >> 16) & 255) - i4)) * f))) << 16)) | ((i5 + ((int) (((float) (((i2 >> 8) & 255) - i5)) * f))) << 8)) | (i + ((int) (f * ((float) ((i2 & 255) - i)))));
            return;
        }
        ring.mCurrentColor = ring.mColors[ring.mColorIndex];
    }

    static /* synthetic */ void access$100(CircularProgressDrawable circularProgressDrawable, float f, Ring ring, boolean z) {
        if (circularProgressDrawable.mFinishing) {
            updateRingColor(f, ring);
            circularProgressDrawable = (float) (Math.floor((double) (ring.mStartingRotation / true)) + 1.0d);
            ring.mStartTrim = ring.mStartingStartTrim + (((ring.mStartingEndTrim - 0.01f) - ring.mStartingStartTrim) * f);
            ring.mEndTrim = ring.mStartingEndTrim;
            ring.mRotation = ring.mStartingRotation + ((circularProgressDrawable - ring.mStartingRotation) * f);
            return;
        }
        if (f != 1.0f || z) {
            float f2;
            float f3;
            z = ring.mStartingRotation;
            if (f < 0.5f) {
                f2 = f / 0.5f;
                f3 = ring.mStartingStartTrim;
                f2 = f3;
                f3 = ((0.79f * MATERIAL_INTERPOLATOR.getInterpolation(f2)) + 0.01f) + f3;
            } else {
                f3 = ring.mStartingStartTrim + 0.79f;
                f2 = f3 - ((0.79f * (1.0f - MATERIAL_INTERPOLATOR.getInterpolation((f - 0.5f) / 0.5f))) + 0.01f);
            }
            z += 0.20999998f * f;
            float f4 = 216.0f * (f + circularProgressDrawable.mRotationCount);
            ring.mStartTrim = f2;
            ring.mEndTrim = f3;
            ring.mRotation = z;
            circularProgressDrawable.mRotation = f4;
        }
    }
}
