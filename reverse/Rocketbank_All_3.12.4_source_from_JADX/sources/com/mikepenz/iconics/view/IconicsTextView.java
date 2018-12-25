package com.mikepenz.iconics.view;

import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.mikepenz.iconics.Iconics.IconicsBuilder;

public class IconicsTextView extends TextView {
    public void setText(CharSequence charSequence, BufferType bufferType) {
        if (isInEditMode()) {
            super.setText(charSequence, bufferType);
        } else {
            super.setText(new IconicsBuilder().ctx(getContext()).on(charSequence).build(), bufferType);
        }
    }
}
