package io.card.payment.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.Button;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ViewUtil {
    private static final Map<String, Integer> DIMENSION_STRING_CONSTANT;
    static Pattern DIMENSION_VALUE_PATTERN = Pattern.compile("^\\s*(\\d+(\\.\\d+)*)\\s*([a-zA-Z]+)\\s*$");
    static HashMap<String, Float> pxDimensionLookupTable = new HashMap();

    public static int typedDimensionValueToPixelsInt(String str, Context context) {
        return (int) typedDimensionValueToPixels(str, context);
    }

    @SuppressLint({"DefaultLocale"})
    public static float typedDimensionValueToPixels(String str, Context context) {
        if (str == null) {
            return null;
        }
        str = str.toLowerCase();
        if (pxDimensionLookupTable.containsKey(str)) {
            return ((Float) pxDimensionLookupTable.get(str)).floatValue();
        }
        Matcher matcher = DIMENSION_VALUE_PATTERN.matcher(str);
        if (matcher.matches()) {
            float parseFloat = Float.parseFloat(matcher.group(1));
            Integer num = (Integer) DIMENSION_STRING_CONSTANT.get(matcher.group(3).toLowerCase());
            if (num == null) {
                num = Integer.valueOf(1);
            }
            context = TypedValue.applyDimension(num.intValue(), parseFloat, context.getResources().getDisplayMetrics());
            pxDimensionLookupTable.put(str, Float.valueOf(context));
            return context;
        }
        throw new NumberFormatException();
    }

    public static void setPadding(View view, String str, String str2, String str3, String str4) {
        Context context = view.getContext();
        int i = 0;
        if (str == null) {
            str = null;
        } else {
            str = (int) typedDimensionValueToPixels(str, context);
        }
        if (str2 == null) {
            str2 = null;
        } else {
            str2 = (int) typedDimensionValueToPixels(str2, context);
        }
        if (str3 == null) {
            str3 = null;
        } else {
            str3 = (int) typedDimensionValueToPixels(str3, context);
        }
        if (str4 != null) {
            i = (int) typedDimensionValueToPixels(str4, context);
        }
        view.setPadding(str, str2, str3, i);
    }

    public static void setMargins(View view, String str, String str2, String str3, String str4) {
        Context context = view.getContext();
        view = view.getLayoutParams();
        if (view instanceof MarginLayoutParams) {
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view;
            int i = 0;
            if (str == null) {
                str = null;
            } else {
                str = (int) typedDimensionValueToPixels(str, context);
            }
            if (str2 == null) {
                str2 = null;
            } else {
                str2 = (int) typedDimensionValueToPixels(str2, context);
            }
            if (str3 == null) {
                str3 = null;
            } else {
                str3 = (int) typedDimensionValueToPixels(str3, context);
            }
            if (str4 != null) {
                i = (int) typedDimensionValueToPixels(str4, context);
            }
            marginLayoutParams.setMargins(str, str2, str3, i);
        }
    }

    public static void setDimensions$17e143a3$5359dc9a(View view) {
        view = view.getLayoutParams();
        view.width = -2;
        view.height = -2;
    }

    public static void styleAsButton(Button button, boolean z, Context context, boolean z2) {
        LayoutParams layoutParams = button.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -2;
        button.setFocusable(true);
        setPadding(button, "10dip", "0dip", "10dip", "0dip");
        if (!z2) {
            if (z) {
                z = Appearance.buttonBackgroundPrimary(context);
            } else {
                z = Appearance.buttonBackgroundSecondary(context);
            }
            if (VERSION.SDK_INT >= true) {
                button.setBackground(z);
            } else {
                button.setBackgroundDrawable(z);
            }
            button.setGravity(true);
            button.setMinimumHeight((int) typedDimensionValueToPixels("54dip", context));
            button.setTextColor(-1);
            button.setTextSize(true);
            button.setTypeface(Appearance.TYPEFACE_BUTTON);
        }
    }

    static {
        Map hashMap = new HashMap();
        hashMap.put("px", Integer.valueOf(0));
        hashMap.put("dip", Integer.valueOf(1));
        hashMap.put("dp", Integer.valueOf(1));
        hashMap.put("sp", Integer.valueOf(2));
        hashMap.put("pt", Integer.valueOf(3));
        hashMap.put("in", Integer.valueOf(4));
        hashMap.put("mm", Integer.valueOf(5));
        DIMENSION_STRING_CONSTANT = Collections.unmodifiableMap(hashMap);
    }
}
