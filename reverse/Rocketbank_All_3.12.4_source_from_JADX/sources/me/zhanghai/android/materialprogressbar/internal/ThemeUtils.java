package me.zhanghai.android.materialprogressbar.internal;

import android.content.Context;

public class ThemeUtils {
    private ThemeUtils() {
    }

    public static int getColorFromAttrRes(int i, Context context) {
        i = context.obtainStyledAttributes(new int[]{i});
        try {
            context = i.getColor(0, 0);
            return context;
        } finally {
            i.recycle();
        }
    }

    public static float getFloatFromAttrRes(int i, Context context) {
        i = context.obtainStyledAttributes(new int[]{i});
        try {
            context = i.getFloat(0, null);
            return context;
        } finally {
            i.recycle();
        }
    }
}
