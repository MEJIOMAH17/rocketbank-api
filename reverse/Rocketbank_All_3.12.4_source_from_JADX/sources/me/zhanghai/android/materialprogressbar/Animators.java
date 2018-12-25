package me.zhanghai.android.materialprogressbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Path;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import me.zhanghai.android.materialprogressbar.Interpolators.INDETERMINATE_HORIZONTAL_RECT1_SCALE_X;
import me.zhanghai.android.materialprogressbar.Interpolators.INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X;
import me.zhanghai.android.materialprogressbar.Interpolators.INDETERMINATE_HORIZONTAL_RECT2_SCALE_X;
import me.zhanghai.android.materialprogressbar.Interpolators.INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X;
import me.zhanghai.android.materialprogressbar.Interpolators.LINEAR;
import me.zhanghai.android.materialprogressbar.Interpolators.TRIM_PATH_END;
import me.zhanghai.android.materialprogressbar.Interpolators.TRIM_PATH_START;
import me.zhanghai.android.materialprogressbar.internal.ObjectAnimatorCompat;

class Animators {
    private static final Path PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X;
    private static final Path PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X;
    private static final Path PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X;
    private static final Path PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X;

    private Animators() {
    }

    static {
        Path path = new Path();
        PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X = path;
        path.moveTo(-522.6f, BitmapDescriptorFactory.HUE_RED);
        PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X.rCubicTo(48.89972f, BitmapDescriptorFactory.HUE_RED, 166.02657f, BitmapDescriptorFactory.HUE_RED, 301.2173f, BitmapDescriptorFactory.HUE_RED);
        PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X.rCubicTo(197.58128f, BitmapDescriptorFactory.HUE_RED, 420.9827f, BitmapDescriptorFactory.HUE_RED, 420.9827f, BitmapDescriptorFactory.HUE_RED);
        path = new Path();
        PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X = path;
        path.moveTo(BitmapDescriptorFactory.HUE_RED, 0.1f);
        PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X.lineTo(1.0f, 0.8268492f);
        PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X.lineTo(2.0f, 0.1f);
        path = new Path();
        PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X = path;
        path.moveTo(-197.6f, BitmapDescriptorFactory.HUE_RED);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X.rCubicTo(14.28182f, BitmapDescriptorFactory.HUE_RED, 85.07782f, BitmapDescriptorFactory.HUE_RED, 135.54689f, BitmapDescriptorFactory.HUE_RED);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X.rCubicTo(54.26191f, BitmapDescriptorFactory.HUE_RED, 90.42461f, BitmapDescriptorFactory.HUE_RED, 168.24332f, BitmapDescriptorFactory.HUE_RED);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X.rCubicTo(144.72154f, BitmapDescriptorFactory.HUE_RED, 316.40982f, BitmapDescriptorFactory.HUE_RED, 316.40982f, BitmapDescriptorFactory.HUE_RED);
        path = new Path();
        PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X = path;
        path.moveTo(BitmapDescriptorFactory.HUE_RED, 0.1f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X.lineTo(1.0f, 0.5713795f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X.lineTo(2.0f, 0.90995026f);
        PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X.lineTo(3.0f, 0.1f);
    }

    public static Animator createIndeterminateHorizontalRect1(Object obj) {
        ObjectAnimator ofFloat = ObjectAnimatorCompat.ofFloat(obj, "translateX", null, PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X);
        ofFloat.setDuration(2000);
        ofFloat.setInterpolator(INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X.INSTANCE);
        ofFloat.setRepeatCount(-1);
        obj = ObjectAnimatorCompat.ofFloat(obj, null, "scaleX", PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X);
        obj.setDuration(2000);
        obj.setInterpolator(INDETERMINATE_HORIZONTAL_RECT1_SCALE_X.INSTANCE);
        obj.setRepeatCount(-1);
        Animator animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofFloat, obj});
        return animatorSet;
    }

    public static Animator createIndeterminateHorizontalRect2(Object obj) {
        ObjectAnimator ofFloat = ObjectAnimatorCompat.ofFloat(obj, "translateX", null, PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X);
        ofFloat.setDuration(2000);
        ofFloat.setInterpolator(INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X.INSTANCE);
        ofFloat.setRepeatCount(-1);
        obj = ObjectAnimatorCompat.ofFloat(obj, null, "scaleX", PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X);
        obj.setDuration(2000);
        obj.setInterpolator(INDETERMINATE_HORIZONTAL_RECT2_SCALE_X.INSTANCE);
        obj.setRepeatCount(-1);
        Animator animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofFloat, obj});
        return animatorSet;
    }

    public static Animator createIndeterminate(Object obj) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(obj, "trimPathStart", new float[]{BitmapDescriptorFactory.HUE_RED, 0.75f});
        ofFloat.setDuration(1333);
        ofFloat.setInterpolator(TRIM_PATH_START.INSTANCE);
        ofFloat.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(obj, "trimPathEnd", new float[]{BitmapDescriptorFactory.HUE_RED, 0.75f});
        ofFloat2.setDuration(1333);
        ofFloat2.setInterpolator(TRIM_PATH_END.INSTANCE);
        ofFloat2.setRepeatCount(-1);
        obj = ObjectAnimator.ofFloat(obj, "trimPathOffset", new float[]{BitmapDescriptorFactory.HUE_RED, 0.25f});
        obj.setDuration(1333);
        obj.setInterpolator(LINEAR.INSTANCE);
        obj.setRepeatCount(-1);
        Animator animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, obj});
        return animatorSet;
    }

    public static Animator createIndeterminateRotation(Object obj) {
        obj = ObjectAnimator.ofFloat(obj, "rotation", new float[]{BitmapDescriptorFactory.HUE_RED, 720.0f});
        obj.setDuration(6665);
        obj.setInterpolator(LINEAR.INSTANCE);
        obj.setRepeatCount(-1);
        return obj;
    }
}
