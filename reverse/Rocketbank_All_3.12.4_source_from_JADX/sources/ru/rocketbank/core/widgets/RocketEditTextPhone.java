package ru.rocketbank.core.widgets;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;

public class RocketEditTextPhone extends RocketEditText implements TextWatcher {
    private Integer _numberIndexToRemove = null;
    private boolean _selfFormat = null;

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public RocketEditTextPhone(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        addTextChangedListener(this);
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (i3 == 0 && i2 == 1) {
            if (i != 4) {
                if (i != 5) {
                    if (i == 9) {
                        this._numberIndexToRemove = Integer.valueOf(5);
                        return;
                    } else if (i == 12) {
                        this._numberIndexToRemove = Integer.valueOf(7);
                    }
                }
            }
            this._numberIndexToRemove = Integer.valueOf(2);
        }
    }

    public void afterTextChanged(Editable editable) {
        if (!this._selfFormat) {
            this._selfFormat = true;
            StringBuilder phoneNumber = getPhoneNumber();
            if (this._numberIndexToRemove != null && this._numberIndexToRemove.intValue() < phoneNumber.length()) {
                phoneNumber.deleteCharAt(this._numberIndexToRemove.intValue());
            }
            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i < phoneNumber.length(); i++) {
                if (i == 0) {
                    stringBuilder.append('(');
                    stringBuilder.append(phoneNumber.charAt(i));
                } else if (i == 3) {
                    stringBuilder.append(") ");
                    stringBuilder.append(phoneNumber.charAt(i));
                } else {
                    if (i != 6) {
                        if (i != 8) {
                            stringBuilder.append(phoneNumber.charAt(i));
                        }
                    }
                    stringBuilder.append("-");
                    stringBuilder.append(phoneNumber.charAt(i));
                }
            }
            editable.replace(0, editable.length(), stringBuilder.toString());
            try {
                editable = editable.length();
                if (this._numberIndexToRemove != null) {
                    if (this._numberIndexToRemove.intValue() == 2) {
                        setSelection(3);
                    } else if (this._numberIndexToRemove.intValue() == 3) {
                        setSelection(4);
                    } else if (this._numberIndexToRemove.intValue() == 5) {
                        setSelection(8);
                    } else if (this._numberIndexToRemove.intValue() == 7) {
                        setSelection(11);
                    }
                }
                if (getSelectionStart() != 0 || editable <= null) {
                    if (getSelectionStart() == 5 || getSelectionStart() == 6) {
                        setSelection(4);
                    }
                    this._selfFormat = false;
                    this._numberIndexToRemove = null;
                }
                setSelection(1);
                this._selfFormat = false;
                this._numberIndexToRemove = null;
            } catch (Editable editable2) {
                editable2.printStackTrace();
            }
        }
    }

    private StringBuilder getPhoneNumber() {
        Editable text = getText();
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            char charAt = text.charAt(i);
            if (Character.isDigit(charAt)) {
                stringBuilder.append(charAt);
            }
        }
        if (stringBuilder.length() <= 15) {
            return stringBuilder;
        }
        return stringBuilder.delete(15, stringBuilder.length());
    }

    public final String getPhone() {
        return getPhoneNumber().toString();
    }
}
