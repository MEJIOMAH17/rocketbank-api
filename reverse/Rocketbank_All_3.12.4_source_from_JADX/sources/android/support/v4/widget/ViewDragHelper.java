package android.support.v4.widget;

import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;

public final class ViewDragHelper {
    private static final Interpolator sInterpolator = new C02051();
    private int mActivePointerId = -1;
    private final Callback mCallback;
    private View mCapturedView;
    private int mDragState;
    private int[] mEdgeDragsInProgress;
    private int[] mEdgeDragsLocked;
    private int mEdgeSize;
    private int[] mInitialEdgesTouched;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private float mMaxVelocity;
    private float mMinVelocity;
    private final ViewGroup mParentView;
    private int mPointersDown;
    private boolean mReleaseInProgress;
    private OverScroller mScroller;
    private final Runnable mSetIdleRunnable = new C02062();
    private int mTouchSlop;
    private int mTrackingEdges;
    private VelocityTracker mVelocityTracker;

    /* renamed from: android.support.v4.widget.ViewDragHelper$1 */
    static class C02051 implements Interpolator {
        public final float getInterpolation(float f) {
            f -= 1.0f;
            return ((((f * f) * f) * f) * f) + 1.0f;
        }

        C02051() {
        }
    }

    /* renamed from: android.support.v4.widget.ViewDragHelper$2 */
    class C02062 implements Runnable {
        C02062() {
        }

        public final void run() {
            ViewDragHelper.this.setDragState(0);
        }
    }

    public static abstract class Callback {
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return 0;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public void onViewCaptured(View view, int i) {
        }

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        }

        public void onViewReleased(View view, float f, float f2) {
        }

