package io.card.payment;

import android.text.Editable;
import android.text.Spanned;

final class AlwaysValid implements Validator {
    public final void afterTextChanged(Editable editable) {
    }

    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        return null;
    }

    public final String getValue() {
        return null;
    }

    public final boolean hasFullLength() {
        return true;
    }

    public final boolean isValid() {
        return true;
    }

    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
