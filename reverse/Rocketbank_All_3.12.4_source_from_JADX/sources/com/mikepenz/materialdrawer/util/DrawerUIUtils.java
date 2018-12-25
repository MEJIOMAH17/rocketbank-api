package com.mikepenz.materialdrawer.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.TypedValue;
import android.view.View;
import ru.rocketbank.r2d2.C0859R;

@SuppressLint({"InlinedApi"})
public final class DrawerUIUtils {
    public static int getSelectableBackground(Context context) {
        if (VERSION.SDK_INT >= 11) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C0859R.attr.selectableItemBackground, typedValue, true);
            return typedValue.resourceId;
        }
        typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843056, typedValue, true);
        return typedValue.resourceId;
    }

    public static void setDrawerVerticalPadding(View view, int i) {
        int dimensionPixelSize = view.getContext().getResources().getDimensionPixelSize(C0859R.dimen.material_drawer_vertical_padding);
        if (VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i * dimensionPixelSize, 0, dimensionPixelSize, 0);
        } else {
            view.setPadding(i * dimensionPixelSize, 0, dimensionPixelSize, 0);
        }
    }
}
