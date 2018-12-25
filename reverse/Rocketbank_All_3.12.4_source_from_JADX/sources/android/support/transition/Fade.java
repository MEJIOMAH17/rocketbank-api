package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.support.v4.view.ViewCompat;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class Fade extends Visibility {

    static class FadeAnimatorListener extends AnimatorListenerAdapter {
        private boolean mLayerTypeChanged = false;
        private final View mView;

        FadeAnimatorListener(View view) {
            this.mView = view;
        }

        public final void onAnimationStart(Animator animator) {
            if (ViewCompat.hasOverlappingRendering(this.mView) != null && this.mView.getLayerType() == null) {
                this.mLayerTypeChanged = true;
                this.mView.setLayerType(2, null);
            }
        }

        public final void onAnimationEnd(Animator animator) {
            ViewUtils.setTransitionAlpha(this.mView, 1.0f);
            if (this.mLayerTypeChanged != null) {
                this.mView.setLayerType(0, null);
            }
        }
    }

    public Fade(int i) {
        setMode(i);
    }

    public final void captureStartValues(TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        transitionValues.values.put("android:fade:transitionAlpha", Float.valueOf(ViewUtils.getTransitionAlpha(transitionValues.view)));
    }

    private Animator createAnimation(final View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        ViewUtils.setTransitionAlpha(view, f);
        f = ObjectAnimator.ofFloat(view, ViewUtils.TRANSITION_ALPHA, new float[]{f2});
        f.addListener(new FadeAnimatorListener(view));
        addListener(new TransitionListenerAdapter() {
            public final void onTransitionEnd(Transition transition) {
                ViewUtils.setTransitionAlpha(view, 1.0f);
                ViewUtils.clearNonTransitionAlpha(view);
                transition.removeListener(this);
            }
        });
        return f;
    }

    public final Animator onDisappear$7a73f915(View view, TransitionValues transitionValues) {
        ViewUtils.saveNonTransitionAlpha(view);
        if (transitionValues != null) {
            Float f = (Float) transitionValues.values.get("android:fade:transitionAlpha");
            if (f != null) {
                transitionValues = f.floatValue();
                return createAnimation(view, transitionValues, BitmapDescriptorFactory.HUE_RED);
            }
        }
        transitionValues = 1065353216;
        return createAnimation(view, transitionValues, BitmapDescriptorFactory.HUE_RED);
    }

    public final Animator onAppear$7a73f915(View view, TransitionValues transitionValues) {
        if (transitionValues != null) {
            Float f = (Float) transitionValues.values.get("android:fade:transitionAlpha");
            if (f != null) {
                transitionValues = f.floatValue();
                if (transitionValues == 1065353216) {
                    transitionValues = null;
                }
                return createAnimation(view, transitionValues, 1.0f);
            }
        }
        transitionValues = null;
        if (transitionValues == 1065353216) {
            transitionValues = null;
        }
        return createAnimation(view, transitionValues, 1.0f);
    }
}
