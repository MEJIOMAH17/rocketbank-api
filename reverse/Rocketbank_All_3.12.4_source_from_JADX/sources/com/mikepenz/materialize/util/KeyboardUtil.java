package com.mikepenz.materialize.util;

import android.app.Activity;
import android.view.inputmethod.InputMethodManager;

public final class KeyboardUtil {
    public static void hideKeyboard(Activity activity) {
        if (activity != null && activity.getCurrentFocus() != null) {
            ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 0);
        }
    }
}
