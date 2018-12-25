package ru.rocketbank.r2d2.widgets;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.Keep;
import android.support.v4.app.NotificationCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import rx.subjects.PublishSubject;

/* compiled from: SwitchCard.kt */
public final class SwitchCard extends View {
    private HashMap _$_findViewCache;
    public Paint backgroundPaint;
    private final PublishSubject<Boolean> checkObserver;
    private float dx;
    /* renamed from: h */
    private int f752h;
    private AtomicBoolean isAnimating;
    private boolean isChecked;
    public Rect left;
    private String leftText;
    private RectF mainRect;
    private float radius;
    public Rect right;
    private String rightText;
    private int textColor;
    public Paint textPaint;
    private float textSize;
    private int thumPadding;
    private int thumbColor;
    public Paint thumbPaint;
    private RectF thumbRect;
    private int trackColor;
    /* renamed from: w */
    private int f753w;

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

    public final PublishSubject<Boolean> getCheckObserver() {
        return this.checkObserver;
    }

    public final boolean isChecked() {
        return this.isChecked;
    }

    public final void setChecked(boolean z) {
        this.isChecked = z;
        this.checkObserver.onNext(Boolean.valueOf(z));
    }

    public final int getW$App_prodRelease() {
        return this.f753w;
    }

    public final void setW$App_prodRelease(int i) {
        this.f753w = i;
    }

    public final int getH$App_prodRelease() {
        return this.f752h;
    }

    public final void setH$App_prodRelease(int i) {
        this.f752h = i;
    }

    public final float getRadius$App_prodRelease() {
        return this.radius;
    }

    public final void setRadius$App_prodRelease(float f) {
        this.radius = f;
    }

    public final float getTextSize$App_prodRelease() {
        return this.textSize;
    }

    public final void setTextSize$App_prodRelease(float f) {
        this.textSize = f;
    }

    public final String getLeftText$App_prodRelease() {
        return this.leftText;
    }

    public final void setLeftText$App_prodRelease(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.leftText = str;
    }

    public final String getRightText$App_prodRelease() {
        return this.rightText;
    }

    public final void setRightText$App_prodRelease(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.rightText = str;
    }

    public final Paint getTextPaint() {
        Paint paint = this.textPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        return paint;
    }

    public final void setTextPaint(Paint paint) {
        Intrinsics.checkParameterIsNotNull(paint, "<set-?>");
        this.textPaint = paint;
    }

