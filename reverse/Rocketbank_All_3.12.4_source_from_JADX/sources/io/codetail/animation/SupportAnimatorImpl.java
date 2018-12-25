package io.codetail.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import io.codetail.animation.SupportAnimator.AnimatorListener;
import java.lang.ref.WeakReference;

@TargetApi(11)
final class SupportAnimatorImpl extends SupportAnimator {
    WeakReference<Animator> mAnimator;

    SupportAnimatorImpl(Animator animator, RevealAnimator revealAnimator) {
        super(revealAnimator);
        this.mAnimator = new WeakReference(animator);
    }

    public final void start() {
        Animator animator = (Animator) this.mAnimator.get();
        if (animator != null) {
            animator.start();
        }
    }

    public final Animator setDuration(long j) {
        Animator animator = (Animator) this.mAnimator.get();
        if (animator != null) {
            animator.setDuration(j);
        }
        return this;
    }

    public final void setInterpolator(TimeInterpolator timeInterpolator) {
        Animator animator = (Animator) this.mAnimator.get();
        if (animator != null) {
            animator.setInterpolator(timeInterpolator);
        }
    }

    public final void addListener(final AnimatorListener animatorListener) {
        Animator animator = (Animator) this.mAnimator.get();
        if (animator != null) {
            animator.addListener(new Animator.AnimatorListener() {
                public final void onAnimationStart(Animator animator) {
                    animatorListener.onAnimationStart();
                }

                public final void onAnimationEnd(Animator animator) {
                    animatorListener.onAnimationEnd();
                }

                public final void onAnimationCancel(Animator animator) {
                    animatorListener.onAnimationCancel();
                }

                public final void onAnimationRepeat(Animator animator) {
                    animatorListener.onAnimationRepeat();
                }
            });
        }
    }

    public final boolean isRunning() {
        Animator animator = (Animator) this.mAnimator.get();
        return animator != null && animator.isRunning();
    }

    public final void cancel() {
        Animator animator = (Animator) this.mAnimator.get();
        if (animator != null) {
            animator.cancel();
        }
    }

    public final void end() {
        Animator animator = (Animator) this.mAnimator.get();
        if (animator != null) {
            animator.end();
        }
    }

    public final long getStartDelay() {
        Animator animator = (Animator) this.mAnimator.get();
        return animator != null ? animator.getStartDelay() : 0;
    }

    public final void setStartDelay(long j) {
        Animator animator = (Animator) this.mAnimator.get();
        if (animator != null) {
            animator.setStartDelay(j);
        }
    }

    public final long getDuration() {
        Animator animator = (Animator) this.mAnimator.get();
        return animator != null ? animator.getDuration() : 0;
    }

    public final void setupStartValues() {
        Animator animator = (Animator) this.mAnimator.get();
        if (animator != null) {
            animator.setupStartValues();
        }
    }

    public final void setupEndValues() {
        Animator animator = (Animator) this.mAnimator.get();
        if (animator != null) {
            animator.setupEndValues();
        }
    }
}
