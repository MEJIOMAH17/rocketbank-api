package android.support.v4.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;

public class DrawerLayout extends ViewGroup {
    static final boolean CAN_HIDE_DESCENDANTS = (VERSION.SDK_INT >= 19);
    static final int[] LAYOUT_ATTRS = new int[]{16842931};
    private static final boolean SET_DRAWER_SHADOW_FROM_ELEVATION;
    private static final int[] THEME_ATTRS = new int[]{16843828};
    private final ChildAccessibilityDelegate mChildAccessibilityDelegate;
    private boolean mChildrenCanceledTouch;
    private boolean mDisallowInterceptRequested;
    private boolean mDrawStatusBarBackground;
    private float mDrawerElevation;
    private int mDrawerState;
    private boolean mFirstLayout;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private Object mLastInsets;
    private final ViewDragCallback mLeftCallback;
    private final ViewDragHelper mLeftDragger;
    private DrawerListener mListener;
    private List<DrawerListener> mListeners;
    private int mLockModeEnd;
    private int mLockModeLeft;
    private int mLockModeRight;
    private int mLockModeStart;
    private int mMinDrawerMargin;
    private final ArrayList<View> mNonDrawerViews;
    private final ViewDragCallback mRightCallback;
    private final ViewDragHelper mRightDragger;
    private int mScrimColor;
    private float mScrimOpacity;
    private Paint mScrimPaint;
    private Drawable mShadowEnd;
    private Drawable mShadowLeft;
    private Drawable mShadowLeftResolved;
    private Drawable mShadowRight;
    private Drawable mShadowRightResolved;
    private Drawable mShadowStart;
    private Drawable mStatusBarBackground;

    /* renamed from: android.support.v4.widget.DrawerLayout$1 */
    class C01931 implements OnApplyWindowInsetsListener {
        C01931() {
        }

        @TargetApi(21)
        public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    public interface DrawerListener {
        void onDrawerClosed(View view);

        void onDrawerOpened(View view);

        void onDrawerSlide(View view, float f);

        void onDrawerStateChanged(int i);
    }

