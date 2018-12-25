package com.jakewharton.rxbinding.widget;

import android.widget.TextView;
import com.jakewharton.rxbinding.view.ViewEvent;

public final class TextViewTextChangeEvent extends ViewEvent<TextView> {
    private final int before;
    private final int count;
    private final int start;
    private final CharSequence text;

    public static TextViewTextChangeEvent create(TextView textView, CharSequence charSequence, int i, int i2, int i3) {
        return new TextViewTextChangeEvent(textView, charSequence, i, i2, i3);
    }

    private TextViewTextChangeEvent(TextView textView, CharSequence charSequence, int i, int i2, int i3) {
        super(textView);
        this.text = charSequence;
        this.start = i;
        this.before = i2;
        this.count = i3;
    }

    public final int before() {
        return this.before;
    }

    public final int count() {
        return this.count;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TextViewTextChangeEvent)) {
            return false;
        }
        TextViewTextChangeEvent textViewTextChangeEvent = (TextViewTextChangeEvent) obj;
        return textViewTextChangeEvent.view() == view() && this.text.equals(textViewTextChangeEvent.text) && this.start == textViewTextChangeEvent.start && this.before == textViewTextChangeEvent.before && this.count == textViewTextChangeEvent.count;
    }

    public final int hashCode() {
        return ((((((((629 + ((TextView) view()).hashCode()) * 37) + this.text.hashCode()) * 37) + this.start) * 37) + this.before) * 37) + this.count;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("TextViewTextChangeEvent{text=");
        stringBuilder.append(this.text);
        stringBuilder.append(", start=");
        stringBuilder.append(this.start);
        stringBuilder.append(", before=");
        stringBuilder.append(this.before);
        stringBuilder.append(", count=");
        stringBuilder.append(this.count);
        stringBuilder.append(", view=");
        stringBuilder.append(view());
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
