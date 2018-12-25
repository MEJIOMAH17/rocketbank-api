package ru.rocketbank.r2d2.root.analytics;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import com.bumptech.glide.Glide;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: SwitchAvatarButton.kt */
public final class SwitchAvatarButton extends View {
    private static final Paint CIRCLE_PAINT;
    private static final float CIRCLE_STROKE = 3.0f;
    public static final Companion Companion = new Companion();
    private static final long POSITION_ANIMATION_DURATION = 300;
    private HashMap _$_findViewCache;
    private float avatarPosition = newAvatarPosition(this.isDoubleAvatar);
    private final RectF dstRect = new RectF();
    private boolean isDoubleAvatar;
    /* renamed from: m */
    private final Matrix f751m = new Matrix();
    private Bitmap movingAvatar;
    private final Point movingAvatarPosition = new Point();
    private PositionAnimation positionAnimator;
    private final RectF srcRect = new RectF();
    private Bitmap staticAvatar;
    private final Point staticAvatarPosition = new Point();

    /* compiled from: SwitchAvatarButton.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: SwitchAvatarButton.kt */
    private final class PositionAnimation extends Animation {
        private final float mDiff;
        private final float mStartPosition;

        public PositionAnimation(float f, float f2) {
            this.mStartPosition = f;
            setInterpolator((Interpolator) new AccelerateDecelerateInterpolator());
            this.mDiff = f2 - this.mStartPosition;
        }

        public final float getMStartPosition() {
            return this.mStartPosition;
        }

        public final float getMDiff$App_prodRelease() {
            return this.mDiff;
        }

        protected final void applyTransformation(float f, Transformation transformation) {
            Intrinsics.checkParameterIsNotNull(transformation, "t");
            SwitchAvatarButton.this.setPosition(this.mStartPosition + (this.mDiff * f));
        }
    }

    private final float avatarOffset(int i) {
        return ((float) i) / 4.0f;
    }

