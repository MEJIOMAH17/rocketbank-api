package com.mikepenz.iconics.typeface;

import android.content.Context;
import android.graphics.Typeface;

public interface ITypeface {
    IIcon getIcon(String str);

    String getMappingPrefix();

    Typeface getTypeface(Context context);
}
