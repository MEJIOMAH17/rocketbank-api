package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

final class FloatKeyframeSet extends KeyframeSet {
    private float deltaValue;
    private boolean firstTime = 1;
    private float firstValue;
    private float lastValue;

    public FloatKeyframeSet(FloatKeyframe... floatKeyframeArr) {
        super(floatKeyframeArr);
    }

    public final Object getValue(float f) {
        return Float.valueOf(getFloatValue(f));
    }

    private FloatKeyframeSet clone() {
        ArrayList arrayList = this.mKeyframes;
        int size = this.mKeyframes.size();
        FloatKeyframe[] floatKeyframeArr = new FloatKeyframe[size];
        for (int i = 0; i < size; i++) {
            floatKeyframeArr[i] = (FloatKeyframe) ((Keyframe) arrayList.get(i)).clone();
        }
        return new FloatKeyframeSet(floatKeyframeArr);
    }

    public final float getFloatValue(float f) {
        if (this.mNumKeyframes == 2) {
            if (this.firstTime) {
                this.firstTime = false;
                this.firstValue = ((FloatKeyframe) this.mKeyframes.get(0)).mValue;
                this.lastValue = ((FloatKeyframe) this.mKeyframes.get(1)).mValue;
                this.deltaValue = this.lastValue - this.firstValue;
            }
            if (this.mInterpolator != null) {
                f = this.mInterpolator.getInterpolation(f);
            }
            if (this.mEvaluator == null) {
                return this.firstValue + (f * this.deltaValue);
            }
            return ((Number) this.mEvaluator.evaluate(f, Float.valueOf(this.firstValue), Float.valueOf(this.lastValue))).floatValue();
        } else if (f <= BitmapDescriptorFactory.HUE_RED) {
            r0 = (FloatKeyframe) this.mKeyframes.get(0);
            r1 = (FloatKeyframe) this.mKeyframes.get(1);
            r2 = r0.mValue;
            r3 = r1.mValue;
            r0 = r0.mFraction;
            r4 = r1.mFraction;
            r1 = r1.getInterpolator();
            if (r1 != null) {
                f = r1.getInterpolation(f);
            }
            f = (f - r0) / (r4 - r0);
            return this.mEvaluator == null ? r2 + (f * (r3 - r2)) : ((Number) this.mEvaluator.evaluate(f, Float.valueOf(r2), Float.valueOf(r3))).floatValue();
        } else if (f >= 1.0f) {
            r0 = (FloatKeyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            r1 = (FloatKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            r2 = r0.mValue;
            r3 = r1.mValue;
            r0 = r0.mFraction;
            r4 = r1.mFraction;
            r1 = r1.getInterpolator();
            if (r1 != null) {
                f = r1.getInterpolation(f);
            }
            f = (f - r0) / (r4 - r0);
            return this.mEvaluator == null ? r2 + (f * (r3 - r2)) : ((Number) this.mEvaluator.evaluate(f, Float.valueOf(r2), Float.valueOf(r3))).floatValue();
        } else {
            Keyframe keyframe = (FloatKeyframe) this.mKeyframes.get(0);
            int i = 1;
            while (i < this.mNumKeyframes) {
                Keyframe keyframe2 = (FloatKeyframe) this.mKeyframes.get(i);
                if (f < keyframe2.mFraction) {
                    Interpolator interpolator = keyframe2.getInterpolator();
                    if (interpolator != null) {
                        f = interpolator.getInterpolation(f);
                    }
                    f = (f - keyframe.mFraction) / (keyframe2.mFraction - keyframe.mFraction);
                    r0 = keyframe.mValue;
                    float f2 = keyframe2.mValue;
                    return this.mEvaluator == null ? r0 + (f * (f2 - r0)) : ((Number) this.mEvaluator.evaluate(f, Float.valueOf(r0), Float.valueOf(f2))).floatValue();
                } else {
                    i++;
                    keyframe = keyframe2;
                }
            }
            return ((Number) ((Keyframe) this.mKeyframes.get(this.mNumKeyframes - 1)).getValue()).floatValue();
        }
    }
}
