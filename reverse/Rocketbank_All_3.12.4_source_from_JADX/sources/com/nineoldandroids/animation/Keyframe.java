package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public abstract class Keyframe implements Cloneable {
    float mFraction;
    boolean mHasValue = false;
    private Interpolator mInterpolator = null;
    Class mValueType;

    static class FloatKeyframe extends Keyframe {
        float mValue;

        FloatKeyframe(float f, float f2) {
            this.mFraction = f;
            this.mValue = f2;
            this.mValueType = Float.TYPE;
            this.mHasValue = true;
        }

        FloatKeyframe() {
            this.mFraction = BitmapDescriptorFactory.HUE_RED;
            this.mValueType = Float.TYPE;
        }

        public final Object getValue() {
            return Float.valueOf(this.mValue);
        }

        public final void setValue(Object obj) {
            if (obj != null && obj.getClass() == Float.class) {
                this.mValue = ((Float) obj).floatValue();
                this.mHasValue = true;
            }
        }
    }

    static class IntKeyframe extends Keyframe {
        int mValue;

        IntKeyframe(float f, int i) {
            this.mFraction = f;
            this.mValue = i;
            this.mValueType = Integer.TYPE;
            this.mHasValue = true;
        }

        IntKeyframe() {
            this.mFraction = BitmapDescriptorFactory.HUE_RED;
            this.mValueType = Integer.TYPE;
        }

        public final Object getValue() {
            return Integer.valueOf(this.mValue);
        }

        public final void setValue(Object obj) {
            if (obj != null && obj.getClass() == Integer.class) {
                this.mValue = ((Integer) obj).intValue();
                this.mHasValue = true;
            }
        }
    }

    public abstract Keyframe clone();

    public abstract Object getValue();

    public abstract void setValue(Object obj);

    public final Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    public final void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }
}
