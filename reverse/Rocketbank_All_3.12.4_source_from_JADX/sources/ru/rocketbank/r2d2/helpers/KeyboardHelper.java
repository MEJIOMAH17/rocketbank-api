package ru.rocketbank.r2d2.helpers;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

public final class KeyboardHelper {
    public static void hide(EditText editText) {
        set(false, editText);
    }

    public static void show(EditText editText) {
        set(true, editText);
    }

    private static void set(boolean z, EditText editText) {
        InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method");
        if (z) {
            inputMethodManager.showSoftInput(editText, true);
            return;
        }
        if (inputMethodManager.isActive()) {
            inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), null);
        }
    }
}
