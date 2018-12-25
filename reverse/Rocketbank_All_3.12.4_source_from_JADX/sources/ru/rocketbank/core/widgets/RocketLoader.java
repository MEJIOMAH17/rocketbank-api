package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketAnimationDrawable.OnEndListener;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: RocketLoader.kt */
public final class RocketLoader extends FrameLayout implements OnEndListener {
    private boolean error;
    private RocketAnimationDrawable frameAnimation;
    private ImageView loaderImageView;
    private OnEndAnimationListener onEndAnimationListener;
    private AnimationDrawable rocketAnimationDrawableError;
    private AnimationDrawable rocketAnimationDrawableSucces;

    /* compiled from: RocketLoader.kt */
    public interface OnEndAnimationListener {
        void animationEnd(boolean z);
    }

    public final void stop() {
        if (this.onEndAnimationListener != null) {
            OnEndAnimationListener onEndAnimationListener = this.onEndAnimationListener;
            if (onEndAnimationListener == null) {
                Intrinsics.throwNpe();
            }
            onEndAnimationListener.animationEnd(this.error);
        }
    }

    public final void resetAnimation() {
        this.error = false;
        Drawable drawable = ContextCompat.getDrawable(getContext(), C0859R.drawable.rocket_spin_animation_progress);
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        RocketAnimationDrawable rocketAnimationDrawable = new RocketAnimationDrawable();
        int numberOfFrames = animationDrawable.getNumberOfFrames() - 1;
        if (numberOfFrames >= 0) {
            int i = 0;
            while (true) {
                rocketAnimationDrawable.addFrame(animationDrawable.getFrame(i), animationDrawable.getDuration(i));
                if (i == numberOfFrames) {
                    break;
                }
                i++;
            }
        }
        ImageView imageView = this.loaderImageView;
        if (imageView == null) {
            Intrinsics.throwNpe();
        }
        imageView.setBackgroundDrawable(rocketAnimationDrawable);
        imageView = this.loaderImageView;
        if (imageView == null) {
            Intrinsics.throwNpe();
        }
        drawable = imageView.getBackground();
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAnimationDrawable");
        }
        this.frameAnimation = (RocketAnimationDrawable) drawable;
        RocketAnimationDrawable rocketAnimationDrawable2 = this.frameAnimation;
        if (rocketAnimationDrawable2 == null) {
            Intrinsics.throwNpe();
        }
        rocketAnimationDrawable2.setEndListener(this);
        rocketAnimationDrawable2 = this.frameAnimation;
        if (rocketAnimationDrawable2 == null) {
            Intrinsics.throwNpe();
        }
        rocketAnimationDrawable2.setOneShot(false);
        RocketAnimationDrawable rocketAnimationDrawable3 = this.frameAnimation;
        if (rocketAnimationDrawable3 == null) {
            Intrinsics.throwNpe();
        }
        rocketAnimationDrawable3.start();
    }

    public RocketLoader(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        initLoader$51fe1fdb(context);
    }

    public RocketLoader(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        initLoader$51fe1fdb(context);
    }

    public RocketLoader(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        initLoader$51fe1fdb(context);
    }

    @TargetApi(21)
    public RocketLoader(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        initLoader$51fe1fdb(context);
    }

    private final void initLoader$51fe1fdb(Context context) {
        this.loaderImageView = new ImageView(context);
        ImageView imageView = this.loaderImageView;
        if (imageView == null) {
            Intrinsics.throwNpe();
        }
        imageView.setScaleType(ScaleType.FIT_XY);
        Drawable drawable = ContextCompat.getDrawable(context, C0859R.drawable.rocket_spin_animation_success);
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        }
        this.rocketAnimationDrawableSucces = (AnimationDrawable) drawable;
        context = ContextCompat.getDrawable(context, C0859R.drawable.rocket_spin_animation_error);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        }
        this.rocketAnimationDrawableError = (AnimationDrawable) context;
        addView((View) this.loaderImageView);
        if (isInEditMode() == null) {
            resetAnimation();
        }
    }

    public final void setError() {
        this.error = true;
        AnimationDrawable animationDrawable = this.rocketAnimationDrawableError;
        if (animationDrawable == null) {
            Intrinsics.throwNpe();
        }
        int numberOfFrames = animationDrawable.getNumberOfFrames() - 1;
        if (numberOfFrames >= 0) {
            int i = 0;
            while (true) {
                RocketAnimationDrawable rocketAnimationDrawable = this.frameAnimation;
                if (rocketAnimationDrawable == null) {
                    Intrinsics.throwNpe();
                }
                AnimationDrawable animationDrawable2 = this.rocketAnimationDrawableError;
                if (animationDrawable2 == null) {
                    Intrinsics.throwNpe();
                }
                Drawable frame = animationDrawable2.getFrame(i);
                AnimationDrawable animationDrawable3 = this.rocketAnimationDrawableError;
                if (animationDrawable3 == null) {
                    Intrinsics.throwNpe();
                }
                rocketAnimationDrawable.addEndingFrame(frame, animationDrawable3.getDuration(i));
                if (i == numberOfFrames) {
                    break;
                }
                i++;
            }
        }
        RocketAnimationDrawable rocketAnimationDrawable2 = this.frameAnimation;
        if (rocketAnimationDrawable2 == null) {
            Intrinsics.throwNpe();
        }
        rocketAnimationDrawable2.swithEnding();
    }

    public final void setSuccess() {
        int i = 0;
        this.error = false;
        AnimationDrawable animationDrawable = this.rocketAnimationDrawableSucces;
        if (animationDrawable == null) {
            Intrinsics.throwNpe();
        }
        int numberOfFrames = animationDrawable.getNumberOfFrames() - 1;
        if (numberOfFrames >= 0) {
            while (true) {
                RocketAnimationDrawable rocketAnimationDrawable = this.frameAnimation;
                if (rocketAnimationDrawable == null) {
                    Intrinsics.throwNpe();
                }
                AnimationDrawable animationDrawable2 = this.rocketAnimationDrawableSucces;
                if (animationDrawable2 == null) {
                    Intrinsics.throwNpe();
                }
                Drawable frame = animationDrawable2.getFrame(i);
                AnimationDrawable animationDrawable3 = this.rocketAnimationDrawableSucces;
                if (animationDrawable3 == null) {
                    Intrinsics.throwNpe();
                }
                rocketAnimationDrawable.addEndingFrame(frame, animationDrawable3.getDuration(i));
                if (i == numberOfFrames) {
                    break;
                }
                i++;
            }
        }
        RocketAnimationDrawable rocketAnimationDrawable2 = this.frameAnimation;
        if (rocketAnimationDrawable2 == null) {
            Intrinsics.throwNpe();
        }
        rocketAnimationDrawable2.swithEnding();
    }

    public final boolean hasError() {
        return this.error;
    }

    public final void setOnEndAnimation(OnEndAnimationListener onEndAnimationListener) {
        this.onEndAnimationListener = onEndAnimationListener;
    }
}
