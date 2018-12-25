package com.bumptech.glide.request.animation;

import android.graphics.drawable.Drawable;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class DrawableCrossFadeFactory<T extends Drawable> implements GlideAnimationFactory<T> {
    private final ViewAnimationFactory<T> animationFactory;
    private final int duration;
    private DrawableCrossFadeViewAnimation<T> firstResourceAnimation;
    private DrawableCrossFadeViewAnimation<T> secondResourceAnimation;

    static class DefaultAnimationFactory implements AnimationFactory {
        private final int duration = 300;

        DefaultAnimationFactory() {
        }

        public final Animation build() {
            Animation alphaAnimation = new AlphaAnimation(BitmapDescriptorFactory.HUE_RED, 1.0f);
            alphaAnimation.setDuration(300);
            return alphaAnimation;
        }
    }

    public DrawableCrossFadeFactory() {
        this((byte) 0);
    }

    private DrawableCrossFadeFactory(byte b) {
        this(new ViewAnimationFactory(new DefaultAnimationFactory()));
    }

    private DrawableCrossFadeFactory(ViewAnimationFactory<T> viewAnimationFactory) {
        this.animationFactory = viewAnimationFactory;
        this.duration = 300;
    }

    public final GlideAnimation<T> build(boolean z, boolean z2) {
        if (z) {
            return NoAnimation.get();
        }
        if (z2) {
            if (!this.firstResourceAnimation) {
                this.firstResourceAnimation = new DrawableCrossFadeViewAnimation(this.animationFactory.build(false, true));
            }
            return this.firstResourceAnimation;
        }
        if (!this.secondResourceAnimation) {
            this.secondResourceAnimation = new DrawableCrossFadeViewAnimation(this.animationFactory.build(false, false));
        }
        return this.secondResourceAnimation;
    }
}
