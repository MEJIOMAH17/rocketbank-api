package ru.rocketbank.r2d2.utils;

import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.graphics.Palette;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MaterialUtils.kt */
public final class MaterialUtils {
    public static final MaterialUtils INSTANCE = new MaterialUtils();

    public final int modifyAlpha(int i, int i2) {
        return (i & ViewCompat.MEASURED_SIZE_MASK) | (i2 << 24);
    }

    private MaterialUtils() {
    }

    public final RippleDrawable createRipple(Palette palette, float f, float f2, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(palette, "palette");
        if (palette.getVibrantSwatch() != null) {
            palette = palette.getVibrantSwatch();
            if (palette == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(palette, "palette.vibrantSwatch!!");
            i = modifyAlpha(palette.getRgb(), f);
        } else if (palette.getLightVibrantSwatch() != null) {
            palette = palette.getLightVibrantSwatch();
            if (palette == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(palette, "palette.lightVibrantSwatch!!");
            i = modifyAlpha(palette.getRgb(), f2);
        } else if (palette.getDarkVibrantSwatch() != null) {
            palette = palette.getDarkVibrantSwatch();
            if (palette == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(palette, "palette.darkVibrantSwatch!!");
            i = modifyAlpha(palette.getRgb(), f);
        } else if (palette.getMutedSwatch() != null) {
            palette = palette.getMutedSwatch();
            if (palette == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(palette, "palette.mutedSwatch!!");
            i = modifyAlpha(palette.getRgb(), f);
        } else if (palette.getLightMutedSwatch() != null) {
            palette = palette.getLightMutedSwatch();
            if (palette == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(palette, "palette.lightMutedSwatch!!");
            i = modifyAlpha(palette.getRgb(), f2);
        } else if (palette.getDarkMutedSwatch() != null) {
            palette = palette.getDarkMutedSwatch();
            if (palette == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(palette, "palette.darkMutedSwatch!!");
            i = modifyAlpha(palette.getRgb(), f);
        }
        return new RippleDrawable(ColorStateList.valueOf(i), null, (Drawable) (z ? new ColorDrawable(true) : 0));
    }

    public final int modifyAlpha(int i, float f) {
        return modifyAlpha(i, (int) (255.0f * f));
    }
}
