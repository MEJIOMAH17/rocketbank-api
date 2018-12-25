package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: RocketHeartBeatlLoader.kt */
public final class RocketHeartBeatlLoader extends FrameLayout {
    private RocketAnimationDrawable frameAnimation;
    private ImageView loaderImageView;

    public RocketHeartBeatlLoader(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        initLoader$51fe1fdb(context);
    }

    public RocketHeartBeatlLoader(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        initLoader$51fe1fdb(context);
    }

    public RocketHeartBeatlLoader(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        initLoader$51fe1fdb(context);
    }

    @TargetApi(21)
    public RocketHeartBeatlLoader(Context context, AttributeSet attributeSet, int i, int i2) {
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
        addView(this.loaderImageView);
        if (!isInEditMode()) {
            context = ContextCompat.getDrawable(context, C0859R.drawable.hearting);
            if (context == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
            }
            context = convertFromDrawable((AnimationDrawable) context);
            imageView = this.loaderImageView;
            if (imageView == null) {
                Intrinsics.throwNpe();
            }
            imageView.setBackgroundDrawable((Drawable) context);
            context = this.loaderImageView;
            if (context == null) {
                Intrinsics.throwNpe();
            }
            context = context.getBackground();
            if (context == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAnimationDrawable");
            }
            this.frameAnimation = (RocketAnimationDrawable) context;
            context = this.frameAnimation;
            if (context == null) {
                Intrinsics.throwNpe();
            }
            context.setOneShot(false);
            context = this.frameAnimation;
            if (context == null) {
                Intrinsics.throwNpe();
            }
            context.start();
        }
    }

    private static RocketAnimationDrawable convertFromDrawable(AnimationDrawable animationDrawable) {
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
        return rocketAnimationDrawable;
    }
}
