package ru.rocketbank.core.widgets.listener;

import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.util.Log;
import android.widget.EditText;
import com.facebook.appevents.AppEventsConstants;
import java.lang.ref.WeakReference;
import ru.rocketbank.core.BaseRocketApplication;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.utils.format.FormatMoney;
import ru.rocketbank.core.utils.format.FormatMoney.SeparatorInformation;

public abstract class AddCurrencyMainListener implements TextWatcher {
    private static final String TAG = "AddCurrencyMainListener";
    private CurrencyManager currencyManager = BaseRocketApplication.getRocketComponent().getCurrencyManager();
    private String currencySymbol;
    private WeakReference<EditText> editTextRef;
    private FormatMoney formatMoney = new FormatMoney();
    private String prevString;
    private String replaceChar;

    public void afterTextChanged(Editable editable) {
    }

    protected abstract String getCurrency();

    public AddCurrencyMainListener(EditText editText) {
        this.editTextRef = new WeakReference(editText);
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.prevString = charSequence.toString();
        charSequence = this.prevString;
        i = new StringBuilder("0 ");
        i.append(this.currencyManager.getCurrencySymbolRub());
        if (charSequence.equals(i.toString()) != null) {
            EditText editText = (EditText) this.editTextRef.get();
            editText.removeTextChangedListener(this);
            this.replaceChar = AppEventsConstants.EVENT_PARAM_VALUE_NO;
            editText.addTextChangedListener(this);
            return;
        }
        this.replaceChar = null;
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        EditText editText = (EditText) this.editTextRef.get();
        if (editText != null) {
            editText.removeTextChangedListener(this);
            if (this.replaceChar != null) {
                charSequence = charSequence.toString().replace(this.replaceChar, "");
            }
            try {
                formatText(charSequence, i, i2, i3);
            } catch (CharSequence charSequence2) {
                Log.e(TAG, "format has failed", charSequence2);
            }
            if (this.replaceChar != null) {
                editText.setSelection(1);
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
            int selectionEnd = Selection.getSelectionEnd(charSequence);
            if (selectionEnd > 0 && i2 < 0) {
                i2 = selectionEnd;
            }
            if (charSequence.toString().contains(this.currencySymbol)) {
                charSequence = removeCurrency(charSequence.toString());
            } else {
                charSequence = charSequence.toString();
            }
            SeparatorInformation extractSeparatorInformation = this.formatMoney.extractSeparatorInformation(this.prevString);
            SeparatorInformation extractSeparatorInformation2 = this.formatMoney.extractSeparatorInformation(charSequence);
            int i4 = 0;
            if (extractSeparatorInformation.delimiter && !extractSeparatorInformation2.delimiter && i3 == 0 && charSequence.length() > 3) {
                charSequence = charSequence.substring(0, charSequence.length() - 2);
            }
            i3 = new SeparatorInformation();
            charSequence = this.formatMoney.formatAsString(charSequence, i3);
            stringBuilder = new StringBuilder();
            stringBuilder.append(charSequence);
            stringBuilder.append(" ");
            stringBuilder.append(this.currencySymbol);
            editText.setText(stringBuilder.toString());
            i2 = (i2 - i3.trimmedZerosAtStart) + ((i3.grouping - extractSeparatorInformation.grouping) + 1);
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
        return str.replaceAll(this.currencySymbol, "").replaceAll(" ", "");
    }
}
