package com.mikepenz.iconics.view;

import android.os.Build.VERSION;
import android.widget.Button;
import android.widget.TextView.BufferType;
import com.mikepenz.iconics.Iconics.IconicsBuilder;

public class IconicsButton extends Button {
    public void setText(CharSequence charSequence, BufferType bufferType) {
        if (VERSION.SDK_INT > 14) {
            setAllCaps(false);
        }
        if (isInEditMode()) {
            super.setText(charSequence, bufferType);
        } else {
            super.setText(new IconicsBuilder().ctx(getContext()).on(charSequence).build(), bufferType);
        }
    }
}
