package ru.rocketbank.r2d2.friends;

import android.content.Context;
import android.graphics.Color;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import ru.rocketbank.core.widgets.TagAutoCompleteEditText;
import ru.rocketbank.r2d2.Utils;

public class HashTagEditText extends TagAutoCompleteEditText {
    private List<Character> mAdditionalHashTagChars = new ArrayList(95);
    private int mHashTagWordColor = Color.rgb(33, 150, 243);

    /* renamed from: ru.rocketbank.r2d2.friends.HashTagEditText$1 */
    class C15771 implements TextWatcher {
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        C15771() {
        }

        public void afterTextChanged(Editable editable) {
            if (editable.length() > 0) {
                HashTagEditText.this.eraseAndColorizeAllText(editable);
            }
        }
    }

    public HashTagEditText(Context context) {
        super(context);
        init();
    }

    public HashTagEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public HashTagEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public HashTagEditText(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    public void setAdditionalHashTagChars(Character... chArr) {
        this.mAdditionalHashTagChars.addAll(Arrays.asList(chArr));
    }

    public void setmHashTagWordColor(int i) {
        this.mHashTagWordColor = i;
    }

    private void init() {
        addTextChangedListener(new C15771());
    }

    private void eraseAndColorizeAllText(CharSequence charSequence) {
        Spannable text = getText();
        int i = 0;
        for (Object removeSpan : (CharacterStyle[]) text.getSpans(0, charSequence.length(), CharacterStyle.class)) {
            text.removeSpan(removeSpan);
        }
        SpannableString replaceHashWithUrls = Utils.replaceHashWithUrls(charSequence.toString(), null);
        CharacterStyle[] characterStyleArr = (CharacterStyle[]) replaceHashWithUrls.getSpans(0, charSequence.length(), CharacterStyle.class);
        int length = characterStyleArr.length;
        while (i < length) {
            Object obj = characterStyleArr[i];
            text.setSpan(obj, replaceHashWithUrls.getSpanStart(obj), replaceHashWithUrls.getSpanEnd(obj), replaceHashWithUrls.getSpanFlags(obj));
            i++;
        }
    }

    private void setColorsToAllHashTags(CharSequence charSequence) {
        int i = 0;
        while (i < charSequence.length() - 1) {
            int i2 = i + 1;
            if (charSequence.charAt(i) == '#') {
                int findNextValidHashTagChar = findNextValidHashTagChar(charSequence, i);
                setColorForHashTagToTheEnd(i, findNextValidHashTagChar);
                i = findNextValidHashTagChar;
            } else {
                i = i2;
            }
        }
    }

    private int findNextValidHashTagChar(CharSequence charSequence, int i) {
        i++;
        while (i < charSequence.length()) {
            int i2;
            char charAt = charSequence.charAt(i);
            if (!Character.isLetterOrDigit(charAt)) {
                if (!this.mAdditionalHashTagChars.contains(Character.valueOf(charAt))) {
                    i2 = 0;
                    if (i2 == 0) {
                        break;
                    }
                    i++;
                }
            }
            i2 = 1;
            if (i2 == 0) {
                break;
            }
            i++;
        }
        i = -1;
        return i == -1 ? charSequence.length() : i;
    }

    private void setColorForHashTagToTheEnd(int i, int i2) {
        getText().setSpan(new ForegroundColorSpan(this.mHashTagWordColor), i, i2, 33);
    }
}
