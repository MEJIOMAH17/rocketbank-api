package com.mikepenz.materialdrawer.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mikepenz.materialdrawer.C1266R;
import com.mikepenz.materialdrawer.util.DrawerImageLoader;
import ru.rocketbank.r2d2.C0859R;

public class BezelImageView extends ImageView {
    private boolean isPressed;
    private boolean isSelected;
    private Paint mBlackPaint;
    private Rect mBounds;
    private RectF mBoundsF;
    private Bitmap mCacheBitmap;
    private boolean mCacheValid;
    private int mCachedHeight;
    private int mCachedWidth;
    private ColorMatrixColorFilter mDesaturateColorFilter;
    private boolean mDrawCircularShadow;
    private Drawable mMaskDrawable;
    private Paint mMaskedPaint;
    private int mSelectorAlpha;
    private int mSelectorColor;
    private ColorFilter mSelectorFilter;

    @TargetApi(21)
    class CustomOutline extends ViewOutlineProvider {
        int height;
        int width;

        CustomOutline(int i, int i2) {
            this.width = i;
            this.height = i2;
        }

        public final void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, this.width, this.height);
        }
    }

    public BezelImageView(Context context) {
        this(context, null);
    }

    public BezelImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BezelImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDrawCircularShadow = true;
        this.mSelectorAlpha = 150;
        this.mCacheValid = false;
        this.isPressed = false;
        context = context.obtainStyledAttributes(attributeSet, C1266R.styleable.BezelImageView, i, C0859R.style.BezelImageView);
        this.mMaskDrawable = context.getDrawable(C1266R.styleable.BezelImageView_biv_maskDrawable);
        if (this.mMaskDrawable != null) {
            this.mMaskDrawable.setCallback(this);
        }
        this.mDrawCircularShadow = context.getBoolean(C1266R.styleable.BezelImageView_biv_drawCircularShadow, true);
        this.mSelectorColor = context.getColor(C1266R.styleable.BezelImageView_biv_selectorOnPress, 0);
        context.recycle();
        this.mBlackPaint = new Paint();
        this.mBlackPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mMaskedPaint = new Paint();
        this.mMaskedPaint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        this.mCacheBitmap = Bitmap.createBitmap(1, 1, Config.ARGB_8888);
        context = new ColorMatrix();
        context.setSaturation(null);
        this.mDesaturateColorFilter = new ColorMatrixColorFilter(context);
        if (this.mSelectorColor != null) {
            this.mSelectorFilter = new PorterDuffColorFilter(Color.argb(this.mSelectorAlpha, Color.red(this.mSelectorColor), Color.green(this.mSelectorColor), Color.blue(this.mSelectorColor)), Mode.SRC_ATOP);
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (VERSION.SDK_INT >= 21 && this.mDrawCircularShadow != 0) {
            setOutlineProvider(new CustomOutline(i, i2));
        }
    }

    protected boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        this.mBounds = new Rect(0, 0, i3 - i, i4 - i2);
        this.mBoundsF = new RectF(this.mBounds);
        if (this.mMaskDrawable != 0) {
            this.mMaskDrawable.setBounds(this.mBounds);
        }
        if (frame) {
            this.mCacheValid = false;
        }
        return frame;
    }

    protected void onDraw(Canvas canvas) {
        if (this.mBounds != null) {
            int width = this.mBounds.width();
            int height = this.mBounds.height();
            if (width != 0) {
                if (height != 0) {
                    if (width == this.mCachedWidth && height == this.mCachedHeight) {
                        this.mCacheBitmap.eraseColor(0);
                    } else {
                        this.mCacheBitmap.recycle();
                        this.mCacheBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
                        this.mCachedWidth = width;
                        this.mCachedHeight = height;
                    }
                    Canvas canvas2 = new Canvas(this.mCacheBitmap);
                    if (this.mMaskDrawable != null) {
                        height = canvas2.save();
                        this.mMaskDrawable.draw(canvas2);
                        if (!this.isSelected) {
                            this.mMaskedPaint.setColorFilter(null);
                        } else if (this.mSelectorFilter != null) {
                            this.mMaskedPaint.setColorFilter(this.mSelectorFilter);
                        } else {
                            this.mMaskedPaint.setColorFilter(this.mDesaturateColorFilter);
                        }
                        canvas2.saveLayer(this.mBoundsF, this.mMaskedPaint, 12);
                        super.onDraw(canvas2);
                        canvas2.restoreToCount(height);
                    } else if (this.isSelected) {
                        height = canvas2.save();
                        canvas2.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) this.mCachedWidth, (float) this.mCachedHeight, this.mBlackPaint);
                        if (this.mSelectorFilter != null) {
                            this.mMaskedPaint.setColorFilter(this.mSelectorFilter);
                        } else {
                            this.mMaskedPaint.setColorFilter(this.mDesaturateColorFilter);
                        }
                        canvas2.saveLayer(this.mBoundsF, this.mMaskedPaint, 12);
                        super.onDraw(canvas2);
                        canvas2.restoreToCount(height);
                    } else {
                        super.onDraw(canvas2);
                    }
                    canvas.drawBitmap(this.mCacheBitmap, (float) this.mBounds.left, (float) this.mBounds.top, null);
                    this.isPressed = isPressed();
                }
            }
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (isClickable()) {
            switch (motionEvent.getAction()) {
                case 0:
                    this.isSelected = true;
                    break;
                case 1:
                case 3:
                case 4:
                case 8:
                    this.isSelected = false;
                    break;
                default:
                    break;
            }
            invalidate();
            return super.dispatchTouchEvent(motionEvent);
        }
        this.isSelected = false;
        return super.onTouchEvent(motionEvent);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mMaskDrawable != null && this.mMaskDrawable.isStateful()) {
            this.mMaskDrawable.setState(getDrawableState());
        }
        if (isDuplicateParentStateEnabled()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.mMaskDrawable) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        if (drawable != this.mMaskDrawable) {
            if (super.verifyDrawable(drawable) == null) {
                return null;
            }
        }
        return true;
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
    }

    public void setImageResource(int i) {
        super.setImageResource(i);
    }

    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
    }

    public void setImageURI(Uri uri) {
        if (!"http".equals(uri.getScheme())) {
            if (!"https".equals(uri.getScheme())) {
                super.setImageURI(uri);
                return;
            }
        }
        DrawerImageLoader.getInstance().setImage$15ce6e06(this, uri);
    }
}
