package ru.rocketbank.r2d2.shop.details;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.r2d2.C0859R;

public class RocketScaleGestureDetector {
    private static final int ANCHORED_SCALE_MODE_DOUBLE_TAP = 1;
    private static final int ANCHORED_SCALE_MODE_NONE = 0;
    private static final int ANCHORED_SCALE_MODE_STYLUS = 2;
    private static final float SCALE_FACTOR = 0.5f;
    private static final String TAG = "RocketScaleGestureDetector";
    private static final long TOUCH_STABILIZE_TIME = 128;
    private int mAnchoredScaleMode;
    private float mAnchoredScaleStartX;
    private float mAnchoredScaleStartY;
    private final Context mContext;
    private float mCurrSpan;
    private float mCurrSpanX;
    private float mCurrSpanY;
    private long mCurrTime;
    private boolean mEventBeforeOrAboveStartingGestureEvent;
    private float mFocusX;
    private float mFocusY;
    private GestureDetector mGestureDetector;
    private final Handler mHandler;
    private boolean mInProgress;
    private float mInitialSpan;
    private final OnScaleGestureListener mListener;
    private int mMinSpan;
    private float mPrevSpan;
    private float mPrevSpanX;
    private float mPrevSpanY;
    private long mPrevTime;
    private boolean mQuickScaleEnabled;
    private int mSpanSlop;
    private boolean mStylusScaleEnabled;

    /* renamed from: ru.rocketbank.r2d2.shop.details.RocketScaleGestureDetector$1 */
    class C16221 extends SimpleOnGestureListener {
        C16221() {
        }

        public boolean onDoubleTap(MotionEvent motionEvent) {
            RocketScaleGestureDetector.this.mAnchoredScaleStartX = motionEvent.getX();
            RocketScaleGestureDetector.this.mAnchoredScaleStartY = motionEvent.getY();
            RocketScaleGestureDetector.this.mAnchoredScaleMode = 1;
            return true;
        }
    }

    public interface OnScaleGestureListener {
        boolean onScale(RocketScaleGestureDetector rocketScaleGestureDetector);

        boolean onScaleBegin(RocketScaleGestureDetector rocketScaleGestureDetector);

        void onScaleEnd(RocketScaleGestureDetector rocketScaleGestureDetector);
    }

    public static class SimpleOnScaleGestureListener implements OnScaleGestureListener {
        public boolean onScale(RocketScaleGestureDetector rocketScaleGestureDetector) {
            return false;
        }

        public boolean onScaleBegin(RocketScaleGestureDetector rocketScaleGestureDetector) {
            return true;
        }

        public void onScaleEnd(RocketScaleGestureDetector rocketScaleGestureDetector) {
        }
    }

    public RocketScaleGestureDetector(Context context, OnScaleGestureListener onScaleGestureListener) {
        this(context, onScaleGestureListener, null);
    }

