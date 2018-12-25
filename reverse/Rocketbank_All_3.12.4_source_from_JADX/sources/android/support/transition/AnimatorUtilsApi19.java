package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class AnimatorUtilsApi19 implements AnimatorUtilsImpl {
    AnimatorUtilsApi19() {
    }

    public final void addPauseListener(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        animator.addPauseListener(animatorListenerAdapter);
    }

    public final void pause(Animator animator) {
        animator.pause();
    }

    public final void resume(Animator animator) {
        animator.resume();
    }
}
