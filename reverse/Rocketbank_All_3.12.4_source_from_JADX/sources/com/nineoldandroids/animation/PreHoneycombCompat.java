package com.nineoldandroids.animation;

import android.view.View;
import com.nineoldandroids.util.FloatProperty;
import com.nineoldandroids.util.IntProperty;
import com.nineoldandroids.util.Property;
import com.nineoldandroids.view.animation.AnimatorProxy;

final class PreHoneycombCompat {
    static Property<View, Float> ALPHA = new FloatProperty<View>("alpha") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getAlpha());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setAlpha(f);
        }
    };
    static Property<View, Float> PIVOT_X = new FloatProperty<View>("pivotX") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getPivotX());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setPivotX(f);
        }
    };
    static Property<View, Float> PIVOT_Y = new FloatProperty<View>("pivotY") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getPivotY());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setPivotY(f);
        }
    };
    static Property<View, Float> ROTATION = new FloatProperty<View>("rotation") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getRotation());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setRotation(f);
        }
    };
    static Property<View, Float> ROTATION_X = new FloatProperty<View>("rotationX") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getRotationX());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setRotationX(f);
        }
    };
    static Property<View, Float> ROTATION_Y = new FloatProperty<View>("rotationY") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getRotationY());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setRotationY(f);
        }
    };
    static Property<View, Float> SCALE_X = new FloatProperty<View>("scaleX") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getScaleX());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setScaleX(f);
        }
    };
    static Property<View, Float> SCALE_Y = new FloatProperty<View>("scaleY") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getScaleY());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setScaleY(f);
        }
    };
    static Property<View, Integer> SCROLL_X = new IntProperty<View>("scrollX") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Integer.valueOf(AnimatorProxy.wrap((View) obj).getScrollX());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, int i) {
            AnimatorProxy.wrap((View) obj).setScrollX(i);
        }
    };
    static Property<View, Integer> SCROLL_Y = new IntProperty<View>("scrollY") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Integer.valueOf(AnimatorProxy.wrap((View) obj).getScrollY());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, int i) {
            AnimatorProxy.wrap((View) obj).setScrollY(i);
        }
    };
    static Property<View, Float> TRANSLATION_X = new FloatProperty<View>("translationX") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getTranslationX());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setTranslationX(f);
        }
    };
    static Property<View, Float> TRANSLATION_Y = new FloatProperty<View>("translationY") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getTranslationY());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setTranslationY(f);
        }
    };
    /* renamed from: X */
    static Property<View, Float> f449X = new FloatProperty<View>("x") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getX());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setX(f);
        }
    };
    /* renamed from: Y */
    static Property<View, Float> f450Y = new FloatProperty<View>("y") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return Float.valueOf(AnimatorProxy.wrap((View) obj).getY());
        }

        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f) {
            AnimatorProxy.wrap((View) obj).setY(f);
        }
    };
}
