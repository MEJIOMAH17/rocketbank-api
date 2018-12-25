package ru.rocketbank.r2d2.friends;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class SwipeTouchListener implements OnTouchListener {
    private long mAnimationTime;
    private DismissCallbacks mCallbacks;
    private float mDownX;
    private float mDownY;
    private int mMaxFlingVelocity;
    private int mMinFlingVelocity;
    private int mSlop;
    private boolean mSwiping;
    private int mSwipingSlop;
    private Object mToken;
    private float mTranslationX;
    private VelocityTracker mVelocityTracker;
    private View mView;
    private int mViewWidth = 1;

    /* renamed from: ru.rocketbank.r2d2.friends.SwipeTouchListener$1 */
    class C15891 extends AnimatorListenerAdapter {
        C15891() {
        }

        public void onAnimationEnd(Animator animator) {
            SwipeTouchListener.this.performDismiss();
        }
    }

    public interface DismissCallbacks {
        boolean canDismiss(Object obj);

        void onDismiss(View view, Object obj);
    }

    public SwipeTouchListener(View view, Object obj, DismissCallbacks dismissCallbacks) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        this.mSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity() << 4;
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mAnimationTime = (long) view.getContext().getResources().getInteger(17694720);
        this.mView = view;
        this.mToken = obj;
        this.mCallbacks = dismissCallbacks;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        motionEvent.offsetLocation(this.mTranslationX, BitmapDescriptorFactory.HUE_RED);
        if (this.mViewWidth < 2) {
            this.mViewWidth = this.mView.getWidth();
        }
        boolean z = true;
        switch (motionEvent.getActionMasked()) {
            case null:
                this.mDownX = motionEvent.getRawX();
                this.mDownY = motionEvent.getRawY();
                if (this.mCallbacks.canDismiss(this.mToken) != null) {
                    this.mVelocityTracker = VelocityTracker.obtain();
                    this.mVelocityTracker.addMovement(motionEvent);
                }
                return true;
            case 1:
                if (this.mVelocityTracker != null) {
                    view = motionEvent.getRawX() - this.mDownX;
                    this.mVelocityTracker.addMovement(motionEvent);
                    this.mVelocityTracker.computeCurrentVelocity(1000);
                    motionEvent = this.mVelocityTracker.getXVelocity();
                    float abs = Math.abs(motionEvent);
                    float abs2 = Math.abs(this.mVelocityTracker.getYVelocity());
                    if (view > ((float) (this.mViewWidth / 2)) && this.mSwiping) {
                        z = view > null ? 1 : null;
                        view = true;
                    } else if (((float) this.mMinFlingVelocity) > abs || abs > ((float) this.mMaxFlingVelocity) || abs2 >= abs || abs2 >= abs || !this.mSwiping) {
                        view = null;
                        z = view;
                    } else {
                        view = ((motionEvent > null ? 1 : (motionEvent == null ? 0 : -1)) < null ? 1 : null) == ((view > null ? 1 : (view == null ? 0 : -1)) < null ? 1 : null) ? 1 : null;
                        if (this.mVelocityTracker.getXVelocity() <= null) {
                            z = false;
                        }
                    }
                    if (view != null) {
                        this.mView.animate().translationX((float) (z ? this.mViewWidth : -this.mViewWidth)).setDuration(this.mAnimationTime).setListener(new C15891());
                    } else if (this.mSwiping != null) {
                        this.mView.animate().translationX(BitmapDescriptorFactory.HUE_RED).setDuration(this.mAnimationTime).setListener(null);
                    }
                    this.mVelocityTracker.recycle();
                    this.mVelocityTracker = null;
                    this.mTranslationX = BitmapDescriptorFactory.HUE_RED;
                    this.mDownX = BitmapDescriptorFactory.HUE_RED;
                    this.mDownY = BitmapDescriptorFactory.HUE_RED;
                    this.mSwiping = false;
                    break;
                }
                break;
            case 2:
                if (this.mVelocityTracker != null) {
                    this.mVelocityTracker.addMovement(motionEvent);
                    view = motionEvent.getRawX() - this.mDownX;
                    if (view < null) {
                        view = (float) this.mSwipingSlop;
                    }
                    float rawY = motionEvent.getRawY() - this.mDownY;
                    if (view > ((float) this.mSlop) && Math.abs(rawY) < Math.abs(view) / 2.0f) {
                        this.mSwiping = true;
                        this.mSwipingSlop = view > null ? this.mSlop : -this.mSlop;
                        this.mView.getParent().requestDisallowInterceptTouchEvent(true);
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        obtain.setAction((motionEvent.getActionIndex() << 8) | 3);
                        this.mView.onTouchEvent(obtain);
                        obtain.recycle();
                    }
                    if (this.mSwiping != null) {
                        this.mTranslationX = view;
                        this.mView.setTranslationX(view - ((float) this.mSwipingSlop));
                        return true;
                    }
                }
                break;
            case 3:
                if (this.mVelocityTracker != null) {
                    this.mView.animate().translationX(BitmapDescriptorFactory.HUE_RED).setDuration(this.mAnimationTime).setListener(null);
                    this.mVelocityTracker.recycle();
                    this.mVelocityTracker = null;
                    this.mTranslationX = BitmapDescriptorFactory.HUE_RED;
                    this.mDownX = BitmapDescriptorFactory.HUE_RED;
                    this.mDownY = BitmapDescriptorFactory.HUE_RED;
                    this.mSwiping = false;
                    break;
                }
                break;
            default:
                break;
        }
        return false;
    }

    private void performDismiss() {
        this.mCallbacks.onDismiss(this.mView, this.mToken);
    }
}
