package android.support.v7.graphics;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class Target {
    public static final Target DARK_MUTED;
    public static final Target DARK_VIBRANT;
    public static final Target LIGHT_MUTED;
    public static final Target LIGHT_VIBRANT;
    public static final Target MUTED;
    public static final Target VIBRANT;
    boolean mIsExclusive = true;
    final float[] mLightnessTargets = new float[3];
    final float[] mSaturationTargets = new float[3];
    final float[] mWeights = new float[3];

    static {
        Target target = new Target();
        LIGHT_VIBRANT = target;
        target.mLightnessTargets[0] = 0.55f;
        target.mLightnessTargets[1] = 0.74f;
        target = LIGHT_VIBRANT;
        target.mSaturationTargets[0] = 0.35f;
        target.mSaturationTargets[1] = 1.0f;
        target = new Target();
        VIBRANT = target;
        target.mLightnessTargets[0] = 0.3f;
        target.mLightnessTargets[1] = 0.5f;
        target.mLightnessTargets[2] = 0.7f;
        target = VIBRANT;
        target.mSaturationTargets[0] = 0.35f;
        target.mSaturationTargets[1] = 1.0f;
        target = new Target();
        DARK_VIBRANT = target;
        target.mLightnessTargets[1] = 0.26f;
        target.mLightnessTargets[2] = 0.45f;
        target = DARK_VIBRANT;
        target.mSaturationTargets[0] = 0.35f;
        target.mSaturationTargets[1] = 1.0f;
        target = new Target();
        LIGHT_MUTED = target;
        target.mLightnessTargets[0] = 0.55f;
        target.mLightnessTargets[1] = 0.74f;
        target = LIGHT_MUTED;
        target.mSaturationTargets[1] = 0.3f;
        target.mSaturationTargets[2] = 0.4f;
        target = new Target();
        MUTED = target;
        target.mLightnessTargets[0] = 0.3f;
        target.mLightnessTargets[1] = 0.5f;
        target.mLightnessTargets[2] = 0.7f;
        target = MUTED;
        target.mSaturationTargets[1] = 0.3f;
        target.mSaturationTargets[2] = 0.4f;
        target = new Target();
        DARK_MUTED = target;
        target.mLightnessTargets[1] = 0.26f;
        target.mLightnessTargets[2] = 0.45f;
        target = DARK_MUTED;
        target.mSaturationTargets[1] = 0.3f;
        target.mSaturationTargets[2] = 0.4f;
    }

    Target() {
        float[] fArr = this.mSaturationTargets;
        fArr[0] = BitmapDescriptorFactory.HUE_RED;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
        fArr = this.mLightnessTargets;
        fArr[0] = BitmapDescriptorFactory.HUE_RED;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
        this.mWeights[0] = 0.24f;
        this.mWeights[1] = 0.52f;
        this.mWeights[2] = 0.24f;
    }
}
