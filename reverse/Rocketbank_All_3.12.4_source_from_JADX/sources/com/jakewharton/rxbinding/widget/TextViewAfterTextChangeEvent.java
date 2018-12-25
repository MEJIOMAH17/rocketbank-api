package com.jakewharton.rxbinding.widget;

import android.text.Editable;
import android.widget.TextView;
import com.jakewharton.rxbinding.view.ViewEvent;

public final class TextViewAfterTextChangeEvent extends ViewEvent<TextView> {
    private final Editable editable;

    public static TextViewAfterTextChangeEvent create(TextView textView, Editable editable) {
        return new TextViewAfterTextChangeEvent(textView, editable);
    }

    private TextViewAfterTextChangeEvent(TextView textView, Editable editable) {
        super(textView);
        this.editable = editable;
    }

    public final Editable editable() {
        return this.editable;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TextViewAfterTextChangeEvent)) {
            return false;
        }
        TextViewAfterTextChangeEvent textViewAfterTextChangeEvent = (TextViewAfterTextChangeEvent) obj;
        return textViewAfterTextChangeEvent.view() == view() && this.editable.equals(textViewAfterTextChangeEvent.editable) != null;
    }

    public final int hashCode() {
        return ((629 + ((TextView) view()).hashCode()) * 37) + this.editable.hashCode();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("TextViewAfterTextChangeEvent{editable=");
        stringBuilder.append(this.editable);
        stringBuilder.append(", view=");
        stringBuilder.append(view());
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
