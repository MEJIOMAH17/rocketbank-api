package com.bumptech.glide.request.animation;

public final class ViewAnimationFactory<R> implements GlideAnimationFactory<R> {
    private final AnimationFactory animationFactory;
    private GlideAnimation<R> glideAnimation;

    ViewAnimationFactory(AnimationFactory animationFactory) {
        this.animationFactory = animationFactory;
    }

    public final GlideAnimation<R> build(boolean z, boolean z2) {
        if (!z) {
            if (z2) {
                if (!this.glideAnimation) {
                    this.glideAnimation = new ViewAnimation(this.animationFactory);
                }
                return this.glideAnimation;
            }
        }
        return NoAnimation.get();
    }
}
