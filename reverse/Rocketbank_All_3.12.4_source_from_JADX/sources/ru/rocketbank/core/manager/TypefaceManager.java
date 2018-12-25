package ru.rocketbank.core.manager;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.widget.TextView;
import java.util.Map;

public final class TypefaceManager {
    private static TypefaceManager typefaceManager;
    private Map<String, Typeface> map = new ArrayMap();

    private TypefaceManager() {
    }

    public static TypefaceManager getInstance() {
        if (typefaceManager == null) {
            typefaceManager = new TypefaceManager();
        }
        return typefaceManager;
    }

    public final Typeface getTypeface(int i, Context context) {
        switch (i) {
            case 0:
                return getTypeface(context, "Roboto-Light.ttf");
            case 1:
                return getTypeface(context, "Roboto-Medium.ttf");
            case 2:
                return getTypeface(context, "Roboto-Thin.ttf");
            case 3:
                return getTypeface(context, "OCRAEXT.TTF");
            case 4:
                return getTypeface(context, "IconMenu.ttf");
            case 5:
                return getTypeface(context, "IconOperation.ttf");
            case 6:
                return getTypeface(context, "Roboto-Bold.ttf");
            case 9:
                return getTypeface(context, "rocket-symbols-2.0.otf");
            case 10:
                return getTypeface(context, "Roboto-Black.ttf");
            default:
                return getTypeface(context, "Roboto-Regular.ttf");
        }
    }

    public final void setTypeface(int i, TextView textView) {
        textView.setTypeface(getTypeface(i, textView.getContext()));
        textView.getPaint().setSubpixelText(true);
    }

    public final Typeface getTypeface(Context context, TypedArray typedArray, int i) {
        return getTypeface(typedArray.getInt(i, -1), context);
    }

    private Typeface getTypeface(Context context, String str) {
        Typeface typeface = (Typeface) this.map.get(str);
        if (typeface != null) {
            return typeface;
        }
        typeface = Typeface.createFromAsset(context.getAssets(), "fonts/".concat(String.valueOf(str)));
        this.map.put(str, typeface);
        return typeface;
    }

    @Deprecated
    public final void setTypeface$6871d432(int i, int[] iArr, AttributeSet attributeSet, TextView textView) {
        Context context = textView.getContext();
        iArr = context.getTheme().obtainStyledAttributes(attributeSet, iArr, 0, 0);
        try {
            textView.setTypeface(getTypeface(iArr.getInt(i, -1), context));
            textView.getPaint().setSubpixelText(true);
        } finally {
            iArr.recycle();
        }
    }
}
