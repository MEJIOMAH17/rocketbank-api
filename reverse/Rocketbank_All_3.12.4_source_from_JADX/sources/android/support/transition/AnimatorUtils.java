package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build.VERSION;

final class AnimatorUtils {
    private static final AnimatorUtilsImpl IMPL;

    static {
        if (VERSION.SDK_INT >= 19) {
            IMPL = new AnimatorUtilsApi19();
        } else {
            IMPL = new AnimatorUtilsApi14();
        }
    }

    static void addPauseListener(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        IMPL.addPauseListener(animator, animatorListenerAdapter);
    }

    static void pause(Animator animator) {
        IMPL.pause(animator);
    }

    static void resume(Animator animator) {
        IMPL.resume(animator);
    }
}
