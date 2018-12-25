package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.RestrictTo;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.NestedScrollingChild2;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;

public class NestedScrollView extends FrameLayout implements NestedScrollingChild2, NestedScrollingParent, ScrollingView {
    private static final AccessibilityDelegate ACCESSIBILITY_DELEGATE = new AccessibilityDelegate();
    private static final int[] SCROLLVIEW_STYLEABLE = new int[]{16843130};
    private int mActivePointerId;
    private final NestedScrollingChildHelper mChildHelper;
    private View mChildToScrollTo;
    private EdgeEffect mEdgeGlowBottom;
    private EdgeEffect mEdgeGlowTop;
    private boolean mFillViewport;
    private boolean mIsBeingDragged;
    private boolean mIsLaidOut;
    private boolean mIsLayoutDirty;
    private int mLastMotionY;
    private long mLastScroll;
    private int mLastScrollerY;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private int mNestedYOffset;
    private OnScrollChangeListener mOnScrollChangeListener;
    private final NestedScrollingParentHelper mParentHelper;
    private SavedState mSavedState;
    private final int[] mScrollConsumed;
    private final int[] mScrollOffset;
    private OverScroller mScroller;
    private boolean mSmoothScrollingEnabled;
    private final Rect mTempRect;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private float mVerticalScrollFactor;

    public interface OnScrollChangeListener {
        void onScrollChange$227623bf(NestedScrollView nestedScrollView);
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new C01961();
        public int scrollPosition;

