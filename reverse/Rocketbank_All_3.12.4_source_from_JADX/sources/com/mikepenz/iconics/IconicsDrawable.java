package com.mikepenz.iconics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.text.TextPaint;
import android.util.TypedValue;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mikepenz.iconics.typeface.IIcon;
import ru.rocketbank.r2d2.C0859R;

public final class IconicsDrawable extends Drawable {
    private int mAlpha = 255;
    private int mBackgroundColor;
    private Paint mBackgroundPaint;
    private Context mContext;
    private int mContourColor;
    private Paint mContourPaint;
    private int mContourWidth;
    private boolean mDrawContour;
    private IIcon mIcon;
    private int mIconColor;
    private int mIconOffsetX = 0;
    private int mIconOffsetY = 0;
    private int mIconPadding;
    private Paint mIconPaint;
    private Rect mPaddingBounds;
    private Path mPath;
    private RectF mPathBounds;
    private String mPlainIcon;
    private int mRoundedCornerRx = -1;
    private int mRoundedCornerRy = -1;
    private int mSizeX = -1;
    private int mSizeY = -1;

    public final boolean isStateful() {
        return true;
    }

    private IconicsDrawable(Context context) {
        this.mContext = context.getApplicationContext();
        prepare();
        this.mPlainIcon = Character.valueOf(' ').toString();
        this.mIcon = null;
        this.mIconPaint.setTypeface(Typeface.DEFAULT);
        invalidateSelf();
    }

    public IconicsDrawable(Context context, IIcon iIcon) {
        this.mContext = context.getApplicationContext();
        prepare();
        icon(iIcon);
    }

    private void prepare() {
        this.mIconPaint = new TextPaint(1);
        this.mIconPaint.setStyle(Style.FILL);
        this.mIconPaint.setTextAlign(Align.CENTER);
        this.mIconPaint.setUnderlineText(false);
        this.mIconPaint.setAntiAlias(true);
        this.mBackgroundPaint = new Paint(1);
        this.mContourPaint = new Paint(1);
        this.mContourPaint.setStyle(Style.STROKE);
        this.mPath = new Path();
        this.mPathBounds = new RectF();
        this.mPaddingBounds = new Rect();
    }

    private IconicsDrawable icon(IIcon iIcon) {
        this.mIcon = iIcon;
        this.mPlainIcon = null;
        this.mIconPaint.setTypeface(iIcon.getTypeface().getTypeface(this.mContext));
        invalidateSelf();
        return this;
    }

    public final IconicsDrawable color(int i) {
        this.mIconPaint.setColor(Color.rgb(Color.red(i), Color.green(i), Color.blue(i)));
        this.mIconColor = i;
        setAlpha(Color.alpha(i));
        invalidateSelf();
        return this;
    }

    public final IconicsDrawable colorRes$236e4172() {
        return color(ContextCompat.getColor(this.mContext, C0859R.color.accent));
    }

    public final IconicsDrawable paddingDp(int i) {
        return paddingPx((int) TypedValue.applyDimension(1, (float) i, this.mContext.getResources().getDisplayMetrics()));
    }

    private IconicsDrawable paddingPx(int i) {
        if (this.mIconPadding != i) {
            this.mIconPadding = i;
            if (this.mDrawContour != 0) {
                this.mIconPadding += this.mContourWidth;
            }
            invalidateSelf();
        }
        return this;
    }

    public final IconicsDrawable sizeDp(int i) {
        i = (int) TypedValue.applyDimension(1, (float) i, this.mContext.getResources().getDisplayMetrics());
        this.mSizeX = i;
        this.mSizeY = i;
        setBounds(0, 0, i, i);
        invalidateSelf();
        return this;
    }

    public final IconicsDrawable backgroundColor(int i) {
        this.mBackgroundPaint.setColor(i);
        this.mBackgroundColor = i;
        this.mRoundedCornerRx = 0;
        this.mRoundedCornerRy = 0;
        return this;
    }

    public final IconicsDrawable backgroundColorRes$236e4172() {
        int color = ContextCompat.getColor(this.mContext, C0859R.color.primary);
        this.mBackgroundPaint.setColor(color);
        this.mBackgroundColor = color;
        this.mRoundedCornerRx = 0;
        this.mRoundedCornerRy = 0;
        return this;
    }

    private IconicsDrawable drawContour(boolean z) {
        if (this.mDrawContour != z) {
            this.mDrawContour = z;
            if (this.mDrawContour) {
                this.mIconPadding += this.mContourWidth;
            } else {
                this.mIconPadding -= this.mContourWidth;
            }
            invalidateSelf();
        }
        return this;
    }

