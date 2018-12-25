package com.mikepenz.materialize.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.mikepenz.materialize.C0665R;

public class ScrimInsetsFrameLayout extends FrameLayout implements IScrimInsetsLayout {
    private Drawable mInsetForeground;
    private Rect mInsets;
    private boolean mSystemUIVisible = true;
    private Rect mTempRect = new Rect();
    private boolean mTintNavigationBar = true;
    private boolean mTintStatusBar = true;

    public final ViewGroup getView() {
        return this;
    }

    public ScrimInsetsFrameLayout(Context context) {
        super(context);
        init(context, null, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        context = context.obtainStyledAttributes(attributeSet, C0665R.styleable.ScrimInsetsView, i, 0);
        if (context != null) {
            this.mInsetForeground = context.getDrawable(C0665R.styleable.ScrimInsetsView_siv_insetForeground);
            context.recycle();
            setWillNotDraw(true);
        }
    }

    protected boolean fitSystemWindows(Rect rect) {
        this.mInsets = new Rect(rect);
        setWillNotDraw(this.mInsetForeground == null ? 1 : null);
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.mInsets != null && this.mInsetForeground != null) {
            int save = canvas.save();
            canvas.translate((float) getScrollX(), (float) getScrollY());
            if (!this.mSystemUIVisible) {
                this.mInsets.top = 0;
                this.mInsets.right = 0;
                this.mInsets.bottom = 0;
                this.mInsets.left = 0;
            }
            if (this.mTintStatusBar) {
                this.mTempRect.set(0, 0, width, this.mInsets.top);
                this.mInsetForeground.setBounds(this.mTempRect);
                this.mInsetForeground.draw(canvas);
            }
            if (this.mTintNavigationBar) {
                this.mTempRect.set(0, height - this.mInsets.bottom, width, height);
                this.mInsetForeground.setBounds(this.mTempRect);
                this.mInsetForeground.draw(canvas);
            }
            this.mTempRect.set(0, this.mInsets.top, this.mInsets.left, height - this.mInsets.bottom);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
            this.mTempRect.set(width - this.mInsets.right, this.mInsets.top, width, height - this.mInsets.bottom);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mInsetForeground != null) {
            this.mInsetForeground.setCallback(this);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mInsetForeground != null) {
            this.mInsetForeground.setCallback(null);
        }
    }

    public final void setInsetForeground(int i) {
        this.mInsetForeground = new ColorDrawable(i);
    }

    public final void setTintStatusBar(boolean z) {
        this.mTintStatusBar = z;
    }

    public final void setTintNavigationBar$1385ff() {
        this.mTintNavigationBar = false;
    }

    public final void setSystemUIVisible(boolean z) {
        this.mSystemUIVisible = true;
    }
}