    public RocketScaleGestureDetector(Context context, OnScaleGestureListener onScaleGestureListener, Handler handler) {
        this.mAnchoredScaleMode = 0;
        this.mContext = context;
        this.mListener = onScaleGestureListener;
        this.mSpanSlop = ViewConfiguration.get(context).getScaledTouchSlop() << 1;
        this.mMinSpan = context.getResources().getDimensionPixelSize(C0859R.dimen.config_minScalingSpan);
        this.mHandler = handler;
        context = context.getApplicationInfo().targetSdkVersion;
        if (context > 18) {
            setQuickScaleEnabled(true);
        }
        if (context > 22) {
            setStylusScaleEnabled(true);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionIndex;
        int i;
        float f;
        float f2;
        int i2;
        float f3;
        float f4;
        float f5;
        int i3;
        float f6;
        boolean z2;
        MotionEvent motionEvent2 = motionEvent;
        this.mCurrTime = motionEvent.getEventTime();
        int actionMasked = motionEvent.getActionMasked();
        if (this.mQuickScaleEnabled) {
            r0.mGestureDetector.onTouchEvent(motionEvent2);
        }
        int pointerCount = motionEvent.getPointerCount();
        boolean z3 = (motionEvent.getButtonState() & 32) != 0;
        boolean z4 = r0.mAnchoredScaleMode == 2 && !z3;
        if (!(actionMasked == 1 || actionMasked == 3)) {
            if (!z4) {
                z = false;
                if (actionMasked == 0 || z) {
                    if (r0.mInProgress) {
                        r0.mListener.onScaleEnd(r0);
                        r0.mInProgress = false;
                        r0.mInitialSpan = BitmapDescriptorFactory.HUE_RED;
                        r0.mAnchoredScaleMode = 0;
                    } else if (inAnchoredScaleMode() && z) {
                        r0.mInProgress = false;
                        r0.mInitialSpan = BitmapDescriptorFactory.HUE_RED;
                        r0.mAnchoredScaleMode = 0;
                    }
                    if (z) {
                        return true;
                    }
                }
                if (!(r0.mInProgress || !r0.mStylusScaleEnabled || inAnchoredScaleMode() || z || !z3)) {
                    r0.mAnchoredScaleStartX = motionEvent.getX();
                    r0.mAnchoredScaleStartY = motionEvent.getY();
                    r0.mAnchoredScaleMode = 2;
                    r0.mInitialSpan = BitmapDescriptorFactory.HUE_RED;
                }
                if (!(actionMasked == 0 || actionMasked == 6 || actionMasked == 5)) {
                    if (z4) {
                        z4 = false;
                        z3 = actionMasked != 6;
                        actionIndex = z3 ? motionEvent.getActionIndex() : -1;
                        i = z3 ? pointerCount - 1 : pointerCount;
                        if (inAnchoredScaleMode()) {
                            f = BitmapDescriptorFactory.HUE_RED;
                            f2 = f;
                            for (i2 = 0; i2 < pointerCount; i2++) {
                                if (actionIndex == i2) {
                                    f += motionEvent2.getX(i2);
                                    f2 += motionEvent2.getY(i2);
                                }
                            }
                            f3 = (float) i;
                            f /= f3;
                            f3 = f2 / f3;
                        } else {
                            f3 = r0.mAnchoredScaleStartX;
                            f = r0.mAnchoredScaleStartY;
                            if (motionEvent.getY() >= f) {
                                r0.mEventBeforeOrAboveStartingGestureEvent = true;
                            } else {
                                r0.mEventBeforeOrAboveStartingGestureEvent = false;
                            }
                            f4 = f;
                            f = f3;
                            f3 = f4;
                        }
                        f2 = BitmapDescriptorFactory.HUE_RED;
                        f5 = f2;
                        for (i3 = 0; i3 < pointerCount; i3++) {
                            if (actionIndex == i3) {
                                f2 += Math.abs(motionEvent2.getX(i3) - f);
                                f5 += Math.abs(motionEvent2.getY(i3) - f3);
                            }
                        }
                        f6 = (float) i;
                        f2 = (f2 / f6) * 2.0f;
                        f5 = (f5 / f6) * 2.0f;
                        if (inAnchoredScaleMode()) {
                            f6 = (float) Math.hypot((double) f2, (double) f5);
                        } else {
                            f6 = f5;
                        }
                        z2 = r0.mInProgress;
                        r0.mFocusX = f;
                        r0.mFocusY = f3;
                        if (!inAnchoredScaleMode() && r0.mInProgress && (f6 < ((float) r0.mMinSpan) || z4)) {
                            r0.mListener.onScaleEnd(r0);
                            r0.mInProgress = false;
                            r0.mInitialSpan = f6;
                        }
                        if (z4) {
                            r0.mCurrSpanX = f2;
                            r0.mPrevSpanX = f2;
                            r0.mCurrSpanY = f5;
                            r0.mPrevSpanY = f5;
                            r0.mCurrSpan = f6;
                            r0.mPrevSpan = f6;
                            r0.mInitialSpan = f6;
                        }
                        i = inAnchoredScaleMode() ? r0.mSpanSlop : r0.mMinSpan;
                        if (!r0.mInProgress && f6 >= ((float) i) && (z2 || Math.abs(f6 - r0.mInitialSpan) > ((float) r0.mSpanSlop))) {
                            r0.mCurrSpanX = f2;
                            r0.mPrevSpanX = f2;
                            r0.mCurrSpanY = f5;
                            r0.mPrevSpanY = f5;
                            r0.mCurrSpan = f6;
                            r0.mPrevSpan = f6;
                            r0.mPrevTime = r0.mCurrTime;
                            r0.mInProgress = r0.mListener.onScaleBegin(r0);
                        }
                        if (actionMasked == 2) {
                            r0.mCurrSpanX = f2;
                            r0.mCurrSpanY = f5;
                            r0.mCurrSpan = f6;
                            if (r0.mInProgress ? r0.mListener.onScale(r0) : true) {
                                r0.mPrevSpanX = r0.mCurrSpanX;
                                r0.mPrevSpanY = r0.mCurrSpanY;
                                r0.mPrevSpan = r0.mCurrSpan;
                                r0.mPrevTime = r0.mCurrTime;
                            }
                        }
                        return true;
                    }
                }
                z4 = true;
                if (actionMasked != 6) {
                }
                if (z3) {
                }
                if (z3) {
                }
                if (inAnchoredScaleMode()) {
                    f = BitmapDescriptorFactory.HUE_RED;
                    f2 = f;
                    for (i2 = 0; i2 < pointerCount; i2++) {
                        if (actionIndex == i2) {
                            f += motionEvent2.getX(i2);
                            f2 += motionEvent2.getY(i2);
                        }
                    }
                    f3 = (float) i;
                    f /= f3;
                    f3 = f2 / f3;
                } else {
                    f3 = r0.mAnchoredScaleStartX;
                    f = r0.mAnchoredScaleStartY;
                    if (motionEvent.getY() >= f) {
                        r0.mEventBeforeOrAboveStartingGestureEvent = false;
                    } else {
                        r0.mEventBeforeOrAboveStartingGestureEvent = true;
                    }
                    f4 = f;
                    f = f3;
                    f3 = f4;
                }
                f2 = BitmapDescriptorFactory.HUE_RED;
                f5 = f2;
                for (i3 = 0; i3 < pointerCount; i3++) {
                    if (actionIndex == i3) {
                        f2 += Math.abs(motionEvent2.getX(i3) - f);
                        f5 += Math.abs(motionEvent2.getY(i3) - f3);
                    }
                }
                f6 = (float) i;
                f2 = (f2 / f6) * 2.0f;
                f5 = (f5 / f6) * 2.0f;
                if (inAnchoredScaleMode()) {
                    f6 = (float) Math.hypot((double) f2, (double) f5);
                } else {
                    f6 = f5;
                }
                z2 = r0.mInProgress;
                r0.mFocusX = f;
                r0.mFocusY = f3;
                r0.mListener.onScaleEnd(r0);
                r0.mInProgress = false;
                r0.mInitialSpan = f6;
                if (z4) {
                    r0.mCurrSpanX = f2;
                    r0.mPrevSpanX = f2;
                    r0.mCurrSpanY = f5;
                    r0.mPrevSpanY = f5;
                    r0.mCurrSpan = f6;
                    r0.mPrevSpan = f6;
                    r0.mInitialSpan = f6;
                }
                if (inAnchoredScaleMode()) {
                }
                r0.mCurrSpanX = f2;
                r0.mPrevSpanX = f2;
                r0.mCurrSpanY = f5;
                r0.mPrevSpanY = f5;
                r0.mCurrSpan = f6;
                r0.mPrevSpan = f6;
                r0.mPrevTime = r0.mCurrTime;
                r0.mInProgress = r0.mListener.onScaleBegin(r0);
                if (actionMasked == 2) {
                    r0.mCurrSpanX = f2;
                    r0.mCurrSpanY = f5;
                    r0.mCurrSpan = f6;
                    if (r0.mInProgress) {
                    }
                    if (r0.mInProgress ? r0.mListener.onScale(r0) : true) {
                        r0.mPrevSpanX = r0.mCurrSpanX;
                        r0.mPrevSpanY = r0.mCurrSpanY;
                        r0.mPrevSpan = r0.mCurrSpan;
                        r0.mPrevTime = r0.mCurrTime;
                    }
                }
                return true;
            }
        }
        z = true;
        if (r0.mInProgress) {
            r0.mListener.onScaleEnd(r0);
            r0.mInProgress = false;
            r0.mInitialSpan = BitmapDescriptorFactory.HUE_RED;
            r0.mAnchoredScaleMode = 0;
        } else {
            r0.mInProgress = false;
            r0.mInitialSpan = BitmapDescriptorFactory.HUE_RED;
            r0.mAnchoredScaleMode = 0;
        }
        if (z) {
            return true;
        }
        r0.mAnchoredScaleStartX = motionEvent.getX();
        r0.mAnchoredScaleStartY = motionEvent.getY();
        r0.mAnchoredScaleMode = 2;
        r0.mInitialSpan = BitmapDescriptorFactory.HUE_RED;
        if (z4) {
            z4 = false;
            if (actionMasked != 6) {
            }
            if (z3) {
            }
            if (z3) {
            }
            if (inAnchoredScaleMode()) {
                f3 = r0.mAnchoredScaleStartX;
                f = r0.mAnchoredScaleStartY;
                if (motionEvent.getY() >= f) {
                    r0.mEventBeforeOrAboveStartingGestureEvent = true;
                } else {
                    r0.mEventBeforeOrAboveStartingGestureEvent = false;
                }
                f4 = f;
                f = f3;
                f3 = f4;
            } else {
                f = BitmapDescriptorFactory.HUE_RED;
                f2 = f;
                for (i2 = 0; i2 < pointerCount; i2++) {
                    if (actionIndex == i2) {
                        f += motionEvent2.getX(i2);
                        f2 += motionEvent2.getY(i2);
                    }
                }
                f3 = (float) i;
                f /= f3;
                f3 = f2 / f3;
            }
            f2 = BitmapDescriptorFactory.HUE_RED;
            f5 = f2;
            for (i3 = 0; i3 < pointerCount; i3++) {
                if (actionIndex == i3) {
                    f2 += Math.abs(motionEvent2.getX(i3) - f);
                    f5 += Math.abs(motionEvent2.getY(i3) - f3);
                }
            }
            f6 = (float) i;
            f2 = (f2 / f6) * 2.0f;
            f5 = (f5 / f6) * 2.0f;
            if (inAnchoredScaleMode()) {
                f6 = f5;
            } else {
                f6 = (float) Math.hypot((double) f2, (double) f5);
            }
            z2 = r0.mInProgress;
            r0.mFocusX = f;
            r0.mFocusY = f3;
            r0.mListener.onScaleEnd(r0);
            r0.mInProgress = false;
            r0.mInitialSpan = f6;
            if (z4) {
                r0.mCurrSpanX = f2;
                r0.mPrevSpanX = f2;
                r0.mCurrSpanY = f5;
                r0.mPrevSpanY = f5;
                r0.mCurrSpan = f6;
                r0.mPrevSpan = f6;
                r0.mInitialSpan = f6;
            }
            if (inAnchoredScaleMode()) {
            }
            r0.mCurrSpanX = f2;
            r0.mPrevSpanX = f2;
            r0.mCurrSpanY = f5;
            r0.mPrevSpanY = f5;
            r0.mCurrSpan = f6;
            r0.mPrevSpan = f6;
            r0.mPrevTime = r0.mCurrTime;
            r0.mInProgress = r0.mListener.onScaleBegin(r0);
            if (actionMasked == 2) {
                r0.mCurrSpanX = f2;
                r0.mCurrSpanY = f5;
                r0.mCurrSpan = f6;
                if (r0.mInProgress) {
                }
                if (r0.mInProgress ? r0.mListener.onScale(r0) : true) {
                    r0.mPrevSpanX = r0.mCurrSpanX;
                    r0.mPrevSpanY = r0.mCurrSpanY;
                    r0.mPrevSpan = r0.mCurrSpan;
                    r0.mPrevTime = r0.mCurrTime;
                }
            }
            return true;
        }
        z4 = true;
        if (actionMasked != 6) {
        }
        if (z3) {
        }
        if (z3) {
        }
        if (inAnchoredScaleMode()) {
            f = BitmapDescriptorFactory.HUE_RED;
            f2 = f;
            for (i2 = 0; i2 < pointerCount; i2++) {
                if (actionIndex == i2) {
                    f += motionEvent2.getX(i2);
                    f2 += motionEvent2.getY(i2);
                }
            }
            f3 = (float) i;
            f /= f3;
            f3 = f2 / f3;
        } else {
            f3 = r0.mAnchoredScaleStartX;
            f = r0.mAnchoredScaleStartY;
            if (motionEvent.getY() >= f) {
                r0.mEventBeforeOrAboveStartingGestureEvent = false;
            } else {
                r0.mEventBeforeOrAboveStartingGestureEvent = true;
            }
            f4 = f;
            f = f3;
            f3 = f4;
        }
        f2 = BitmapDescriptorFactory.HUE_RED;
        f5 = f2;
        for (i3 = 0; i3 < pointerCount; i3++) {
            if (actionIndex == i3) {
                f2 += Math.abs(motionEvent2.getX(i3) - f);
                f5 += Math.abs(motionEvent2.getY(i3) - f3);
            }
        }
        f6 = (float) i;
        f2 = (f2 / f6) * 2.0f;
        f5 = (f5 / f6) * 2.0f;
        if (inAnchoredScaleMode()) {
            f6 = (float) Math.hypot((double) f2, (double) f5);
        } else {
            f6 = f5;
        }
        z2 = r0.mInProgress;
        r0.mFocusX = f;
        r0.mFocusY = f3;
        r0.mListener.onScaleEnd(r0);
        r0.mInProgress = false;
        r0.mInitialSpan = f6;
        if (z4) {
            r0.mCurrSpanX = f2;
            r0.mPrevSpanX = f2;
            r0.mCurrSpanY = f5;
            r0.mPrevSpanY = f5;
            r0.mCurrSpan = f6;
            r0.mPrevSpan = f6;
            r0.mInitialSpan = f6;
        }
        if (inAnchoredScaleMode()) {
        }
        r0.mCurrSpanX = f2;
        r0.mPrevSpanX = f2;
        r0.mCurrSpanY = f5;
        r0.mPrevSpanY = f5;
        r0.mCurrSpan = f6;
        r0.mPrevSpan = f6;
        r0.mPrevTime = r0.mCurrTime;
        r0.mInProgress = r0.mListener.onScaleBegin(r0);
        if (actionMasked == 2) {
            r0.mCurrSpanX = f2;
            r0.mCurrSpanY = f5;
            r0.mCurrSpan = f6;
            if (r0.mInProgress) {
            }
            if (r0.mInProgress ? r0.mListener.onScale(r0) : true) {
                r0.mPrevSpanX = r0.mCurrSpanX;
                r0.mPrevSpanY = r0.mCurrSpanY;
                r0.mPrevSpan = r0.mCurrSpan;
                r0.mPrevTime = r0.mCurrTime;
            }
        }
        return true;
    }

    private boolean inAnchoredScaleMode() {
        return this.mAnchoredScaleMode != 0;
    }

    public void setQuickScaleEnabled(boolean z) {
        this.mQuickScaleEnabled = z;
        if (this.mQuickScaleEnabled && !this.mGestureDetector) {
            this.mGestureDetector = new GestureDetector(this.mContext, new C16221(), this.mHandler);
        }
    }

    public boolean isQuickScaleEnabled() {
        return this.mQuickScaleEnabled;
    }

    public void setStylusScaleEnabled(boolean z) {
        this.mStylusScaleEnabled = z;
    }

    public boolean isStylusScaleEnabled() {
        return this.mStylusScaleEnabled;
    }

    public boolean isInProgress() {
        return this.mInProgress;
    }

    public float getFocusX() {
        return this.mFocusX;
    }

    public float getFocusY() {
        return this.mFocusY;
    }

    public float getCurrentSpan() {
        return this.mCurrSpan;
    }

    public float getCurrentSpanX() {
        return this.mCurrSpanX;
    }

    public float getCurrentSpanY() {
        return this.mCurrSpanY;
    }

    public float getPreviousSpan() {
        return this.mPrevSpan;
    }

    public float getPreviousSpanX() {
        return this.mPrevSpanX;
    }

    public float getPreviousSpanY() {
        return this.mPrevSpanY;
    }

    public float getScaleFactor() {
        if (inAnchoredScaleMode()) {
            Object obj = ((!this.mEventBeforeOrAboveStartingGestureEvent || this.mCurrSpan >= this.mPrevSpan) && (this.mEventBeforeOrAboveStartingGestureEvent || this.mCurrSpan <= this.mPrevSpan)) ? null : 1;
            float abs = Math.abs(1.0f - (this.mCurrSpan / this.mPrevSpan)) * SCALE_FACTOR;
            if (this.mPrevSpan <= BitmapDescriptorFactory.HUE_RED) {
                return 1.0f;
            }
            return obj != null ? abs + 1.0f : 1.0f - abs;
        } else if (this.mPrevSpan > BitmapDescriptorFactory.HUE_RED) {
            return this.mCurrSpan / this.mPrevSpan;
        } else {
            return 1.0f;
        }
    }

    public long getTimeDelta() {
        return this.mCurrTime - this.mPrevTime;
    }

    public long getEventTime() {
        return this.mCurrTime;
    }
}