    public final void draw(Canvas canvas) {
        if (this.mIcon != null || this.mPlainIcon != null) {
            Rect bounds = getBounds();
            if (this.mIconPadding >= 0 && (this.mIconPadding << 1) <= bounds.width() && (this.mIconPadding << 1) <= bounds.height()) {
                this.mPaddingBounds.set(bounds.left + this.mIconPadding, bounds.top + this.mIconPadding, bounds.right - this.mIconPadding, bounds.bottom - this.mIconPadding);
            }
            float height = ((float) bounds.height()) * 2.0f;
            this.mIconPaint.setTextSize(height);
            String valueOf = this.mIcon != null ? String.valueOf(this.mIcon.getCharacter()) : String.valueOf(this.mPlainIcon);
            this.mIconPaint.getTextPath(valueOf, 0, valueOf.length(), BitmapDescriptorFactory.HUE_RED, (float) bounds.height(), this.mPath);
            this.mPath.computeBounds(this.mPathBounds, true);
            float width = ((float) this.mPaddingBounds.width()) / this.mPathBounds.width();
            float height2 = ((float) this.mPaddingBounds.height()) / this.mPathBounds.height();
            if (width >= height2) {
                width = height2;
            }
            this.mIconPaint.setTextSize(height * width);
            this.mIconPaint.getTextPath(valueOf, 0, valueOf.length(), BitmapDescriptorFactory.HUE_RED, (float) bounds.height(), this.mPath);
            this.mPath.computeBounds(this.mPathBounds, true);
            this.mPath.offset(((((float) bounds.centerX()) - (this.mPathBounds.width() / 2.0f)) - this.mPathBounds.left) + ((float) this.mIconOffsetX), ((((float) bounds.centerY()) - (this.mPathBounds.height() / 2.0f)) - this.mPathBounds.top) + ((float) this.mIconOffsetY));
            if (this.mBackgroundPaint != null && this.mRoundedCornerRy >= 0 && this.mRoundedCornerRx >= 0) {
                canvas.drawRoundRect(new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) bounds.width(), (float) bounds.height()), (float) this.mRoundedCornerRx, (float) this.mRoundedCornerRy, this.mBackgroundPaint);
            }
            this.mPath.close();
            if (this.mDrawContour) {
                canvas.drawPath(this.mPath, this.mContourPaint);
            }
            this.mIconPaint.setAlpha(this.mAlpha);
            canvas.drawPath(this.mPath, this.mIconPaint);
        }
    }

    public final boolean setState(int[] iArr) {
        setAlpha(this.mAlpha);
        return 1;
    }

    public final int getIntrinsicWidth() {
        return this.mSizeX;
    }

    public final int getIntrinsicHeight() {
        return this.mSizeY;
    }

    public final int getOpacity() {
        return this.mAlpha;
    }

    public final void setAlpha(int i) {
        this.mIconPaint.setAlpha(i);
        this.mAlpha = i;
    }

    public final int getAlpha() {
        return this.mAlpha;
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.mIconPaint.setColorFilter(colorFilter);
    }

    public final void clearColorFilter() {
        this.mIconPaint.setColorFilter(null);
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        IconicsDrawable paddingPx = new IconicsDrawable(this.mContext).paddingPx(this.mIconPadding);
        paddingPx.mRoundedCornerRx = this.mRoundedCornerRx;
        paddingPx.mRoundedCornerRy = this.mRoundedCornerRy;
        paddingPx.mSizeX = this.mSizeX;
        paddingPx.setBounds(0, 0, paddingPx.mSizeX, paddingPx.mSizeY);
        paddingPx.invalidateSelf();
        paddingPx.mSizeY = this.mSizeY;
        paddingPx.setBounds(0, 0, paddingPx.mSizeX, paddingPx.mSizeY);
        paddingPx.invalidateSelf();
        paddingPx.mIconOffsetX = this.mIconOffsetX;
        paddingPx.mIconOffsetY = this.mIconOffsetY;
        int i = this.mContourColor;
        paddingPx.mContourPaint.setColor(Color.rgb(Color.red(i), Color.green(i), Color.blue(i)));
        paddingPx.mContourPaint.setAlpha(Color.alpha(i));
        paddingPx.mContourColor = i;
        paddingPx.invalidateSelf();
        paddingPx.mContourWidth = this.mContourWidth;
        paddingPx.mContourPaint.setStrokeWidth((float) paddingPx.mContourWidth);
        paddingPx.drawContour(true);
        paddingPx.invalidateSelf();
        i = this.mBackgroundColor;
        paddingPx.mBackgroundPaint.setColor(i);
        paddingPx.mBackgroundColor = i;
        paddingPx.mRoundedCornerRx = 0;
        paddingPx.mRoundedCornerRy = 0;
        paddingPx = paddingPx.color(this.mIconColor);
        paddingPx.setAlpha(this.mAlpha);
        paddingPx = paddingPx.drawContour(this.mDrawContour);
        paddingPx.mIconPaint.setTypeface(this.mIconPaint.getTypeface());
        if (this.mIcon != null) {
            paddingPx.icon(this.mIcon);
        } else if (this.mPlainIcon != null) {
            paddingPx.mPlainIcon = this.mPlainIcon;
            paddingPx.mIcon = null;
            paddingPx.mIconPaint.setTypeface(Typeface.DEFAULT);
            paddingPx.invalidateSelf();
        }
        return paddingPx;
    }
}