    public static class LayoutParams extends MarginLayoutParams {
        public int gravity = 0;
        boolean isPeeking;
        float onScreen;
        int openState;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            context = context.obtainStyledAttributes(attributeSet, DrawerLayout.LAYOUT_ATTRS);
            this.gravity = context.getInt(0, 0);
            context.recycle();
        }

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    class AccessibilityDelegate extends AccessibilityDelegateCompat {
        private final Rect mTmpRect = new Rect();

        AccessibilityDelegate() {
        }

        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.CAN_HIDE_DESCENDANTS) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, obtain);
                accessibilityNodeInfoCompat.setSource(view);
                ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
                if (parentForAccessibility instanceof View) {
                    accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
                }
                Rect rect = this.mTmpRect;
                obtain.getBoundsInParent(rect);
                accessibilityNodeInfoCompat.setBoundsInParent(rect);
                obtain.getBoundsInScreen(rect);
                accessibilityNodeInfoCompat.setBoundsInScreen(rect);
                accessibilityNodeInfoCompat.setVisibleToUser(obtain.isVisibleToUser());
                accessibilityNodeInfoCompat.setPackageName(obtain.getPackageName());
                accessibilityNodeInfoCompat.setClassName(obtain.getClassName());
                accessibilityNodeInfoCompat.setContentDescription(obtain.getContentDescription());
                accessibilityNodeInfoCompat.setEnabled(obtain.isEnabled());
                accessibilityNodeInfoCompat.setClickable(obtain.isClickable());
                accessibilityNodeInfoCompat.setFocusable(obtain.isFocusable());
                accessibilityNodeInfoCompat.setFocused(obtain.isFocused());
                accessibilityNodeInfoCompat.setAccessibilityFocused(obtain.isAccessibilityFocused());
                accessibilityNodeInfoCompat.setSelected(obtain.isSelected());
                accessibilityNodeInfoCompat.setLongClickable(obtain.isLongClickable());
                accessibilityNodeInfoCompat.addAction(obtain.getActions());
                obtain.recycle();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (DrawerLayout.includeChildForAccessibility(childAt)) {
                        accessibilityNodeInfoCompat.addChild(childAt);
                    }
                }
            }
            accessibilityNodeInfoCompat.setClassName(DrawerLayout.class.getName());
            accessibilityNodeInfoCompat.setFocusable(false);
            accessibilityNodeInfoCompat.setFocused(false);
            accessibilityNodeInfoCompat.removeAction(AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.removeAction(AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            accessibilityEvent.getText();
            view = DrawerLayout.this.findVisibleDrawer();
            if (view != null) {
                GravityCompat.getAbsoluteGravity(GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(DrawerLayout.this)), ViewCompat.getLayoutDirection(DrawerLayout.this));
            }
            return true;
        }

        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!DrawerLayout.CAN_HIDE_DESCENDANTS) {
                if (!DrawerLayout.includeChildForAccessibility(view)) {
                    return null;
                }
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    static final class ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
        ChildAccessibilityDelegate() {
        }

        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (DrawerLayout.includeChildForAccessibility(view) == null) {
                accessibilityNodeInfoCompat.setParent(null);
            }
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Creator<SavedState> CREATOR = new C01941();
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        int openDrawerGravity = null;

        /* renamed from: android.support.v4.widget.DrawerLayout$SavedState$1 */
        static class C01941 implements ClassLoaderCreator<SavedState> {
            C01941() {
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.openDrawerGravity = parcel.readInt();
            this.lockModeLeft = parcel.readInt();
            this.lockModeRight = parcel.readInt();
            this.lockModeStart = parcel.readInt();
            this.lockModeEnd = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.openDrawerGravity);
            parcel.writeInt(this.lockModeLeft);
            parcel.writeInt(this.lockModeRight);
            parcel.writeInt(this.lockModeStart);
            parcel.writeInt(this.lockModeEnd);
        }
    }

    class ViewDragCallback extends Callback {
        private final int mAbsGravity;
        private ViewDragHelper mDragger;
        private final Runnable mPeekRunnable = new C01951();

        /* renamed from: android.support.v4.widget.DrawerLayout$ViewDragCallback$1 */
        class C01951 implements Runnable {
            C01951() {
            }

            public final void run() {
                ViewDragCallback.this.peekDrawer();
            }
        }

        public final boolean onEdgeLock(int i) {
            return false;
        }

        ViewDragCallback(int i) {
            this.mAbsGravity = i;
        }

        public final void setDragger(ViewDragHelper viewDragHelper) {
            this.mDragger = viewDragHelper;
        }

        public final void removeCallbacks() {
            DrawerLayout.this.removeCallbacks(this.mPeekRunnable);
        }

        public final boolean tryCaptureView(View view, int i) {
            return (DrawerLayout.isDrawerView(view) == 0 || DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, this.mAbsGravity) == 0 || DrawerLayout.this.getDrawerLockMode(view) != null) ? null : true;
        }

        public final void onViewDragStateChanged(int i) {
            DrawerLayout.this.updateDrawerState$5cdeb3e3(i, this.mDragger.getCapturedView());
        }

        public final void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            i2 = view.getWidth();
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3) != 0) {
                i = ((float) (i + i2)) / ((float) i2);
            } else {
                i = ((float) (DrawerLayout.this.getWidth() - i)) / ((float) i2);
            }
            DrawerLayout.this.setDrawerViewOffset(view, i);
            view.setVisibility(i == 0 ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        public final void onViewCaptured(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).isPeeking = false;
            closeOtherDrawer();
        }

        private void closeOtherDrawer() {
            int i = 3;
            if (this.mAbsGravity == 3) {
                i = 5;
            }
            View findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(i);
            if (findDrawerWithGravity != null) {
                DrawerLayout.this.closeDrawer(findDrawerWithGravity);
            }
        }

        public final void onViewReleased(View view, float f, float f2) {
            f2 = DrawerLayout.getDrawerViewOffset(view);
            int width = view.getWidth();
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3)) {
                if (f <= BitmapDescriptorFactory.HUE_RED) {
                    if (f != BitmapDescriptorFactory.HUE_RED || f2 <= 0.5f) {
                        f = -width;
                    }
                }
                f = BitmapDescriptorFactory.HUE_RED;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f < BitmapDescriptorFactory.HUE_RED || (f == BitmapDescriptorFactory.HUE_RED && f2 > 0.5f)) {
                    width2 -= width;
                }
                f = width2;
            }
            this.mDragger.settleCapturedViewAt(f, view.getTop());
            DrawerLayout.this.invalidate();
        }

        public final void onEdgeTouched(int i, int i2) {
            DrawerLayout.this.postDelayed(this.mPeekRunnable, 160);
        }

        final void peekDrawer() {
            View findDrawerWithGravity;
            int edgeSize = this.mDragger.getEdgeSize();
            int i = 0;
            boolean z = this.mAbsGravity == 3;
            if (z) {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(3);
                if (findDrawerWithGravity != null) {
                    i = -findDrawerWithGravity.getWidth();
                }
                i += edgeSize;
            } else {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(5);
                i = DrawerLayout.this.getWidth() - edgeSize;
            }
            if (findDrawerWithGravity == null) {
                return;
            }
            if (((z && findDrawerWithGravity.getLeft() < i) || (!z && findDrawerWithGravity.getLeft() > i)) && DrawerLayout.this.getDrawerLockMode(findDrawerWithGravity) == 0) {
                LayoutParams layoutParams = (LayoutParams) findDrawerWithGravity.getLayoutParams();
                this.mDragger.smoothSlideViewTo(findDrawerWithGravity, i, findDrawerWithGravity.getTop());
                layoutParams.isPeeking = true;
                DrawerLayout.this.invalidate();
                closeOtherDrawer();
                DrawerLayout.this.cancelChildViewTouch();
            }
        }

        public final void onEdgeDragStarted(int i, int i2) {
            View findDrawerWithGravity;
            if ((i & 1) == 1) {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(3);
            } else {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(5);
            }
            if (findDrawerWithGravity != 0 && DrawerLayout.this.getDrawerLockMode(findDrawerWithGravity) == 0) {
                this.mDragger.captureChildView(findDrawerWithGravity, i2);
            }
        }

        public final int getViewHorizontalDragRange(View view) {
            return DrawerLayout.isDrawerView(view) ? view.getWidth() : null;
        }

        public final int clampViewPositionHorizontal(View view, int i, int i2) {
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3) != 0) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            i2 = DrawerLayout.this.getWidth();
            return Math.max(i2 - view.getWidth(), Math.min(i, i2));
        }

        public final int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }
    }

    static {
        boolean z = true;
        if (VERSION.SDK_INT < 21) {
            z = false;
        }
        SET_DRAWER_SHADOW_FROM_ELEVATION = z;
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mChildAccessibilityDelegate = new ChildAccessibilityDelegate();
        this.mScrimColor = -1728053248;
        this.mScrimPaint = new Paint();
        this.mFirstLayout = true;
        this.mLockModeLeft = 3;
        this.mLockModeRight = 3;
        this.mLockModeStart = 3;
        this.mLockModeEnd = 3;
        this.mShadowStart = null;
        this.mShadowEnd = null;
        this.mShadowLeft = null;
        this.mShadowRight = null;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.mMinDrawerMargin = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        this.mLeftCallback = new ViewDragCallback(3);
        this.mRightCallback = new ViewDragCallback(5);
        this.mLeftDragger = ViewDragHelper.create(this, 1.0f, this.mLeftCallback);
        this.mLeftDragger.setEdgeTrackingEnabled(1);
        this.mLeftDragger.setMinVelocity(f2);
        this.mLeftCallback.setDragger(this.mLeftDragger);
        this.mRightDragger = ViewDragHelper.create(this, 1.0f, this.mRightCallback);
        this.mRightDragger.setEdgeTrackingEnabled(2);
        this.mRightDragger.setMinVelocity(f2);
        this.mRightCallback.setDragger(this.mRightDragger);
        setFocusableInTouchMode(true);
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.getFitsSystemWindows(this) != 0) {
            if (VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new C01931());
                setSystemUiVisibility(1280);
                context = context.obtainStyledAttributes(THEME_ATTRS);
                try {
                    this.mStatusBarBackground = context.getDrawable(0);
                } finally {
                    context.recycle();
                }
            } else {
                this.mStatusBarBackground = null;
            }
        }
        this.mDrawerElevation = 1092616192 * f;
        this.mNonDrawerViews = new ArrayList();
    }

    @RestrictTo
    public final void setChildInsets(Object obj, boolean z) {
        this.mLastInsets = obj;
        this.mDrawStatusBarBackground = z;
        obj = (z || getBackground() != null) ? null : true;
        setWillNotDraw(obj);
        requestLayout();
    }

    public final void setDrawerShadow(int i, int i2) {
        i = ContextCompat.getDrawable(getContext(), i);
        if (!SET_DRAWER_SHADOW_FROM_ELEVATION) {
            if ((i2 & GravityCompat.START) == GravityCompat.START) {
                this.mShadowStart = i;
            } else if ((i2 & GravityCompat.END) == GravityCompat.END) {
                this.mShadowEnd = i;
            } else if ((i2 & 3) == 3) {
                this.mShadowLeft = i;
            } else if ((i2 & 5) == 5) {
                this.mShadowRight = i;
            } else {
                return;
            }
            if (SET_DRAWER_SHADOW_FROM_ELEVATION == 0) {
                this.mShadowLeftResolved = resolveLeftShadow();
                this.mShadowRightResolved = resolveRightShadow();
            }
            invalidate();
        }
    }

    @Deprecated
    public final void setDrawerListener(DrawerListener drawerListener) {
        if (this.mListener != null) {
            DrawerListener drawerListener2 = this.mListener;
            if (!(drawerListener2 == null || this.mListeners == null)) {
                this.mListeners.remove(drawerListener2);
            }
        }
        if (!(drawerListener == null || drawerListener == null)) {
            if (this.mListeners == null) {
                this.mListeners = new ArrayList();
            }
            this.mListeners.add(drawerListener);
        }
        this.mListener = drawerListener;
    }

    private void setDrawerLockMode(int i, int i2) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this));
        if (i2 == 3) {
            this.mLockModeLeft = i;
        } else if (i2 == 5) {
            this.mLockModeRight = i;
        } else if (i2 == GravityCompat.START) {
            this.mLockModeStart = i;
        } else if (i2 == GravityCompat.END) {
            this.mLockModeEnd = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.mLeftDragger : this.mRightDragger).cancel();
        }
        switch (i) {
            case 1:
                i = findDrawerWithGravity(absoluteGravity);
                if (i != 0) {
                    closeDrawer$53599cc9(i);
                    break;
                }
                break;
            case 2:
                i = findDrawerWithGravity(absoluteGravity);
                if (i != 0) {
                    openDrawer$53599cc9(i);
                    return;
                }
                break;
            default:
                break;
        }
    }

    public final int getDrawerLockMode(int i) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (i != 3) {
            if (i != 5) {
                if (i != GravityCompat.START) {
                    if (i == GravityCompat.END) {
                        if (this.mLockModeEnd != 3) {
                            return this.mLockModeEnd;
                        }
                        if (layoutDirection == 0) {
                            i = this.mLockModeRight;
                        } else {
                            i = this.mLockModeLeft;
                        }
                        if (i != 3) {
                            return i;
                        }
                    }
                } else if (this.mLockModeStart != 3) {
                    return this.mLockModeStart;
                } else {
                    if (layoutDirection == 0) {
                        i = this.mLockModeLeft;
                    } else {
                        i = this.mLockModeRight;
                    }
                    if (i != 3) {
                        return i;
                    }
                }
            } else if (this.mLockModeRight != 3) {
                return this.mLockModeRight;
            } else {
                if (layoutDirection == 0) {
                    i = this.mLockModeEnd;
                } else {
                    i = this.mLockModeStart;
                }
                if (i != 3) {
                    return i;
                }
            }
        } else if (this.mLockModeLeft != 3) {
            return this.mLockModeLeft;
        } else {
            i = layoutDirection == 0 ? this.mLockModeStart : this.mLockModeEnd;
            if (i != 3) {
                return i;
            }
        }
        return 0;
    }

    public final int getDrawerLockMode(View view) {
        if (isDrawerView(view)) {
            return getDrawerLockMode(((LayoutParams) view.getLayoutParams()).gravity);
        }
        StringBuilder stringBuilder = new StringBuilder("View ");
        stringBuilder.append(view);
        stringBuilder.append(" is not a drawer");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    final void updateDrawerState$5cdeb3e3(int i, View view) {
        LayoutParams layoutParams;
        int viewDragState = this.mLeftDragger.getViewDragState();
        int viewDragState2 = this.mRightDragger.getViewDragState();
        int i2 = 2;
        if (viewDragState != 1) {
            if (viewDragState2 != 1) {
                if (viewDragState != 2) {
                    if (viewDragState2 != 2) {
                        i2 = 0;
                    }
                }
                if (view != null && i == 0) {
                    layoutParams = (LayoutParams) view.getLayoutParams();
                    if (layoutParams.onScreen == BitmapDescriptorFactory.HUE_RED) {
                        layoutParams = (LayoutParams) view.getLayoutParams();
                        if ((layoutParams.openState & 1) == 1) {
                            layoutParams.openState = 0;
                            if (this.mListeners != 0) {
                                for (i = this.mListeners.size() - 1; i >= 0; i--) {
                                    ((DrawerListener) this.mListeners.get(i)).onDrawerClosed(view);
                                }
                            }
                            updateChildrenImportantForAccessibility(view, false);
                            if (hasWindowFocus() != 0) {
                                i = getRootView();
                                if (i != 0) {
                                    i.sendAccessibilityEvent(32);
                                }
                            }
                        }
                    } else if (layoutParams.onScreen == 1065353216) {
                        layoutParams = (LayoutParams) view.getLayoutParams();
                        if ((layoutParams.openState & 1) == 0) {
                            layoutParams.openState = 1;
                            if (this.mListeners != 0) {
                                for (i = this.mListeners.size() - 1; i >= 0; i--) {
                                    ((DrawerListener) this.mListeners.get(i)).onDrawerOpened(view);
                                }
                            }
                            updateChildrenImportantForAccessibility(view, true);
                            if (hasWindowFocus() != 0) {
                                sendAccessibilityEvent(32);
                            }
                        }
                    }
                }
                if (i2 != this.mDrawerState) {
                    this.mDrawerState = i2;
                    if (this.mListeners != 0) {
                        for (i = this.mListeners.size() - 1; i >= 0; i--) {
                            ((DrawerListener) this.mListeners.get(i)).onDrawerStateChanged(i2);
                        }
                    }
                }
            }
        }
        i2 = 1;
        layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.onScreen == BitmapDescriptorFactory.HUE_RED) {
            layoutParams = (LayoutParams) view.getLayoutParams();
            if ((layoutParams.openState & 1) == 1) {
                layoutParams.openState = 0;
                if (this.mListeners != 0) {
                    for (i = this.mListeners.size() - 1; i >= 0; i--) {
                        ((DrawerListener) this.mListeners.get(i)).onDrawerClosed(view);
                    }
                }
                updateChildrenImportantForAccessibility(view, false);
                if (hasWindowFocus() != 0) {
                    i = getRootView();
                    if (i != 0) {
                        i.sendAccessibilityEvent(32);
                    }
                }
            }
        } else if (layoutParams.onScreen == 1065353216) {
            layoutParams = (LayoutParams) view.getLayoutParams();
            if ((layoutParams.openState & 1) == 0) {
                layoutParams.openState = 1;
                if (this.mListeners != 0) {
                    for (i = this.mListeners.size() - 1; i >= 0; i--) {
                        ((DrawerListener) this.mListeners.get(i)).onDrawerOpened(view);
                    }
                }
                updateChildrenImportantForAccessibility(view, true);
                if (hasWindowFocus() != 0) {
                    sendAccessibilityEvent(32);
                }
            }
        }
        if (i2 != this.mDrawerState) {
            this.mDrawerState = i2;
            if (this.mListeners != 0) {
                for (i = this.mListeners.size() - 1; i >= 0; i--) {
                    ((DrawerListener) this.mListeners.get(i)).onDrawerStateChanged(i2);
                }
            }
        }
    }

    private void updateChildrenImportantForAccessibility(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || isDrawerView(childAt)) && !(z && childAt == view)) {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, 1);
            }
        }
    }

    final void setDrawerViewOffset(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f != layoutParams.onScreen) {
            layoutParams.onScreen = f;
            if (this.mListeners != null) {
                for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                    ((DrawerListener) this.mListeners.get(size)).onDrawerSlide(view, f);
                }
            }
        }
    }

    static float getDrawerViewOffset(View view) {
        return ((LayoutParams) view.getLayoutParams()).onScreen;
    }

    private View findOpenDrawer() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).openState & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    final View findDrawerWithGravity(int i) {
        i = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((GravityCompat.getAbsoluteGravity(((LayoutParams) childAt.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this)) & 7) == i) {
                return childAt;
            }
        }
        return 0;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onMeasure(int i, int i2) {
        DrawerLayout drawerLayout = this;
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (!(mode == 1073741824 && mode2 == 1073741824)) {
            if (isInEditMode()) {
                if (mode != Integer.MIN_VALUE && mode == 0) {
                    size = 300;
                }
                if (mode2 != Integer.MIN_VALUE && mode2 == 0) {
                    size2 = 300;
                }
            } else {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
        }
        setMeasuredDimension(size, size2);
        int i3 = 0;
        mode = (drawerLayout.mLastInsets == null || !ViewCompat.getFitsSystemWindows(this)) ? 0 : 1;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = i4;
        int i6 = i5;
        while (i4 < childCount) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (mode != 0) {
                    mode2 = GravityCompat.getAbsoluteGravity(layoutParams.gravity, layoutDirection);
                    WindowInsets windowInsets;
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        if (VERSION.SDK_INT >= 21) {
                            windowInsets = (WindowInsets) drawerLayout.mLastInsets;
                            if (mode2 == 3) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), i3, windowInsets.getSystemWindowInsetBottom());
                            } else if (mode2 == 5) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(i3, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                            }
                            childAt.dispatchApplyWindowInsets(windowInsets);
                        }
                    } else if (VERSION.SDK_INT >= 21) {
                        windowInsets = (WindowInsets) drawerLayout.mLastInsets;
                        if (mode2 == 3) {
                            windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), i3, windowInsets.getSystemWindowInsetBottom());
                        } else if (mode2 == 5) {
                            windowInsets = windowInsets.replaceSystemWindowInsets(i3, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                        }
                        layoutParams.leftMargin = windowInsets.getSystemWindowInsetLeft();
                        layoutParams.topMargin = windowInsets.getSystemWindowInsetTop();
                        layoutParams.rightMargin = windowInsets.getSystemWindowInsetRight();
                        layoutParams.bottomMargin = windowInsets.getSystemWindowInsetBottom();
                    }
                }
                if ((((LayoutParams) childAt.getLayoutParams()).gravity == 0 ? 1 : i3) != 0) {
                    childAt.measure(MeasureSpec.makeMeasureSpec((size - layoutParams.leftMargin) - layoutParams.rightMargin, 1073741824), MeasureSpec.makeMeasureSpec((size2 - layoutParams.topMargin) - layoutParams.bottomMargin, 1073741824));
                } else if (isDrawerView(childAt)) {
                    if (SET_DRAWER_SHADOW_FROM_ELEVATION && ViewCompat.getElevation(childAt) != drawerLayout.mDrawerElevation) {
                        ViewCompat.setElevation(childAt, drawerLayout.mDrawerElevation);
                    }
                    mode2 = GravityCompat.getAbsoluteGravity(((LayoutParams) childAt.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this)) & 7;
                    int i7 = mode2 == 3 ? 1 : i3;
                    if ((i7 == 0 || r10 == 0) && (i7 != 0 || r11 == 0)) {
                        if (i7 != 0) {
                            i5 = 1;
                        } else {
                            i6 = 1;
                        }
                        childAt.measure(getChildMeasureSpec(i, (drawerLayout.mMinDrawerMargin + layoutParams.leftMargin) + layoutParams.rightMargin, layoutParams.width), getChildMeasureSpec(i2, layoutParams.topMargin + layoutParams.bottomMargin, layoutParams.height));
                        i4++;
                        i3 = 0;
                    } else {
                        StringBuilder stringBuilder = new StringBuilder("Child drawer has absolute gravity ");
                        String toHexString = (mode2 & 3) == 3 ? "LEFT" : (mode2 & 5) == 5 ? "RIGHT" : Integer.toHexString(mode2);
                        stringBuilder.append(toHexString);
                        stringBuilder.append(" but this DrawerLayout already has a drawer view along that edge");
                        throw new IllegalStateException(stringBuilder.toString());
                    }
                } else {
                    StringBuilder stringBuilder2 = new StringBuilder("Child ");
                    stringBuilder2.append(childAt);
                    stringBuilder2.append(" at index ");
                    stringBuilder2.append(i4);
                    stringBuilder2.append(" does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    throw new IllegalStateException(stringBuilder2.toString());
                }
            }
            int i8 = i;
            int i9 = i2;
            i4++;
            i3 = 0;
        }
    }

    private Drawable resolveLeftShadow() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        boolean z = false;
        Drawable drawable;
        if (layoutDirection == 0) {
            if (this.mShadowStart != null) {
                drawable = this.mShadowStart;
                if (drawable != null) {
                    if (VERSION.SDK_INT >= 19) {
                        z = drawable.isAutoMirrored();
                    }
                    if (z) {
                        DrawableCompat.setLayoutDirection(drawable, layoutDirection);
                    }
                }
                return this.mShadowStart;
            }
        } else if (this.mShadowEnd != null) {
            drawable = this.mShadowEnd;
            if (drawable != null) {
                if (VERSION.SDK_INT >= 19) {
                    z = drawable.isAutoMirrored();
                }
                if (z) {
                    DrawableCompat.setLayoutDirection(drawable, layoutDirection);
                }
            }
            return this.mShadowEnd;
        }
        return this.mShadowLeft;
    }

    private Drawable resolveRightShadow() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        boolean z = false;
        Drawable drawable;
        if (layoutDirection == 0) {
            if (this.mShadowEnd != null) {
                drawable = this.mShadowEnd;
                if (drawable != null) {
                    if (VERSION.SDK_INT >= 19) {
                        z = drawable.isAutoMirrored();
                    }
                    if (z) {
                        DrawableCompat.setLayoutDirection(drawable, layoutDirection);
                    }
                }
                return this.mShadowEnd;
            }
        } else if (this.mShadowStart != null) {
            drawable = this.mShadowStart;
            if (drawable != null) {
                if (VERSION.SDK_INT >= 19) {
                    z = drawable.isAutoMirrored();
                }
                if (z) {
                    DrawableCompat.setLayoutDirection(drawable, layoutDirection);
                }
            }
            return this.mShadowStart;
        }
        return this.mShadowRight;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = true;
        this.mInLayout = true;
        int i5 = i3 - i;
        int childCount = getChildCount();
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (((LayoutParams) childAt.getLayoutParams()).gravity == 0 ? z2 : false) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int i7;
                    float f;
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        float f2 = (float) measuredWidth;
                        i7 = (-measuredWidth) + ((int) (layoutParams.onScreen * f2));
                        f = ((float) (measuredWidth + i7)) / f2;
                    } else {
                        float f3 = (float) measuredWidth;
                        int i8 = i5 - ((int) (layoutParams.onScreen * f3));
                        f = ((float) (i5 - i8)) / f3;
                        i7 = i8;
                    }
                    boolean z3 = f != layoutParams.onScreen ? z2 : false;
                    int i9 = layoutParams.gravity & 112;
                    int i10;
                    if (i9 == 16) {
                        i10 = i4 - i2;
                        i9 = (i10 - measuredHeight) / 2;
                        if (i9 < layoutParams.topMargin) {
                            i9 = layoutParams.topMargin;
                        } else if (i9 + measuredHeight > i10 - layoutParams.bottomMargin) {
                            i9 = (i10 - layoutParams.bottomMargin) - measuredHeight;
                        }
                        childAt.layout(i7, i9, measuredWidth + i7, measuredHeight + i9);
                    } else if (i9 != 80) {
                        childAt.layout(i7, layoutParams.topMargin, measuredWidth + i7, layoutParams.topMargin + measuredHeight);
                    } else {
                        i10 = i4 - i2;
                        childAt.layout(i7, (i10 - layoutParams.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i7, i10 - layoutParams.bottomMargin);
                    }
                    if (z3) {
                        setDrawerViewOffset(childAt, f);
                    }
                    int i11 = layoutParams.onScreen > BitmapDescriptorFactory.HUE_RED ? 0 : 4;
                    if (childAt.getVisibility() != i11) {
                        childAt.setVisibility(i11);
                    }
                }
            }
            i6++;
            z2 = true;
        }
        r0.mInLayout = false;
        r0.mFirstLayout = false;
    }

    public void requestLayout() {
        if (!this.mInLayout) {
            super.requestLayout();
        }
    }

    public void computeScroll() {
        int childCount = getChildCount();
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).onScreen);
        }
        this.mScrimOpacity = f;
        boolean continueSettling$138603 = this.mLeftDragger.continueSettling$138603();
        boolean continueSettling$1386032 = this.mRightDragger.continueSettling$138603();
        if (continueSettling$138603 || continueSettling$1386032) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null) {
            int systemWindowInsetTop = (VERSION.SDK_INT < 21 || this.mLastInsets == null) ? 0 : ((WindowInsets) this.mLastInsets).getSystemWindowInsetTop();
            if (systemWindowInsetTop > 0) {
                this.mStatusBarBackground.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.mStatusBarBackground.draw(canvas);
            }
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        int i2;
        DrawerLayout drawerLayout = this;
        Canvas canvas2 = canvas;
        View view2 = view;
        int height = getHeight();
        int i3 = ((LayoutParams) view.getLayoutParams()).gravity == 0 ? 1 : 0;
        int width = getWidth();
        int save = canvas.save();
        if (i3 != 0) {
            int childCount = getChildCount();
            i = 0;
            i2 = width;
            for (width = i; width < childCount; width++) {
                View childAt = getChildAt(width);
                if (childAt != view2 && childAt.getVisibility() == 0) {
                    Drawable background = childAt.getBackground();
                    int i4 = (background == null || background.getOpacity() != -1) ? 0 : 1;
                    if (i4 != 0 && isDrawerView(childAt) && childAt.getHeight() >= height) {
                        int right;
                        if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                            right = childAt.getRight();
                            if (right > i) {
                                i = right;
                            }
                        } else {
                            right = childAt.getLeft();
                            if (right < i2) {
                                i2 = right;
                            }
                        }
                    }
                }
            }
            canvas2.clipRect(i, 0, i2, getHeight());
        } else {
            i = 0;
            i2 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas2.restoreToCount(save);
        if (drawerLayout.mScrimOpacity > BitmapDescriptorFactory.HUE_RED && i3 != 0) {
            drawerLayout.mScrimPaint.setColor((((int) (((float) ((drawerLayout.mScrimColor & ViewCompat.MEASURED_STATE_MASK) >>> 24)) * drawerLayout.mScrimOpacity)) << 24) | (drawerLayout.mScrimColor & ViewCompat.MEASURED_SIZE_MASK));
            canvas2.drawRect((float) i, BitmapDescriptorFactory.HUE_RED, (float) i2, (float) getHeight(), drawerLayout.mScrimPaint);
        } else if (drawerLayout.mShadowLeftResolved != null && checkDrawerViewAbsoluteGravity(view2, 3)) {
            height = drawerLayout.mShadowLeftResolved.getIntrinsicWidth();
            save = view.getRight();
            r5 = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(((float) save) / ((float) drawerLayout.mLeftDragger.getEdgeSize()), 1.0f));
            drawerLayout.mShadowLeftResolved.setBounds(save, view.getTop(), height + save, view.getBottom());
            drawerLayout.mShadowLeftResolved.setAlpha((int) (255.0f * r5));
            drawerLayout.mShadowLeftResolved.draw(canvas2);
        } else if (drawerLayout.mShadowRightResolved != null && checkDrawerViewAbsoluteGravity(view2, 5)) {
            height = drawerLayout.mShadowRightResolved.getIntrinsicWidth();
            save = view.getLeft();
            r5 = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(((float) (getWidth() - save)) / ((float) drawerLayout.mRightDragger.getEdgeSize()), 1.0f));
            drawerLayout.mShadowRightResolved.setBounds(save - height, view.getTop(), save, view.getBottom());
            drawerLayout.mShadowRightResolved.setAlpha((int) (255.0f * r5));
            drawerLayout.mShadowRightResolved.draw(canvas2);
        }
        return drawChild;
    }

    static boolean isDrawerView(View view) {
        view = GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view));
        return ((view & 3) == 0 && (view & 5) == null) ? null : true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int shouldInterceptTouchEvent = this.mLeftDragger.shouldInterceptTouchEvent(motionEvent) | this.mRightDragger.shouldInterceptTouchEvent(motionEvent);
        switch (motionEvent.getActionMasked()) {
            case 0:
                float x = motionEvent.getX();
                motionEvent = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = motionEvent;
                if (this.mScrimOpacity > BitmapDescriptorFactory.HUE_RED) {
                    motionEvent = this.mLeftDragger.findTopChildUnder((int) x, (int) motionEvent);
                    if (motionEvent != null) {
                        if ((((LayoutParams) motionEvent.getLayoutParams()).gravity == null ? 1 : null) != null) {
                            motionEvent = 1;
                            this.mDisallowInterceptRequested = false;
                            this.mChildrenCanceledTouch = false;
                            break;
                        }
                    }
                }
                motionEvent = null;
                this.mDisallowInterceptRequested = false;
                this.mChildrenCanceledTouch = false;
            case 1:
            case 3:
                closeDrawers(true);
                this.mDisallowInterceptRequested = false;
                this.mChildrenCanceledTouch = false;
                break;
            case 2:
                if (this.mLeftDragger.checkTouchSlop$134632() != null) {
                    this.mLeftCallback.removeCallbacks();
                    this.mRightCallback.removeCallbacks();
                    break;
                }
                break;
            default:
                break;
        }
        motionEvent = null;
        if (shouldInterceptTouchEvent == 0 && r7 == null) {
            motionEvent = getChildCount();
            int i = 0;
            while (i < motionEvent) {
                if (((LayoutParams) getChildAt(i).getLayoutParams()).isPeeking) {
                    motionEvent = 1;
                    if (motionEvent == null) {
                        if (this.mChildrenCanceledTouch != null) {
                            return false;
                        }
                    }
                } else {
                    i++;
                }
            }
            motionEvent = null;
            if (motionEvent == null) {
                if (this.mChildrenCanceledTouch != null) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mLeftDragger.processTouchEvent(motionEvent);
        this.mRightDragger.processTouchEvent(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action != 3) {
            float x;
            switch (action) {
                case 0:
                    x = motionEvent.getX();
                    motionEvent = motionEvent.getY();
                    this.mInitialMotionX = x;
                    this.mInitialMotionY = motionEvent;
                    this.mDisallowInterceptRequested = false;
                    this.mChildrenCanceledTouch = false;
                    break;
                case 1:
                    x = motionEvent.getX();
                    motionEvent = motionEvent.getY();
                    View findTopChildUnder = this.mLeftDragger.findTopChildUnder((int) x, (int) motionEvent);
                    if (findTopChildUnder != null) {
                        if (((LayoutParams) findTopChildUnder.getLayoutParams()).gravity == 0) {
                            x -= this.mInitialMotionX;
                            motionEvent -= this.mInitialMotionY;
                            int touchSlop = this.mLeftDragger.getTouchSlop();
                            if ((x * x) + (motionEvent * motionEvent) < ((float) (touchSlop * touchSlop))) {
                                View findOpenDrawer = findOpenDrawer();
                                if (findOpenDrawer != null) {
                                    if (getDrawerLockMode(findOpenDrawer) != 2) {
                                        motionEvent = null;
                                        closeDrawers(motionEvent);
                                        this.mDisallowInterceptRequested = false;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    motionEvent = 1;
                    closeDrawers(motionEvent);
                    this.mDisallowInterceptRequested = false;
                default:
                    break;
            }
        }
        closeDrawers(true);
        this.mDisallowInterceptRequested = false;
        this.mChildrenCanceledTouch = false;
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.mDisallowInterceptRequested = z;
        if (z) {
            closeDrawers(true);
        }
    }

    public final void closeDrawers() {
        closeDrawers(false);
    }

    private void closeDrawers(boolean z) {
        int childCount = getChildCount();
        int i = 0;
        int i2 = i;
        while (i < childCount) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (isDrawerView(childAt) && (!z || layoutParams.isPeeking)) {
                int width = childAt.getWidth();
                if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                    i2 |= this.mLeftDragger.smoothSlideViewTo(childAt, -width, childAt.getTop());
                } else {
                    i2 |= this.mRightDragger.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                }
                layoutParams.isPeeking = false;
            }
            i++;
        }
        this.mLeftCallback.removeCallbacks();
        this.mRightCallback.removeCallbacks();
        if (i2 != 0) {
            invalidate();
        }
    }

    private void openDrawer$53599cc9(View view) {
        if (isDrawerView(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.mFirstLayout) {
                layoutParams.onScreen = 1.0f;
                layoutParams.openState = 1;
                updateChildrenImportantForAccessibility(view, true);
            } else {
                layoutParams.openState |= 2;
                if (checkDrawerViewAbsoluteGravity(view, 3)) {
                    this.mLeftDragger.smoothSlideViewTo(view, 0, view.getTop());
                } else {
                    this.mRightDragger.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
                }
            }
            invalidate();
            return;
        }
        StringBuilder stringBuilder = new StringBuilder("View ");
        stringBuilder.append(view);
        stringBuilder.append(" is not a sliding drawer");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public final void closeDrawer(View view) {
        closeDrawer$53599cc9(view);
    }

    private void closeDrawer$53599cc9(View view) {
        if (isDrawerView(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.mFirstLayout) {
                layoutParams.onScreen = null;
                layoutParams.openState = null;
            } else {
                layoutParams.openState |= 4;
                if (checkDrawerViewAbsoluteGravity(view, 3)) {
                    this.mLeftDragger.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
                } else {
                    this.mRightDragger.smoothSlideViewTo(view, getWidth(), view.getTop());
                }
            }
            invalidate();
            return;
        }
        StringBuilder stringBuilder = new StringBuilder("View ");
        stringBuilder.append(view);
        stringBuilder.append(" is not a sliding drawer");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    private static boolean isDrawerOpen(View view) {
        if (isDrawerView(view)) {
            return (((LayoutParams) view.getLayoutParams()).openState & 1) == 1 ? true : null;
        } else {
            StringBuilder stringBuilder = new StringBuilder("View ");
            stringBuilder.append(view);
            stringBuilder.append(" is not a drawer");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public final boolean isDrawerOpen(int i) {
        View findDrawerWithGravity = findDrawerWithGravity(i);
        return findDrawerWithGravity != 0 ? isDrawerOpen(findDrawerWithGravity) : false;
    }

    private static boolean isDrawerVisible(View view) {
        if (isDrawerView(view)) {
            return ((LayoutParams) view.getLayoutParams()).onScreen > BitmapDescriptorFactory.HUE_RED ? true : null;
        } else {
            StringBuilder stringBuilder = new StringBuilder("View ");
            stringBuilder.append(view);
            stringBuilder.append(" is not a drawer");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public final boolean isDrawerVisible$134632() {
        View findDrawerWithGravity = findDrawerWithGravity(GravityCompat.START);
        return findDrawerWithGravity != null ? isDrawerVisible(findDrawerWithGravity) : false;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        return layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (!(layoutParams instanceof LayoutParams) || super.checkLayoutParams(layoutParams) == null) ? null : true;
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            int i3 = 0;
            int i4 = 0;
            int i5 = i4;
            while (i4 < childCount) {
                View childAt = getChildAt(i4);
                if (!isDrawerView(childAt)) {
                    this.mNonDrawerViews.add(childAt);
                } else if (isDrawerOpen(childAt)) {
                    childAt.addFocusables(arrayList, i, i2);
                    i5 = 1;
                }
                i4++;
            }
            if (i5 == 0) {
                childCount = this.mNonDrawerViews.size();
                while (i3 < childCount) {
                    View view = (View) this.mNonDrawerViews.get(i3);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i, i2);
                    }
                    i3++;
                }
            }
            this.mNonDrawerViews.clear();
        }
    }

    final View findVisibleDrawer() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (isDrawerView(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    final void cancelChildViewTouch() {
        if (!this.mChildrenCanceledTouch) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.mChildrenCanceledTouch = true;
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View findVisibleDrawer = findVisibleDrawer();
        if (findVisibleDrawer != 0 && getDrawerLockMode(findVisibleDrawer) == 0) {
            closeDrawers(false);
        }
        if (findVisibleDrawer != null) {
            return true;
        }
        return false;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (savedState.openDrawerGravity != 0) {
                View findDrawerWithGravity = findDrawerWithGravity(savedState.openDrawerGravity);
                if (findDrawerWithGravity != null) {
                    openDrawer$53599cc9(findDrawerWithGravity);
                }
            }
            if (savedState.lockModeLeft != 3) {
                setDrawerLockMode(savedState.lockModeLeft, 3);
            }
            if (savedState.lockModeRight != 3) {
                setDrawerLockMode(savedState.lockModeRight, 5);
            }
            if (savedState.lockModeStart != 3) {
                setDrawerLockMode(savedState.lockModeStart, GravityCompat.START);
            }
            if (savedState.lockModeEnd != 3) {
                setDrawerLockMode(savedState.lockModeEnd, GravityCompat.END);
            }
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            Object obj = 1;
            Object obj2 = layoutParams.openState == 1 ? 1 : null;
            if (layoutParams.openState != 2) {
                obj = null;
            }
            if (obj2 == null) {
                if (obj == null) {
                    i++;
                }
            }
            savedState.openDrawerGravity = layoutParams.gravity;
            break;
        }
        savedState.lockModeLeft = this.mLockModeLeft;
        savedState.lockModeRight = this.mLockModeRight;
        savedState.lockModeStart = this.mLockModeStart;
        savedState.lockModeEnd = this.mLockModeEnd;
        return savedState;
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (findOpenDrawer() == 0) {
            if (isDrawerView(view) == 0) {
                ViewCompat.setImportantForAccessibility(view, 1);
                if (CAN_HIDE_DESCENDANTS == 0) {
                    ViewCompat.setAccessibilityDelegate(view, this.mChildAccessibilityDelegate);
                }
            }
        }
        ViewCompat.setImportantForAccessibility(view, 4);
        if (CAN_HIDE_DESCENDANTS == 0) {
            ViewCompat.setAccessibilityDelegate(view, this.mChildAccessibilityDelegate);
        }
    }

    static boolean includeChildForAccessibility(View view) {
        return (ViewCompat.getImportantForAccessibility(view) == 4 || ViewCompat.getImportantForAccessibility(view) == 2) ? null : true;
    }

    final boolean checkDrawerViewAbsoluteGravity(View view, int i) {
        return (GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this)) & i) == i ? true : null;
    }

    public void onRtlPropertiesChanged(int i) {
        if (SET_DRAWER_SHADOW_FROM_ELEVATION == 0) {
            this.mShadowLeftResolved = resolveLeftShadow();
            this.mShadowRightResolved = resolveRightShadow();
        }
    }

    public final void openDrawer(int i) {
        View findDrawerWithGravity = findDrawerWithGravity(i);
        if (findDrawerWithGravity == null) {
            StringBuilder stringBuilder = new StringBuilder("No drawer view found with gravity ");
            i = (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        openDrawer$53599cc9(findDrawerWithGravity);
    }

    public final void closeDrawer(int i) {
        View findDrawerWithGravity = findDrawerWithGravity(i);
        if (findDrawerWithGravity == null) {
            StringBuilder stringBuilder = new StringBuilder("No drawer view found with gravity ");
            i = (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        closeDrawer$53599cc9(findDrawerWithGravity);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (findVisibleDrawer() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }
}
