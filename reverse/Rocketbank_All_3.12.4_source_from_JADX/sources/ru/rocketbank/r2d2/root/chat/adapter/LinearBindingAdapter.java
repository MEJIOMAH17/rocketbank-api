package ru.rocketbank.r2d2.root.chat.adapter;

import android.databinding.BindingAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class LinearBindingAdapter {
    @BindingAdapter({"android:layout_marginRight"})
    public static void setMarginRight(LinearLayout linearLayout, float f) {
        ((LayoutParams) linearLayout.getLayoutParams()).rightMargin = (int) f;
        linearLayout.requestLayout();
    }
}
