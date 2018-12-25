package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

final class IntKeyframeSet extends KeyframeSet {
    private int deltaValue;
    private boolean firstTime = 1;
    private int firstValue;
    private int lastValue;

    public IntKeyframeSet(IntKeyframe... intKeyframeArr) {
        super(intKeyframeArr);
    }

    public final Object getValue(float f) {
        return Integer.valueOf(getIntValue(f));
    }

    private IntKeyframeSet clone() {
        ArrayList arrayList = this.mKeyframes;
        int size = this.mKeyframes.size();
        IntKeyframe[] intKeyframeArr = new IntKeyframe[size];
        for (int i = 0; i < size; i++) {
            intKeyframeArr[i] = (IntKeyframe) ((Keyframe) arrayList.get(i)).clone();
        }
        return new IntKeyframeSet(intKeyframeArr);
    }

    public final int getIntValue(float f) {
        if (this.mNumKeyframes == 2) {
            if (this.firstTime) {
                this.firstTime = false;
                this.firstValue = ((IntKeyframe) this.mKeyframes.get(0)).mValue;
                this.lastValue = ((IntKeyframe) this.mKeyframes.get(1)).mValue;
                this.deltaValue = this.lastValue - this.firstValue;
            }
            if (this.mInterpolator != null) {
                f = this.mInterpolator.getInterpolation(f);
            }
            if (this.mEvaluator == null) {
                return this.firstValue + ((int) (f * ((float) this.deltaValue)));
            }
            return ((Number) this.mEvaluator.evaluate(f, Integer.valueOf(this.firstValue), Integer.valueOf(this.lastValue))).intValue();
        } else if (f <= BitmapDescriptorFactory.HUE_RED) {
            r0 = (IntKeyframe) this.mKeyframes.get(0);
            r1 = (IntKeyframe) this.mKeyframes.get(1);
            r2 = r0.mValue;
            r3 = r1.mValue;
            r0 = r0.mFraction;
            r4 = r1.mFraction;
            r1 = r1.getInterpolator();
            if (r1 != null) {
                f = r1.getInterpolation(f);
            }
            f = (f - r0) / (r4 - r0);
            return this.mEvaluator == null ? r2 + ((int) (f * ((float) (r3 - r2)))) : ((Number) this.mEvaluator.evaluate(f, Integer.valueOf(r2), Integer.valueOf(r3))).intValue();
        } else if (f >= 1.0f) {
            r0 = (IntKeyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            r1 = (IntKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            r2 = r0.mValue;
            r3 = r1.mValue;
            r0 = r0.mFraction;
            r4 = r1.mFraction;
            r1 = r1.getInterpolator();
            if (r1 != null) {
                f = r1.getInterpolation(f);
            }
            f = (f - r0) / (r4 - r0);
            return this.mEvaluator == null ? r2 + ((int) (f * ((float) (r3 - r2)))) : ((Number) this.mEvaluator.evaluate(f, Integer.valueOf(r2), Integer.valueOf(r3))).intValue();
        } else {
            Keyframe keyframe = (IntKeyframe) this.mKeyframes.get(0);
            int i = 1;
            while (i < this.mNumKeyframes) {
                Keyframe keyframe2 = (IntKeyframe) this.mKeyframes.get(i);
                if (f < keyframe2.mFraction) {
                    Interpolator interpolator = keyframe2.getInterpolator();
                    if (interpolator != null) {
                        f = interpolator.getInterpolation(f);
                    }
                    f = (f - keyframe.mFraction) / (keyframe2.mFraction - keyframe.mFraction);
                    i = keyframe.mValue;
                    int i2 = keyframe2.mValue;
                    return this.mEvaluator == null ? i + ((int) (f * ((float) (i2 - i)))) : ((Number) this.mEvaluator.evaluate(f, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
                } else {
                    i++;
                    keyframe = keyframe2;
                }
            }
            return ((Number) ((Keyframe) this.mKeyframes.get(this.mNumKeyframes - 1)).getValue()).intValue();
        }
    }
}
