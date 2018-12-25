package io.codetail.animation;

import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.view.View;
import io.codetail.animation.RevealAnimator.RevealFinishedIceCreamSandwich;
import io.codetail.animation.RevealAnimator.RevealInfo;
import java.lang.ref.WeakReference;

public final class ViewAnimationUtils {
    private static final boolean LOLLIPOP_PLUS = (VERSION.SDK_INT >= 21);

    @TargetApi(21)
    public static SupportAnimator createCircularReveal(View view, int i, int i2, float f, float f2) {
        if (view.getParent() instanceof RevealAnimator) {
            RevealAnimator revealAnimator = (RevealAnimator) view.getParent();
            revealAnimator.attachRevealInfo(new RevealInfo(i, i2, f, f2, new WeakReference(view)));
            if (LOLLIPOP_PLUS) {
                return new SupportAnimatorImpl(android.view.ViewAnimationUtils.createCircularReveal(view, i, i2, f, f2), revealAnimator);
            }
            view = ObjectAnimator.ofFloat(revealAnimator, RevealAnimator.CLIP_RADIUS, new float[]{f, f2});
            view.addListener(new RevealFinishedIceCreamSandwich(revealAnimator));
            return new SupportAnimatorImpl(view, revealAnimator);
        }
        throw new IllegalArgumentException("View must be inside RevealFrameLayout or RevealLinearLayout.");
    }
}
