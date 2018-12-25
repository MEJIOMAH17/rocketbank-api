package io.card.payment;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import com.facebook.appevents.AppEventsConstants;
import java.util.Date;

class ExpiryValidator implements Validator {
    private static final String TAG = "ExpiryValidator";
    private boolean fullLength;
    public int month;
    public int year;

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public ExpiryValidator(int i, int i2) {
        this.month = i;
        this.year = i2;
        i = (this.month <= 0 || this.year <= 0) ? 0 : 1;
        this.fullLength = i;
        if (this.year < 2000) {
            this.year += 2000;
        }
    }

    public void afterTextChanged(Editable editable) {
        this.fullLength = editable.length() >= 5;
        editable = editable.toString();
        if (editable != null) {
            editable = Logo.getDateForString(editable);
            if (editable != null) {
                this.month = editable.getMonth() + 1;
                this.year = editable.getYear();
                if (this.year < 1900) {
                    this.year += 1900;
                }
            }
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.month = 0;
        this.year = 0;
        this.fullLength = false;
    }

    public final String getValue() {
        return String.format("%02d/%02d", new Object[]{Integer.valueOf(this.month), Integer.valueOf(this.year % 100)});
    }

    public final boolean hasFullLength() {
        return this.fullLength;
    }

    public final boolean isValid() {
        if (this.month > 0) {
            if (12 >= this.month) {
                Date date = new Date();
                if (this.year > (date.getYear() + 1900) + 15) {
                    return false;
                }
                if (this.year <= date.getYear() + 1900) {
                    if (this.year != 1900 + date.getYear() || this.month < date.getMonth() + 1) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        CharSequence spannableStringBuilder = new SpannableStringBuilder(charSequence);
        if (i3 == 0 && spannableStringBuilder.length() > 0 && '1' < spannableStringBuilder.charAt(0) && spannableStringBuilder.charAt(0) <= '9') {
            spannableStringBuilder.insert(0, AppEventsConstants.EVENT_PARAM_VALUE_NO);
            i2++;
        }
        int i5 = i4 - i3;
        if (i3 - i5 <= 2 && (i3 + i2) - i5 >= 2) {
            i5 = 2 - i3;
            if (i5 == i2 || (i5 >= 0 && i5 < i2 && spannableStringBuilder.charAt(i5) != '/')) {
                spannableStringBuilder.insert(i5, "/");
                i2++;
            }
        }
        i = new SpannableStringBuilder(spanned).replace(i3, i4, spannableStringBuilder, i, i2).toString();
        if (i.length() > 0 && (i.charAt(0) < 48 || 49 < i.charAt(0))) {
            return "";
        }
        if (i.length() >= 2) {
            if (i.charAt(0) != 48 && i.charAt(1) > 50) {
                return "";
            }
            if (i.charAt(0) == 48 && i.charAt(1) == 48) {
                return "";
            }
        }
        return i.length() > 5 ? "" : spannableStringBuilder;
    }
}
