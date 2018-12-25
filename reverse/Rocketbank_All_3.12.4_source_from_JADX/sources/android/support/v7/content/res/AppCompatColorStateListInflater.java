package android.support.v7.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.support.v4.graphics.ColorUtils;
import android.support.v7.appcompat.C0219R;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import ru.rocketbank.r2d2.C0859R;

final class AppCompatColorStateListInflater {
    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return inflate(resources, xmlPullParser, asAttributeSet, theme);
        }
        theme = new StringBuilder();
        theme.append(xmlPullParser.getPositionDescription());
        theme.append(": invalid color state list tag ");
        theme.append(name);
        throw new XmlPullParserException(theme.toString());
    }

    private static ColorStateList inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Theme theme) throws XmlPullParserException, IOException {
        AttributeSet attributeSet2 = attributeSet;
        Theme theme2 = theme;
        int i = 1;
        int depth = xmlPullParser.getDepth() + 1;
        Object obj = new int[20][];
        Object obj2 = new int[20];
        int i2 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i) {
                break;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                break;
            }
            Resources resources2;
            if (next == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                TypedArray obtainAttributes;
                int[] iArr = C0219R.styleable.ColorStateListItem;
                if (theme2 == null) {
                    obtainAttributes = resources.obtainAttributes(attributeSet2, iArr);
                } else {
                    resources2 = resources;
                    obtainAttributes = theme2.obtainStyledAttributes(attributeSet2, iArr, 0, 0);
                }
                int color = obtainAttributes.getColor(C0219R.styleable.ColorStateListItem_android_color, -65281);
                float f = 1.0f;
                if (obtainAttributes.hasValue(C0219R.styleable.ColorStateListItem_android_alpha)) {
                    f = obtainAttributes.getFloat(C0219R.styleable.ColorStateListItem_android_alpha, 1.0f);
                } else if (obtainAttributes.hasValue(C0219R.styleable.ColorStateListItem_alpha)) {
                    f = obtainAttributes.getFloat(C0219R.styleable.ColorStateListItem_alpha, 1.0f);
                }
                obtainAttributes.recycle();
                next = attributeSet.getAttributeCount();
                int[] iArr2 = new int[next];
                int i3 = 0;
                int i4 = i3;
                while (i3 < next) {
                    int attributeNameResource = attributeSet2.getAttributeNameResource(i3);
                    if (!(attributeNameResource == 16843173 || attributeNameResource == 16843551 || attributeNameResource == C0859R.attr.alpha)) {
                        i = i4 + 1;
                        if (!attributeSet2.getAttributeBooleanValue(i3, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i4] = attributeNameResource;
                        i4 = i;
                    }
                    i3++;
                }
                Object trimStateSet = StateSet.trimStateSet(iArr2, i4);
                obj2 = GrowingArrayUtils.append((int[]) obj2, i2, ColorUtils.setAlphaComponent(color, Math.round(((float) Color.alpha(color)) * f)));
                obj = (int[][]) GrowingArrayUtils.append((Object[]) obj, i2, trimStateSet);
                i2++;
            } else {
                resources2 = resources;
            }
            i = 1;
        }
        Object obj3 = new int[i2];
        Object obj4 = new int[i2][];
        System.arraycopy(obj2, 0, obj3, 0, i2);
        System.arraycopy(obj, 0, obj4, 0, i2);
        return new ColorStateList(obj4, obj3);
    }
}
