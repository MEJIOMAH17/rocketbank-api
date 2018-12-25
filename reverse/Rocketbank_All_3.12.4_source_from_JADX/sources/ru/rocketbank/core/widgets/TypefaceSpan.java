package ru.rocketbank.core.widgets;

import android.graphics.Typeface;
import android.os.Parcel;
import android.text.ParcelableSpan;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;

public class TypefaceSpan extends CharacterStyle implements ParcelableSpan, UpdateAppearance {
    private int textSize;
    private Typeface typeface;

    public int describeContents() {
        return 0;
    }

    public int getSpanTypeIdInternal() {
        return -251654144;
    }

    public void writeToParcelInternal(Parcel parcel, int i) {
    }

    public TypefaceSpan(Typeface typeface, int i) {
        this.typeface = typeface;
        this.textSize = i;
    }

    public TypefaceSpan(Parcel parcel) {
    }

    public int getSpanTypeId() {
        return getSpanTypeIdInternal();
    }

    public void writeToParcel(Parcel parcel, int i) {
        writeToParcelInternal(parcel, i);
    }

    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTypeface(this.typeface);
        textPaint.setTextSize((float) this.textSize);
        textPaint.setUnderlineText(false);
    }
}
