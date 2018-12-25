package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: CunningCat.kt */
public final class CunningCat extends ImageView {
    private RocketAnimationDrawable frameAnimation;

    public final void resetAnimation() {
        Drawable drawable = getResources().getDrawable(C0859R.drawable.cat_animation);
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        RocketAnimationDrawable rocketAnimationDrawable = new RocketAnimationDrawable();
        int i = 0;
        int numberOfFrames = animationDrawable.getNumberOfFrames() - 1;
        if (numberOfFrames >= 0) {
            while (true) {
                rocketAnimationDrawable.addFrame(animationDrawable.getFrame(i), animationDrawable.getDuration(i));
                if (i == numberOfFrames) {
                    break;
                }
                i++;
            }
        }
        setImageDrawable(rocketAnimationDrawable);
        drawable = getDrawable();
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAnimationDrawable");
        }
        this.frameAnimation = (RocketAnimationDrawable) drawable;
        RocketAnimationDrawable rocketAnimationDrawable2 = this.frameAnimation;
        if (rocketAnimationDrawable2 == null) {
            Intrinsics.throwNpe();
        }
        rocketAnimationDrawable2.setOneShot(true);
        rocketAnimationDrawable2 = this.frameAnimation;
        if (rocketAnimationDrawable2 == null) {
            Intrinsics.throwNpe();
        }
        rocketAnimationDrawable2.start();
    }

    public CunningCat(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        if (isInEditMode() != null) {
            setImageResource(C0859R.drawable.state_1);
        }
    }

    public CunningCat(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        if (isInEditMode() != null) {
            setImageResource(C0859R.drawable.state_1);
        }
    }

    public CunningCat(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        if (isInEditMode() != null) {
            setImageResource(C0859R.drawable.state_1);
        }
    }

    @TargetApi(21)
    public CunningCat(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        if (isInEditMode() != null) {
            setImageResource(C0859R.drawable.state_1);
        }
    }
}
