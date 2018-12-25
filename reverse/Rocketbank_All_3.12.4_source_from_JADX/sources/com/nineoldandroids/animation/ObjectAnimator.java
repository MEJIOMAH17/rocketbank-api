package com.nineoldandroids.animation;

import android.view.View;
import com.nineoldandroids.util.Property;
import com.nineoldandroids.view.animation.AnimatorProxy;
import java.util.HashMap;
import java.util.Map;

public final class ObjectAnimator extends ValueAnimator {
    private static final Map<String, Property> PROXY_PROPERTIES;
    private Property mProperty;
    private String mPropertyName;
    private Object mTarget;

    static {
        Map hashMap = new HashMap();
        PROXY_PROPERTIES = hashMap;
        hashMap.put("alpha", PreHoneycombCompat.ALPHA);
        PROXY_PROPERTIES.put("pivotX", PreHoneycombCompat.PIVOT_X);
        PROXY_PROPERTIES.put("pivotY", PreHoneycombCompat.PIVOT_Y);
        PROXY_PROPERTIES.put("translationX", PreHoneycombCompat.TRANSLATION_X);
        PROXY_PROPERTIES.put("translationY", PreHoneycombCompat.TRANSLATION_Y);
        PROXY_PROPERTIES.put("rotation", PreHoneycombCompat.ROTATION);
        PROXY_PROPERTIES.put("rotationX", PreHoneycombCompat.ROTATION_X);
        PROXY_PROPERTIES.put("rotationY", PreHoneycombCompat.ROTATION_Y);
        PROXY_PROPERTIES.put("scaleX", PreHoneycombCompat.SCALE_X);
        PROXY_PROPERTIES.put("scaleY", PreHoneycombCompat.SCALE_Y);
        PROXY_PROPERTIES.put("scrollX", PreHoneycombCompat.SCROLL_X);
        PROXY_PROPERTIES.put("scrollY", PreHoneycombCompat.SCROLL_Y);
        PROXY_PROPERTIES.put("x", PreHoneycombCompat.f449X);
        PROXY_PROPERTIES.put("y", PreHoneycombCompat.f450Y);
    }

    private ObjectAnimator(Object obj, String str) {
        this.mTarget = obj;
        if (this.mValues != null) {
            obj = this.mValues[0];
            String str2 = obj.mPropertyName;
            obj.mPropertyName = str;
            this.mValuesMap.remove(str2);
            this.mValuesMap.put(str, obj);
        }
        this.mPropertyName = str;
        this.mInitialized = false;
    }

    public static ObjectAnimator ofInt(Object obj, String str, int... iArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator(obj, str);
        objectAnimator.setIntValues(iArr);
        return objectAnimator;
    }

    public final void setIntValues(int... iArr) {
        if (this.mValues != null) {
            if (this.mValues.length != 0) {
                super.setIntValues(iArr);
                return;
            }
        }
        if (this.mProperty != null) {
            setValues(PropertyValuesHolder.ofInt(this.mProperty, iArr));
            return;
        }
        setValues(PropertyValuesHolder.ofInt(this.mPropertyName, iArr));
    }

    public final void setFloatValues(float... fArr) {
        if (this.mValues != null) {
            if (this.mValues.length != 0) {
                super.setFloatValues(fArr);
                return;
            }
        }
        if (this.mProperty != null) {
            setValues(PropertyValuesHolder.ofFloat(this.mProperty, fArr));
            return;
        }
        setValues(PropertyValuesHolder.ofFloat(this.mPropertyName, fArr));
    }

    public final void start() {
        super.start();
    }

    final void initAnimation() {
        if (!this.mInitialized) {
            int i = 0;
            if (this.mProperty == null && AnimatorProxy.NEEDS_PROXY && (this.mTarget instanceof View) && PROXY_PROPERTIES.containsKey(this.mPropertyName)) {
                Property property = (Property) PROXY_PROPERTIES.get(this.mPropertyName);
                if (this.mValues != null) {
                    PropertyValuesHolder propertyValuesHolder = this.mValues[0];
                    String str = propertyValuesHolder.mPropertyName;
                    propertyValuesHolder.setProperty(property);
                    this.mValuesMap.remove(str);
                    this.mValuesMap.put(this.mPropertyName, propertyValuesHolder);
                }
                if (this.mProperty != null) {
                    this.mPropertyName = property.getName();
                }
                this.mProperty = property;
                this.mInitialized = false;
            }
            int length = this.mValues.length;
            while (i < length) {
                this.mValues[i].setupSetterAndGetter(this.mTarget);
                i++;
            }
            super.initAnimation();
        }
    }

    final void animateValue(float f) {
        super.animateValue(f);
        for (PropertyValuesHolder animatedValue : this.mValues) {
            animatedValue.setAnimatedValue(this.mTarget);
        }
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ObjectAnimator@");
        stringBuilder.append(Integer.toHexString(hashCode()));
        stringBuilder.append(", target ");
        stringBuilder.append(this.mTarget);
        String stringBuilder2 = stringBuilder.toString();
        if (this.mValues != null) {
            for (PropertyValuesHolder propertyValuesHolder : this.mValues) {
                StringBuilder stringBuilder3 = new StringBuilder();
                stringBuilder3.append(stringBuilder2);
                stringBuilder3.append("\n    ");
                stringBuilder3.append(propertyValuesHolder.toString());
                stringBuilder2 = stringBuilder3.toString();
            }
        }
        return stringBuilder2;
    }
}