        /* renamed from: android.support.v4.widget.NestedScrollView$SavedState$1 */
        static class C01961 implements Creator<SavedState> {
            C01961() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.scrollPosition = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.scrollPosition);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder("HorizontalScrollView.SavedState{");
            stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringBuilder.append(" scrollPosition=");
            stringBuilder.append(this.scrollPosition);
            stringBuilder.append("}");
            return stringBuilder.toString();
        }
    }

    static class AccessibilityDelegate extends AccessibilityDelegateCompat {
        AccessibilityDelegate() {
        }

        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle) != null) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (nestedScrollView.isEnabled() == null) {
                return false;
            }
            if (i == 4096) {
                i = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                if (i == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.smoothScrollTo$255f295(i);
                return true;
            } else if (i != 8192) {
                return false;
            } else {
                i = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                if (i == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.smoothScrollTo$255f295(i);
                return true;
            }
        }

        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
            if (nestedScrollView.isEnabled()) {
                int scrollRange = nestedScrollView.getScrollRange();
                if (scrollRange > 0) {
                    accessibilityNodeInfoCompat.setScrollable(true);
                    if (nestedScrollView.getScrollY() > 0) {
                        accessibilityNodeInfoCompat.addAction(8192);
                    }
                    if (nestedScrollView.getScrollY() < scrollRange) {
                        accessibilityNodeInfoCompat.addAction(4096);
                    }
                }
            }
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            AccessibilityRecordCompat.setMaxScrollX(accessibilityEvent, nestedScrollView.getScrollX());
            AccessibilityRecordCompat.setMaxScrollY(accessibilityEvent, nestedScrollView.getScrollRange());
        }
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (i & 2) != 0;
    }

    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        this.mIsLayoutDirty = true;
        this.mIsLaidOut = false;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        this.mSmoothScrollingEnabled = true;
        this.mActivePointerId = -1;
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mScroller = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        context = context.obtainStyledAttributes(attributeSet, SCROLLVIEW_STYLEABLE, i, 0);
        attributeSet = context.getBoolean(0, false);
        if (attributeSet != this.mFillViewport) {
            this.mFillViewport = attributeSet;
            requestLayout();
        }
        context.recycle();
        this.mParentHelper = new NestedScrollingParentHelper(this);
        this.mChildHelper = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        ViewCompat.setAccessibilityDelegate(this, ACCESSIBILITY_DELEGATE);
    }

    public void setNestedScrollingEnabled(boolean z) {
        this.mChildHelper.setNestedScrollingEnabled(z);
    }

    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    public boolean startNestedScroll(int i) {
        return this.mChildHelper.startNestedScroll(i);
    }

    public boolean startNestedScroll(int i, int i2) {
        return this.mChildHelper.startNestedScroll(i, i2);
    }

    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    public void stopNestedScroll(int i) {
        this.mChildHelper.stopNestedScroll(i);
    }

    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    public boolean hasNestedScrollingParent(int i) {
        return this.mChildHelper.hasNestedScrollingParent(i);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return this.mChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr, i5);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.mChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2, i3);
    }

    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mChildHelper.dispatchNestedFling(f, f2, z);
    }

    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.mChildHelper.dispatchNestedPreFling(f, f2);
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.mParentHelper.onNestedScrollAccepted(view, view2, i);
        startNestedScroll(2);
    }

    public void onStopNestedScroll(View view) {
        this.mParentHelper.onStopNestedScroll(view);
        stopNestedScroll();
    }

    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        view = getScrollY();
        scrollBy(0, i4);
        int scrollY = getScrollY() - view;
        dispatchNestedScroll(0, scrollY, 0, i4 - scrollY, null);
    }

    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        dispatchNestedPreScroll(i, i2, iArr, null);
    }

    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return null;
        }
        flingWithNestedDispatch((int) f2);
        return true;
    }

    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    public int getNestedScrollAxes() {
        return this.mParentHelper.getNestedScrollAxes();
    }

    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        return scrollY < verticalFadingEdgeLength ? ((float) scrollY) / ((float) verticalFadingEdgeLength) : 1.0f;
    }

    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        return bottom < verticalFadingEdgeLength ? ((float) bottom) / ((float) verticalFadingEdgeLength) : 1.0f;
    }

    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    public void addView(View view, LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    public final void setOnScrollChangeListener(OnScrollChangeListener onScrollChangeListener) {
        this.mOnScrollChangeListener = onScrollChangeListener;
    }

    private boolean canScroll() {
        boolean z = false;
        View childAt = getChildAt(0);
        if (childAt == null) {
            return false;
        }
        if (getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom()) {
            z = true;
        }
        return z;
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.mOnScrollChangeListener != 0) {
            this.mOnScrollChangeListener.onScrollChange$227623bf(this);
        }
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mFillViewport && MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            i2 = getChildAt(0);
            int measuredHeight = getMeasuredHeight();
            if (i2.getMeasuredHeight() < measuredHeight) {
                i2.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), ((FrameLayout.LayoutParams) i2.getLayoutParams()).width), MeasureSpec.makeMeasureSpec((measuredHeight - getPaddingTop()) - getPaddingBottom(), 1073741824));
            }
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!super.dispatchKeyEvent(keyEvent)) {
            if (executeKeyEvent(keyEvent) == null) {
                return null;
            }
        }
        return true;
    }

    public final boolean executeKeyEvent(KeyEvent keyEvent) {
        this.mTempRect.setEmpty();
        boolean z = false;
        int i = 130;
        if (canScroll()) {
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode != 62) {
                    switch (keyCode) {
                        case 19:
                            if (keyEvent.isAltPressed() != null) {
                                z = fullScroll(33);
                                break;
                            }
                            z = arrowScroll(33);
                            break;
                        case 20:
                            if (keyEvent.isAltPressed() != null) {
                                z = fullScroll(130);
                                break;
                            }
                            z = arrowScroll(130);
                            break;
                        default:
                            break;
                    }
                }
                if (keyEvent.isShiftPressed() != null) {
                    i = 33;
                }
                pageScroll(i);
            }
            return z;
        } else if (!isFocused() || keyEvent.getKeyCode() == 4) {
            return false;
        } else {
            keyEvent = findFocus();
            if (keyEvent == this) {
                keyEvent = null;
            }
            Object findNextFocus = FocusFinder.getInstance().findNextFocus(this, keyEvent, 130);
            if (findNextFocus == null || findNextFocus == this || findNextFocus.requestFocus(130) == null) {
                return false;
            }
            return true;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 2 && this.mIsBeingDragged) {
            return true;
        }
        action &= 255;
        if (action != 6) {
            switch (action) {
                case 0:
                    boolean z;
                    action = (int) motionEvent.getY();
                    int x = (int) motionEvent.getX();
                    if (getChildCount() > 0) {
                        int scrollY = getScrollY();
                        View childAt = getChildAt(0);
                        if (action >= childAt.getTop() - scrollY && action < childAt.getBottom() - scrollY && x >= childAt.getLeft() && x < childAt.getRight()) {
                            z = true;
                            if (!z) {
                                this.mLastMotionY = action;
                                this.mActivePointerId = motionEvent.getPointerId(0);
                                if (this.mVelocityTracker != null) {
                                    this.mVelocityTracker = VelocityTracker.obtain();
                                } else {
                                    this.mVelocityTracker.clear();
                                }
                                this.mVelocityTracker.addMovement(motionEvent);
                                this.mScroller.computeScrollOffset();
                                this.mIsBeingDragged = this.mScroller.isFinished() ^ 1;
                                startNestedScroll(2, 0);
                                break;
                            }
                            this.mIsBeingDragged = false;
                            if (this.mVelocityTracker != null) {
                                this.mVelocityTracker.recycle();
                                this.mVelocityTracker = null;
                                break;
                            }
                        }
                    }
                    z = false;
                    if (!z) {
                        this.mLastMotionY = action;
                        this.mActivePointerId = motionEvent.getPointerId(0);
                        if (this.mVelocityTracker != null) {
                            this.mVelocityTracker.clear();
                        } else {
                            this.mVelocityTracker = VelocityTracker.obtain();
                        }
                        this.mVelocityTracker.addMovement(motionEvent);
                        this.mScroller.computeScrollOffset();
                        this.mIsBeingDragged = this.mScroller.isFinished() ^ 1;
                        startNestedScroll(2, 0);
                    } else {
                        this.mIsBeingDragged = false;
                        if (this.mVelocityTracker != null) {
                            this.mVelocityTracker.recycle();
                            this.mVelocityTracker = null;
                        }
                    }
                    break;
                case 1:
                case 3:
                    this.mIsBeingDragged = false;
                    this.mActivePointerId = -1;
                    if (this.mVelocityTracker != null) {
                        this.mVelocityTracker.recycle();
                        this.mVelocityTracker = null;
                    }
                    if (this.mScroller.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange()) != null) {
                        ViewCompat.postInvalidateOnAnimation(this);
                    }
                    stopNestedScroll(0);
                    break;
                case 2:
                    action = this.mActivePointerId;
                    if (action != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(action);
                        if (findPointerIndex != -1) {
                            action = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(action - this.mLastMotionY) > this.mTouchSlop && (2 & getNestedScrollAxes()) == 0) {
                                this.mIsBeingDragged = true;
                                this.mLastMotionY = action;
                                if (this.mVelocityTracker == null) {
                                    this.mVelocityTracker = VelocityTracker.obtain();
                                }
                                this.mVelocityTracker.addMovement(motionEvent);
                                this.mNestedYOffset = 0;
                                motionEvent = getParent();
                                if (motionEvent != null) {
                                    motionEvent.requestDisallowInterceptTouchEvent(true);
                                    break;
                                }
                            }
                        }
                        StringBuilder stringBuilder = new StringBuilder("Invalid pointerId=");
                        stringBuilder.append(action);
                        stringBuilder.append(" in onInterceptTouchEvent");
                        Log.e("NestedScrollView", stringBuilder.toString());
                        break;
                    }
                    break;
                default:
                    break;
            }
        }
        onSecondaryPointerUp(motionEvent);
        return this.mIsBeingDragged;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            actionIndex = actionIndex == 0 ? 1 : 0;
            this.mLastMotionY = (int) motionEvent.getY(actionIndex);
            this.mActivePointerId = motionEvent.getPointerId(actionIndex);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0) {
            if (motionEvent.getAction() == 8) {
                if (!this.mIsBeingDragged) {
                    motionEvent = motionEvent.getAxisValue(9);
                    if (motionEvent != null) {
                        if (this.mVerticalScrollFactor == BitmapDescriptorFactory.HUE_RED) {
                            TypedValue typedValue = new TypedValue();
                            Context context = getContext();
                            if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                                this.mVerticalScrollFactor = typedValue.getDimension(context.getResources().getDisplayMetrics());
                            } else {
                                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
                            }
                        }
                        motionEvent = (int) (motionEvent * this.mVerticalScrollFactor);
                        int scrollRange = getScrollRange();
                        int scrollY = getScrollY();
                        motionEvent = scrollY - motionEvent;
                        if (motionEvent < null) {
                            motionEvent = null;
                        } else if (motionEvent > scrollRange) {
                            motionEvent = scrollRange;
                        }
                        if (motionEvent != scrollY) {
                            super.scrollTo(getScrollX(), motionEvent);
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    private boolean overScrollByCompat$30fc967d$69c647f9(int i, int i2, int i3, int i4) {
        boolean z;
        getOverScrollMode();
        computeHorizontalScrollRange();
        computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        computeVerticalScrollExtent();
        i += i3;
        if (i2 <= 0) {
            if (i2 >= 0) {
                z = false;
                if (i > i4) {
                    i = 1;
                } else if (i >= 0) {
                    i = 1;
                    i4 = 0;
                } else {
                    i4 = i;
                    i = 0;
                }
                if (!(i == 0 || hasNestedScrollingParent(1))) {
                    this.mScroller.springBack(i2, i4, 0, 0, 0, getScrollRange());
                }
                onOverScrolled(i2, i4, z, i);
                if (!z) {
                    if (i != 0) {
                        return false;
                    }
                }
                return true;
            }
        }
        z = true;
        i2 = 0;
        if (i > i4) {
            i = 1;
        } else if (i >= 0) {
            i4 = i;
            i = 0;
        } else {
            i = 1;
            i4 = 0;
        }
        this.mScroller.springBack(i2, i4, 0, 0, 0, getScrollRange());
        onOverScrolled(i2, i4, z, i);
        if (z) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    final int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
        }
        return 0;
    }

    private View findFocusableViewInBounds(boolean z, int i, int i2) {
        List focusables = getFocusables(2);
        int size = focusables.size();
        int i3 = 0;
        View view = null;
        for (int i4 = i3; i4 < size; i4++) {
            View view2 = (View) focusables.get(i4);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i < bottom && top < i2) {
                int i5 = (i >= top || bottom >= i2) ? 0 : 1;
                if (view == null) {
                    view = view2;
                    i3 = i5;
                } else {
                    Object obj = ((!z || top >= view.getTop()) && (z || bottom <= view.getBottom())) ? null : 1;
                    if (i3 != 0) {
                        if (!(i5 == 0 || obj == null)) {
                        }
                    } else if (i5 != 0) {
                        view = view2;
                        i3 = 1;
                    } else if (obj == null) {
                    }
                    view = view2;
                }
            }
        }
        return view;
    }

    private boolean pageScroll(int i) {
        int i2 = i == 130 ? 1 : 0;
        int height = getHeight();
        if (i2 != 0) {
            this.mTempRect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                if (this.mTempRect.top + height > childAt.getBottom()) {
                    this.mTempRect.top = childAt.getBottom() - height;
                }
            }
        } else {
            this.mTempRect.top = getScrollY() - height;
            if (this.mTempRect.top < 0) {
                this.mTempRect.top = 0;
            }
        }
        this.mTempRect.bottom = this.mTempRect.top + height;
        return scrollAndFocus(i, this.mTempRect.top, this.mTempRect.bottom);
    }

    private boolean fullScroll(int i) {
        int i2 = i == 130 ? 1 : 0;
        int height = getHeight();
        this.mTempRect.top = 0;
        this.mTempRect.bottom = height;
        if (i2 != 0) {
            int childCount = getChildCount();
            if (childCount > 0) {
                this.mTempRect.bottom = getChildAt(childCount - 1).getBottom() + getPaddingBottom();
                this.mTempRect.top = this.mTempRect.bottom - height;
            }
        }
        return scrollAndFocus(i, this.mTempRect.top, this.mTempRect.bottom);
    }

    private boolean scrollAndFocus(int i, int i2, int i3) {
        int height = getHeight();
        int scrollY = getScrollY();
        height += scrollY;
        boolean z = true;
        boolean z2 = i == 33;
        View findFocusableViewInBounds = findFocusableViewInBounds(z2, i2, i3);
        if (findFocusableViewInBounds == null) {
            findFocusableViewInBounds = this;
        }
        if (i2 < scrollY || i3 > height) {
            i2 = z2 ? i2 - scrollY : i3 - height;
            if (i2 != 0) {
                if (this.mSmoothScrollingEnabled != 0) {
                    smoothScrollBy(0, i2);
                } else {
                    scrollBy(0, i2);
                }
            }
        } else {
            z = false;
        }
        if (findFocusableViewInBounds != findFocus()) {
            findFocusableViewInBounds.requestFocus(i);
        }
        return z;
    }

    private boolean arrowScroll(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int height = (int) (0.5f * ((float) getHeight()));
        if (findNextFocus == null || !isWithinDeltaOfScreen(findNextFocus, height, getHeight())) {
            if (i == 33 && getScrollY() < height) {
                height = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                int bottom = getChildAt(0).getBottom() - ((getScrollY() + getHeight()) - getPaddingBottom());
                if (bottom < height) {
                    height = bottom;
                }
            }
            if (height == 0) {
                return false;
            }
            if (i != 130) {
                height = -height;
            }
            if (height != 0) {
                if (this.mSmoothScrollingEnabled != 0) {
                    smoothScrollBy(0, height);
                } else {
                    scrollBy(0, height);
                }
            }
        } else {
            findNextFocus.getDrawingRect(this.mTempRect);
            offsetDescendantRectToMyCoords(findNextFocus, this.mTempRect);
            height = computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
            if (height != 0) {
                if (this.mSmoothScrollingEnabled) {
                    smoothScrollBy(0, height);
                } else {
                    scrollBy(0, height);
                }
            }
            findNextFocus.requestFocus(i);
        }
        if (!(findFocus == null || !findFocus.isFocused() || (isWithinDeltaOfScreen(findFocus, 0, getHeight()) ^ 1) == 0)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    private boolean isWithinDeltaOfScreen(View view, int i, int i2) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        return (this.mTempRect.bottom + i < getScrollY() || this.mTempRect.top - i > getScrollY() + i2) ? null : true;
    }

    private void smoothScrollBy(int i, int i2) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.mLastScroll > 250) {
                i = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
                int scrollY = getScrollY();
                this.mScroller.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, i)) - scrollY);
                ViewCompat.postInvalidateOnAnimation(this);
            } else {
                if (!this.mScroller.isFinished()) {
                    this.mScroller.abortAnimation();
                }
                scrollBy(i, i2);
            }
            this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    public final void smoothScrollTo$255f295(int i) {
        smoothScrollBy(0 - getScrollX(), i - getScrollY());
    }

    @RestrictTo
    public int computeVerticalScrollRange() {
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (getChildCount() == 0) {
            return height;
        }
        int bottom = getChildAt(0).getBottom();
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        if (scrollY < 0) {
            bottom -= scrollY;
        } else if (scrollY > max) {
            bottom += scrollY - max;
        }
        return bottom;
    }

    @RestrictTo
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @RestrictTo
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @RestrictTo
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @RestrictTo
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @RestrictTo
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    protected void measureChild(View view, int i, int i2) {
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), MeasureSpec.makeMeasureSpec(0, 0));
    }

    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, (((getPaddingLeft() + getPaddingRight()) + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin) + i2, marginLayoutParams.width), MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public void computeScroll() {
        int i = 0;
        if (this.mScroller.computeScrollOffset()) {
            this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            int i2 = currY - this.mLastScrollerY;
            if (dispatchNestedPreScroll(0, i2, this.mScrollConsumed, null, 1)) {
                i2 -= this.mScrollConsumed[1];
            }
            if (i2 != 0) {
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                overScrollByCompat$30fc967d$69c647f9(i2, getScrollX(), scrollY, scrollRange);
                int scrollY2 = getScrollY() - scrollY;
                if (!dispatchNestedScroll(0, scrollY2, 0, i2 - scrollY2, null, 1)) {
                    i2 = getOverScrollMode();
                    if (i2 == 0 || (i2 == 1 && scrollRange > 0)) {
                        i = 1;
                    }
                    if (i != 0) {
                        ensureGlows();
                        if (currY <= 0 && scrollY > 0) {
                            this.mEdgeGlowTop.onAbsorb((int) this.mScroller.getCurrVelocity());
                        } else if (currY >= scrollRange && scrollY < scrollRange) {
                            this.mEdgeGlowBottom.onAbsorb((int) this.mScroller.getCurrVelocity());
                        }
                    }
                }
            }
            this.mLastScrollerY = currY;
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        if (hasNestedScrollingParent(1)) {
            stopNestedScroll(1);
        }
        this.mLastScrollerY = 0;
    }

    private void scrollToChild(View view) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        view = computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
        if (view != null) {
            scrollBy(0, view);
        }
    }

    private int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        int i = 0;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i2 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i2 -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i2 && rect.top > scrollY) {
            if (rect.height() > height) {
                rect = (rect.top - scrollY) + null;
            } else {
                rect = (rect.bottom - i2) + null;
            }
            i = Math.min(rect, getChildAt(0).getBottom() - i2);
        } else if (rect.top < scrollY && rect.bottom < i2) {
            if (rect.height() > height) {
                i = 0 - (i2 - rect.bottom);
            } else {
                i = 0 - (scrollY - rect.top);
            }
            i = Math.max(i, -getScrollY());
        }
        return i;
    }

    public void requestChildFocus(View view, View view2) {
        if (this.mIsLayoutDirty) {
            this.mChildToScrollTo = view2;
        } else {
            scrollToChild(view2);
        }
        super.requestChildFocus(view, view2);
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        View findNextFocus;
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        if (rect == null) {
            findNextFocus = FocusFinder.getInstance().findNextFocus(this, null, i);
        } else {
            findNextFocus = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        }
        if (findNextFocus != null && (1 ^ isWithinDeltaOfScreen(findNextFocus, 0, getHeight())) == 0) {
            return findNextFocus.requestFocus(i, rect);
        }
        return false;
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        view = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z2 = view != null;
        if (z2) {
            if (z) {
                scrollBy(0, view);
            } else {
                smoothScrollBy(0, view);
            }
        }
        return z2;
    }

    public void requestLayout() {
        this.mIsLayoutDirty = true;
        super.requestLayout();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mIsLayoutDirty = false;
        if (!(this.mChildToScrollTo == 0 || isViewDescendantOf(this.mChildToScrollTo, this) == 0)) {
            scrollToChild(this.mChildToScrollTo);
        }
        this.mChildToScrollTo = null;
        if (this.mIsLaidOut == 0) {
            if (this.mSavedState != 0) {
                scrollTo(getScrollX(), this.mSavedState.scrollPosition);
                this.mSavedState = null;
            }
            i = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((i4 - i2) - getPaddingBottom()) - getPaddingTop()));
            if (getScrollY() > i) {
                scrollTo(getScrollX(), i);
            } else if (getScrollY() < 0) {
                scrollTo(getScrollX(), 0);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.mIsLaidOut = true;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsLaidOut = false;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        i = findFocus();
        if (i != 0) {
            if (this != i) {
                if (isWithinDeltaOfScreen(i, 0, i4) != 0) {
                    i.getDrawingRect(this.mTempRect);
                    offsetDescendantRectToMyCoords(i, this.mTempRect);
                    i = computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
                    if (i != 0) {
                        if (this.mSmoothScrollingEnabled != 0) {
                            smoothScrollBy(0, i);
                            return;
                        }
                        scrollBy(0, i);
                    }
                }
            }
        }
    }

    private static boolean isViewDescendantOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        view = view.getParent();
        if (!(view instanceof ViewGroup) || isViewDescendantOf(view, view2) == null) {
            return null;
        }
        return true;
    }

    private void fling(int i) {
        if (getChildCount() > 0) {
            startNestedScroll(2, 1);
            this.mScroller.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 0, 0);
            this.mLastScrollerY = getScrollY();
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private void flingWithNestedDispatch(int i) {
        boolean z;
        float f;
        int scrollY = getScrollY();
        if (scrollY > 0 || i > 0) {
            if (scrollY >= getScrollRange()) {
                if (i < 0) {
                }
            }
            z = true;
            f = (float) i;
            if (!dispatchNestedPreFling(BitmapDescriptorFactory.HUE_RED, f)) {
                dispatchNestedFling(BitmapDescriptorFactory.HUE_RED, f, z);
                fling(i);
            }
        }
        z = false;
        f = (float) i;
        if (!dispatchNestedPreFling(BitmapDescriptorFactory.HUE_RED, f)) {
            dispatchNestedFling(BitmapDescriptorFactory.HUE_RED, f, z);
            fling(i);
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        stopNestedScroll(0);
        if (this.mEdgeGlowTop != null) {
            this.mEdgeGlowTop.onRelease();
            this.mEdgeGlowBottom.onRelease();
        }
    }

    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            int height;
            View childAt = getChildAt(0);
            int width = (getWidth() - getPaddingRight()) - getPaddingLeft();
            int width2 = childAt.getWidth();
            if (width < width2) {
                if (i >= 0) {
                    if (width + i > width2) {
                        i = width2 - width;
                    }
                    width = (getHeight() - getPaddingBottom()) - getPaddingTop();
                    height = childAt.getHeight();
                    if (width < height) {
                        if (i2 < 0) {
                            if (width + i2 > height) {
                                i2 = height - width;
                            }
                            if (i == getScrollX() || i2 != getScrollY()) {
                                super.scrollTo(i, i2);
                            }
                            return;
                        }
                    }
                    i2 = 0;
                    if (i == getScrollX()) {
                    }
                    super.scrollTo(i, i2);
                }
            }
            i = 0;
            width = (getHeight() - getPaddingBottom()) - getPaddingTop();
            height = childAt.getHeight();
            if (width < height) {
                if (i2 < 0) {
                    if (width + i2 > height) {
                        i2 = height - width;
                    }
                    if (i == getScrollX()) {
                    }
                    super.scrollTo(i, i2);
                }
            }
            i2 = 0;
            if (i == getScrollX()) {
            }
            super.scrollTo(i, i2);
        }
    }

    private void ensureGlows() {
        if (getOverScrollMode() == 2) {
            this.mEdgeGlowTop = null;
            this.mEdgeGlowBottom = null;
        } else if (this.mEdgeGlowTop == null) {
            Context context = getContext();
            this.mEdgeGlowTop = new EdgeEffect(context);
            this.mEdgeGlowBottom = new EdgeEffect(context);
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mEdgeGlowTop != null) {
            int save;
            int width;
            int height;
            int scrollY = getScrollY();
            int i = 0;
            if (!this.mEdgeGlowTop.isFinished()) {
                int i2;
                save = canvas.save();
                width = getWidth();
                height = getHeight();
                int min = Math.min(0, scrollY);
                if (VERSION.SDK_INT >= 21) {
                    if (!getClipToPadding()) {
                        i2 = 0;
                        if (VERSION.SDK_INT >= 21 && getClipToPadding()) {
                            height -= getPaddingTop() + getPaddingBottom();
                            min += getPaddingTop();
                        }
                        canvas.translate((float) i2, (float) min);
                        this.mEdgeGlowTop.setSize(width, height);
                        if (this.mEdgeGlowTop.draw(canvas)) {
                            ViewCompat.postInvalidateOnAnimation(this);
                        }
                        canvas.restoreToCount(save);
                    }
                }
                width -= getPaddingLeft() + getPaddingRight();
                i2 = getPaddingLeft() + 0;
                height -= getPaddingTop() + getPaddingBottom();
                min += getPaddingTop();
                canvas.translate((float) i2, (float) min);
                this.mEdgeGlowTop.setSize(width, height);
                if (this.mEdgeGlowTop.draw(canvas)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                canvas.restoreToCount(save);
            }
            if (!this.mEdgeGlowBottom.isFinished()) {
                save = canvas.save();
                width = getWidth();
                height = getHeight();
                scrollY = Math.max(getScrollRange(), scrollY) + height;
                if (VERSION.SDK_INT < 21 || getClipToPadding()) {
                    width -= getPaddingLeft() + getPaddingRight();
                    i = 0 + getPaddingLeft();
                }
                if (VERSION.SDK_INT >= 21 && getClipToPadding()) {
                    height -= getPaddingTop() + getPaddingBottom();
                    scrollY -= getPaddingBottom();
                }
                canvas.translate((float) (i - width), (float) scrollY);
                canvas.rotate(180.0f, (float) width, BitmapDescriptorFactory.HUE_RED);
                this.mEdgeGlowBottom.setSize(width, height);
                if (this.mEdgeGlowBottom.draw(canvas)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            this.mSavedState = savedState;
            requestLayout();
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.scrollPosition = getScrollY();
        return savedState;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z && this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        if (this.mVelocityTracker == null) {
            r7.mVelocityTracker = VelocityTracker.obtain();
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            r7.mNestedYOffset = 0;
        }
        obtain.offsetLocation(BitmapDescriptorFactory.HUE_RED, (float) r7.mNestedYOffset);
        ViewParent parent;
        switch (actionMasked) {
            case 0:
                if (getChildCount() != 0) {
                    boolean isFinished = r7.mScroller.isFinished() ^ true;
                    r7.mIsBeingDragged = isFinished;
                    if (isFinished) {
                        parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (!r7.mScroller.isFinished()) {
                        r7.mScroller.abortAnimation();
                    }
                    r7.mLastMotionY = (int) motionEvent.getY();
                    r7.mActivePointerId = motionEvent2.getPointerId(0);
                    startNestedScroll(2, 0);
                    break;
                }
                return false;
            case 1:
                VelocityTracker velocityTracker = r7.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, (float) r7.mMaximumVelocity);
                actionMasked = (int) velocityTracker.getYVelocity(r7.mActivePointerId);
                if (Math.abs(actionMasked) > r7.mMinimumVelocity) {
                    flingWithNestedDispatch(-actionMasked);
                } else if (r7.mScroller.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                r7.mActivePointerId = -1;
                endDrag();
                break;
            case 2:
                int findPointerIndex = motionEvent2.findPointerIndex(r7.mActivePointerId);
                if (findPointerIndex != -1) {
                    int y = (int) motionEvent2.getY(findPointerIndex);
                    int i = r7.mLastMotionY - y;
                    if (dispatchNestedPreScroll(0, i, r7.mScrollConsumed, r7.mScrollOffset, 0)) {
                        i -= r7.mScrollConsumed[1];
                        obtain.offsetLocation(BitmapDescriptorFactory.HUE_RED, (float) r7.mScrollOffset[1]);
                        r7.mNestedYOffset += r7.mScrollOffset[1];
                    }
                    if (!r7.mIsBeingDragged && Math.abs(i) > r7.mTouchSlop) {
                        parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        r7.mIsBeingDragged = true;
                        if (i > 0) {
                            i -= r7.mTouchSlop;
                        } else {
                            i += r7.mTouchSlop;
                        }
                    }
                    if (r7.mIsBeingDragged) {
                        boolean z;
                        int scrollY;
                        r7.mLastMotionY = y - r7.mScrollOffset[1];
                        y = getScrollY();
                        int scrollRange = getScrollRange();
                        actionMasked = getOverScrollMode();
                        if (actionMasked != 0) {
                            if (actionMasked != 1 || scrollRange <= 0) {
                                z = false;
                                if (overScrollByCompat$30fc967d$69c647f9(i, 0, getScrollY(), scrollRange) && !hasNestedScrollingParent(0)) {
                                    r7.mVelocityTracker.clear();
                                }
                                scrollY = getScrollY() - y;
                                if (dispatchNestedScroll(0, scrollY, 0, i - scrollY, r7.mScrollOffset, 0)) {
                                    if (z) {
                                        ensureGlows();
                                        y += i;
                                        if (y < 0) {
                                            EdgeEffectCompat.onPull(r7.mEdgeGlowTop, ((float) i) / ((float) getHeight()), motionEvent2.getX(findPointerIndex) / ((float) getWidth()));
                                            if (!r7.mEdgeGlowBottom.isFinished()) {
                                                r7.mEdgeGlowBottom.onRelease();
                                            }
                                        } else if (y > scrollRange) {
                                            EdgeEffectCompat.onPull(r7.mEdgeGlowBottom, ((float) i) / ((float) getHeight()), 1.0f - (motionEvent2.getX(findPointerIndex) / ((float) getWidth())));
                                            if (!r7.mEdgeGlowTop.isFinished()) {
                                                r7.mEdgeGlowTop.onRelease();
                                            }
                                        }
                                        if (!(r7.mEdgeGlowTop == null || (r7.mEdgeGlowTop.isFinished() && r7.mEdgeGlowBottom.isFinished()))) {
                                            ViewCompat.postInvalidateOnAnimation(this);
                                            break;
                                        }
                                    }
                                }
                                r7.mLastMotionY -= r7.mScrollOffset[1];
                                obtain.offsetLocation(BitmapDescriptorFactory.HUE_RED, (float) r7.mScrollOffset[1]);
                                r7.mNestedYOffset += r7.mScrollOffset[1];
                                break;
                            }
                        }
                        z = true;
                        r7.mVelocityTracker.clear();
                        scrollY = getScrollY() - y;
                        if (dispatchNestedScroll(0, scrollY, 0, i - scrollY, r7.mScrollOffset, 0)) {
                            if (z) {
                                ensureGlows();
                                y += i;
                                if (y < 0) {
                                    EdgeEffectCompat.onPull(r7.mEdgeGlowTop, ((float) i) / ((float) getHeight()), motionEvent2.getX(findPointerIndex) / ((float) getWidth()));
                                    if (r7.mEdgeGlowBottom.isFinished()) {
                                        r7.mEdgeGlowBottom.onRelease();
                                    }
                                } else if (y > scrollRange) {
                                    EdgeEffectCompat.onPull(r7.mEdgeGlowBottom, ((float) i) / ((float) getHeight()), 1.0f - (motionEvent2.getX(findPointerIndex) / ((float) getWidth())));
                                    if (r7.mEdgeGlowTop.isFinished()) {
                                        r7.mEdgeGlowTop.onRelease();
                                    }
                                }
                                ViewCompat.postInvalidateOnAnimation(this);
                                break;
                            }
                        }
                        r7.mLastMotionY -= r7.mScrollOffset[1];
                        obtain.offsetLocation(BitmapDescriptorFactory.HUE_RED, (float) r7.mScrollOffset[1]);
                        r7.mNestedYOffset += r7.mScrollOffset[1];
                        break;
                    }
                }
                StringBuilder stringBuilder = new StringBuilder("Invalid pointerId=");
                stringBuilder.append(r7.mActivePointerId);
                stringBuilder.append(" in onTouchEvent");
                Log.e("NestedScrollView", stringBuilder.toString());
                break;
                break;
            case 3:
                if (r7.mIsBeingDragged && getChildCount() > 0 && r7.mScroller.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                r7.mActivePointerId = -1;
                endDrag();
                break;
            case 5:
                actionMasked = motionEvent.getActionIndex();
                r7.mLastMotionY = (int) motionEvent2.getY(actionMasked);
                r7.mActivePointerId = motionEvent2.getPointerId(actionMasked);
                break;
            case 6:
                onSecondaryPointerUp(motionEvent);
                r7.mLastMotionY = (int) motionEvent2.getY(motionEvent2.findPointerIndex(r7.mActivePointerId));
                break;
            default:
                break;
        }
        if (r7.mVelocityTracker != null) {
            r7.mVelocityTracker.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }
}
