package ru.rocketbank.core.widgets;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.SystemClock;

public class DrawableContainer extends Drawable implements Callback {
    private int mAlpha = 255;
    private Runnable mAnimationRunnable;
    private ColorFilter mColorFilter;
    private int mCurIndex = -1;
    private Drawable mCurrDrawable;
    private DrawableContainerState mDrawableContainerState;
    private DrawableContainerState mDrawableEndingContainerState;
    private long mEnterAnimationEnd;
    private long mExitAnimationEnd;
    protected boolean mIshowingEnding;
    private Drawable mLastDrawable;
    private boolean mMutated;

    /* renamed from: ru.rocketbank.core.widgets.DrawableContainer$1 */
    class C08381 implements Runnable {
        C08381() {
        }

        public final void run() {
            DrawableContainer.this.animate(true);
            DrawableContainer.this.invalidateSelf();
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.DrawableContainer$2 */
    class C08392 implements Runnable {
        C08392() {
        }

        public final void run() {
            DrawableContainer.this.animate(true);
            DrawableContainer.this.invalidateSelf();
        }
    }

    public static abstract class DrawableContainerState extends ConstantState {
        boolean mCanConstantState;
        int mChangingConfigurations;
        boolean mCheckedConstantState;
        int mChildrenChangingConfigurations;
        boolean mComputedConstantSize = false;
        int mConstantHeight;
        int mConstantMinimumHeight;
        int mConstantMinimumWidth;
        Rect mConstantPadding = null;
        boolean mConstantSize = false;
        int mConstantWidth;
        boolean mDither = true;
        Drawable[] mDrawables;
        int mEnterFadeDuration;
        int mExitFadeDuration;
        boolean mHaveStateful = false;
        int mNumChildren;
        int mOpacity;
        final DrawableContainer mOwner;
        boolean mPaddingChecked = false;
        boolean mStateful;
        boolean mVariablePadding = false;

        DrawableContainerState(DrawableContainerState drawableContainerState, DrawableContainer drawableContainer, Resources resources) {
            int i = 0;
            this.mOwner = drawableContainer;
            if (drawableContainerState != null) {
                this.mChangingConfigurations = drawableContainerState.mChangingConfigurations;
                this.mChildrenChangingConfigurations = drawableContainerState.mChildrenChangingConfigurations;
                Drawable[] drawableArr = drawableContainerState.mDrawables;
                this.mDrawables = new Drawable[drawableArr.length];
                this.mNumChildren = drawableContainerState.mNumChildren;
                int i2 = this.mNumChildren;
                while (i < i2) {
                    if (resources != null) {
                        this.mDrawables[i] = drawableArr[i].getConstantState().newDrawable(resources);
                    } else {
                        this.mDrawables[i] = drawableArr[i].getConstantState().newDrawable();
                    }
                    this.mDrawables[i].setCallback(drawableContainer);
                    i++;
                }
                this.mCanConstantState = true;
                this.mCheckedConstantState = true;
                this.mVariablePadding = drawableContainerState.mVariablePadding;
                if (drawableContainerState.mConstantPadding != null) {
                    this.mConstantPadding = new Rect(drawableContainerState.mConstantPadding);
                }
                this.mConstantSize = drawableContainerState.mConstantSize;
                this.mComputedConstantSize = drawableContainerState.mComputedConstantSize;
                this.mConstantWidth = drawableContainerState.mConstantWidth;
                this.mConstantHeight = drawableContainerState.mConstantHeight;
                this.mOpacity = drawableContainerState.mOpacity;
                this.mHaveStateful = drawableContainerState.mHaveStateful;
                this.mStateful = drawableContainerState.mStateful;
                this.mDither = drawableContainerState.mDither;
                this.mEnterFadeDuration = drawableContainerState.mEnterFadeDuration;
                this.mExitFadeDuration = drawableContainerState.mExitFadeDuration;
                return;
            }
            this.mDrawables = new Drawable[10];
            this.mNumChildren = 0;
            this.mCanConstantState = false;
            this.mCheckedConstantState = false;
        }

        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        public final Rect getConstantPadding() {
            if (this.mVariablePadding) {
                return null;
            }
            if (this.mConstantPadding == null) {
                if (!this.mPaddingChecked) {
                    Rect rect = new Rect();
                    int i = this.mNumChildren;
                    Drawable[] drawableArr = this.mDrawables;
                    Rect rect2 = null;
                    for (int i2 = 0; i2 < i; i2++) {
                        if (drawableArr[i2].getPadding(rect)) {
                            if (rect2 == null) {
                                rect2 = new Rect(0, 0, 0, 0);
                            }
                            if (rect.left > rect2.left) {
                                rect2.left = rect.left;
                            }
                            if (rect.top > rect2.top) {
                                rect2.top = rect.top;
                            }
                            if (rect.right > rect2.right) {
                                rect2.right = rect.right;
                            }
                            if (rect.bottom > rect2.bottom) {
                                rect2.bottom = rect.bottom;
                            }
                        }
                    }
                    this.mPaddingChecked = true;
                    this.mConstantPadding = rect2;
                    return rect2;
                }
            }
            return this.mConstantPadding;
        }

        public final int getConstantWidth() {
            if (!this.mComputedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantWidth;
        }

        public final int getConstantHeight() {
            if (!this.mComputedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantHeight;
        }

        public final int getConstantMinimumWidth() {
            if (!this.mComputedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantMinimumWidth;
        }

        public final int getConstantMinimumHeight() {
            if (!this.mComputedConstantSize) {
                computeConstantSize();
            }
            return this.mConstantMinimumHeight;
        }

        private void computeConstantSize() {
            this.mComputedConstantSize = true;
            int i = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            this.mConstantHeight = -1;
            this.mConstantWidth = -1;
            int i2 = 0;
            this.mConstantMinimumHeight = 0;
            this.mConstantMinimumWidth = 0;
            while (i2 < i) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.mConstantWidth) {
                    this.mConstantWidth = intrinsicWidth;
                }
                intrinsicWidth = drawable.getIntrinsicHeight();
                if (intrinsicWidth > this.mConstantHeight) {
                    this.mConstantHeight = intrinsicWidth;
                }
                intrinsicWidth = drawable.getMinimumWidth();
                if (intrinsicWidth > this.mConstantMinimumWidth) {
                    this.mConstantMinimumWidth = intrinsicWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.mConstantMinimumHeight) {
                    this.mConstantMinimumHeight = minimumHeight;
                }
                i2++;
            }
        }

        public final boolean isStateful() {
            if (this.mHaveStateful) {
                return this.mStateful;
            }
            int i = this.mNumChildren;
            boolean z = false;
            for (int i2 = 0; i2 < i; i2++) {
                if (this.mDrawables[i2].isStateful()) {
                    z = true;
                    break;
                }
            }
            this.mStateful = z;
            this.mHaveStateful = true;
            return z;
        }

        public void growArray(int i, int i2) {
            i2 = new Drawable[i2];
            System.arraycopy(this.mDrawables, 0, i2, 0, i);
            this.mDrawables = i2;
        }

        public final synchronized boolean canConstantState() {
            if (!this.mCheckedConstantState) {
                this.mCanConstantState = true;
                int i = this.mNumChildren;
                for (int i2 = 0; i2 < i; i2++) {
                    if (this.mDrawables[i2].getConstantState() == null) {
                        this.mCanConstantState = false;
                        break;
                    }
                }
                this.mCheckedConstantState = true;
            }
            return this.mCanConstantState;
        }

        public final int getOpacity() {
            int i = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.mOpacity = opacity;
            return opacity;
        }
    }

    public void draw(Canvas canvas) {
        if (this.mCurrDrawable != null) {
            this.mCurrDrawable.draw(canvas);
        }
        if (this.mLastDrawable != null) {
            this.mLastDrawable.draw(canvas);
        }
    }

    public int getChangingConfigurations() {
        if (this.mIshowingEnding) {
            return (super.getChangingConfigurations() | this.mDrawableEndingContainerState.mChangingConfigurations) | this.mDrawableEndingContainerState.mChildrenChangingConfigurations;
        }
        return (super.getChangingConfigurations() | this.mDrawableContainerState.mChangingConfigurations) | this.mDrawableContainerState.mChildrenChangingConfigurations;
    }

    public boolean getPadding(Rect rect) {
        Rect constantPadding = (this.mIshowingEnding ? this.mDrawableEndingContainerState : this.mDrawableContainerState).getConstantPadding();
        if (constantPadding != null) {
            rect.set(constantPadding);
            return true;
        } else if (this.mCurrDrawable != null) {
            return this.mCurrDrawable.getPadding(rect);
        } else {
            return super.getPadding(rect);
        }
    }

    public void setAlpha(int i) {
        if (this.mAlpha != i) {
            this.mAlpha = i;
            if (this.mCurrDrawable != null) {
                if (this.mEnterAnimationEnd == 0) {
                    this.mCurrDrawable.mutate().setAlpha(i);
                    return;
                }
                animate(0);
            }
        }
    }

    public void setDither(boolean z) {
        if (this.mDrawableEndingContainerState.mDither != z) {
            this.mDrawableEndingContainerState.mDither = z;
            if (this.mCurrDrawable != null && this.mIshowingEnding) {
                this.mCurrDrawable.mutate().setDither(this.mDrawableEndingContainerState.mDither);
            }
        }
        if (this.mDrawableContainerState.mDither != z) {
            this.mDrawableContainerState.mDither = z;
            if (this.mCurrDrawable && !this.mIshowingEnding) {
                this.mCurrDrawable.mutate().setDither(this.mDrawableContainerState.mDither);
            }
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mColorFilter != colorFilter) {
            this.mColorFilter = colorFilter;
            if (this.mCurrDrawable != null) {
                this.mCurrDrawable.mutate().setColorFilter(colorFilter);
            }
        }
    }

    protected void onBoundsChange(Rect rect) {
        if (this.mLastDrawable != null) {
            this.mLastDrawable.setBounds(rect);
        }
        if (this.mCurrDrawable != null) {
            this.mCurrDrawable.setBounds(rect);
        }
    }

    public boolean isStateful() {
        if (this.mIshowingEnding) {
            return this.mDrawableEndingContainerState.isStateful();
        }
        return this.mDrawableContainerState.isStateful();
    }

    public void jumpToCurrentState() {
        Object obj;
        if (this.mLastDrawable != null) {
            this.mLastDrawable.jumpToCurrentState();
            this.mLastDrawable = null;
            obj = 1;
        } else {
            obj = null;
        }
        if (this.mCurrDrawable != null) {
            this.mCurrDrawable.jumpToCurrentState();
            this.mCurrDrawable.mutate().setAlpha(this.mAlpha);
        }
        if (this.mExitAnimationEnd != 0) {
            this.mExitAnimationEnd = 0;
            obj = 1;
        }
        if (this.mEnterAnimationEnd != 0) {
            this.mEnterAnimationEnd = 0;
            obj = 1;
        }
        if (obj != null) {
            invalidateSelf();
        }
    }

    protected boolean onStateChange(int[] iArr) {
        if (this.mLastDrawable != null) {
            return this.mLastDrawable.setState(iArr);
        }
        return this.mCurrDrawable != null ? this.mCurrDrawable.setState(iArr) : null;
    }

    protected boolean onLevelChange(int i) {
        if (this.mLastDrawable != null) {
            return this.mLastDrawable.setLevel(i);
        }
        return this.mCurrDrawable != null ? this.mCurrDrawable.setLevel(i) : false;
    }

    public int getIntrinsicWidth() {
        if (this.mIshowingEnding) {
            if (this.mDrawableEndingContainerState.mConstantSize) {
                return this.mDrawableEndingContainerState.getConstantWidth();
            }
        } else if (this.mDrawableContainerState.mConstantSize) {
            return this.mDrawableContainerState.getConstantWidth();
        }
        return this.mCurrDrawable != null ? this.mCurrDrawable.getIntrinsicWidth() : -1;
    }

    public int getIntrinsicHeight() {
        if (this.mIshowingEnding) {
            if (this.mDrawableEndingContainerState.mConstantSize) {
                return this.mDrawableEndingContainerState.getConstantHeight();
            }
        } else if (this.mDrawableContainerState.mConstantSize) {
            return this.mDrawableContainerState.getConstantHeight();
        }
        return this.mCurrDrawable != null ? this.mCurrDrawable.getIntrinsicHeight() : -1;
    }

    public int getMinimumWidth() {
        if (this.mIshowingEnding) {
            if (this.mDrawableEndingContainerState.mConstantSize) {
                return this.mDrawableEndingContainerState.getConstantMinimumWidth();
            }
        } else if (this.mDrawableContainerState.mConstantSize) {
            return this.mDrawableContainerState.getConstantMinimumWidth();
        }
        return this.mCurrDrawable != null ? this.mCurrDrawable.getMinimumWidth() : 0;
    }

    public int getMinimumHeight() {
        if (this.mIshowingEnding) {
            if (this.mDrawableEndingContainerState.mConstantSize) {
                return this.mDrawableEndingContainerState.getConstantMinimumHeight();
            }
        } else if (this.mDrawableContainerState.mConstantSize) {
            return this.mDrawableContainerState.getConstantMinimumHeight();
        }
        return this.mCurrDrawable != null ? this.mCurrDrawable.getMinimumHeight() : 0;
    }

    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.mCurrDrawable && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable == this.mCurrDrawable && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.mCurrDrawable && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.mLastDrawable != null) {
            this.mLastDrawable.setVisible(z, z2);
        }
        if (this.mCurrDrawable != null) {
            this.mCurrDrawable.setVisible(z, z2);
        }
        return visible;
    }

