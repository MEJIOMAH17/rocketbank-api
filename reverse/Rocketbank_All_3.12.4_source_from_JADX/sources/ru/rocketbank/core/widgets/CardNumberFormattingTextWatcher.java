package ru.rocketbank.core.widgets;

import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.widget.EditText;
import com.facebook.internal.AnalyticsEvents;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.listener.CardNumberListener;

/* compiled from: CardNumberFormattingTextWatcher.kt */
public final class CardNumberFormattingTextWatcher extends SimpleTextWatcher {
    public static final Companion Companion = new Companion();
    private static final int MAX_CARD_NUMBER_LENGTH = 23;
    private static final String TAG = "CardFormat";
    private final String cardNumberHint = "";
    private final CardNumberListener cardNumberListener;
    private boolean cardValid;
    private int lastCardLenght;
    private final float longNumberTextSize;
    private final float normalTextSize;
    private final WeakReference<EditText> weakEditText;

    /* compiled from: CardNumberFormattingTextWatcher.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public CardNumberFormattingTextWatcher(EditText editText, CardNumberListener cardNumberListener) {
        Intrinsics.checkParameterIsNotNull(editText, "editText");
        Intrinsics.checkParameterIsNotNull(cardNumberListener, "cardNumberListener");
        this.cardNumberListener = cardNumberListener;
        this.weakEditText = new WeakReference(editText);
        this.normalTextSize = editText.getTextSize();
        this.longNumberTextSize = editText.getTextSize() * 1061997773;
    }

    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        Intrinsics.checkParameterIsNotNull(charSequence, "s");
        if (i == 23 && i2 == 0) {
            EditText editText = (EditText) this.weakEditText.get();
            if (editText != null) {
                editText.setTextSize(0, this.longNumberTextSize);
            }
        }
        if (i == 24 && i2 == 1) {
            EditText editText2 = (EditText) this.weakEditText.get();
            if (editText2 != null) {
                editText2.setTextSize(0, this.normalTextSize);
            }
        }
    }

    public final void afterTextChanged(Editable editable) {
        Editable editable2 = editable;
        Intrinsics.checkParameterIsNotNull(editable2, "s");
        EditText editText = (EditText) this.weakEditText.get();
        if (editText != null) {
            TextWatcher textWatcher = r1;
            editText.removeTextChangedListener(textWatcher);
            Intrinsics.checkExpressionValueIsNotNull(editText, "editText");
            int selectionStart = editText.getSelectionStart();
            String replace$default = StringsKt__StringsJVMKt.replace$default(editable.toString(), " ", "", false, 4, null);
            String replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, r1.cardNumberHint, "", false, 4, null);
            Intrinsics.checkParameterIsNotNull(replace$default2, "val");
            StringBuilder stringBuilder = new StringBuilder();
            int length = replace$default2.length() - 1;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    char charAt = replace$default2.charAt(i);
                    if (Character.isDigit(charAt)) {
                        stringBuilder.append(charAt);
                    }
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
            replace$default2 = stringBuilder.toString();
            Intrinsics.checkExpressionValueIsNotNull(replace$default2, "b.toString()");
            try {
                if (replace$default.length() >= r1.cardNumberHint.length()) {
                    if (StringsKt__StringsJVMKt.startsWith$default(replace$default, r1.cardNumberHint, false, 2, null)) {
                        StringBuilder stringBuilder2 = new StringBuilder(r1.cardNumberHint);
                        stringBuilder2.append(replace$default2);
                        if (stringBuilder2.length() > 4) {
                            stringBuilder2.insert(4, ' ');
                            if (selectionStart >= 4) {
                                selectionStart++;
                            }
                        }
                        if (stringBuilder2.length() > 9) {
                            stringBuilder2.insert(9, ' ');
                            if (selectionStart >= 9) {
                                selectionStart++;
                            }
                        }
                        if (stringBuilder2.length() > 14) {
                            stringBuilder2.insert(14, ' ');
                            if (selectionStart >= 14) {
                                selectionStart++;
                            }
                        }
                        if (stringBuilder2.length() > 23) {
                            stringBuilder2.insert(19, ' ');
                            if (selectionStart >= 19) {
                                selectionStart++;
                            }
                        }
                        String stringBuilder3 = stringBuilder2.toString();
                        replace$default = TAG;
                        stringBuilder = new StringBuilder("len: ");
                        stringBuilder.append(stringBuilder3.length());
                        stringBuilder.append(" pos: ");
                        stringBuilder.append(selectionStart);
                        Log.v(replace$default, stringBuilder.toString());
                        editText.setText(stringBuilder3);
                        if (selectionStart > editText.length()) {
                            selectionStart = editText.length();
                        }
                        replace$default = TAG;
                        stringBuilder = new StringBuilder("new len: ");
                        stringBuilder.append(stringBuilder3.length());
                        stringBuilder.append(" pos: ");
                        stringBuilder.append(selectionStart);
                        Log.v(replace$default, stringBuilder.toString());
                        editText.setSelection(selectionStart);
                        editText.addTextChangedListener(textWatcher);
                        if (replace$default2.length() < 16 || !luhnAlgorithm(replace$default2)) {
                            r1.cardNumberListener.cardNumberIsInvalid(replace$default2);
                            r1.cardValid = false;
                        } else {
                            r1.cardNumberListener.cardNumberIsValid(replace$default2);
                            r1.cardValid = true;
                        }
                        if (replace$default2.length() < 6 && r1.lastCardLenght == 6) {
                            r1.cardNumberListener.cancelBin();
                        }
                        if (replace$default2.length() == 6 || (r1.lastCardLenght < 6 && replace$default2.length() > 6)) {
                            r1.cardNumberListener.binReady(replace$default2);
                        }
                        r1.lastCardLenght = replace$default2.length();
                        r1.cardNumberListener.cardChanged();
                        return;
                    }
                }
                editText.addTextChangedListener(r1);
                editable2.replace(0, editable.length(), r1.cardNumberHint);
                editText.addTextChangedListener(textWatcher);
            } catch (Exception e) {
                Log.e(TAG, AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED, e);
            } catch (Throwable th) {
                Throwable th2 = th;
                editText.addTextChangedListener(textWatcher);
            }
        }
    }

    private static boolean luhnAlgorithm(String str) {
        Intrinsics.checkParameterIsNotNull(str, "string");
        str = str.toCharArray();
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toCharArray()");
        int[] iArr = new int[str.length];
        int length = str.length;
        for (int i = 0; i < length; i++) {
            char c = str[i];
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(String.valueOf(c));
            stringBuilder.append("");
            iArr[i] = Integer.parseInt(stringBuilder.toString());
        }
        boolean z = iArr.length % 2 == 0;
        int length2 = iArr.length;
        int i2 = 0;
        int i3 = i2;
        while (i2 < length2) {
            int i4;
            if (z) {
                if ((i2 + 1) % 2 != 0) {
                    i4 = iArr[i2] * 2;
                    if (i4 > 9) {
                        i4 -= 9;
                    }
                    i3 += i4;
                } else {
                    i3 += iArr[i2];
                }
            } else if ((i2 + 1) % 2 == 0) {
                i4 = iArr[i2] * 2;
                if (i4 > 9) {
                    i4 -= 9;
                }
                i3 += i4;
            } else {
                i3 += iArr[i2];
            }
            i2++;
        }
        if (i3 % 10 == 0) {
            return true;
        }
        return false;
    }
}