    private final float newAvatarPosition(boolean z) {
        return z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    static {
        Paint paint = new Paint();
        paint.setColor(-1);
        CIRCLE_PAINT = paint;
    }

    public SwitchAvatarButton(Context context) {
        super(context);
        init(context);
    }

    public SwitchAvatarButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public SwitchAvatarButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public SwitchAvatarButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    public final void init(Context context) {
        if (!isInEditMode()) {
            Glide.with(context).load(Integer.valueOf(C0859R.drawable.ava_default_unisex)).asBitmap().transform(new com.bumptech.glide.load.Transformation[]{new CropCircleTransformation(context)}).into(new SwitchAvatarButton$init$1(this));
        }
    }

    public final boolean isDoubleAvatar() {
        return this.isDoubleAvatar;
    }

    public final void setDoubleAvatar(boolean z) {
        if (this.isDoubleAvatar != z) {
            this.isDoubleAvatar = z;
            if (getWindowToken() && ViewCompat.isLaidOut(this) && isShown()) {
                animateAvatar(this.isDoubleAvatar);
                return;
            }
            cancelPositionAnimator();
            setAvatarPosition(newAvatarPosition(this.isDoubleAvatar));
        }
    }

    private final void setAvatarPosition(float f) {
        this.avatarPosition = f;
        invalidate();
    }

    public final void setAvatars(Bitmap bitmap, Bitmap bitmap2) {
        Intrinsics.checkParameterIsNotNull(bitmap, "movingAvatar");
        Intrinsics.checkParameterIsNotNull(bitmap2, "staticAvatar");
        this.movingAvatar = bitmap;
        this.staticAvatar = bitmap2;
        requestLayout();
        invalidate();
    }

    private final void animateAvatar(boolean z) {
        if (this.positionAnimator != null) {
            cancelPositionAnimator();
        }
        this.positionAnimator = new PositionAnimation(this.avatarPosition, newAvatarPosition(z));
        PositionAnimation positionAnimation = this.positionAnimator;
        if (positionAnimation != null) {
            positionAnimation.setDuration(POSITION_ANIMATION_DURATION);
        }
        positionAnimation = this.positionAnimator;
        if (positionAnimation != null) {
            positionAnimation.setAnimationListener(new SwitchAvatarButton$animateAvatar$1(this, z));
        }
        startAnimation((Animation) this.positionAnimator);
    }

    private final void cancelPositionAnimator() {
        if (this.positionAnimator != null) {
            clearAnimation();
            this.positionAnimator = null;
        }
    }

    private final void setPosition(float f) {
        setAvatarPosition(f);
        invalidate();
    }

    protected final void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        Intrinsics.checkParameterIsNotNull(canvas2, "canvas");
        super.onDraw(canvas);
        Bitmap bitmap = this.movingAvatar;
        if (bitmap != null) {
            Bitmap bitmap2 = r0.staticAvatar;
            if (bitmap2 != null) {
                float height = (((float) getHeight()) - (CIRCLE_STROKE * 2.0f)) - 5.0f;
                int width = (int) ((((double) bitmap.getWidth()) / ((double) bitmap.getHeight())) * ((double) getHeight()));
                int height2 = getHeight() / 2;
                float width2 = (float) (getWidth() / 2);
                r0.staticAvatarPosition.set((int) (avatarOffset(width) + width2), height2);
                r0.srcRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) (bitmap2.getWidth() - 1), (float) (bitmap2.getHeight() - 1));
                int i = width / 2;
                float f = (float) (r0.staticAvatarPosition.x - i);
                float f2 = height / 2.0f;
                float f3 = ((float) r0.staticAvatarPosition.y) - f2;
                float f4 = (float) width;
                r0.dstRect.set(f, f3, f + f4, f3 + height);
                r0.f751m.reset();
                r0.f751m.setRectToRect(r0.srcRect, r0.dstRect, ScaleToFit.CENTER);
                canvas2.drawCircle(r0.dstRect.centerX(), r0.dstRect.centerY(), (r0.dstRect.width() / 2.0f) + (CIRCLE_STROKE / 2.0f), CIRCLE_PAINT);
                canvas2.drawBitmap(bitmap2, r0.f751m, null);
                width2 -= avatarOffset(width);
                r0.movingAvatarPosition.set((int) (width2 + (r0.avatarPosition * (((float) r0.staticAvatarPosition.x) - width2))), height2);
                r0.srcRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) (bitmap.getWidth() - 1), (float) (bitmap.getHeight() - 1));
                float f5 = (float) (r0.movingAvatarPosition.x - i);
                float f6 = ((float) r0.movingAvatarPosition.y) - f2;
                r0.dstRect.set(f5, f6, f4 + f5, height + f6);
                r0.f751m.reset();
                r0.f751m.setRectToRect(r0.srcRect, r0.dstRect, ScaleToFit.CENTER);
                canvas2.drawCircle(r0.dstRect.centerX(), r0.dstRect.centerY(), (r0.dstRect.width() / 2.0f) + (CIRCLE_STROKE / 2.0f), CIRCLE_PAINT);
                canvas2.drawBitmap(bitmap, r0.f751m, null);
            }
        }
    }

    protected final void onMeasure(int i, int i2) {
        i = MeasureSpec.getSize(i2);
        if (this.movingAvatar == 0) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        i2 = this.movingAvatar;
        if (i2 != 0) {
            double ceil = Math.ceil((((double) (((float) i2.getWidth()) + (CIRCLE_STROKE * 2.0f))) / ((double) (((float) i2.getHeight()) + (CIRCLE_STROKE * 2.0f)))) * ((double) i));
            setMeasuredDimension((int) (((2.0d * (ceil / 2.0d)) + ((double) (2.0f * avatarOffset((int) ceil)))) + ((double) (1077936128 * CIRCLE_STROKE))), i);
        }
    }
}
