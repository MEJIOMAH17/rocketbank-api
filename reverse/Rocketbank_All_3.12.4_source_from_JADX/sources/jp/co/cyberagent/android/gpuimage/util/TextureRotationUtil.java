package jp.co.cyberagent.android.gpuimage.util;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import jp.co.cyberagent.android.gpuimage.Rotation;

public final class TextureRotationUtil {
    public static final float[] TEXTURE_NO_ROTATION = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED};
    public static final float[] TEXTURE_ROTATED_180 = new float[]{1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f};
    public static final float[] TEXTURE_ROTATED_270 = new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f};
    public static final float[] TEXTURE_ROTATED_90 = new float[]{1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};

    public static float[] getRotation$44ccd82e() {
        Rotation rotation = null;
        switch (rotation) {
            case ROTATION_90:
                return TEXTURE_ROTATED_90;
            case ROTATION_180:
                return TEXTURE_ROTATED_180;
            case ROTATION_270:
                return TEXTURE_ROTATED_270;
            default:
                return TEXTURE_NO_ROTATION;
        }
    }
}
