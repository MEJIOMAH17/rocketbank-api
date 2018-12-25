package ru.rocketbank.core.widgets.listener;

import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.util.Log;
import android.widget.EditText;
import java.lang.ref.WeakReference;
import ru.rocketbank.core.utils.format.FormatMoney;
import ru.rocketbank.core.utils.format.FormatMoney.SeparatorInformation;

public final class AddFormatListener implements TextWatcher {
    private WeakReference<EditText> editTextRef;
    private FormatMoney formatMoney = new FormatMoney();
    private String prevString;

    public final void afterTextChanged(Editable editable) {
    }

    public AddFormatListener(EditText editText) {
        this.editTextRef = new WeakReference(editText);
    }

    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.prevString = charSequence.toString();
    }

    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        EditText editText = (EditText) this.editTextRef.get();
        if (editText != null) {
            editText.removeTextChangedListener(this);
            try {
                StringBuilder stringBuilder = new StringBuilder("start: ");
                stringBuilder.append(i);
                stringBuilder.append(", before: ");
                stringBuilder.append(i2);
                stringBuilder.append(", count: ");
                stringBuilder.append(i3);
                Log.v("AddFormatListener", stringBuilder.toString());
                EditText editText2 = (EditText) this.editTextRef.get();
                if (editText2 != null) {
                    i2 = Selection.getSelectionStart(charSequence);
                    int selectionEnd = Selection.getSelectionEnd(charSequence);
                    if (selectionEnd > 0 && i2 < 0) {
                        i2 = selectionEnd;
                    }
                    charSequence = charSequence.toString();
                    SeparatorInformation extractSeparatorInformation = this.formatMoney.extractSeparatorInformation(this.prevString);
                    SeparatorInformation extractSeparatorInformation2 = this.formatMoney.extractSeparatorInformation(charSequence);
                    int i4 = 0;
                    if (extractSeparatorInformation.delimiter && !extractSeparatorInformation2.delimiter && i3 == 0 && charSequence.length() > 3) {
                        charSequence = charSequence.substring(0, charSequence.length() - 2);
                    }
                    i3 = new SeparatorInformation();
                    charSequence = this.formatMoney.formatAsString(charSequence, i3);
                    editText2.setText(charSequence);
                    i2 = (i2 - i3.trimmedZerosAtStart) + (i3.grouping - extractSeparatorInformation.grouping);
                    if (i2 >= 0) {
                        i4 = i2 > charSequence.length() ? charSequence.length() : i2;
                    }
                    editText2.setSelection(i4);
                }
            } catch (CharSequence charSequence2) {
                Log.e("AddFormatListener", "format has failed", charSequence2);
            }
            editText.addTextChangedListener(this);
        }
    }
}
