package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public abstract class AutoScrollHelper implements OnTouchListener {
    private static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
    private int mActivationDelay;
    private boolean mAlreadyDelayed;
    boolean mAnimating;
    private final Interpolator mEdgeInterpolator = new AccelerateInterpolator();
    private int mEdgeType;
    private boolean mEnabled;
    private float[] mMaximumEdges = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] mMaximumVelocity = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] mMinimumVelocity = new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    boolean mNeedsCancel;
    boolean mNeedsReset;
    private float[] mRelativeEdges = new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private float[] mRelativeVelocity = new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    private Runnable mRunnable;
    final ClampedScroller mScroller = new ClampedScroller();
    final View mTarget;

    static class ClampedScroller {
        private long mDeltaTime = 0;
        private int mDeltaX = 0;
        private int mDeltaY = 0;
        private int mEffectiveRampDown;
        private int mRampDownDuration;
        private int mRampUpDuration;
        private long mStartTime = Long.MIN_VALUE;
        private long mStopTime = -1;
        private float mStopValue;
        private float mTargetVelocityX;
        private float mTargetVelocityY;

        ClampedScroller() {
        }

        public final void setRampUpDuration$13462e() {
            this.mRampUpDuration = 500;
        }

        public final void setRampDownDuration$13462e() {
            this.mRampDownDuration = 500;
        }

        public final void start() {
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mStopTime = -1;
            this.mDeltaTime = this.mStartTime;
            this.mStopValue = 0.5f;
            this.mDeltaX = 0;
            this.mDeltaY = 0;
        }

        public final void requestStop() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mEffectiveRampDown = AutoScrollHelper.constrain$4868d301((int) (currentAnimationTimeMillis - this.mStartTime), this.mRampDownDuration);
            this.mStopValue = getValueAt(currentAnimationTimeMillis);
            this.mStopTime = currentAnimationTimeMillis;
        }

        public final boolean isFinished() {
            return this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + ((long) this.mEffectiveRampDown);
        }

        private float getValueAt(long j) {
            if (j < this.mStartTime) {
                return 0;
            }
            if (this.mStopTime >= 0) {
                if (j >= this.mStopTime) {
                    return (1065353216 - this.mStopValue) + (this.mStopValue * AutoScrollHelper.constrain$483d241b(((float) (j - this.mStopTime)) / ((float) this.mEffectiveRampDown)));
                }
            }
            return 1056964608 * AutoScrollHelper.constrain$483d241b(((float) (j - this.mStartTime)) / ((float) this.mRampUpDuration));
        }

        public final void computeScrollDelta() {
            if (this.mDeltaTime == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float valueAt = getValueAt(currentAnimationTimeMillis);
            float f = ((-4.0f * valueAt) * valueAt) + (4.0f * valueAt);
            long j = currentAnimationTimeMillis - this.mDeltaTime;
            this.mDeltaTime = currentAnimationTimeMillis;
            float f2 = ((float) j) * f;
            this.mDeltaX = (int) (this.mTargetVelocityX * f2);
            this.mDeltaY = (int) (f2 * this.mTargetVelocityY);
        }

        public final void setTargetVelocity(float f, float f2) {
            this.mTargetVelocityX = f;
            this.mTargetVelocityY = f2;
        }

        public final int getHorizontalDirection() {
            return (int) (this.mTargetVelocityX / Math.abs(this.mTargetVelocityX));
        }

        public final int getVerticalDirection() {
            return (int) (this.mTargetVelocityY / Math.abs(this.mTargetVelocityY));
        }

        public final int getDeltaY() {
            return this.mDeltaY;
        }
    }

    class ScrollAnimationRunnable implements Runnable {
        ScrollAnimationRunnable() {
        }

        public final void run() {
            if (AutoScrollHelper.this.mAnimating) {
                if (AutoScrollHelper.this.mNeedsReset) {
                    AutoScrollHelper.this.mNeedsReset = false;
                    AutoScrollHelper.this.mScroller.start();
                }
                ClampedScroller clampedScroller = AutoScrollHelper.this.mScroller;
                if (!clampedScroller.isFinished()) {
                    if (AutoScrollHelper.this.shouldAnimate()) {
                        if (AutoScrollHelper.this.mNeedsCancel) {
                            AutoScrollHelper.this.mNeedsCancel = false;
                            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
                            long uptimeMillis = SystemClock.uptimeMillis();
                            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                            autoScrollHelper.mTarget.onTouchEvent(obtain);
                            obtain.recycle();
                        }
                        clampedScroller.computeScrollDelta();
                        AutoScrollHelper.this.scrollTargetBy$255f295(clampedScroller.getDeltaY());
                        ViewCompat.postOnAnimation(AutoScrollHelper.this.mTarget, this);
                        return;
                    }
                }
                AutoScrollHelper.this.mAnimating = false;
            }
        }
    }

    static float constrain$483d241b(float f) {
        return f > 1.0f ? 1.0f : f < BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : f;
    }

    static int constrain$4868d301(int i, int i2) {
        return i > i2 ? i2 : i < 0 ? 0 : i;
    }

    public abstract boolean canTargetScrollVertically(int i);

    public abstract void scrollTargetBy$255f295(int i);

    public AutoScrollHelper(View view) {
        this.mTarget = view;
        view = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((1575.0f * view.density) + 0.5f);
        view = (int) ((315.0f * view.density) + 0.5f);
        float f = ((float) i) / 1000.0f;
        this.mMaximumVelocity[0] = f;
        this.mMaximumVelocity[1] = f;
        view = ((float) view) / 1148846080;
        this.mMinimumVelocity[0] = view;
        this.mMinimumVelocity[1] = view;
        this.mEdgeType = 1;
        this.mMaximumEdges[0] = 2139095039;
        this.mMaximumEdges[1] = 2139095039;
        this.mRelativeEdges[0] = 1045220557;
        this.mRelativeEdges[1] = 1045220557;
        this.mRelativeVelocity[0] = 981668463;
        this.mRelativeVelocity[1] = 981668463;
        this.mActivationDelay = DEFAULT_ACTIVATION_DELAY;
        this.mScroller.setRampUpDuration$13462e();
        this.mScroller.setRampDownDuration$13462e();
    }

    public final AutoScrollHelper setEnabled(boolean z) {
        if (this.mEnabled && !z) {
            if (this.mNeedsReset) {
                this.mAnimating = false;
            } else {
                this.mScroller.requestStop();
            }
        }
        this.mEnabled = z;
        return this;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.mEnabled) {
            return false;
        }
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.mNeedsCancel = true;
                this.mAlreadyDelayed = false;
                break;
            case 1:
            case 3:
                if (this.mNeedsReset == null) {
                    this.mScroller.requestStop();
                    break;
                }
                this.mAnimating = false;
                break;
            case 2:
                break;
            default:
                break;
        }
        this.mScroller.setTargetVelocity(computeTargetVelocity(0, motionEvent.getX(), (float) view.getWidth(), (float) this.mTarget.getWidth()), computeTargetVelocity(1, motionEvent.getY(), (float) view.getHeight(), (float) this.mTarget.getHeight()));
        if (this.mAnimating == null && shouldAnimate() != null) {
            if (this.mRunnable == null) {
                this.mRunnable = new ScrollAnimationRunnable();
            }
            this.mAnimating = true;
            this.mNeedsReset = true;
            if (this.mAlreadyDelayed != null || this.mActivationDelay <= null) {
                this.mRunnable.run();
            } else {
                ViewCompat.postOnAnimationDelayed(this.mTarget, this.mRunnable, (long) this.mActivationDelay);
            }
            this.mAlreadyDelayed = true;
        }
        return false;
    }

    final boolean shouldAnimate() {
        ClampedScroller clampedScroller = this.mScroller;
        int verticalDirection = clampedScroller.getVerticalDirection();
        int horizontalDirection = clampedScroller.getHorizontalDirection();
        if (verticalDirection != 0) {
            if (canTargetScrollVertically(verticalDirection)) {
                return true;
            }
        }
        return false;
    }

    private float computeTargetVelocity(int i, float f, float f2, float f3) {
        f = getEdgeValue(this.mRelativeEdges[i], f2, this.mMaximumEdges[i], f);
        if (f == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = this.mRelativeVelocity[i];
        int i2 = this.mMinimumVelocity[i];
        i = this.mMaximumVelocity[i];
        f4 *= f3;
        if (f > BitmapDescriptorFactory.HUE_RED) {
            f *= f4;
            if (f > i) {
                return i;
            }
            return f < i2 ? i2 : f;
        } else {
            int i3 = (-f) * f4;
            if (i3 <= i) {
                i = i3 < i2 ? i2 : i3;
            }
            return -i;
        }
    }

    private float getEdgeValue(float f, float f2, float f3, float f4) {
        f *= f2;
        if (f > f3) {
            f = f3;
        } else if (f < BitmapDescriptorFactory.HUE_RED) {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        f = constrainEdgeValue(f2 - f4, f) - constrainEdgeValue(f4, f);
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f = -this.mEdgeInterpolator.getInterpolation(-f);
        } else if (f <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        } else {
            f = this.mEdgeInterpolator.getInterpolation(f);
        }
        if (f > 1.0f) {
            return 1.0f;
        }
        return f < -1.0f ? -1.0f : f;
    }

    private float constrainEdgeValue(float f, float f2) {
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        switch (this.mEdgeType) {
            case 0:
            case 1:
                if (f < f2) {
                    if (f >= BitmapDescriptorFactory.HUE_RED) {
                        return 1.0f - (f / f2);
                    }
                    return (this.mAnimating == null || this.mEdgeType != Float.MIN_VALUE) ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                }
                break;
            case 2:
                if (f < BitmapDescriptorFactory.HUE_RED) {
                    return f / (-f2);
                }
                break;
            default:
                break;
        }
    }
}
