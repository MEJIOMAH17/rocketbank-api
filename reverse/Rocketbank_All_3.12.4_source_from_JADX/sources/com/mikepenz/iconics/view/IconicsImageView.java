package com.mikepenz.iconics.view;

import android.widget.ImageView;
import com.mikepenz.iconics.IconicsDrawable;

public class IconicsImageView extends ImageView {
    public void setBackgroundColor(int i) {
        if (getDrawable() instanceof IconicsDrawable) {
            ((IconicsDrawable) getDrawable()).backgroundColor(i);
        }
    }
}
