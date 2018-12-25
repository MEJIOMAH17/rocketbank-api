package me.zhanghai.android.materialprogressbar.internal;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.Property;

class ObjectAnimatorCompatBase {
    private static final int NUM_POINTS = 201;

    private ObjectAnimatorCompatBase() {
    }

    public static ObjectAnimator ofArgb(Object obj, String str, int... iArr) {
        obj = ObjectAnimator.ofInt(obj, str, iArr);
        obj.setEvaluator(new ArgbEvaluator());
        return obj;
    }

    public static <T> ObjectAnimator ofArgb(T t, Property<T, Integer> property, int... iArr) {
        t = ObjectAnimator.ofInt(t, property, iArr);
        t.setEvaluator(new ArgbEvaluator());
        return t;
    }

    public static ObjectAnimator ofFloat(Object obj, String str, String str2, Path path) {
        float[] fArr = new float[NUM_POINTS];
        float[] fArr2 = new float[NUM_POINTS];
        calculateXYValues(path, fArr, fArr2);
        str = PropertyValuesHolder.ofFloat(str, fArr);
        str2 = PropertyValuesHolder.ofFloat(str2, fArr2);
        return ObjectAnimator.ofPropertyValuesHolder(obj, new PropertyValuesHolder[]{str, str2});
    }

    public static <T> ObjectAnimator ofFloat(T t, Property<T, Float> property, Property<T, Float> property2, Path path) {
        float[] fArr = new float[NUM_POINTS];
        float[] fArr2 = new float[NUM_POINTS];
        calculateXYValues(path, fArr, fArr2);
        property = PropertyValuesHolder.ofFloat(property, fArr);
        property2 = PropertyValuesHolder.ofFloat(property2, fArr2);
        return ObjectAnimator.ofPropertyValuesHolder(t, new PropertyValuesHolder[]{property, property2});
    }

    public static ObjectAnimator ofInt(Object obj, String str, String str2, Path path) {
        int[] iArr = new int[NUM_POINTS];
        int[] iArr2 = new int[NUM_POINTS];
        calculateXYValues(path, iArr, iArr2);
        str = PropertyValuesHolder.ofInt(str, iArr);
        str2 = PropertyValuesHolder.ofInt(str2, iArr2);
        return ObjectAnimator.ofPropertyValuesHolder(obj, new PropertyValuesHolder[]{str, str2});
    }

    public static <T> ObjectAnimator ofInt(T t, Property<T, Integer> property, Property<T, Integer> property2, Path path) {
        int[] iArr = new int[NUM_POINTS];
        int[] iArr2 = new int[NUM_POINTS];
        calculateXYValues(path, iArr, iArr2);
        property = PropertyValuesHolder.ofInt(property, iArr);
        property2 = PropertyValuesHolder.ofInt(property2, iArr2);
        return ObjectAnimator.ofPropertyValuesHolder(t, new PropertyValuesHolder[]{property, property2});
    }

    private static void calculateXYValues(Path path, float[] fArr, float[] fArr2) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        path = pathMeasure.getLength();
        float[] fArr3 = new float[2];
        for (int i = 0; i < NUM_POINTS; i++) {
            pathMeasure.getPosTan((((float) i) * path) / 200.0f, fArr3, null);
            fArr[i] = fArr3[0];
            fArr2[i] = fArr3[1];
        }
    }

    private static void calculateXYValues(Path path, int[] iArr, int[] iArr2) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        path = pathMeasure.getLength();
        float[] fArr = new float[2];
        for (int i = 0; i < NUM_POINTS; i++) {
            pathMeasure.getPosTan((((float) i) * path) / 200.0f, fArr, null);
            iArr[i] = Math.round(fArr[0]);
            iArr2[i] = Math.round(fArr[1]);
        }
    }
}
