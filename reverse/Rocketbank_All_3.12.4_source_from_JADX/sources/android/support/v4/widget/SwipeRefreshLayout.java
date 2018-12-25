package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.ListView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingChild, NestedScrollingParent {
    private static final int[] LAYOUT_ATTRS = new int[]{16842766};
    private static final String LOG_TAG = "SwipeRefreshLayout";
    private int mActivePointerId;
    private Animation mAlphaMaxAnimation;
    private Animation mAlphaStartAnimation;
    private final Animation mAnimateToCorrectPosition;
    private final Animation mAnimateToStartPosition;
    private int mCircleDiameter;
    CircleImageView mCircleView;
    private int mCircleViewIndex;
    int mCurrentTargetOffsetTop;
    private final DecelerateInterpolator mDecelerateInterpolator;
    protected int mFrom;
    private float mInitialDownY;
    private float mInitialMotionY;
    private boolean mIsBeingDragged;
    OnRefreshListener mListener;
    private int mMediumAnimationDuration;
    private boolean mNestedScrollInProgress;
    private final NestedScrollingChildHelper mNestedScrollingChildHelper;
    private final NestedScrollingParentHelper mNestedScrollingParentHelper;
    boolean mNotify;
    protected int mOriginalOffsetTop;
    private final int[] mParentOffsetInWindow;
    private final int[] mParentScrollConsumed;
    CircularProgressDrawable mProgress;
    private AnimationListener mRefreshListener;
    boolean mRefreshing;
    private Animation mScaleAnimation;
    private Animation mScaleDownAnimation;
    int mSpinnerOffsetEnd;
    private View mTarget;
    private float mTotalDragDistance;
    private float mTotalUnconsumed;
    private int mTouchSlop;

    /* renamed from: android.support.v4.widget.SwipeRefreshLayout$1 */
    class C01981 implements AnimationListener {
        public final void onAnimationRepeat(Animation animation) {
        }

        public final void onAnimationStart(Animation animation) {
        }

        C01981() {
        }

        public final void onAnimationEnd(Animation animation) {
            if (SwipeRefreshLayout.this.mRefreshing != null) {
                SwipeRefreshLayout.this.mProgress.setAlpha(255);
                SwipeRefreshLayout.this.mProgress.start();
                if (!(SwipeRefreshLayout.this.mNotify == null || SwipeRefreshLayout.this.mListener == null)) {
                    SwipeRefreshLayout.this.mListener.onRefresh();
                }
                SwipeRefreshLayout.this.mCurrentTargetOffsetTop = SwipeRefreshLayout.this.mCircleView.getTop();
                return;
            }
            SwipeRefreshLayout.this.reset();
        }
    }

    /* renamed from: android.support.v4.widget.SwipeRefreshLayout$2 */
    class C01992 extends Animation {
        C01992() {
        }

        public final void applyTransformation(float f, Transformation transformation) {
            transformation = SwipeRefreshLayout.this;
            transformation.mCircleView.setScaleX(f);
            transformation.mCircleView.setScaleY(f);
        }
    }

    /* renamed from: android.support.v4.widget.SwipeRefreshLayout$3 */
    class C02003 extends Animation {
        C02003() {
        }

        public final void applyTransformation(float f, Transformation transformation) {
            transformation = SwipeRefreshLayout.this;
            float f2 = 1.0f - f;
            transformation.mCircleView.setScaleX(f2);
            transformation.mCircleView.setScaleY(f2);
        }
    }

    /* renamed from: android.support.v4.widget.SwipeRefreshLayout$5 */
    class C02025 implements AnimationListener {
        public final void onAnimationRepeat(Animation animation) {
        }

        public final void onAnimationStart(Animation animation) {
        }

        C02025() {
        }

        public final void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout.this.startScaleDownAnimation(null);
        }
    }

    /* renamed from: android.support.v4.widget.SwipeRefreshLayout$6 */
    class C02036 extends Animation {
        C02036() {
        }

        public final void applyTransformation(float f, Transformation transformation) {
            int abs = (SwipeRefreshLayout.this.mFrom + ((int) (((float) ((SwipeRefreshLayout.this.mSpinnerOffsetEnd - Math.abs(SwipeRefreshLayout.this.mOriginalOffsetTop)) - SwipeRefreshLayout.this.mFrom)) * f))) - SwipeRefreshLayout.this.mCircleView.getTop();
            transformation = SwipeRefreshLayout.this;
            transformation.mCircleView.bringToFront();
            ViewCompat.offsetTopAndBottom(transformation.mCircleView, abs);
            transformation.mCurrentTargetOffsetTop = transformation.mCircleView.getTop();
            SwipeRefreshLayout.this.mProgress.setArrowScale(1.0f - f);
        }
    }

    /* renamed from: android.support.v4.widget.SwipeRefreshLayout$7 */
    class C02047 extends Animation {
        C02047() {
        }

        public final void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.moveToStart(f);
        }
    }

    public interface OnRefreshListener {
        void onRefresh();
    }

    final void reset() {
        this.mCircleView.clearAnimation();
        this.mProgress.stop();
        this.mCircleView.setVisibility(8);
        this.mCircleView.getBackground().setAlpha(255);
        this.mProgress.setAlpha(255);
        int i = this.mOriginalOffsetTop - this.mCurrentTargetOffsetTop;
        this.mCircleView.bringToFront();
        ViewCompat.offsetTopAndBottom(this.mCircleView, i);
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            reset();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        reset();
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRefreshing = false;
        this.mTotalDragDistance = -1.0f;
        this.mParentScrollConsumed = new int[2];
        this.mParentOffsetInWindow = new int[2];
        this.mActivePointerId = -1;
        this.mCircleViewIndex = -1;
        this.mRefreshListener = new C01981();
        this.mAnimateToCorrectPosition = new C02036();
        this.mAnimateToStartPosition = new C02047();
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mMediumAnimationDuration = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.mDecelerateInterpolator = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.mCircleDiameter = (int) (40.0f * displayMetrics.density);
        this.mCircleView = new CircleImageView(getContext());
        this.mProgress = new CircularProgressDrawable(getContext());
        this.mProgress.setStyle$13462e();
        this.mCircleView.setImageDrawable(this.mProgress);
        this.mCircleView.setVisibility(8);
        addView(this.mCircleView);
        setChildrenDrawingOrderEnabled(true);
        this.mSpinnerOffsetEnd = (int) (64.0f * displayMetrics.density);
        this.mTotalDragDistance = (float) this.mSpinnerOffsetEnd;
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        this.mNestedScrollingChildHelper = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i = -this.mCircleDiameter;
        this.mCurrentTargetOffsetTop = i;
        this.mOriginalOffsetTop = i;
        moveToStart(1.0f);
        context = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
        setEnabled(context.getBoolean(0, true));
        context.recycle();
    }

    protected int getChildDrawingOrder(int i, int i2) {
        if (this.mCircleViewIndex < 0) {
            return i2;
        }
        if (i2 == i - 1) {
            return this.mCircleViewIndex;
        }
        return i2 >= this.mCircleViewIndex ? i2 + 1 : i2;
    }

    public final void setOnRefreshListener(OnRefreshListener onRefreshListener) {
        this.mListener = onRefreshListener;
    }

    public final void setRefreshing(boolean z) {
        if (!z || this.mRefreshing == z) {
            setRefreshing(z, false);
            return;
        }
        this.mRefreshing = z;
        z = (this.mSpinnerOffsetEnd + this.mOriginalOffsetTop) - this.mCurrentTargetOffsetTop;
        this.mCircleView.bringToFront();
        ViewCompat.offsetTopAndBottom(this.mCircleView, z);
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
        this.mNotify = false;
        z = this.mRefreshListener;
        this.mCircleView.setVisibility(0);
        this.mProgress.setAlpha(255);
        this.mScaleAnimation = new C01992();
        this.mScaleAnimation.setDuration((long) this.mMediumAnimationDuration);
        if (z) {
            this.mCircleView.setAnimationListener(z);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.mScaleAnimation);
    }

    private void setRefreshing(boolean z, boolean z2) {
        if (this.mRefreshing != z) {
            this.mNotify = z2;
            ensureTarget();
            this.mRefreshing = z;
            if (this.mRefreshing) {
                animateOffsetToCorrectPosition(this.mCurrentTargetOffsetTop, this.mRefreshListener);
                return;
            }
            startScaleDownAnimation(this.mRefreshListener);
        }
    }

    final void startScaleDownAnimation(AnimationListener animationListener) {
        this.mScaleDownAnimation = new C02003();
        this.mScaleDownAnimation.setDuration(150);
        this.mCircleView.setAnimationListener(animationListener);
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.mScaleDownAnimation);
    }

    private Animation startAlphaAnimation(final int i, final int i2) {
        Animation c02014 = new Animation() {
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.mProgress.setAlpha((int) (((float) i) + (((float) (i2 - i)) * f)));
            }
        };
        c02014.setDuration(300);
        this.mCircleView.setAnimationListener(0);
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(c02014);
        return c02014;
    }

    public final void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[1];
        for (int i = 0; i <= 0; i++) {
            iArr2[0] = ContextCompat.getColor(context, iArr[0]);
        }
        ensureTarget();
        this.mProgress.setColorSchemeColors(iArr2);
    }

    private void ensureTarget() {
        if (this.mTarget == null) {
            int i = 0;
            while (i < getChildCount()) {
                View childAt = getChildAt(i);
                if (childAt.equals(this.mCircleView)) {
                    i++;
                } else {
                    this.mTarget = childAt;
                    return;
                }
            }
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        z = getMeasuredWidth();
        i = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.mTarget == 0) {
                ensureTarget();
            }
            if (this.mTarget != 0) {
                i2 = this.mTarget;
                i3 = getPaddingLeft();
                i4 = getPaddingTop();
                i2.layout(i3, i4, ((z - getPaddingLeft()) - getPaddingRight()) + i3, ((i - getPaddingTop()) - getPaddingBottom()) + i4);
                i = this.mCircleView.getMeasuredWidth();
                z /= 2;
                i /= 2;
                this.mCircleView.layout(z - i, this.mCurrentTargetOffsetTop, z + i, this.mCurrentTargetOffsetTop + this.mCircleView.getMeasuredHeight());
            }
        }
    }

    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mTarget == 0) {
            ensureTarget();
        }
        if (this.mTarget != 0) {
            this.mTarget.measure(MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.mCircleView.measure(MeasureSpec.makeMeasureSpec(this.mCircleDiameter, 1073741824), MeasureSpec.makeMeasureSpec(this.mCircleDiameter, 1073741824));
            this.mCircleViewIndex = -1;
            for (i = 0; i < getChildCount(); i++) {
                if (getChildAt(i) == this.mCircleView) {
                    this.mCircleViewIndex = i;
                    return;
                }
            }
        }
    }

    private boolean canChildScrollUp() {
        if (!(this.mTarget instanceof ListView)) {
            return this.mTarget.canScrollVertically(-1);
        }
        ListView listView = (ListView) this.mTarget;
        if (VERSION.SDK_INT >= 19) {
            return listView.canScrollList(-1);
        }
        if (listView.getChildCount() != 0) {
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int top = listView.getChildAt(0).getTop();
            if (firstVisiblePosition > 0 || top < listView.getListPaddingTop()) {
                return true;
            }
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ensureTarget();
        int actionMasked = motionEvent.getActionMasked();
        if (!(!isEnabled() || canChildScrollUp() || this.mRefreshing)) {
            if (!this.mNestedScrollInProgress) {
                if (actionMasked != 6) {
                    switch (actionMasked) {
                        case 0:
                            actionMasked = this.mOriginalOffsetTop - this.mCircleView.getTop();
                            this.mCircleView.bringToFront();
                            ViewCompat.offsetTopAndBottom(this.mCircleView, actionMasked);
                            this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
                            this.mActivePointerId = motionEvent.getPointerId(0);
                            this.mIsBeingDragged = false;
                            actionMasked = motionEvent.findPointerIndex(this.mActivePointerId);
                            if (actionMasked >= 0) {
                                this.mInitialDownY = motionEvent.getY(actionMasked);
                                break;
                            }
                            return false;
                        case 1:
                        case 3:
                            this.mIsBeingDragged = false;
                            this.mActivePointerId = -1;
                            break;
                        case 2:
                            if (this.mActivePointerId != -1) {
                                actionMasked = motionEvent.findPointerIndex(this.mActivePointerId);
                                if (actionMasked >= 0) {
                                    startDragging(motionEvent.getY(actionMasked));
                                    break;
                                }
                                return false;
                            }
                            Log.e(LOG_TAG, "Got ACTION_MOVE event but don't have an active pointer id.");
                            return false;
                        default:
                            break;
                    }
                }
                onSecondaryPointerUp(motionEvent);
                return this.mIsBeingDragged;
            }
        }
        return false;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (VERSION.SDK_INT < 21 && (this.mTarget instanceof AbsListView)) {
            return;
        }
        if (this.mTarget == null || ViewCompat.isNestedScrollingEnabled(this.mTarget)) {
            super.requestDisallowInterceptTouchEvent(z);
        }
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (isEnabled() == null || this.mRefreshing != null || (i & 2) == null) ? null : true;
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.mNestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
        startNestedScroll(i & 2);
        this.mTotalUnconsumed = null;
        this.mNestedScrollInProgress = true;
    }

    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0 && this.mTotalUnconsumed > BitmapDescriptorFactory.HUE_RED) {
            float f = (float) i2;
            if (f > this.mTotalUnconsumed) {
                iArr[1] = i2 - ((int) this.mTotalUnconsumed);
                this.mTotalUnconsumed = BitmapDescriptorFactory.HUE_RED;
            } else {
                this.mTotalUnconsumed -= f;
                iArr[1] = i2;
            }
            moveSpinner(this.mTotalUnconsumed);
        }
        int[] iArr2 = this.mParentScrollConsumed;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null) != 0) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.getNestedScrollAxes();
    }

    public void onStopNestedScroll(View view) {
        this.mNestedScrollingParentHelper.onStopNestedScroll(view);
        this.mNestedScrollInProgress = null;
        if (this.mTotalUnconsumed > null) {
            finishSpinner(this.mTotalUnconsumed);
            this.mTotalUnconsumed = BitmapDescriptorFactory.HUE_RED;
        }
        stopNestedScroll();
    }

    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.mParentOffsetInWindow);
        i4 += this.mParentOffsetInWindow[1];
        if (i4 < 0 && canChildScrollUp() == null) {
            this.mTotalUnconsumed += (float) Math.abs(i4);
            moveSpinner(this.mTotalUnconsumed);
        }
    }

    public void setNestedScrollingEnabled(boolean z) {
        this.mNestedScrollingChildHelper.setNestedScrollingEnabled(z);
    }

    public boolean isNestedScrollingEnabled() {
        return this.mNestedScrollingChildHelper.isNestedScrollingEnabled();
    }

    public boolean startNestedScroll(int i) {
        return this.mNestedScrollingChildHelper.startNestedScroll(i);
    }

    public void stopNestedScroll() {
        this.mNestedScrollingChildHelper.stopNestedScroll();
    }

    public boolean hasNestedScrollingParent() {
        return this.mNestedScrollingChildHelper.hasNestedScrollingParent();
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mNestedScrollingChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mNestedScrollingChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mNestedScrollingChildHelper.dispatchNestedFling(f, f2, z);
    }

    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.mNestedScrollingChildHelper.dispatchNestedPreFling(f, f2);
    }

    private void moveSpinner(float f) {
        boolean z = true;
        this.mProgress.setArrowEnabled(true);
        float min = Math.min(1.0f, Math.abs(f / this.mTotalDragDistance));
        float max = (Math.max((float) (((double) min) - 0.4d), BitmapDescriptorFactory.HUE_RED) * 5.0f) / 3.0f;
        float f2 = (float) this.mSpinnerOffsetEnd;
        double max2 = (double) (Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(Math.abs(f) - this.mTotalDragDistance, f2 * 2.0f) / f2) / 4.0f);
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i = this.mOriginalOffsetTop + ((int) ((f2 * min) + ((f2 * pow) * 2.0f)));
        if (this.mCircleView.getVisibility() != 0) {
            this.mCircleView.setVisibility(0);
        }
        this.mCircleView.setScaleX(1.0f);
        this.mCircleView.setScaleY(1.0f);
        if (f < this.mTotalDragDistance) {
            if (this.mProgress.getAlpha() > 1.06E-43f) {
                f = this.mAlphaStartAnimation;
                if (f == null || !f.hasStarted() || f.hasEnded() != null) {
                    z = false;
                }
                if (!z) {
                    this.mAlphaStartAnimation = startAlphaAnimation(this.mProgress.getAlpha(), 76);
                }
            }
        } else if (this.mProgress.getAlpha() < 3.57E-43f) {
            f = this.mAlphaMaxAnimation;
            if (f == null || !f.hasStarted() || f.hasEnded() != null) {
                z = false;
            }
            if (!z) {
                this.mAlphaMaxAnimation = startAlphaAnimation(this.mProgress.getAlpha(), 255);
            }
        }
        this.mProgress.setStartEndTrim$2548a35(Math.min(0.8f, max * 0.8f));
        this.mProgress.setArrowScale(Math.min(1.0f, max));
        this.mProgress.setProgressRotation(((-0.25f + (0.4f * max)) + (pow * 2.0f)) * 0.5f);
        i -= this.mCurrentTargetOffsetTop;
        this.mCircleView.bringToFront();
        ViewCompat.offsetTopAndBottom(this.mCircleView, i);
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    private void finishSpinner(float f) {
        if (f > this.mTotalDragDistance) {
            setRefreshing(true, true);
            return;
        }
        this.mRefreshing = false;
        this.mProgress.setStartEndTrim$2548a35(BitmapDescriptorFactory.HUE_RED);
        animateOffsetToStartPosition(this.mCurrentTargetOffsetTop, new C02025());
        this.mProgress.setArrowEnabled(false);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (!(!isEnabled() || canChildScrollUp() || this.mRefreshing)) {
            if (!this.mNestedScrollInProgress) {
                switch (actionMasked) {
                    case 0:
                        this.mActivePointerId = motionEvent.getPointerId(0);
                        this.mIsBeingDragged = false;
                        break;
                    case 1:
                        actionMasked = motionEvent.findPointerIndex(this.mActivePointerId);
                        if (actionMasked < 0) {
                            Log.e(LOG_TAG, "Got ACTION_UP event but don't have an active pointer id.");
                            return false;
                        }
                        if (this.mIsBeingDragged) {
                            motionEvent = (motionEvent.getY(actionMasked) - this.mInitialMotionY) * 1056964608;
                            this.mIsBeingDragged = false;
                            finishSpinner(motionEvent);
                        }
                        this.mActivePointerId = -1;
                        return false;
                    case 2:
                        actionMasked = motionEvent.findPointerIndex(this.mActivePointerId);
                        if (actionMasked < 0) {
                            Log.e(LOG_TAG, "Got ACTION_MOVE event but have an invalid active pointer id.");
                            return false;
                        }
                        motionEvent = motionEvent.getY(actionMasked);
                        startDragging(motionEvent);
                        if (this.mIsBeingDragged) {
                            motionEvent = (motionEvent - this.mInitialMotionY) * 1056964608;
                            if (motionEvent > BitmapDescriptorFactory.HUE_RED) {
                                moveSpinner(motionEvent);
                                break;
                            }
                            return false;
                        }
                        break;
                    case 3:
                        return false;
                    case 5:
                        actionMasked = motionEvent.getActionIndex();
                        if (actionMasked >= 0) {
                            this.mActivePointerId = motionEvent.getPointerId(actionMasked);
                            break;
                        }
                        Log.e(LOG_TAG, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                        return false;
                    case 6:
                        onSecondaryPointerUp(motionEvent);
                        break;
                    default:
                        break;
                }
                return true;
            }
        }
        return false;
    }

    private void startDragging(float f) {
        if (f - this.mInitialDownY > ((float) this.mTouchSlop) && this.mIsBeingDragged == null) {
            this.mInitialMotionY = this.mInitialDownY + ((float) this.mTouchSlop);
            this.mIsBeingDragged = true;
            this.mProgress.setAlpha(76);
        }
    }

    private void animateOffsetToCorrectPosition(int i, AnimationListener animationListener) {
        this.mFrom = i;
        this.mAnimateToCorrectPosition.reset();
        this.mAnimateToCorrectPosition.setDuration(200);
        this.mAnimateToCorrectPosition.setInterpolator(this.mDecelerateInterpolator);
        if (animationListener != null) {
            this.mCircleView.setAnimationListener(animationListener);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.mAnimateToCorrectPosition);
    }

    private void animateOffsetToStartPosition(int i, AnimationListener animationListener) {
        this.mFrom = i;
        this.mAnimateToStartPosition.reset();
        this.mAnimateToStartPosition.setDuration(200);
        this.mAnimateToStartPosition.setInterpolator(this.mDecelerateInterpolator);
        this.mCircleView.setAnimationListener(animationListener);
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.mAnimateToStartPosition);
    }

    final void moveToStart(float f) {
        int top = (this.mFrom + ((int) (((float) (this.mOriginalOffsetTop - this.mFrom)) * f))) - this.mCircleView.getTop();
        this.mCircleView.bringToFront();
        ViewCompat.offsetTopAndBottom(this.mCircleView, top);
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            this.mActivePointerId = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }
}