        public abstract boolean tryCaptureView(View view, int i);
    }

    public static ViewDragHelper create(ViewGroup viewGroup, Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    private ViewDragHelper(Context context, ViewGroup viewGroup, Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (callback == null) {
            throw new IllegalArgumentException("Callback may not be null");
        } else {
            this.mParentView = viewGroup;
            this.mCallback = callback;
            viewGroup = ViewConfiguration.get(context);
            this.mEdgeSize = (int) ((20.0f * context.getResources().getDisplayMetrics().density) + 0.5f);
            this.mTouchSlop = viewGroup.getScaledTouchSlop();
            this.mMaxVelocity = (float) viewGroup.getScaledMaximumFlingVelocity();
            this.mMinVelocity = (float) viewGroup.getScaledMinimumFlingVelocity();
            this.mScroller = new OverScroller(context, sInterpolator);
        }
    }

    public final void setMinVelocity(float f) {
        this.mMinVelocity = f;
    }

    public final int getViewDragState() {
        return this.mDragState;
    }

    public final void setEdgeTrackingEnabled(int i) {
        this.mTrackingEdges = i;
    }

    public final int getEdgeSize() {
        return this.mEdgeSize;
    }

    public final void captureChildView(View view, int i) {
        if (view.getParent() != this.mParentView) {
            i = new StringBuilder("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
            i.append(this.mParentView);
            i.append(")");
            throw new IllegalArgumentException(i.toString());
        }
        this.mCapturedView = view;
        this.mActivePointerId = i;
        this.mCallback.onViewCaptured(view, i);
        setDragState(1);
    }

    public final View getCapturedView() {
        return this.mCapturedView;
    }

    public final int getTouchSlop() {
        return this.mTouchSlop;
    }

    public final void cancel() {
        this.mActivePointerId = -1;
        if (this.mInitialMotionX != null) {
            Arrays.fill(this.mInitialMotionX, BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.mInitialMotionY, BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.mLastMotionX, BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.mLastMotionY, BitmapDescriptorFactory.HUE_RED);
            Arrays.fill(this.mInitialEdgesTouched, 0);
            Arrays.fill(this.mEdgeDragsInProgress, 0);
            Arrays.fill(this.mEdgeDragsLocked, 0);
            this.mPointersDown = 0;
        }
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public final void abort() {
        cancel();
        if (this.mDragState == 2) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int currX2 = this.mScroller.getCurrX();
            int currY2 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        setDragState(0);
    }

    public final boolean smoothSlideViewTo(View view, int i, int i2) {
        this.mCapturedView = view;
        this.mActivePointerId = -1;
        view = forceSettleCapturedViewAt(i, i2, 0, 0);
        if (view == null && this.mDragState == 0 && this.mCapturedView != 0) {
            this.mCapturedView = 0;
        }
        return view;
    }

    public final boolean settleCapturedViewAt(int i, int i2) {
        if (this.mReleaseInProgress) {
            return forceSettleCapturedViewAt(i, i2, (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    private boolean forceSettleCapturedViewAt(int i, int i2, int i3, int i4) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        i -= left;
        i2 -= top;
        if (i == 0 && i2 == 0) {
            this.mScroller.abortAnimation();
            setDragState(0);
            return false;
        }
        this.mScroller.startScroll(left, top, i, i2, computeSettleDuration(this.mCapturedView, i, i2, i3, i4));
        setDragState(2);
        return true;
    }

    private int computeSettleDuration(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        int i5 = (int) this.mMinVelocity;
        int i6 = (int) this.mMaxVelocity;
        int abs = Math.abs(i3);
        if (abs < i5) {
            i3 = 0;
        } else if (abs > i6) {
            i3 = i3 > 0 ? i6 : -i6;
        }
        i5 = (int) this.mMinVelocity;
        i6 = (int) this.mMaxVelocity;
        abs = Math.abs(i4);
        if (abs < i5) {
            i4 = 0;
        } else if (abs > i6) {
            i4 = i4 > 0 ? i6 : -i6;
        }
        i5 = Math.abs(i);
        i6 = Math.abs(i2);
        abs = Math.abs(i3);
        int abs2 = Math.abs(i4);
        int i7 = abs + abs2;
        int i8 = i5 + i6;
        if (i3 != 0) {
            f = (float) abs;
            f2 = (float) i7;
        } else {
            f = (float) i5;
            f2 = (float) i8;
        }
        f /= f2;
        if (i4 != 0) {
            f3 = (float) abs2;
            f2 = (float) i7;
        } else {
            f3 = (float) i6;
            f2 = (float) i8;
        }
        return (int) ((((float) computeAxisDuration(i, i3, this.mCallback.getViewHorizontalDragRange(view))) * f) + (((float) computeAxisDuration(i2, i4, this.mCallback.getViewVerticalDragRange(view))) * (f3 / f2)));
    }

    private int computeAxisDuration(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.mParentView.getWidth();
        float f = (float) (width / 2);
        f += ((float) Math.sin((double) ((Math.min(1.0f, ((float) Math.abs(i)) / ((float) width)) - 0.5f) * 0.47123894f))) * f;
        i2 = Math.abs(i2);
        if (i2 > 0) {
            i = 4 * Math.round(1148846080 * Math.abs(f / ((float) i2)));
        } else {
            i = (int) (((((float) Math.abs(i)) / ((float) i3)) + 1065353216) * 1132462080);
        }
        return Math.min(i, 600);
    }

    public final boolean continueSettling$138603() {
        if (this.mDragState == 2) {
            boolean computeScrollOffset = this.mScroller.computeScrollOffset();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            int left = currX - this.mCapturedView.getLeft();
            int top = currY - this.mCapturedView.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.mCapturedView, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.mCapturedView, top);
            }
            if (!(left == 0 && top == 0)) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.mScroller.getFinalX() && currY == this.mScroller.getFinalY()) {
                this.mScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                this.mParentView.post(this.mSetIdleRunnable);
            }
        }
        if (this.mDragState == 2) {
            return true;
        }
        return false;
    }

    private void dispatchViewReleased(float f, float f2) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, f, f2);
        this.mReleaseInProgress = false;
        if (this.mDragState == Float.MIN_VALUE) {
            setDragState(0);
        }
    }

    private void clearMotionHistory(int i) {
        if (this.mInitialMotionX != null) {
            int i2 = 1;
            int i3 = 1 << i;
            if ((this.mPointersDown & i3) == 0) {
                i2 = 0;
            }
            if (i2 != 0) {
                this.mInitialMotionX[i] = BitmapDescriptorFactory.HUE_RED;
                this.mInitialMotionY[i] = BitmapDescriptorFactory.HUE_RED;
                this.mLastMotionX[i] = BitmapDescriptorFactory.HUE_RED;
                this.mLastMotionY[i] = BitmapDescriptorFactory.HUE_RED;
                this.mInitialEdgesTouched[i] = 0;
                this.mEdgeDragsInProgress[i] = 0;
                this.mEdgeDragsLocked[i] = 0;
                this.mPointersDown &= i3 ^ -1;
            }
        }
    }

    private void saveLastMotion(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (isValidPointerForActionMove(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.mLastMotionX[pointerId] = x;
                this.mLastMotionY[pointerId] = y;
            }
        }
    }

    final void setDragState(int i) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != i) {
            this.mDragState = i;
            this.mCallback.onViewDragStateChanged(i);
            if (this.mDragState == 0) {
                this.mCapturedView = 0;
            }
        }
    }

    private boolean tryCaptureViewForDrag(View view, int i) {
        if (view == this.mCapturedView && this.mActivePointerId == i) {
            return true;
        }
        if (view == null || !this.mCallback.tryCaptureView(view, i)) {
            return null;
        }
        this.mActivePointerId = i;
        captureChildView(view, i);
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean shouldInterceptTouchEvent(android.view.MotionEvent r18) {
        /*
        r17 = this;
        r0 = r17;
        r1 = r18;
        r2 = r18.getActionMasked();
        r3 = r18.getActionIndex();
        if (r2 != 0) goto L_0x0011;
    L_0x000e:
        r17.cancel();
    L_0x0011:
        r4 = r0.mVelocityTracker;
        if (r4 != 0) goto L_0x001b;
    L_0x0015:
        r4 = android.view.VelocityTracker.obtain();
        r0.mVelocityTracker = r4;
    L_0x001b:
        r4 = r0.mVelocityTracker;
        r4.addMovement(r1);
        r4 = 2;
        r6 = 1;
        switch(r2) {
            case 0: goto L_0x00f5;
            case 1: goto L_0x00f1;
            case 2: goto L_0x0069;
            case 3: goto L_0x00f1;
            case 4: goto L_0x0025;
            case 5: goto L_0x0030;
            case 6: goto L_0x0027;
            default: goto L_0x0025;
        };
    L_0x0025:
        goto L_0x0127;
    L_0x0027:
        r1 = r1.getPointerId(r3);
        r0.clearMotionHistory(r1);
        goto L_0x0127;
    L_0x0030:
        r2 = r1.getPointerId(r3);
        r7 = r1.getX(r3);
        r1 = r1.getY(r3);
        r0.saveInitialMotion(r7, r1, r2);
        r3 = r0.mDragState;
        if (r3 != 0) goto L_0x0056;
    L_0x0043:
        r1 = r0.mInitialEdgesTouched;
        r1 = r1[r2];
        r3 = r0.mTrackingEdges;
        r3 = r3 & r1;
        if (r3 == 0) goto L_0x0127;
    L_0x004c:
        r3 = r0.mCallback;
        r4 = r0.mTrackingEdges;
        r1 = r1 & r4;
        r3.onEdgeTouched(r1, r2);
        goto L_0x0127;
    L_0x0056:
        r3 = r0.mDragState;
        if (r3 != r4) goto L_0x0127;
    L_0x005a:
        r3 = (int) r7;
        r1 = (int) r1;
        r1 = r0.findTopChildUnder(r3, r1);
        r3 = r0.mCapturedView;
        if (r1 != r3) goto L_0x0127;
    L_0x0064:
        r0.tryCaptureViewForDrag(r1, r2);
        goto L_0x0127;
    L_0x0069:
        r2 = r0.mInitialMotionX;
        if (r2 == 0) goto L_0x0127;
    L_0x006d:
        r2 = r0.mInitialMotionY;
        if (r2 == 0) goto L_0x0127;
    L_0x0071:
        r2 = r18.getPointerCount();
        r3 = 0;
    L_0x0076:
        if (r3 >= r2) goto L_0x00ed;
    L_0x0078:
        r4 = r1.getPointerId(r3);
        r7 = r0.isValidPointerForActionMove(r4);
        if (r7 == 0) goto L_0x00ea;
    L_0x0082:
        r7 = r1.getX(r3);
        r8 = r1.getY(r3);
        r9 = r0.mInitialMotionX;
        r9 = r9[r4];
        r9 = r7 - r9;
        r10 = r0.mInitialMotionY;
        r10 = r10[r4];
        r10 = r8 - r10;
        r7 = (int) r7;
        r8 = (int) r8;
        r7 = r0.findTopChildUnder(r7, r8);
        if (r7 == 0) goto L_0x00a6;
    L_0x009e:
        r8 = r0.checkTouchSlop(r7, r9, r10);
        if (r8 == 0) goto L_0x00a6;
    L_0x00a4:
        r8 = r6;
        goto L_0x00a7;
    L_0x00a6:
        r8 = 0;
    L_0x00a7:
        if (r8 == 0) goto L_0x00db;
    L_0x00a9:
        r11 = r7.getLeft();
        r12 = (int) r9;
        r13 = r11 + r12;
        r14 = r0.mCallback;
        r12 = r14.clampViewPositionHorizontal(r7, r13, r12);
        r13 = r7.getTop();
        r14 = (int) r10;
        r15 = r13 + r14;
        r5 = r0.mCallback;
        r5 = r5.clampViewPositionVertical(r7, r15, r14);
        r14 = r0.mCallback;
        r14 = r14.getViewHorizontalDragRange(r7);
        r15 = r0.mCallback;
        r15 = r15.getViewVerticalDragRange(r7);
        if (r14 == 0) goto L_0x00d5;
    L_0x00d1:
        if (r14 <= 0) goto L_0x00db;
    L_0x00d3:
        if (r12 != r11) goto L_0x00db;
    L_0x00d5:
        if (r15 == 0) goto L_0x00ed;
    L_0x00d7:
        if (r15 <= 0) goto L_0x00db;
    L_0x00d9:
        if (r5 == r13) goto L_0x00ed;
    L_0x00db:
        r0.reportNewEdgeDrags(r9, r10, r4);
        r5 = r0.mDragState;
        if (r5 == r6) goto L_0x00ed;
    L_0x00e2:
        if (r8 == 0) goto L_0x00ea;
    L_0x00e4:
        r4 = r0.tryCaptureViewForDrag(r7, r4);
        if (r4 != 0) goto L_0x00ed;
    L_0x00ea:
        r3 = r3 + 1;
        goto L_0x0076;
    L_0x00ed:
        r17.saveLastMotion(r18);
        goto L_0x0127;
    L_0x00f1:
        r17.cancel();
        goto L_0x0127;
    L_0x00f5:
        r2 = r18.getX();
        r3 = r18.getY();
        r5 = 0;
        r1 = r1.getPointerId(r5);
        r0.saveInitialMotion(r2, r3, r1);
        r2 = (int) r2;
        r3 = (int) r3;
        r2 = r0.findTopChildUnder(r2, r3);
        r3 = r0.mCapturedView;
        if (r2 != r3) goto L_0x0116;
    L_0x010f:
        r3 = r0.mDragState;
        if (r3 != r4) goto L_0x0116;
    L_0x0113:
        r0.tryCaptureViewForDrag(r2, r1);
    L_0x0116:
        r2 = r0.mInitialEdgesTouched;
        r2 = r2[r1];
        r3 = r0.mTrackingEdges;
        r3 = r3 & r2;
        if (r3 == 0) goto L_0x0127;
    L_0x011f:
        r3 = r0.mCallback;
        r4 = r0.mTrackingEdges;
        r2 = r2 & r4;
        r3.onEdgeTouched(r2, r1);
    L_0x0127:
        r1 = r0.mDragState;
        if (r1 != r6) goto L_0x012c;
    L_0x012b:
        return r6;
    L_0x012c:
        r1 = 0;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void processTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i = 0;
        float y;
        int left;
        switch (actionMasked) {
            case 0:
                float x = motionEvent.getX();
                y = motionEvent.getY();
                motionEvent = motionEvent.getPointerId(0);
                View findTopChildUnder = findTopChildUnder((int) x, (int) y);
                saveInitialMotion(x, y, motionEvent);
                tryCaptureViewForDrag(findTopChildUnder, motionEvent);
                actionMasked = this.mInitialEdgesTouched[motionEvent];
                if ((this.mTrackingEdges & actionMasked) != 0) {
                    this.mCallback.onEdgeTouched(actionMasked & this.mTrackingEdges, motionEvent);
                    return;
                }
                break;
            case 1:
                if (this.mDragState == 1) {
                    releaseViewForPointerUp();
                }
                cancel();
                return;
            case 2:
                if (this.mDragState != 1) {
                    actionMasked = motionEvent.getPointerCount();
                    while (i < actionMasked) {
                        actionIndex = motionEvent.getPointerId(i);
                        if (isValidPointerForActionMove(actionIndex)) {
                            float x2 = motionEvent.getX(i);
                            float y2 = motionEvent.getY(i);
                            float f = x2 - this.mInitialMotionX[actionIndex];
                            float f2 = y2 - this.mInitialMotionY[actionIndex];
                            reportNewEdgeDrags(f, f2, actionIndex);
                            if (this.mDragState != 1) {
                                View findTopChildUnder2 = findTopChildUnder((int) x2, (int) y2);
                                if (checkTouchSlop(findTopChildUnder2, f, f2) && tryCaptureViewForDrag(findTopChildUnder2, actionIndex)) {
                                }
                            }
                            saveLastMotion(motionEvent);
                            return;
                        }
                        i++;
                    }
                    saveLastMotion(motionEvent);
                    return;
                } else if (isValidPointerForActionMove(this.mActivePointerId)) {
                    actionMasked = motionEvent.findPointerIndex(this.mActivePointerId);
                    y = motionEvent.getX(actionMasked);
                    actionIndex = (int) (y - this.mLastMotionX[this.mActivePointerId]);
                    actionMasked = (int) (motionEvent.getY(actionMasked) - this.mLastMotionY[this.mActivePointerId]);
                    i = this.mCapturedView.getLeft() + actionIndex;
                    int top = this.mCapturedView.getTop() + actionMasked;
                    left = this.mCapturedView.getLeft();
                    int top2 = this.mCapturedView.getTop();
                    if (actionIndex != 0) {
                        i = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, i, actionIndex);
                        ViewCompat.offsetLeftAndRight(this.mCapturedView, i - left);
                    }
                    int i2 = i;
                    if (actionMasked != 0) {
                        top = this.mCallback.clampViewPositionVertical(this.mCapturedView, top, actionMasked);
                        ViewCompat.offsetTopAndBottom(this.mCapturedView, top - top2);
                    }
                    int i3 = top;
                    if (!(actionIndex == 0 && actionMasked == 0)) {
                        this.mCallback.onViewPositionChanged(this.mCapturedView, i2, i3, i2 - left, i3 - top2);
                    }
                    saveLastMotion(motionEvent);
                    return;
                }
                break;
            case 3:
                if (this.mDragState == 1) {
                    dispatchViewReleased(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
                cancel();
                break;
            case 5:
                actionMasked = motionEvent.getPointerId(actionIndex);
                float x3 = motionEvent.getX(actionIndex);
                motionEvent = motionEvent.getY(actionIndex);
                saveInitialMotion(x3, motionEvent, actionMasked);
                if (this.mDragState == 0) {
                    tryCaptureViewForDrag(findTopChildUnder((int) x3, (int) motionEvent), actionMasked);
                    motionEvent = this.mInitialEdgesTouched[actionMasked];
                    if ((this.mTrackingEdges & motionEvent) != 0) {
                        this.mCallback.onEdgeTouched(motionEvent & this.mTrackingEdges, actionMasked);
                    }
                    return;
                }
                if (isViewUnder(this.mCapturedView, (int) x3, (int) motionEvent) != null) {
                    tryCaptureViewForDrag(this.mCapturedView, actionMasked);
                    return;
                }
                break;
            case 6:
                actionMasked = motionEvent.getPointerId(actionIndex);
                if (this.mDragState == 1 && actionMasked == this.mActivePointerId) {
                    actionIndex = motionEvent.getPointerCount();
                    while (i < actionIndex) {
                        left = motionEvent.getPointerId(i);
                        if (left != this.mActivePointerId) {
                            if (findTopChildUnder((int) motionEvent.getX(i), (int) motionEvent.getY(i)) == this.mCapturedView && tryCaptureViewForDrag(this.mCapturedView, left)) {
                                motionEvent = this.mActivePointerId;
                                if (motionEvent == -1) {
                                    releaseViewForPointerUp();
                                }
                            }
                        }
                        i++;
                    }
                    motionEvent = -1;
                    if (motionEvent == -1) {
                        releaseViewForPointerUp();
                    }
                }
                clearMotionHistory(actionMasked);
                return;
            default:
                break;
        }
    }

    private void reportNewEdgeDrags(float f, float f2, int i) {
        int checkNewEdgeDrag = checkNewEdgeDrag(f, f2, i, 1);
        if (checkNewEdgeDrag(f2, f, i, 4)) {
            checkNewEdgeDrag |= 4;
        }
        if (checkNewEdgeDrag(f, f2, i, 2)) {
            checkNewEdgeDrag |= 2;
        }
        if (checkNewEdgeDrag(f2, f, i, 8) != null) {
            checkNewEdgeDrag |= 8;
        }
        if (checkNewEdgeDrag != 0) {
            f = this.mEdgeDragsInProgress;
            f[i] = f[i] | checkNewEdgeDrag;
            this.mCallback.onEdgeDragStarted(checkNewEdgeDrag, i);
        }
    }

    private boolean checkNewEdgeDrag(float f, float f2, int i, int i2) {
        f = Math.abs(f);
        f2 = Math.abs(f2);
        if (!((this.mInitialEdgesTouched[i] & i2) != i2 || (this.mTrackingEdges & i2) == 0 || (this.mEdgeDragsLocked[i] & i2) == i2 || (this.mEdgeDragsInProgress[i] & i2) == i2)) {
            if (f > ((float) this.mTouchSlop) || f2 > ((float) this.mTouchSlop)) {
                if (f < f2 * 0.5f && this.mCallback.onEdgeLock(i2) != null) {
                    f = this.mEdgeDragsLocked;
                    f[i] = f[i] | i2;
                    return false;
                } else if ((this.mEdgeDragsInProgress[i] & i2) != null || f <= ((float) this.mTouchSlop)) {
                    return false;
                } else {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean checkTouchSlop(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.mCallback.getViewHorizontalDragRange(view) > 0;
        view = this.mCallback.getViewVerticalDragRange(view) > null ? 1 : null;
        return (!z || view == null) ? z ? Math.abs(f) > ((float) this.mTouchSlop) : view != null && Math.abs(f2) > ((float) this.mTouchSlop) : (f * f) + (f2 * f2) > ((float) (this.mTouchSlop * this.mTouchSlop));
    }

    public final boolean checkTouchSlop$134632() {
        int length = this.mInitialMotionX.length;
        for (int i = 0; i < length; i++) {
            boolean z;
            if ((this.mPointersDown & (1 << i)) != 0) {
                float f = this.mLastMotionX[i] - this.mInitialMotionX[i];
                float f2 = this.mLastMotionY[i] - this.mInitialMotionY[i];
                if ((f * f) + (f2 * f2) > ((float) (this.mTouchSlop * this.mTouchSlop))) {
                    z = true;
                    if (z) {
                        return true;
                    }
                }
            }
            z = false;
            if (z) {
                return true;
            }
        }
        return false;
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
        float f = this.mMinVelocity;
        float f2 = this.mMaxVelocity;
        float abs = Math.abs(xVelocity);
        int i = (abs > f ? 1 : (abs == f ? 0 : -1));
        float f3 = BitmapDescriptorFactory.HUE_RED;
        if (i < 0) {
            xVelocity = BitmapDescriptorFactory.HUE_RED;
        } else if (abs > f2) {
            xVelocity = xVelocity > BitmapDescriptorFactory.HUE_RED ? f2 : -f2;
        }
        f = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
        f2 = this.mMinVelocity;
        abs = this.mMaxVelocity;
        float abs2 = Math.abs(f);
        if (abs2 >= f2) {
            f3 = abs2 > abs ? f > BitmapDescriptorFactory.HUE_RED ? abs : -abs : f;
        }
        dispatchViewReleased(xVelocity, f3);
    }

    public static boolean isViewUnder(View view, int i, int i2) {
        if (view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom()) {
            return true;
        }
        return false;
    }

    public final View findTopChildUnder(int i, int i2) {
        for (int childCount = this.mParentView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return 0;
    }

    public static ViewDragHelper create(ViewGroup viewGroup, float f, Callback callback) {
        ViewDragHelper viewDragHelper = new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
        viewDragHelper.mTouchSlop = (int) (((float) viewDragHelper.mTouchSlop) * (1065353216 / f));
        return viewDragHelper;
    }

    private void saveInitialMotion(float f, float f2, int i) {
        int i2 = 0;
        if (this.mInitialMotionX == null || this.mInitialMotionX.length <= i) {
            int i3 = i + 1;
            Object obj = new float[i3];
            Object obj2 = new float[i3];
            Object obj3 = new float[i3];
            Object obj4 = new float[i3];
            Object obj5 = new int[i3];
            Object obj6 = new int[i3];
            Object obj7 = new int[i3];
            if (this.mInitialMotionX != null) {
                System.arraycopy(this.mInitialMotionX, 0, obj, 0, this.mInitialMotionX.length);
                System.arraycopy(this.mInitialMotionY, 0, obj2, 0, this.mInitialMotionY.length);
                System.arraycopy(this.mLastMotionX, 0, obj3, 0, this.mLastMotionX.length);
                System.arraycopy(this.mLastMotionY, 0, obj4, 0, this.mLastMotionY.length);
                System.arraycopy(this.mInitialEdgesTouched, 0, obj5, 0, this.mInitialEdgesTouched.length);
                System.arraycopy(this.mEdgeDragsInProgress, 0, obj6, 0, this.mEdgeDragsInProgress.length);
                System.arraycopy(this.mEdgeDragsLocked, 0, obj7, 0, this.mEdgeDragsLocked.length);
            }
            this.mInitialMotionX = obj;
            this.mInitialMotionY = obj2;
            this.mLastMotionX = obj3;
            this.mLastMotionY = obj4;
            this.mInitialEdgesTouched = obj5;
            this.mEdgeDragsInProgress = obj6;
            this.mEdgeDragsLocked = obj7;
        }
        float[] fArr = this.mInitialMotionX;
        this.mLastMotionX[i] = f;
        fArr[i] = f;
        fArr = this.mInitialMotionY;
        this.mLastMotionY[i] = f2;
        fArr[i] = f2;
        int[] iArr = this.mInitialEdgesTouched;
        int i4 = (int) f;
        int i5 = (int) f2;
        if (i4 < this.mParentView.getLeft() + this.mEdgeSize) {
            i2 = 1;
        }
        if (i5 < this.mParentView.getTop() + this.mEdgeSize) {
            i2 |= 4;
        }
        if (i4 > this.mParentView.getRight() - this.mEdgeSize) {
            i2 |= 2;
        }
        if (i5 > this.mParentView.getBottom() - this.mEdgeSize) {
            i2 |= 8;
        }
        iArr[i] = i2;
        this.mPointersDown |= Float.MIN_VALUE << i;
    }

    private boolean isValidPointerForActionMove(int i) {
        if ((this.mPointersDown & (1 << i)) != 0) {
            return true;
        }
        StringBuilder stringBuilder = new StringBuilder("Ignoring pointerId=");
        stringBuilder.append(i);
        stringBuilder.append(" because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        Log.e("ViewDragHelper", stringBuilder.toString());
        return false;
    }
}