    public int getOpacity() {
        if (this.mIshowingEnding) {
            if (this.mCurrDrawable != null) {
                if (this.mCurrDrawable.isVisible()) {
                    return this.mDrawableEndingContainerState.getOpacity();
                }
            }
            return -2;
        }
        if (this.mCurrDrawable != null) {
            if (this.mCurrDrawable.isVisible()) {
                return this.mDrawableContainerState.getOpacity();
            }
        }
        return -2;
    }

    public final boolean selectDrawable(int i) {
        long uptimeMillis;
        Drawable drawable;
        if (this.mIshowingEnding) {
            if (i == this.mCurIndex) {
                return false;
            }
            uptimeMillis = SystemClock.uptimeMillis();
            if (this.mDrawableEndingContainerState.mExitFadeDuration > 0) {
                if (this.mLastDrawable != null) {
                    this.mLastDrawable.setVisible(false, false);
                }
                if (this.mCurrDrawable != null) {
                    this.mLastDrawable = this.mCurrDrawable;
                    this.mExitAnimationEnd = uptimeMillis + ((long) this.mDrawableEndingContainerState.mExitFadeDuration);
                } else {
                    this.mLastDrawable = null;
                    this.mExitAnimationEnd = 0;
                }
            } else if (this.mCurrDrawable != null) {
                this.mCurrDrawable.setVisible(false, false);
            }
            if (i < 0 || i >= this.mDrawableEndingContainerState.mNumChildren) {
                this.mCurrDrawable = null;
                this.mCurIndex = -1;
            } else {
                drawable = this.mDrawableEndingContainerState.mDrawables[i];
                this.mCurrDrawable = drawable;
                this.mCurIndex = i;
                if (drawable != null) {
                    drawable.mutate();
                    if (this.mDrawableEndingContainerState.mEnterFadeDuration > 0) {
                        this.mEnterAnimationEnd = uptimeMillis + ((long) this.mDrawableEndingContainerState.mEnterFadeDuration);
                    } else {
                        drawable.setAlpha(this.mAlpha);
                    }
                    drawable.setVisible(isVisible(), true);
                    drawable.setDither(this.mDrawableEndingContainerState.mDither);
                    drawable.setColorFilter(this.mColorFilter);
                    drawable.setState(getState());
                    drawable.setLevel(getLevel());
                    drawable.setBounds(getBounds());
                }
            }
            if (!(this.mEnterAnimationEnd == 0 && this.mExitAnimationEnd == 0)) {
                if (this.mAnimationRunnable == 0) {
                    this.mAnimationRunnable = new C08381();
                } else {
                    unscheduleSelf(this.mAnimationRunnable);
                }
                animate(true);
            }
            invalidateSelf();
            return true;
        } else if (i == this.mCurIndex) {
            return false;
        } else {
            uptimeMillis = SystemClock.uptimeMillis();
            if (this.mDrawableContainerState.mExitFadeDuration > 0) {
                if (this.mLastDrawable != null) {
                    this.mLastDrawable.setVisible(false, false);
                }
                if (this.mCurrDrawable != null) {
                    this.mLastDrawable = this.mCurrDrawable;
                    this.mExitAnimationEnd = uptimeMillis + ((long) this.mDrawableContainerState.mExitFadeDuration);
                } else {
                    this.mLastDrawable = null;
                    this.mExitAnimationEnd = 0;
                }
            } else if (this.mCurrDrawable != null) {
                this.mCurrDrawable.setVisible(false, false);
            }
            if (i < 0 || i >= this.mDrawableContainerState.mNumChildren) {
                this.mCurrDrawable = null;
                this.mCurIndex = -1;
            } else {
                drawable = this.mDrawableContainerState.mDrawables[i];
                this.mCurrDrawable = drawable;
                this.mCurIndex = i;
                if (drawable != null) {
                    drawable.mutate();
                    if (this.mDrawableContainerState.mEnterFadeDuration > 0) {
                        this.mEnterAnimationEnd = uptimeMillis + ((long) this.mDrawableContainerState.mEnterFadeDuration);
                    } else {
                        drawable.setAlpha(this.mAlpha);
                    }
                    drawable.setVisible(isVisible(), true);
                    drawable.setDither(this.mDrawableContainerState.mDither);
                    drawable.setColorFilter(this.mColorFilter);
                    drawable.setState(getState());
                    drawable.setLevel(getLevel());
                    drawable.setBounds(getBounds());
                }
            }
            if (!(this.mEnterAnimationEnd == 0 && this.mExitAnimationEnd == 0)) {
                if (this.mAnimationRunnable == 0) {
                    this.mAnimationRunnable = new C08392();
                } else {
                    unscheduleSelf(this.mAnimationRunnable);
                }
                animate(true);
            }
            invalidateSelf();
            return true;
        }
    }

