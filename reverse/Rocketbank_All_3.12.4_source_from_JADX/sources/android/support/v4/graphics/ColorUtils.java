package android.support.v4.graphics;

import android.graphics.Color;
import android.support.v4.view.ViewCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class ColorUtils {
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal();

    public static int compositeColors(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int i3 = 255 - alpha2;
        int i4 = 255 - (((255 - alpha) * i3) / 255);
        int i5 = 0;
        int red = i4 == 0 ? 0 : (((Color.red(i) * 255) * alpha2) + ((Color.red(i2) * alpha) * i3)) / (i4 * 255);
        int green = i4 == 0 ? 0 : (((Color.green(i) * 255) * alpha2) + ((Color.green(i2) * alpha) * i3)) / (i4 * 255);
        i = Color.blue(i);
        i2 = Color.blue(i2);
        if (i4 != 0) {
            i5 = (((i * 255) * alpha2) + ((i2 * alpha) * i3)) / (i4 * 255);
        }
        return Color.argb(i4, red, green, i5);
    }

    private static double calculateContrast(int i, int i2) {
        if (Color.alpha(i2) != 255) {
            StringBuilder stringBuilder = new StringBuilder("background can not be translucent: #");
            stringBuilder.append(Integer.toHexString(i2));
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        if (Color.alpha(i) < 255) {
            i = compositeColors(i, i2);
        }
        double calculateLuminance = calculateLuminance(i) + 0.05d;
        i = calculateLuminance(i2) + -1717986918;
        return Math.max(calculateLuminance, i) / Math.min(calculateLuminance, i);
    }

    public static int calculateMinimumAlpha(int i, int i2, float f) {
        if (Color.alpha(i2) != 255) {
            f = new StringBuilder("background can not be translucent: #");
            f.append(Integer.toHexString(i2));
            throw new IllegalArgumentException(f.toString());
        }
        i &= ViewCompat.MEASURED_SIZE_MASK;
        double d = (double) f;
        if (calculateContrast(ViewCompat.MEASURED_STATE_MASK | i, i2) < d) {
            return -1;
        }
        f = BitmapDescriptorFactory.HUE_RED;
        int i3 = 0;
        int i4 = 255;
        while (f <= 10 && i4 - i3 > 1) {
            int i5 = (i3 + i4) / 2;
            if (i5 >= 0) {
                if (i5 <= 255) {
                    if (calculateContrast((i5 << 24) | i, i2) < d) {
                        i3 = i5;
                    } else {
                        i4 = i5;
                    }
                    f++;
                }
            }
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return i4;
    }

    public static void RGBToHSL(int i, int i2, int i3, float[] fArr) {
        i = ((float) i) / 1132396544;
        i2 = ((float) i2) / 1132396544;
        i3 = ((float) i3) / 1132396544;
        float max = Math.max(i, Math.max(i2, i3));
        float min = Math.min(i, Math.min(i2, i3));
        float f = max - min;
        float f2 = (max + min) / 2.0f;
        if (max == min) {
            i = 0;
            f = i;
        } else {
            i = max == i ? ((i2 - i3) / f) % 1086324736 : max == i2 ? ((i3 - i) / f) + 1073741824 : ((i - i2) / f) + 1082130432;
            f /= 1065353216 - Math.abs((2.0f * f2) - 1.0f);
        }
        i = (i * 1114636288) % 1135869952;
        if (i < 0) {
            i += 1135869952;
        }
        if (i < 0) {
            i = 0;
        } else if (i > 1135869952) {
            i = 1135869952;
        }
        fArr[0] = i;
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f = BitmapDescriptorFactory.HUE_RED;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        fArr[1] = f;
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 = BitmapDescriptorFactory.HUE_RED;
        } else if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        fArr[2] = f2;
    }

    public static void colorToHSL(int i, float[] fArr) {
        RGBToHSL(Color.red(i), Color.green(i), Color.blue(i), fArr);
    }

    public static int setAlphaComponent(int i, int i2) {
        if (i2 >= 0) {
            if (i2 <= 255) {
                return (i & ViewCompat.MEASURED_SIZE_MASK) | (i2 << 24);
            }
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }

    private static double calculateLuminance(int i) {
        double[] dArr = (double[]) TEMP_ARRAY.get();
        if (dArr == null) {
            dArr = new double[3];
            TEMP_ARRAY.set(dArr);
        }
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d;
        double d2 = ((double) red) / 255.0d;
        if (d2 < 0.04045d) {
            d2 /= 12.92d;
        } else {
            d2 = Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        }
        double d3 = ((double) green) / 255.0d;
        if (d3 < 0.04045d) {
            d3 /= 12.92d;
            d = 2.4d;
        } else {
            d = 2.4d;
            d3 = Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
        }
        double d4 = ((double) blue) / 255.0d;
        if (d4 < 0.04045d) {
            d4 /= 12.92d;
        } else {
            d4 = Math.pow((d4 + 0.055d) / 1.055d, d);
        }
        dArr[0] = (((0.4124d * d2) + (0.3576d * d3)) + (0.1805d * d4)) * 100.0d;
        dArr[1] = (((0.2126d * d2) + (0.7152d * d3)) + (0.0722d * d4)) * 100.0d;
        dArr[2] = (((d2 * 0.0193d) + (d3 * 0.1192d)) + (d4 * 0.9505d)) * 100.0d;
        return dArr[1] / 100.0d;
    }
}
