package com.bumptech.glide.request.animation;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.request.animation.GlideAnimation.ViewAdapter;

public final class DrawableCrossFadeViewAnimation<T extends Drawable> implements GlideAnimation<T> {
    private final GlideAnimation<T> defaultAnimation;
    private final int duration = 300;

    public final /* bridge */ /* synthetic */ boolean animate(Object obj, ViewAdapter viewAdapter) {
        Drawable drawable = (Drawable) obj;
        if (viewAdapter.getCurrentDrawable() != null) {
            Drawable transitionDrawable = new TransitionDrawable(new Drawable[]{viewAdapter.getCurrentDrawable(), drawable});
            transitionDrawable.setCrossFadeEnabled(true);
            transitionDrawable.startTransition(300);
            viewAdapter.setDrawable(transitionDrawable);
            return true;
        }
        this.defaultAnimation.animate(drawable, viewAdapter);
        return false;
    }

    public DrawableCrossFadeViewAnimation(GlideAnimation<T> glideAnimation) {
        this.defaultAnimation = glideAnimation;
    }
}
