package io.card.payment;

import android.text.InputFilter;
import android.text.TextWatcher;

interface Validator extends InputFilter, TextWatcher {
    String getValue();

    boolean hasFullLength();

    boolean isValid();
}
