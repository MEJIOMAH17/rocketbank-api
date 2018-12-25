package io.codetail.animation;

import android.animation.Animator;
import java.lang.ref.WeakReference;

public abstract class SupportAnimator extends Animator {
    WeakReference<RevealAnimator> mTarget;

    public interface AnimatorListener {
        void onAnimationCancel();

        void onAnimationEnd();

        void onAnimationRepeat();

        void onAnimationStart();
    }

    public static abstract class SimpleAnimatorListener implements AnimatorListener {
        public void onAnimationCancel() {
        }

        public void onAnimationEnd() {
        }

        public void onAnimationRepeat() {
        }

        public void onAnimationStart() {
        }
    }

    public abstract void addListener(AnimatorListener animatorListener);

    public abstract void cancel();

    public void end() {
    }

    public abstract boolean isRunning();

    public void setupEndValues() {
    }

    public void setupStartValues() {
    }

    public abstract void start();

    public SupportAnimator(RevealAnimator revealAnimator) {
        this.mTarget = new WeakReference(revealAnimator);
    }

    public final SupportAnimator reverse() {
        if (isRunning()) {
            return null;
        }
        RevealAnimator revealAnimator = (RevealAnimator) this.mTarget.get();
        if (revealAnimator != null) {
            return revealAnimator.startReverseAnimation();
        }
        return null;
    }
}
