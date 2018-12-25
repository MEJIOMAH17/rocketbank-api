package io.card.payment;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;

final class CardNumberValidator implements Validator {
    static final int[] AMEX_SPACER = new int[]{4, 11};
    static final int[] NORMAL_SPACER = new int[]{4, 9, 14};
    private String numberString;
    private int spacerToDelete;

    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public CardNumberValidator(String str) {
        this.numberString = str;
    }

    public final void afterTextChanged(Editable editable) {
        this.numberString = Logo.getDigitsOnlyString(editable.toString());
        CardType fromCardNumber = CardType.fromCardNumber(this.numberString);
        int i = 0;
        if (this.spacerToDelete > 1) {
            int i2 = this.spacerToDelete;
            int i3 = this.spacerToDelete - 1;
            this.spacerToDelete = 0;
            if (i2 > i3) {
                editable.delete(i3, i2);
            }
        }
        while (i < editable.length()) {
            char charAt = editable.charAt(i);
            if (!(fromCardNumber.numberLength() == 15 && (i == 4 || i == 11))) {
                if (fromCardNumber.numberLength() == 16 || fromCardNumber.numberLength() == 14) {
                    if (!(i == 4 || i == 9)) {
                        if (i == 14) {
                        }
                    }
                }
                if (charAt == ' ') {
                    editable.delete(i, i + 1);
                    i--;
                }
                i++;
            }
            if (charAt != ' ') {
                editable.insert(i, " ");
            }
            i++;
        }
    }

    public final boolean hasFullLength() {
        if (TextUtils.isEmpty(this.numberString)) {
            return false;
        }
        if (this.numberString.length() == CardType.fromCardNumber(this.numberString).numberLength()) {
            return true;
        }
        return false;
    }

    public final boolean isValid() {
        if (!hasFullLength()) {
            return false;
        }
        boolean z;
        int[][] iArr = new int[][]{new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, new int[]{0, 2, 4, 6, 8, 1, 3, 5, 7, 9}};
        CharacterIterator stringCharacterIterator = new StringCharacterIterator(this.numberString);
        char last = stringCharacterIterator.last();
        int i = 0;
        int i2 = i;
        while (last != '￿') {
            if (!Character.isDigit(last)) {
                break;
            }
            int i3 = i2 + 1;
            i += iArr[i2 & 1][last - 48];
            last = stringCharacterIterator.previous();
            i2 = i3;
        }
        if (i % 10 == 0) {
            z = true;
            if (z) {
                return false;
            }
            return true;
        }
        z = false;
        if (z) {
            return true;
        }
        return false;
    }

    public final String getValue() {
        return this.numberString;
    }

    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        i = Logo.getDigitsOnlyString(new SpannableStringBuilder(spanned).replace(i3, i4, charSequence, i, i2).toString());
        int numberLength = CardType.fromCardNumber(i).numberLength();
        if (i.length() > numberLength) {
            return "";
        }
        int[] iArr;
        i = new SpannableStringBuilder(charSequence);
        if (numberLength == 15) {
            iArr = AMEX_SPACER;
        } else {
            iArr = NORMAL_SPACER;
        }
        i4 -= i3;
        int i5 = 0;
        while (i5 < iArr.length) {
            if (charSequence.length() == 0 && i3 == iArr[i5] && spanned.charAt(i3) == ' ') {
                this.spacerToDelete = iArr[i5];
            }
            if (i3 - i4 <= iArr[i5] && (i3 + i2) - i4 >= iArr[i5]) {
                int i6 = iArr[i5] - i3;
                if (i6 == i2 || (i6 >= 0 && i6 < i2 && i.charAt(i6) != ' ')) {
                    i.insert(i6, " ");
                    i2++;
                }
            }
            i5++;
        }
        return i;
    }
}
