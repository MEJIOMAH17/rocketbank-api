package me.grantland.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.TextView;

public class AutofitLayout extends FrameLayout {
    public void addView(View view, int i, LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        TextView textView = (TextView) view;
        layoutParams = null;
        layoutParams.put(textView, AutofitHelper.create(textView).setEnabled(null));
    }
}
