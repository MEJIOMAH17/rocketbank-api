package ru.rocketbank.core.widgets.listener;

import android.text.Editable;
import android.widget.EditText;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.SimpleTextWatcher;

/* compiled from: CvvTextWatcher.kt */
public final class CvvTextWatcher extends SimpleTextWatcher {
    private final CardNumberListener cardNumberListener;
    private final WeakReference<EditText> editTextWeakRef;

    public CvvTextWatcher(EditText editText, CardNumberListener cardNumberListener) {
        Intrinsics.checkParameterIsNotNull(editText, "editText");
        Intrinsics.checkParameterIsNotNull(cardNumberListener, "cardNumberListener");
        this.cardNumberListener = cardNumberListener;
        this.editTextWeakRef = new WeakReference(editText);
    }

    public final void afterTextChanged(Editable editable) {
        Intrinsics.checkParameterIsNotNull(editable, "s");
        EditText editText = (EditText) this.editTextWeakRef.get();
        if (editText != null) {
            editText.removeTextChangedListener(this);
        }
        int length = editable.length();
        String obj = editable.toString();
        Intrinsics.checkParameterIsNotNull(obj, "val");
        StringBuilder stringBuilder = new StringBuilder();
        int length2 = obj.length() - 1;
        if (length2 >= 0) {
            int i = 0;
            while (true) {
                char charAt = obj.charAt(i);
                if (Character.isDigit(charAt)) {
                    stringBuilder.append(charAt);
                }
                if (i == length2) {
                    break;
                }
                i++;
            }
        }
        obj = stringBuilder.toString();
        Intrinsics.checkExpressionValueIsNotNull(obj, "b.toString()");
        editable.replace(0, length, obj);
        if (editText != null) {
            editText.addTextChangedListener(this);
        }
        if (editable.length() == 3) {
            this.cardNumberListener.cvvIsValid();
        } else {
            this.cardNumberListener.cvvIsInvalid();
        }
        this.cardNumberListener.cardChanged();
    }
}
