package jp.co.cyberagent.android.gpuimage;

import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;

public enum Rotation {
    NORMAL,
    ROTATION_90,
    ROTATION_180,
    ROTATION_270;

    public final int asInt() {
        switch (this) {
            case NORMAL:
                return 0;
            case ROTATION_90:
                return 90;
            case ROTATION_180:
                return SubsamplingScaleImageView.ORIENTATION_180;
            case ROTATION_270:
                return SubsamplingScaleImageView.ORIENTATION_270;
            default:
                throw new IllegalStateException("Unknown Rotation!");
        }
    }

    public static Rotation fromInt(int i) {
        if (i == 0) {
            return NORMAL;
        }
        if (i == 90) {
            return ROTATION_90;
        }
        if (i == SubsamplingScaleImageView.ORIENTATION_180) {
            return ROTATION_180;
        }
        if (i == SubsamplingScaleImageView.ORIENTATION_270) {
            return ROTATION_270;
        }
        if (i == 360) {
            return NORMAL;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(i);
        stringBuilder.append(" is an unknown rotation. Needs to be either 0, 90, 180 or 270!");
        throw new IllegalStateException(stringBuilder.toString());
    }
}
