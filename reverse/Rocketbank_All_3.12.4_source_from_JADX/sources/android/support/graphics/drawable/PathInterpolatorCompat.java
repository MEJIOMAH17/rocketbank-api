package android.support.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.PathParser;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;

@RestrictTo
public final class PathInterpolatorCompat implements Interpolator {
    private float[] mX;
    private float[] mY;

    public PathInterpolatorCompat(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    private PathInterpolatorCompat(Resources resources, Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        int[] iArr = AndroidResources.STYLEABLE_PATH_INTERPOLATOR;
        if (theme == null) {
            resources = resources.obtainAttributes(attributeSet, iArr);
        } else {
            resources = theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        }
        attributeSet = true;
        if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null ? 1 : null) != null) {
            if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") == null) {
                attributeSet = null;
            }
            theme = attributeSet == null ? null : resources.getString(4);
            attributeSet = PathParser.createPathFromPathData(theme);
            if (attributeSet == null) {
                throw new InflateException("The path is null, which is created from ".concat(String.valueOf(theme)));
            }
            initPath(attributeSet);
        } else {
            if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "controlX1") != null ? 1 : null) == null) {
                throw new InflateException("pathInterpolator requires the controlX1 attribute");
            }
            if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "controlY1") != null ? 1 : null) == null) {
                throw new InflateException("pathInterpolator requires the controlY1 attribute");
            }
            float f = (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "controlX1") != null ? 1 : null) == null ? BitmapDescriptorFactory.HUE_RED : resources.getFloat(0, BitmapDescriptorFactory.HUE_RED);
            float f2 = (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "controlY1") != null ? 1 : null) == null ? BitmapDescriptorFactory.HUE_RED : resources.getFloat(1, BitmapDescriptorFactory.HUE_RED);
            theme = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "controlX2") != null ? 1 : null;
            if (theme != (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "controlY2") != null ? 1 : 0)) {
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            } else if (theme == null) {
                theme = new Path();
                theme.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                theme.quadTo(f, f2, 1.0f, 1.0f);
                initPath(theme);
            } else {
                float f3 = (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "controlX2") != null ? 1 : null) == null ? BitmapDescriptorFactory.HUE_RED : resources.getFloat(2, BitmapDescriptorFactory.HUE_RED);
                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "controlY2") == null) {
                    attributeSet = null;
                }
                float f4 = attributeSet == null ? BitmapDescriptorFactory.HUE_RED : resources.getFloat(3, BitmapDescriptorFactory.HUE_RED);
                theme = new Path();
                theme.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                theme.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
                initPath(theme);
            }
        }
        resources.recycle();
    }

    private void initPath(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        path = pathMeasure.getLength();
        int min = Math.min(3000, ((int) (path / 0.002f)) + 1);
        if (min <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length ".concat(String.valueOf(path)));
        }
        int i2;
        this.mX = new float[min];
        this.mY = new float[min];
        float[] fArr = new float[2];
        for (i2 = 0; i2 < min; i2++) {
            pathMeasure.getPosTan((((float) i2) * path) / ((float) (min - 1)), fArr, null);
            this.mX[i2] = fArr[0];
            this.mY[i2] = fArr[1];
        }
        if (((double) Math.abs(this.mX[0])) <= 1.0E-5d && ((double) Math.abs(this.mY[0])) <= 1.0E-5d) {
            int i3 = min - 1;
            if (((double) Math.abs(this.mX[i3] - 1065353216)) <= 1.0E-5d) {
                if (((double) Math.abs(this.mY[i3] - 1065353216)) <= 1.0E-5d) {
                    float f = null;
                    path = null;
                    while (i < min) {
                        i2 = path + 1;
                        path = this.mX[path];
                        if (path < f) {
                            throw new IllegalArgumentException("The Path cannot loop back on itself, x :".concat(String.valueOf(path)));
                        }
                        this.mX[i] = path;
                        i++;
                        f = path;
                        path = i2;
                    }
                    if (pathMeasure.nextContour() != null) {
                        throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                    }
                    return;
                }
            }
        }
        StringBuilder stringBuilder = new StringBuilder("The Path must start at (0,0) and end at (1,1) start: ");
        stringBuilder.append(this.mX[0]);
        stringBuilder.append(",");
        stringBuilder.append(this.mY[0]);
        stringBuilder.append(" end:");
        min--;
        stringBuilder.append(this.mX[min]);
        stringBuilder.append(",");
        stringBuilder.append(this.mY[min]);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public final float getInterpolation(float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.mX.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.mX[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float f2 = this.mX[length] - this.mX[i];
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return this.mY[i];
        }
        f = (f - this.mX[i]) / f2;
        float f3 = this.mY[i];
        return f3 + (f * (this.mY[length] - f3));
    }
}
