package android.databinding.adapters;

import android.content.res.ColorStateList;
import android.databinding.BindingConversion;
import android.graphics.drawable.ColorDrawable;

public class Converters {
    @BindingConversion
    public static ColorDrawable convertColorToDrawable(int i) {
        return new ColorDrawable(i);
    }

    @BindingConversion
    public static ColorStateList convertColorToColorStateList(int i) {
        return ColorStateList.valueOf(i);
    }
}
