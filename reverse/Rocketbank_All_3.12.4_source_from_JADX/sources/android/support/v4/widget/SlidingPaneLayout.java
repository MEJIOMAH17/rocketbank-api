package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout extends ViewGroup {
    static final SlidingPanelLayoutImpl IMPL;
    private boolean mCanSlide;
    final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    boolean mIsUnableToDrag;
    private final int mOverhangSize;
    final ArrayList<DisableLayerRunnable> mPostedRunnables;
    boolean mPreservedOpenState;
    float mSlideOffset;
    int mSlideRange;
    View mSlideableView;
    private final Rect mTmpRect;

    class DisableLayerRunnable implements Runnable {
        final View mChildView;

        DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        public final void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                this.mChildView.setLayerType(0, null);
                SlidingPaneLayout.IMPL.invalidateChildRegion(SlidingPaneLayout.this, this.mChildView);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }

    public static class LayoutParams extends MarginLayoutParams {
        private static final int[] ATTRS = new int[]{16843137};
        boolean dimWhenOffset;
        boolean slideable;
        public float weight;

        public LayoutParams() {
            super(-1, -1);
            this.weight = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = null;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.weight = null;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.weight = BitmapDescriptorFactory.HUE_RED;
            context = context.obtainStyledAttributes(attributeSet, ATTRS);
            this.weight = context.getFloat(null, BitmapDescriptorFactory.HUE_RED);
            context.recycle();
        }
    }

    interface SlidingPanelLayoutImpl {
        void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view);
    }

    static class SavedState extends AbsSavedState {
        public static final Creator<SavedState> CREATOR = new C01971();
        boolean isOpen;

        /* renamed from: android.support.v4.widget.SlidingPaneLayout$SavedState$1 */
        static class C01971 implements ClassLoaderCreator<SavedState> {
            C01971() {
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isOpen = parcel.readInt() != null ? true : null;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.isOpen);
        }
    }

    static class SlidingPanelLayoutImplBase implements SlidingPanelLayoutImpl {
        SlidingPanelLayoutImplBase() {
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.postInvalidateOnAnimation(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    static class SlidingPanelLayoutImplJB extends SlidingPanelLayoutImplBase {
        private Method mGetDisplayList;
        private Field mRecreateDisplayList;

        SlidingPanelLayoutImplJB() {
            try {
                this.mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", null);
            } catch (Throwable e) {
                Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
            }
            try {
                this.mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
                this.mRecreateDisplayList.setAccessible(true);
            } catch (Throwable e2) {
                Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
            }
        }

        public final void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.mGetDisplayList == null || this.mRecreateDisplayList == null) {
                view.invalidate();
                return;
            }
            try {
                this.mRecreateDisplayList.setBoolean(view, true);
                this.mGetDisplayList.invoke(view, null);
            } catch (Throwable e) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e);
            }
            super.invalidateChildRegion(slidingPaneLayout, view);
        }
    }

    static class SlidingPanelLayoutImplJBMR1 extends SlidingPanelLayoutImplBase {
        SlidingPanelLayoutImplJBMR1() {
        }

        public final void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            view.getLayoutParams();
            ViewCompat.setLayerPaint(view, null);
        }
    }

    static {
        if (VERSION.SDK_INT >= 17) {
            IMPL = new SlidingPanelLayoutImplJBMR1();
        } else if (VERSION.SDK_INT >= 16) {
            IMPL = new SlidingPanelLayoutImplJB();
        } else {
            IMPL = new SlidingPanelLayoutImplBase();
        }
    }

    private void setAllChildrenVisible() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        int size = this.mPostedRunnables.size();
        for (int i = 0; i < size; i++) {
            ((DisableLayerRunnable) this.mPostedRunnables.get(i)).run();
        }
        this.mPostedRunnables.clear();
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        SlidingPaneLayout slidingPaneLayout = this;
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size2 = MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            } else if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
        } else if (mode2 == 0) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            } else if (mode2 == 0) {
                size2 = 300;
                mode2 = Integer.MIN_VALUE;
            }
        }
        boolean z = false;
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 != 1073741824) {
                size2 = 0;
            } else {
                size2 = (size2 - getPaddingTop()) - getPaddingBottom();
            }
            i3 = size2;
        } else {
            i3 = (size2 - getPaddingTop()) - getPaddingBottom();
            size2 = 0;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        slidingPaneLayout.mSlideableView = null;
        boolean z2 = false;
        int i4 = size2;
        int i5 = paddingLeft;
        float f = BitmapDescriptorFactory.HUE_RED;
        size2 = z2;
        while (true) {
            int i6 = 8;
            if (size2 >= childCount) {
                break;
            }
            int i7;
            View childAt = getChildAt(size2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.dimWhenOffset = z;
            } else {
                if (layoutParams.weight > BitmapDescriptorFactory.HUE_RED) {
                    f += layoutParams.weight;
                    if (layoutParams.width == 0) {
                    }
                }
                i7 = layoutParams.leftMargin + layoutParams.rightMargin;
                if (layoutParams.width == -2) {
                    mode = MeasureSpec.makeMeasureSpec(paddingLeft - i7, Integer.MIN_VALUE);
                } else if (layoutParams.width == -1) {
                    mode = MeasureSpec.makeMeasureSpec(paddingLeft - i7, 1073741824);
                } else {
                    mode = MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
                }
                if (layoutParams.height == -2) {
                    i6 = MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
                } else if (layoutParams.height == -1) {
                    i6 = MeasureSpec.makeMeasureSpec(i3, 1073741824);
                } else {
                    i6 = MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                }
                childAt.measure(mode, i6);
                mode = childAt.getMeasuredWidth();
                i7 = childAt.getMeasuredHeight();
                if (mode2 == Integer.MIN_VALUE && i7 > i4) {
                    i4 = Math.min(i7, i3);
                }
                i5 -= mode;
                z = i5 < 0;
                layoutParams.slideable = z;
                z |= z2;
                if (layoutParams.slideable) {
                    slidingPaneLayout.mSlideableView = childAt;
                }
                z2 = z;
            }
            size2++;
            z = false;
        }
        if (z2 || f > BitmapDescriptorFactory.HUE_RED) {
            mode = paddingLeft - slidingPaneLayout.mOverhangSize;
            mode2 = 0;
            while (mode2 < childCount) {
                int i8;
                View childAt2 = getChildAt(mode2);
                if (childAt2.getVisibility() != i6) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != i6) {
                        Object obj = (layoutParams2.width != 0 || layoutParams2.weight <= BitmapDescriptorFactory.HUE_RED) ? null : 1;
                        if (obj != null) {
                            i7 = 0;
                        } else {
                            i7 = childAt2.getMeasuredWidth();
                        }
                        int i9;
                        if (!z2 || childAt2 == slidingPaneLayout.mSlideableView) {
                            if (layoutParams2.weight > BitmapDescriptorFactory.HUE_RED) {
                                int makeMeasureSpec;
                                if (layoutParams2.width != 0) {
                                    makeMeasureSpec = MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                } else if (layoutParams2.height == -2) {
                                    i6 = MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
                                    if (z2) {
                                        i8 = mode;
                                        childAt2.measure(MeasureSpec.makeMeasureSpec(i7 + ((int) ((layoutParams2.weight * ((float) Math.max(0, i5))) / f)), 1073741824), i6);
                                        mode2++;
                                        mode = i8;
                                        i6 = 8;
                                    } else {
                                        i9 = paddingLeft - (layoutParams2.leftMargin + layoutParams2.rightMargin);
                                        i8 = mode;
                                        mode = MeasureSpec.makeMeasureSpec(i9, 1073741824);
                                        if (i7 != i9) {
                                            childAt2.measure(mode, i6);
                                        }
                                        mode2++;
                                        mode = i8;
                                        i6 = 8;
                                    }
                                } else if (layoutParams2.height == -1) {
                                    makeMeasureSpec = MeasureSpec.makeMeasureSpec(i3, 1073741824);
                                } else {
                                    makeMeasureSpec = MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824);
                                }
                                i6 = makeMeasureSpec;
                                if (z2) {
                                    i8 = mode;
                                    childAt2.measure(MeasureSpec.makeMeasureSpec(i7 + ((int) ((layoutParams2.weight * ((float) Math.max(0, i5))) / f)), 1073741824), i6);
                                    mode2++;
                                    mode = i8;
                                    i6 = 8;
                                } else {
                                    i9 = paddingLeft - (layoutParams2.leftMargin + layoutParams2.rightMargin);
                                    i8 = mode;
                                    mode = MeasureSpec.makeMeasureSpec(i9, 1073741824);
                                    if (i7 != i9) {
                                        childAt2.measure(mode, i6);
                                    }
                                    mode2++;
                                    mode = i8;
                                    i6 = 8;
                                }
                            }
                        } else if (layoutParams2.width < 0 && (i7 > mode || layoutParams2.weight > BitmapDescriptorFactory.HUE_RED)) {
                            int i10;
                            if (obj == null) {
                                i10 = 1073741824;
                                i9 = MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            } else if (layoutParams2.height == -2) {
                                i9 = MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
                                i10 = 1073741824;
                            } else if (layoutParams2.height == -1) {
                                i10 = 1073741824;
                                i9 = MeasureSpec.makeMeasureSpec(i3, 1073741824);
                            } else {
                                i10 = 1073741824;
                                i9 = MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824);
                            }
                            childAt2.measure(MeasureSpec.makeMeasureSpec(mode, i10), i9);
                        }
                    }
                }
                i8 = mode;
                mode2++;
                mode = i8;
                i6 = 8;
            }
        }
        setMeasuredDimension(size, (i4 + getPaddingTop()) + getPaddingBottom());
        slidingPaneLayout.mCanSlide = z2;
        if (slidingPaneLayout.mDragHelper.getViewDragState() != 0 && !z2) {
            slidingPaneLayout.mDragHelper.abort();
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.mFirstLayout = true;
        }
    }

    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() == null && this.mCanSlide == null) {
            this.mPreservedOpenState = view == this.mSlideableView ? true : null;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (!this.mCanSlide && actionMasked == 0 && getChildCount() > 1) {
            View childAt = getChildAt(1);
            if (childAt != null) {
                this.mPreservedOpenState = ViewDragHelper.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY()) ^ true;
            }
        }
        if (this.mCanSlide) {
            if (!this.mIsUnableToDrag || actionMasked == 0) {
                if (actionMasked != 3) {
                    if (actionMasked != 1) {
                        boolean z;
                        float x;
                        float y;
                        if (actionMasked == 0) {
                            this.mIsUnableToDrag = false;
                            x = motionEvent.getX();
                            y = motionEvent.getY();
                            this.mInitialMotionX = x;
                            this.mInitialMotionY = y;
                            if (ViewDragHelper.isViewUnder(this.mSlideableView, (int) x, (int) y) && isDimmed(this.mSlideableView)) {
                                z = true;
                                if (this.mDragHelper.shouldInterceptTouchEvent(motionEvent) == null) {
                                    if (z) {
                                        return false;
                                    }
                                }
                                return true;
                            }
                        } else if (actionMasked == 2) {
                            x = motionEvent.getX();
                            y = motionEvent.getY();
                            x = Math.abs(x - this.mInitialMotionX);
                            y = Math.abs(y - this.mInitialMotionY);
                            if (x > ((float) this.mDragHelper.getTouchSlop()) && y > x) {
                                this.mDragHelper.cancel();
                                this.mIsUnableToDrag = true;
                                return false;
                            }
                        }
                        z = false;
                        if (this.mDragHelper.shouldInterceptTouchEvent(motionEvent) == null) {
                            if (z) {
                                return false;
                            }
                        }
                        return true;
                    }
                }
                this.mDragHelper.cancel();
                return false;
            }
        }
        this.mDragHelper.cancel();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.processTouchEvent(motionEvent);
        float x;
        switch (motionEvent.getActionMasked()) {
            case 0:
                x = motionEvent.getX();
                motionEvent = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = motionEvent;
                break;
            case 1:
                if (isDimmed(this.mSlideableView)) {
                    x = motionEvent.getX();
                    motionEvent = motionEvent.getY();
                    float f = x - this.mInitialMotionX;
                    float f2 = motionEvent - this.mInitialMotionY;
                    int touchSlop = this.mDragHelper.getTouchSlop();
                    if (!((f * f) + (f2 * f2) >= ((float) (touchSlop * touchSlop)) || ViewDragHelper.isViewUnder(this.mSlideableView, (int) x, (int) motionEvent) == null || (this.mFirstLayout == null && smoothSlideTo$254957c(null) == null))) {
                        this.mPreservedOpenState = null;
                        break;
                    }
                }
                break;
            default:
                break;
        }
        return true;
    }

    private void dimChildView$17e2a0c0(View view) {
        view.getLayoutParams();
        if (view.getLayerType() != 0) {
            Runnable disableLayerRunnable = new DisableLayerRunnable(view);
            this.mPostedRunnables.add(disableLayerRunnable);
            ViewCompat.postOnAnimation(this, disableLayerRunnable);
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (!(!this.mCanSlide || layoutParams.slideable || this.mSlideableView == null)) {
            canvas.getClipBounds(this.mTmpRect);
            Object obj = 1;
            if (ViewCompat.getLayoutDirection(this) != 1) {
                obj = null;
            }
            if (obj != null) {
                this.mTmpRect.left = Math.max(this.mTmpRect.left, this.mSlideableView.getRight());
            } else {
                this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.mTmpRect);
        }
        view = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return view;
    }

    private boolean smoothSlideTo$254957c(float f) {
        if (!this.mCanSlide) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        if (ViewCompat.getLayoutDirection(this) == 1) {
            f = (int) (((float) getWidth()) - ((((float) (getPaddingRight() + layoutParams.rightMargin)) + (f * ((float) this.mSlideRange))) + ((float) this.mSlideableView.getWidth())));
        } else {
            f = (int) (((float) (getPaddingLeft() + layoutParams.leftMargin)) + (f * ((float) this.mSlideRange)));
        }
        if (this.mDragHelper.smoothSlideViewTo(this.mSlideableView, f, this.mSlideableView.getTop()) == null) {
            return false;
        }
        setAllChildrenVisible();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    public void computeScroll() {
        if (this.mDragHelper.continueSettling$138603()) {
            if (this.mCanSlide) {
                ViewCompat.postInvalidateOnAnimation(this);
            } else {
                this.mDragHelper.abort();
            }
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        ViewCompat.getLayoutDirection(this);
        if (getChildCount() > 1) {
            getChildAt(1);
        }
    }

    private boolean isDimmed(View view) {
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!this.mCanSlide || layoutParams.dimWhenOffset == null || this.mSlideOffset <= BitmapDescriptorFactory.HUE_RED) {
            return false;
        }
        return true;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (!(layoutParams instanceof LayoutParams) || super.checkLayoutParams(layoutParams) == null) ? null : true;
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected Parcelable onSaveInstanceState() {
        boolean z;
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        if (this.mCanSlide) {
            if (this.mCanSlide) {
                if (this.mSlideOffset != 1.0f) {
                    z = false;
                }
            }
            z = true;
        } else {
            z = this.mPreservedOpenState;
        }
        savedState.isOpen = z;
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (savedState.isOpen) {
                if (this.mFirstLayout || smoothSlideTo$254957c(1.0f)) {
                    this.mPreservedOpenState = true;
                }
            } else if (this.mFirstLayout || smoothSlideTo$254957c(BitmapDescriptorFactory.HUE_RED)) {
                this.mPreservedOpenState = false;
            }
            this.mPreservedOpenState = savedState.isOpen;
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        SlidingPaneLayout slidingPaneLayout = this;
        int i5 = ViewCompat.getLayoutDirection(this) == 1 ? 1 : 0;
        if (i5 != 0) {
            slidingPaneLayout.mDragHelper.setEdgeTrackingEnabled(2);
        } else {
            slidingPaneLayout.mDragHelper.setEdgeTrackingEnabled(1);
        }
        int i6 = i3 - i;
        int paddingRight = i5 != 0 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = i5 != 0 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (slidingPaneLayout.mFirstLayout) {
            float f = (slidingPaneLayout.mCanSlide && slidingPaneLayout.mPreservedOpenState) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            slidingPaneLayout.mSlideOffset = f;
        }
        int i7 = paddingRight;
        int i8 = i7;
        paddingRight = 0;
        while (true) {
            int i9 = 8;
            if (paddingRight >= childCount) {
                break;
            }
            int measuredWidth;
            int min;
            int i10;
            View childAt = getChildAt(paddingRight);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.slideable) {
                    int i11 = i6 - paddingLeft;
                    min = (Math.min(i7, i11 - slidingPaneLayout.mOverhangSize) - i8) - (layoutParams.leftMargin + layoutParams.rightMargin);
                    slidingPaneLayout.mSlideRange = min;
                    int i12 = i5 != 0 ? layoutParams.rightMargin : layoutParams.leftMargin;
                    layoutParams.dimWhenOffset = ((i8 + i12) + min) + (measuredWidth / 2) > i11;
                    min = (int) (((float) min) * slidingPaneLayout.mSlideOffset);
                    i10 = i8 + (i12 + min);
                    slidingPaneLayout.mSlideOffset = ((float) min) / ((float) slidingPaneLayout.mSlideRange);
                } else {
                    i10 = i7;
                }
                if (i5 != 0) {
                    min = i6 - i10;
                    i8 = min - measuredWidth;
                } else {
                    min = i10 + measuredWidth;
                    i8 = i10;
                }
                childAt.layout(i8, paddingTop, min, childAt.getMeasuredHeight() + paddingTop);
                i7 += childAt.getWidth();
                i8 = i10;
            }
            paddingRight++;
        }
        if (slidingPaneLayout.mFirstLayout) {
            int childCount2;
            View childAt2;
            View view;
            Object obj;
            if (!slidingPaneLayout.mCanSlide) {
                for (i5 = 0; i5 < childCount; i5++) {
                    dimChildView$17e2a0c0(getChildAt(i5));
                }
            } else if (((LayoutParams) slidingPaneLayout.mSlideableView.getLayoutParams()).dimWhenOffset) {
                dimChildView$17e2a0c0(slidingPaneLayout.mSlideableView);
            }
            View view2 = slidingPaneLayout.mSlideableView;
            Object obj2 = 1;
            Object obj3 = ViewCompat.getLayoutDirection(this) == 1 ? 1 : null;
            i6 = obj3 != null ? getWidth() - getPaddingRight() : getPaddingLeft();
            paddingRight = obj3 != null ? getPaddingLeft() : getWidth() - getPaddingRight();
            paddingLeft = getPaddingTop();
            paddingTop = getHeight() - getPaddingBottom();
            if (view2 != null) {
                if (!view2.isOpaque()) {
                    if (VERSION.SDK_INT < 18) {
                        Drawable background = view2.getBackground();
                        if (background != null && background.getOpacity() == -1) {
                        }
                    }
                    obj2 = null;
                }
                if (obj2 != null) {
                    i10 = view2.getLeft();
                    childCount = view2.getRight();
                    i7 = view2.getTop();
                    i8 = view2.getBottom();
                    childCount2 = getChildCount();
                    measuredWidth = 0;
                    while (measuredWidth < childCount2) {
                        childAt2 = getChildAt(measuredWidth);
                        if (childAt2 != view2) {
                            break;
                        }
                        if (childAt2.getVisibility() == i9) {
                            i9 = Math.max(obj3 == null ? paddingRight : i6, childAt2.getLeft());
                            i11 = Math.max(paddingLeft, childAt2.getTop());
                            if (obj3 == null) {
                                view = view2;
                                obj = obj3;
                                i5 = i6;
                            } else {
                                view = view2;
                                obj = obj3;
                                i5 = paddingRight;
                            }
                            min = (i9 >= i10 || i11 < i7 || Math.min(i5, childAt2.getRight()) > childCount || Math.min(paddingTop, childAt2.getBottom()) > i8) ? 0 : 4;
                            childAt2.setVisibility(min);
                        } else {
                            view = view2;
                            obj = obj3;
                        }
                        measuredWidth++;
                        view2 = view;
                        obj3 = obj;
                        i9 = 8;
                    }
                }
            }
            i10 = 0;
            childCount = 0;
            i7 = 0;
            i8 = 0;
            childCount2 = getChildCount();
            measuredWidth = 0;
            while (measuredWidth < childCount2) {
                childAt2 = getChildAt(measuredWidth);
                if (childAt2 != view2) {
                    break;
                }
                if (childAt2.getVisibility() == i9) {
                    view = view2;
                    obj = obj3;
                } else {
                    if (obj3 == null) {
                    }
                    i9 = Math.max(obj3 == null ? paddingRight : i6, childAt2.getLeft());
                    i11 = Math.max(paddingLeft, childAt2.getTop());
                    if (obj3 == null) {
                        view = view2;
                        obj = obj3;
                        i5 = paddingRight;
                    } else {
                        view = view2;
                        obj = obj3;
                        i5 = i6;
                    }
                    if (i9 >= i10) {
                    }
                    childAt2.setVisibility(min);
                }
                measuredWidth++;
                view2 = view;
                obj3 = obj;
                i9 = 8;
            }
        }
        slidingPaneLayout.mFirstLayout = false;
    }
}
