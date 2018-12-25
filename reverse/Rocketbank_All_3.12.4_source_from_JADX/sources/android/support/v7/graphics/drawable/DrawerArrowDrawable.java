package android.support.v7.graphics.drawable;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.C0219R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.r2d2.C0859R;

public final class DrawerArrowDrawable extends Drawable {
    private static final float ARROW_HEAD_ANGLE = ((float) Math.toRadians(45.0d));
    private float mArrowHeadLength;
    private float mArrowShaftLength;
    private float mBarGap;
    private float mBarLength;
    private int mDirection = 2;
    private float mMaxCutForBarSize;
    private final Paint mPaint = new Paint();
    private final Path mPath = new Path();
    private float mProgress;
    private final int mSize;
    private boolean mSpin;
    private boolean mVerticalMirror = false;

    public final int getOpacity() {
        return -3;
    }

    public DrawerArrowDrawable(Context context) {
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setStrokeJoin(Join.MITER);
        this.mPaint.setStrokeCap(Cap.BUTT);
        this.mPaint.setAntiAlias(true);
        context = context.getTheme().obtainStyledAttributes(null, C0219R.styleable.DrawerArrowToggle, C0859R.attr.drawerArrowStyle, C0859R.style.Base.Widget.AppCompat.DrawerArrowToggle);
        int color = context.getColor(C0219R.styleable.DrawerArrowToggle_color, 0);
        if (color != this.mPaint.getColor()) {
            this.mPaint.setColor(color);
            invalidateSelf();
        }
        float dimension = context.getDimension(C0219R.styleable.DrawerArrowToggle_thickness, BitmapDescriptorFactory.HUE_RED);
        if (this.mPaint.getStrokeWidth() != dimension) {
            this.mPaint.setStrokeWidth(dimension);
            this.mMaxCutForBarSize = (float) (((double) (dimension / 2.0f)) * Math.cos((double) ARROW_HEAD_ANGLE));
            invalidateSelf();
        }
        boolean z = context.getBoolean(C0219R.styleable.DrawerArrowToggle_spinBars, true);
        if (this.mSpin != z) {
            this.mSpin = z;
            invalidateSelf();
        }
        dimension = (float) Math.round(context.getDimension(C0219R.styleable.DrawerArrowToggle_gapBetweenBars, BitmapDescriptorFactory.HUE_RED));
        if (dimension != this.mBarGap) {
            this.mBarGap = dimension;
            invalidateSelf();
        }
        this.mSize = context.getDimensionPixelSize(C0219R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.mBarLength = (float) Math.round(context.getDimension(C0219R.styleable.DrawerArrowToggle_barLength, BitmapDescriptorFactory.HUE_RED));
        this.mArrowHeadLength = (float) Math.round(context.getDimension(C0219R.styleable.DrawerArrowToggle_arrowHeadLength, BitmapDescriptorFactory.HUE_RED));
        this.mArrowShaftLength = context.getDimension(C0219R.styleable.DrawerArrowToggle_arrowShaftLength, BitmapDescriptorFactory.HUE_RED);
        context.recycle();
    }

    public final void setColor(int i) {
        if (i != this.mPaint.getColor()) {
            this.mPaint.setColor(i);
            invalidateSelf();
        }
    }

    public final void setDirection$13462e() {
        if (this.mDirection != 0) {
            this.mDirection = 0;
            invalidateSelf();
        }
    }

    public final void setVerticalMirror(boolean z) {
        if (this.mVerticalMirror != z) {
            this.mVerticalMirror = z;
            invalidateSelf();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void draw(android.graphics.Canvas r20) {
        /*
        r19 = this;
        r0 = r19;
        r1 = r20;
        r2 = r19.getBounds();
        r3 = r0.mDirection;
        r4 = 3;
        r5 = 0;
        r6 = 1;
        if (r3 == r4) goto L_0x001a;
    L_0x000f:
        switch(r3) {
            case 0: goto L_0x0021;
            case 1: goto L_0x0018;
            default: goto L_0x0012;
        };
    L_0x0012:
        r3 = android.support.v4.graphics.drawable.DrawableCompat.getLayoutDirection(r19);
        if (r3 != r6) goto L_0x0021;
    L_0x0018:
        r5 = r6;
        goto L_0x0021;
    L_0x001a:
        r3 = android.support.v4.graphics.drawable.DrawableCompat.getLayoutDirection(r19);
        if (r3 != 0) goto L_0x0021;
    L_0x0020:
        goto L_0x0018;
    L_0x0021:
        r3 = r0.mArrowHeadLength;
        r4 = r0.mArrowHeadLength;
        r3 = r3 * r4;
        r4 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r3 = r3 * r4;
        r7 = (double) r3;
        r7 = java.lang.Math.sqrt(r7);
        r3 = (float) r7;
        r7 = r0.mBarLength;
        r8 = r0.mProgress;
        r3 = r3 - r7;
        r3 = r3 * r8;
        r7 = r7 + r3;
        r3 = r0.mBarLength;
        r8 = r0.mArrowShaftLength;
        r9 = r0.mProgress;
        r8 = r8 - r3;
        r8 = r8 * r9;
        r3 = r3 + r8;
        r8 = r0.mMaxCutForBarSize;
        r9 = r0.mProgress;
        r8 = r8 * r9;
        r9 = 0;
        r8 = r8 + r9;
        r8 = java.lang.Math.round(r8);
        r8 = (float) r8;
        r10 = ARROW_HEAD_ANGLE;
        r11 = r0.mProgress;
        r10 = r10 * r11;
        r10 = r10 + r9;
        if (r5 == 0) goto L_0x0055;
    L_0x0053:
        r11 = r9;
        goto L_0x0057;
    L_0x0055:
        r11 = -1020002304; // 0xffffffffc3340000 float:-180.0 double:NaN;
    L_0x0057:
        r12 = 1127481344; // 0x43340000 float:180.0 double:5.570497984E-315;
        if (r5 == 0) goto L_0x005d;
    L_0x005b:
        r13 = r12;
        goto L_0x005e;
    L_0x005d:
        r13 = r9;
    L_0x005e:
        r14 = r0.mProgress;
        r13 = r13 - r11;
        r13 = r13 * r14;
        r11 = r11 + r13;
        r13 = (double) r7;
        r6 = (double) r10;
        r16 = java.lang.Math.cos(r6);
        r9 = r13 * r16;
        r9 = java.lang.Math.round(r9);
        r9 = (float) r9;
        r6 = java.lang.Math.sin(r6);
        r13 = r13 * r6;
        r6 = java.lang.Math.round(r13);
        r6 = (float) r6;
        r7 = r0.mPath;
        r7.rewind();
        r7 = r0.mBarGap;
        r10 = r0.mPaint;
        r10 = r10.getStrokeWidth();
        r7 = r7 + r10;
        r10 = r0.mMaxCutForBarSize;
        r10 = -r10;
        r13 = r0.mProgress;
        r10 = r10 - r7;
        r10 = r10 * r13;
        r7 = r7 + r10;
        r10 = -r3;
        r10 = r10 / r4;
        r13 = r0.mPath;
        r14 = r10 + r8;
        r15 = 0;
        r13.moveTo(r14, r15);
        r13 = r0.mPath;
        r8 = r8 * r4;
        r3 = r3 - r8;
        r13.rLineTo(r3, r15);
        r3 = r0.mPath;
        r3.moveTo(r10, r7);
        r3 = r0.mPath;
        r3.rLineTo(r9, r6);
        r3 = r0.mPath;
        r7 = -r7;
        r3.moveTo(r10, r7);
        r3 = r0.mPath;
        r6 = -r6;
        r3.rLineTo(r9, r6);
        r3 = r0.mPath;
        r3.close();
        r20.save();
        r3 = r0.mPaint;
        r3 = r3.getStrokeWidth();
        r6 = r2.height();
        r6 = (float) r6;
        r7 = 1077936128; // 0x40400000 float:3.0 double:5.325712093E-315;
        r7 = r7 * r3;
        r6 = r6 - r7;
        r7 = r0.mBarGap;
        r7 = r7 * r4;
        r6 = r6 - r7;
        r4 = (int) r6;
        r4 = r4 / 4;
        r18 = 1;
        r4 = r4 << 1;
        r4 = (float) r4;
        r6 = 1069547520; // 0x3fc00000 float:1.5 double:5.28426686E-315;
        r3 = r3 * r6;
        r6 = r0.mBarGap;
        r3 = r3 + r6;
        r4 = r4 + r3;
        r2 = r2.centerX();
        r2 = (float) r2;
        r1.translate(r2, r4);
        r2 = r0.mSpin;
        if (r2 == 0) goto L_0x00fc;
    L_0x00ed:
        r2 = r0.mVerticalMirror;
        r2 = r2 ^ r5;
        if (r2 == 0) goto L_0x00f4;
    L_0x00f2:
        r6 = -1;
        goto L_0x00f6;
    L_0x00f4:
        r6 = r18;
    L_0x00f6:
        r2 = (float) r6;
        r11 = r11 * r2;
        r1.rotate(r11);
        goto L_0x0101;
    L_0x00fc:
        if (r5 == 0) goto L_0x0101;
    L_0x00fe:
        r1.rotate(r12);
    L_0x0101:
        r2 = r0.mPath;
        r3 = r0.mPaint;
        r1.drawPath(r2, r3);
        r20.restore();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.graphics.drawable.DrawerArrowDrawable.draw(android.graphics.Canvas):void");
    }

    public final void setAlpha(int i) {
        if (i != this.mPaint.getAlpha()) {
            this.mPaint.setAlpha(i);
            invalidateSelf();
        }
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public final int getIntrinsicHeight() {
        return this.mSize;
    }

    public final int getIntrinsicWidth() {
        return this.mSize;
    }

    public final void setProgress(float f) {
        if (this.mProgress != f) {
            this.mProgress = f;
            invalidateSelf();
        }
    }
}
