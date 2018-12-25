package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;

class KeyframeSet {
    TypeEvaluator mEvaluator;
    Keyframe mFirstKeyframe;
    Interpolator mInterpolator;
    ArrayList<Keyframe> mKeyframes = new ArrayList();
    Keyframe mLastKeyframe;
    int mNumKeyframes;

    public KeyframeSet(Keyframe... keyframeArr) {
        this.mNumKeyframes = keyframeArr.length;
        this.mKeyframes.addAll(Arrays.asList(keyframeArr));
        this.mFirstKeyframe = (Keyframe) this.mKeyframes.get(0);
        this.mLastKeyframe = (Keyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
        this.mInterpolator = this.mLastKeyframe.getInterpolator();
    }

    public KeyframeSet clone() {
        ArrayList arrayList = this.mKeyframes;
        int size = this.mKeyframes.size();
        Keyframe[] keyframeArr = new Keyframe[size];
        for (int i = 0; i < size; i++) {
            keyframeArr[i] = ((Keyframe) arrayList.get(i)).clone();
        }
        return new KeyframeSet(keyframeArr);
    }

    public Object getValue(float f) {
        if (this.mNumKeyframes == 2) {
            if (this.mInterpolator != null) {
                f = this.mInterpolator.getInterpolation(f);
            }
            return this.mEvaluator.evaluate(f, this.mFirstKeyframe.getValue(), this.mLastKeyframe.getValue());
        }
        int i = 1;
        Keyframe keyframe;
        Interpolator interpolator;
        float f2;
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            keyframe = (Keyframe) this.mKeyframes.get(1);
            interpolator = keyframe.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            f2 = this.mFirstKeyframe.mFraction;
            return this.mEvaluator.evaluate((f - f2) / (keyframe.mFraction - f2), this.mFirstKeyframe.getValue(), keyframe.getValue());
        } else if (f >= 1.0f) {
            keyframe = (Keyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            interpolator = this.mLastKeyframe.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            f2 = keyframe.mFraction;
            return this.mEvaluator.evaluate((f - f2) / (this.mLastKeyframe.mFraction - f2), keyframe.getValue(), this.mLastKeyframe.getValue());
        } else {
            keyframe = this.mFirstKeyframe;
            while (i < this.mNumKeyframes) {
                Keyframe keyframe2 = (Keyframe) this.mKeyframes.get(i);
                if (f < keyframe2.mFraction) {
                    Interpolator interpolator2 = keyframe2.getInterpolator();
                    if (interpolator2 != null) {
                        f = interpolator2.getInterpolation(f);
                    }
                    float f3 = keyframe.mFraction;
                    return this.mEvaluator.evaluate((f - f3) / (keyframe2.mFraction - f3), keyframe.getValue(), keyframe2.getValue());
                }
                i++;
                keyframe = keyframe2;
            }
            return this.mLastKeyframe.getValue();
        }
    }

    public String toString() {
        String str = " ";
        for (int i = 0; i < this.mNumKeyframes; i++) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(((Keyframe) this.mKeyframes.get(i)).getValue());
            stringBuilder.append("  ");
            str = stringBuilder.toString();
        }
        return str;
    }
}