    public final Paint getBackgroundPaint() {
        Paint paint = this.backgroundPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPaint");
        }
        return paint;
    }

    public final void setBackgroundPaint(Paint paint) {
        Intrinsics.checkParameterIsNotNull(paint, "<set-?>");
        this.backgroundPaint = paint;
    }

    public final Paint getThumbPaint() {
        Paint paint = this.thumbPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("thumbPaint");
        }
        return paint;
    }

    public final void setThumbPaint(Paint paint) {
        Intrinsics.checkParameterIsNotNull(paint, "<set-?>");
        this.thumbPaint = paint;
    }

    public final Rect getLeft() {
        Rect rect = this.left;
        if (rect == null) {
            Intrinsics.throwUninitializedPropertyAccessException("left");
        }
        return rect;
    }

    public final void setLeft(Rect rect) {
        Intrinsics.checkParameterIsNotNull(rect, "<set-?>");
        this.left = rect;
    }

    public final Rect getRight() {
        Rect rect = this.right;
        if (rect == null) {
            Intrinsics.throwUninitializedPropertyAccessException("right");
        }
        return rect;
    }

    public final void setRight(Rect rect) {
        Intrinsics.checkParameterIsNotNull(rect, "<set-?>");
        this.right = rect;
    }

    public final int getTextColor$App_prodRelease() {
        return this.textColor;
    }

    public final void setTextColor$App_prodRelease(int i) {
        this.textColor = i;
    }

    public final int getTrackColor$App_prodRelease() {
        return this.trackColor;
    }

    public final void setTrackColor$App_prodRelease(int i) {
        this.trackColor = i;
    }

    public final int getThumbColor$App_prodRelease() {
        return this.thumbColor;
    }

    public final void setThumbColor$App_prodRelease(int i) {
        this.thumbColor = i;
    }

    public final AtomicBoolean isAnimating$App_prodRelease() {
        return this.isAnimating;
    }

    public final void setAnimating$App_prodRelease(AtomicBoolean atomicBoolean) {
        Intrinsics.checkParameterIsNotNull(atomicBoolean, "<set-?>");
        this.isAnimating = atomicBoolean;
    }

    public final float getDx$App_prodRelease() {
        return this.dx;
    }

    public final void setDx$App_prodRelease(float f) {
        this.dx = f;
    }

    public final RectF getMainRect() {
        return this.mainRect;
    }

    public final void setMainRect(RectF rectF) {
        Intrinsics.checkParameterIsNotNull(rectF, "<set-?>");
        this.mainRect = rectF;
    }

    public final RectF getThumbRect() {
        return this.thumbRect;
    }

    public final void setThumbRect(RectF rectF) {
        Intrinsics.checkParameterIsNotNull(rectF, "<set-?>");
        this.thumbRect = rectF;
    }

    public SwitchCard(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context, attributeSet);
        context = PublishSubject.create();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.checkObserver = context;
        this.radius = 20.0f;
        this.textSize = 20.0f;
        this.leftText = "";
        this.rightText = "";
        this.isAnimating = new AtomicBoolean(false);
        this.mainRect = new RectF();
        this.thumbRect = new RectF();
        init(attributeSet);
    }

    public SwitchCard(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context, attributeSet, i);
        context = PublishSubject.create();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.checkObserver = context;
        this.radius = 20.0f;
        this.textSize = 20.0f;
        this.leftText = "";
        this.rightText = "";
        this.isAnimating = new AtomicBoolean(0);
        this.mainRect = new RectF();
        this.thumbRect = new RectF();
        init(attributeSet);
    }

    public SwitchCard(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context, attributeSet, i, i2);
        context = PublishSubject.create();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.checkObserver = context;
        this.radius = 20.0f;
        this.textSize = 20.0f;
        this.leftText = "";
        this.rightText = "";
        this.isAnimating = new AtomicBoolean(0);
        this.mainRect = new RectF();
        this.thumbRect = new RectF();
        init(attributeSet);
    }

    public final void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            Context context = getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            attributeSet = context.getTheme().obtainStyledAttributes(attributeSet, C0859R.styleable.SwitchCard, 0, 0);
            try {
                this.leftText = attributeSet.getText(2).toString();
                this.rightText = attributeSet.getText(3).toString();
                this.radius = attributeSet.getDimension(1, 20.0f);
                this.textSize = (float) attributeSet.getDimensionPixelSize(0, 20);
                this.textColor = attributeSet.getColor(4, -12303292);
                this.thumbColor = attributeSet.getColor(5, -3355444);
                this.trackColor = attributeSet.getColor(6, -1);
            } finally {
                attributeSet.recycle();
            }
        }
        this.backgroundPaint = new Paint();
        this.thumbPaint = new Paint();
        this.textPaint = new Paint();
        attributeSet = this.backgroundPaint;
        if (attributeSet == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPaint");
        }
        attributeSet.setColor(this.trackColor);
        attributeSet = this.textPaint;
        if (attributeSet == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        attributeSet.setColor(this.textColor);
        attributeSet = this.textPaint;
        if (attributeSet == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        attributeSet.setTextAlign(Align.CENTER);
        attributeSet = this.textPaint;
        if (attributeSet == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        attributeSet.setAntiAlias(true);
        attributeSet = this.textPaint;
        if (attributeSet == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        attributeSet.setTextSize(this.textSize);
        attributeSet = this.thumbPaint;
        if (attributeSet == null) {
            Intrinsics.throwUninitializedPropertyAccessException("thumbPaint");
        }
        attributeSet.setColor(this.thumbColor);
    }

    @Keep
    public final void setDx(float f) {
        this.dx = f;
        this.thumbRect = new RectF(((float) this.thumPadding) + f, (float) this.thumPadding, (((float) (this.f753w / 2)) + f) - ((float) this.thumPadding), (float) (this.f752h - this.thumPadding));
        postInvalidate();
    }

    protected final void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f753w = i;
        this.f752h = i2;
        super.onSizeChanged(i, i2, i3, i4);
        this.thumPadding = (Math.min(i, i2) * 10) / 100;
        int i5 = i / 2;
        this.left = new Rect(this.thumPadding, 0, i5, i2);
        this.right = new Rect(i5, 0, i, i2);
        this.thumbRect = new RectF(this.dx + ((float) this.thumPadding), (float) this.thumPadding, (((float) i5) + this.dx) - ((float) this.thumPadding), (float) (i2 - this.thumPadding));
        this.mainRect = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) i, (float) i2);
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Intrinsics.checkParameterIsNotNull(motionEvent, NotificationCompat.CATEGORY_EVENT);
        if (motionEvent.getAction() != 1 || this.isAnimating.get() != null) {
            return true;
        }
        if (this.isChecked == null) {
            motionEvent = ObjectAnimator.ofFloat(this, "dx", new float[]{BitmapDescriptorFactory.HUE_RED, ((float) this.f753w) / 2.0f});
            Intrinsics.checkExpressionValueIsNotNull(motionEvent, "ObjectAnimator.ofFloat(this, \"dx\", 0f, w / 2f)");
        } else {
            motionEvent = ObjectAnimator.ofFloat(this, "dx", new float[]{((float) this.f753w) / 2.0f, BitmapDescriptorFactory.HUE_RED});
            Intrinsics.checkExpressionValueIsNotNull(motionEvent, "ObjectAnimator.ofFloat(this, \"dx\", w / 2f, 0f)");
        }
        ObjectAnimator duration = motionEvent.setDuration(250);
        Intrinsics.checkExpressionValueIsNotNull(duration, "animation.setDuration(250)");
        duration.setInterpolator(new FastOutSlowInInterpolator());
        motionEvent.addListener(new SwitchCard$onTouchEvent$1(this));
        motionEvent.start();
        return true;
    }

    private final void drawRectText(String str, Canvas canvas, Rect rect) {
        int width = rect.width();
        Paint paint = this.textPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        width = paint.breakText(str, true, (float) width, null);
        paint = this.textPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        float descent = paint.descent();
        Paint paint2 = this.textPaint;
        if (paint2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        int ascent = (int) ((descent + paint2.ascent()) / 2.0f);
        int length = (str.length() - width) / 2;
        int i = length + width;
        float exactCenterX = rect.exactCenterX();
        float exactCenterY = rect.exactCenterY() - ((float) ascent);
        Paint paint3 = this.textPaint;
        if (paint3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        canvas.drawText(str, length, i, exactCenterX, exactCenterY, paint3);
    }

    protected final void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        RectF rectF = this.mainRect;
        float f = this.radius;
        float f2 = this.radius;
        Paint paint = this.backgroundPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundPaint");
        }
        canvas.drawRoundRect(rectF, f, f2, paint);
        rectF = this.thumbRect;
        f = this.radius;
        f2 = this.radius;
        paint = this.thumbPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("thumbPaint");
        }
        canvas.drawRoundRect(rectF, f, f2, paint);
        String str = this.leftText;
        Rect rect = this.left;
        if (rect == null) {
            Intrinsics.throwUninitializedPropertyAccessException("left");
        }
        drawRectText(str, canvas, rect);
        str = this.rightText;
        rect = this.right;
        if (rect == null) {
            Intrinsics.throwUninitializedPropertyAccessException("right");
        }
        drawRectText(str, canvas, rect);
    }
}
