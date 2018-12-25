package io.card.payment;

import android.text.Editable;
import android.text.Spanned;

class NonEmptyValidator implements Validator {
    private String value;

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        return null;
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    NonEmptyValidator() {
    }

    public void afterTextChanged(Editable editable) {
        this.value = editable.toString().trim();
    }

    public final String getValue() {
        return this.value;
    }

    public final boolean hasFullLength() {
        return isValid();
    }

    public boolean isValid() {
        return this.value != null && this.value.length() > 0;
    }
}
