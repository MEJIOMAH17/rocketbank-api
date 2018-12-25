package ru.rocketbank.core.widgets.listener;

import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.util.Log;
import android.widget.EditText;
import java.lang.ref.WeakReference;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.utils.format.FormatMoney;
import ru.rocketbank.core.utils.format.FormatMoney.SeparatorInformation;

public abstract class AddCurrencyListener implements TextWatcher {
    private static final String TAG = "СAddFormatListener";
    CurrencyManager currencyManager = BaseRocketApplication.getRocketComponent().getCurrencyManager();
    private String currencySymbol;
    private WeakReference<EditText> editTextRef;
    private FormatMoney formatMoney = new FormatMoney();
    private String prevString;

    public void afterTextChanged(Editable editable) {
    }

    protected abstract String getCurrency();

    public AddCurrencyListener(EditText editText) {
        this.editTextRef = new WeakReference(editText);
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.prevString = charSequence.toString();
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        EditText editText = (EditText) this.editTextRef.get();
        if (editText != null) {
            editText.removeTextChangedListener(this);
            try {
                formatText(charSequence, i, i2, i3);
            } catch (CharSequence charSequence2) {
                Log.e(TAG, "format has failed", charSequence2);
            }
            editText.addTextChangedListener(this);
        }
    }

    private void formatText(CharSequence charSequence, int i, int i2, int i3) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("start: ");
        stringBuilder.append(i);
        stringBuilder.append(", before: ");
        stringBuilder.append(i2);
        stringBuilder.append(", count: ");
        stringBuilder.append(i3);
        Log.v(str, stringBuilder.toString());
        this.currencySymbol = this.currencyManager.getCurrencySymbol(getCurrency());
        EditText editText = (EditText) this.editTextRef.get();
        if (editText != null) {
            i2 = Selection.getSelectionStart(charSequence);
            i3 = Selection.getSelectionEnd(charSequence);
            if (i3 > 0 && i2 < 0) {
                i2 = i3;
            }
            if (charSequence.toString().contains(this.currencySymbol) != 0) {
                charSequence = removeCurrency(charSequence.toString());
            } else {
                charSequence = charSequence.toString();
            }
            int i4 = 0;
            if (this.prevString.contains(this.currencySymbol) != 0 && this.prevString.charAt(this.prevString.length() - 2) == 32) {
                this.prevString = this.prevString.substring(0, this.prevString.length() - 2);
            }
            i3 = this.formatMoney.extractSeparatorInformation(this.prevString);
            SeparatorInformation separatorInformation = new SeparatorInformation();
            charSequence = this.formatMoney.formatAsString(charSequence, separatorInformation);
            SeparatorInformation extractSeparatorInformation = this.formatMoney.extractSeparatorInformation(charSequence);
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(charSequence);
            stringBuilder2.append(' ');
            stringBuilder2.append(this.currencySymbol);
            editText.setText(stringBuilder2.toString());
            i2 = (i2 - separatorInformation.trimmedZerosAtStart) + (extractSeparatorInformation.grouping - i3.grouping);
            if (i2 >= 0) {
                i4 = i2 > charSequence.length() ? charSequence.length() : i2;
            }
            editText.setSelection(i4);
        }
    }

    private String removeCurrency(String str) {
        if (str.length() == 0) {
            return str;
        }
        return str.replaceAll(this.currencySymbol.contains("$") ? "\\$" : this.currencySymbol, "").replaceAll(" ", "");
    }
}
