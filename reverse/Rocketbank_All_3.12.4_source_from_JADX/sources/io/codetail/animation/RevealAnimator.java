package io.codetail.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Property;
import android.view.View;
import java.lang.ref.WeakReference;

public interface RevealAnimator {
    public static final RevealRadius CLIP_RADIUS = new RevealRadius();

    public static class RevealFinishedIceCreamSandwich extends AnimatorListenerAdapter {
        int mFeaturedLayerType = 1;
        int mLayerType;
        WeakReference<RevealAnimator> mReference;

        RevealFinishedIceCreamSandwich(RevealAnimator revealAnimator) {
            this.mReference = new WeakReference(revealAnimator);
            this.mLayerType = ((View) revealAnimator).getLayerType();
        }

        public final void onAnimationStart(Animator animator) {
            RevealAnimator revealAnimator = (RevealAnimator) this.mReference.get();
            ((View) revealAnimator).setLayerType(this.mFeaturedLayerType, null);
            revealAnimator.onRevealAnimationStart();
        }

        public final void onAnimationCancel(Animator animator) {
            RevealAnimator revealAnimator = (RevealAnimator) this.mReference.get();
            ((View) revealAnimator).setLayerType(this.mLayerType, null);
            revealAnimator.onRevealAnimationCancel();
        }

        public final void onAnimationEnd(Animator animator) {
            RevealAnimator revealAnimator = (RevealAnimator) this.mReference.get();
            ((View) revealAnimator).setLayerType(this.mLayerType, null);
            revealAnimator.onRevealAnimationEnd();
        }
    }

    public static class RevealInfo {
        public final int centerX;
        public final int centerY;
        public final float endRadius;
        public final float startRadius;
        public final WeakReference<View> target;

        public RevealInfo(int i, int i2, float f, float f2, WeakReference<View> weakReference) {
            this.centerX = i;
            this.centerY = i2;
            this.startRadius = f;
            this.endRadius = f2;
            this.target = weakReference;
        }
    }

    public static class RevealRadius extends Property<RevealAnimator, Float> {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(((RevealAnimator) obj).getRevealRadius());
        }

        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            ((RevealAnimator) obj).setRevealRadius(((Float) obj2).floatValue());
        }

        public RevealRadius() {
            super(Float.class, "revealRadius");
        }
    }

    void attachRevealInfo(RevealInfo revealInfo);

    float getRevealRadius();

    void onRevealAnimationCancel();

    void onRevealAnimationEnd();

    void onRevealAnimationStart();

    void setRevealRadius(float f);

    SupportAnimator startReverseAnimation();
}