    final void animate(boolean z) {
        if (this.mIshowingEnding) {
            animateEnding(z);
            return;
        }
        boolean z2;
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.mCurrDrawable != null) {
            if (this.mEnterAnimationEnd != 0) {
                if (this.mEnterAnimationEnd <= uptimeMillis) {
                    this.mCurrDrawable.mutate().setAlpha(this.mAlpha);
                } else {
                    this.mCurrDrawable.mutate().setAlpha(((255 - (((int) ((this.mEnterAnimationEnd - uptimeMillis) * 255)) / this.mDrawableContainerState.mEnterFadeDuration)) * this.mAlpha) / 255);
                    z2 = true;
                    if (this.mLastDrawable != null) {
                        if (this.mExitAnimationEnd != 0) {
                            if (this.mExitAnimationEnd <= uptimeMillis) {
                                this.mLastDrawable.setVisible(false, false);
                                this.mLastDrawable = null;
                            } else {
                                this.mLastDrawable.mutate().setAlpha(((((int) ((this.mExitAnimationEnd - uptimeMillis) * 255)) / this.mDrawableContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                                z2 = true;
                            }
                        }
                        if (z && r2) {
                            scheduleSelf(this.mAnimationRunnable, uptimeMillis + 16);
                        }
                    }
                    this.mExitAnimationEnd = 0;
                    scheduleSelf(this.mAnimationRunnable, uptimeMillis + 16);
                }
            }
            z2 = false;
            if (this.mLastDrawable != null) {
                if (this.mExitAnimationEnd != 0) {
                    if (this.mExitAnimationEnd <= uptimeMillis) {
                        this.mLastDrawable.mutate().setAlpha(((((int) ((this.mExitAnimationEnd - uptimeMillis) * 255)) / this.mDrawableContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                        z2 = true;
                    } else {
                        this.mLastDrawable.setVisible(false, false);
                        this.mLastDrawable = null;
                    }
                }
                scheduleSelf(this.mAnimationRunnable, uptimeMillis + 16);
            }
            this.mExitAnimationEnd = 0;
            scheduleSelf(this.mAnimationRunnable, uptimeMillis + 16);
        }
        this.mEnterAnimationEnd = 0;
        z2 = false;
        if (this.mLastDrawable != null) {
            if (this.mExitAnimationEnd != 0) {
                if (this.mExitAnimationEnd <= uptimeMillis) {
                    this.mLastDrawable.setVisible(false, false);
                    this.mLastDrawable = null;
                } else {
                    this.mLastDrawable.mutate().setAlpha(((((int) ((this.mExitAnimationEnd - uptimeMillis) * 255)) / this.mDrawableContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                    z2 = true;
                }
            }
            scheduleSelf(this.mAnimationRunnable, uptimeMillis + 16);
        }
        this.mExitAnimationEnd = 0;
        scheduleSelf(this.mAnimationRunnable, uptimeMillis + 16);
    }

    private void animateEnding(boolean z) {
        boolean z2;
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.mCurrDrawable != null) {
            if (this.mEnterAnimationEnd != 0) {
                if (this.mEnterAnimationEnd <= uptimeMillis) {
                    this.mCurrDrawable.mutate().setAlpha(this.mAlpha);
                } else {
                    this.mCurrDrawable.mutate().setAlpha(((255 - (((int) ((this.mEnterAnimationEnd - uptimeMillis) * 255)) / this.mDrawableEndingContainerState.mEnterFadeDuration)) * this.mAlpha) / 255);
                    z2 = true;
                    if (this.mLastDrawable != null) {
                        if (this.mExitAnimationEnd != 0) {
                            if (this.mExitAnimationEnd <= uptimeMillis) {
                                this.mLastDrawable.setVisible(false, false);
                                this.mLastDrawable = null;
                            } else {
                                this.mLastDrawable.mutate().setAlpha(((((int) ((this.mExitAnimationEnd - uptimeMillis) * 255)) / this.mDrawableEndingContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                                z2 = true;
                            }
                        }
                        if (z && r2) {
                            scheduleSelf(this.mAnimationRunnable, uptimeMillis + 16);
                            return;
                        }
                    }
                    this.mExitAnimationEnd = 0;
                    if (z) {
                    }
                }
            }
            z2 = false;
            if (this.mLastDrawable != null) {
                if (this.mExitAnimationEnd != 0) {
                    if (this.mExitAnimationEnd <= uptimeMillis) {
                        this.mLastDrawable.mutate().setAlpha(((((int) ((this.mExitAnimationEnd - uptimeMillis) * 255)) / this.mDrawableEndingContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                        z2 = true;
                    } else {
                        this.mLastDrawable.setVisible(false, false);
                        this.mLastDrawable = null;
                    }
                }
                if (z) {
                }
            }
            this.mExitAnimationEnd = 0;
            if (z) {
            }
        }
        this.mEnterAnimationEnd = 0;
        z2 = false;
        if (this.mLastDrawable != null) {
            if (this.mExitAnimationEnd != 0) {
                if (this.mExitAnimationEnd <= uptimeMillis) {
                    this.mLastDrawable.setVisible(false, false);
                    this.mLastDrawable = null;
                } else {
                    this.mLastDrawable.mutate().setAlpha(((((int) ((this.mExitAnimationEnd - uptimeMillis) * 255)) / this.mDrawableEndingContainerState.mExitFadeDuration) * this.mAlpha) / 255);
                    z2 = true;
                }
            }
            if (z) {
            }
        }
        this.mExitAnimationEnd = 0;
        if (z) {
        }
    }

    public Drawable getCurrent() {
        return this.mCurrDrawable;
    }

    public ConstantState getConstantState() {
        if (this.mIshowingEnding) {
            if (this.mDrawableEndingContainerState.canConstantState()) {
                this.mDrawableEndingContainerState.mChangingConfigurations = getChangingConfigurations();
                return this.mDrawableEndingContainerState;
            }
        } else if (this.mDrawableContainerState.canConstantState()) {
            this.mDrawableContainerState.mChangingConfigurations = getChangingConfigurations();
            return this.mDrawableContainerState;
        }
        return null;
    }

    public Drawable mutate() {
        int i = 0;
        int i2;
        Drawable[] drawableArr;
        if (this.mIshowingEnding) {
            if (!this.mMutated && super.mutate() == this) {
                i2 = this.mDrawableEndingContainerState.mNumChildren;
                drawableArr = this.mDrawableEndingContainerState.mDrawables;
                while (i < i2) {
                    if (drawableArr[i] != null) {
                        drawableArr[i].mutate();
                    }
                    i++;
                }
                this.mMutated = true;
            }
            return this;
        }
        if (!this.mMutated && super.mutate() == this) {
            i2 = this.mDrawableContainerState.mNumChildren;
            drawableArr = this.mDrawableContainerState.mDrawables;
            while (i < i2) {
                if (drawableArr[i] != null) {
                    drawableArr[i].mutate();
                }
                i++;
            }
            this.mMutated = true;
        }
        return this;
    }

    public void swithEnding() {
        this.mIshowingEnding = true;
    }

    protected final void setConstantState(DrawableContainerState drawableContainerState) {
        this.mDrawableContainerState = drawableContainerState;
    }

    protected final void setConstantEndingState(DrawableContainerState drawableContainerState) {
        this.mDrawableEndingContainerState = drawableContainerState;
    }
}
