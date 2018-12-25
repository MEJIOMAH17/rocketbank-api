package ru.rocketbank.core.widgets.listener;

import android.text.Editable;
import android.widget.EditText;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.SimpleTextWatcher;

/* compiled from: CardYearMonthFormattingTextWatcher.kt */
public final class CardYearMonthFormattingTextWatcher extends SimpleTextWatcher {
    private final WeakReference<EditText> _editText;
    private final CardNumberListener cardNumberListener;

    public CardYearMonthFormattingTextWatcher(EditText editText, CardNumberListener cardNumberListener) {
        Intrinsics.checkParameterIsNotNull(editText, "editText");
        Intrinsics.checkParameterIsNotNull(cardNumberListener, "cardNumberListener");
        this.cardNumberListener = cardNumberListener;
        this._editText = new WeakReference(editText);
    }

    public final void afterTextChanged(Editable editable) {
        Intrinsics.checkParameterIsNotNull(editable, "s");
        EditText editText = (EditText) this._editText.get();
        if (editText != null) {
            editText.removeTextChangedListener(this);
        }
        String obj = editable.toString();
        Intrinsics.checkParameterIsNotNull(obj, "val");
        StringBuilder stringBuilder = new StringBuilder();
        int i = 1;
        int length = obj.length() - 1;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                char charAt = obj.charAt(i2);
                if (Character.isDigit(charAt)) {
                    stringBuilder.append(charAt);
                }
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        obj = stringBuilder.toString();
        Intrinsics.checkExpressionValueIsNotNull(obj, "b.toString()");
        stringBuilder = new StringBuilder(obj);
        if (stringBuilder.length() > 2) {
            stringBuilder.insert(2, '/');
        }
        editable.replace(0, editable.length(), stringBuilder);
        editText = (EditText) this._editText.get();
        if (editText != null) {
            editText.addTextChangedListener(this);
        }
        editable = editable.toString();
        if (editable.length() == 5) {
            if (editable == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            obj = editable.substring(0, 2);
            Intrinsics.checkExpressionValueIsNotNull(obj, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            int parseInt = Integer.parseInt(obj);
            if (editable == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            editable = editable.substring(3, 5);
            Intrinsics.checkExpressionValueIsNotNull(editable, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            editable = Integer.parseInt(editable);
            int i3 = Calendar.getInstance().get(1) % 100;
            if (parseInt > 0 && parseInt < 13 && editable >= i3) {
                if (i == 0) {
                    this.cardNumberListener.dateIsValid();
                } else {
                    this.cardNumberListener.dateIsInvalid();
                }
                this.cardNumberListener.cardChanged();
            }
        }
        i = 0;
        if (i == 0) {
            this.cardNumberListener.dateIsInvalid();
        } else {
            this.cardNumberListener.dateIsValid();
        }
        this.cardNumberListener.cardChanged();
    }
}
