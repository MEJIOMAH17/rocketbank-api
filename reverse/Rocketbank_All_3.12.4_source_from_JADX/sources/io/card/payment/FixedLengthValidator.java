package io.card.payment;

import android.text.Editable;
import android.text.Spanned;

final class FixedLengthValidator implements Validator {
    public int requiredLength;
    private String value;

    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public FixedLengthValidator(int i) {
        this.requiredLength = i;
    }

    public final void afterTextChanged(Editable editable) {
        this.value = editable.toString();
    }

    public final String getValue() {
        return this.value;
    }

    public final boolean isValid() {
        return this.value != null && this.value.length() == this.requiredLength;
    }

    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        return (i2 <= 0 || ((spanned.length() + i4) - i3) + i2 <= this.requiredLength) ? null : "";
    }

    public final boolean hasFullLength() {
        return this.value != null && this.value.length() == this.requiredLength;
    }
}
