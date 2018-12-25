package com.mikepenz.materialdrawer.util;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.inputmethod.InputMethodManager;

public final class KeyboardUtil {
    private View contentView;
    private View decorView;
    OnGlobalLayoutListener onGlobalLayoutListener = new C06641();

    /* renamed from: com.mikepenz.materialdrawer.util.KeyboardUtil$1 */
    class C06641 implements OnGlobalLayoutListener {
        C06641() {
        }

        public final void onGlobalLayout() {
            Rect rect = new Rect();
            KeyboardUtil.this.decorView.getWindowVisibleDisplayFrame(rect);
            int i = KeyboardUtil.this.decorView.getContext().getResources().getDisplayMetrics().heightPixels - rect.bottom;
            if (i != 0) {
                if (KeyboardUtil.this.contentView.getPaddingBottom() != i) {
                    KeyboardUtil.this.contentView.setPadding(0, 0, 0, i);
                }
            } else if (KeyboardUtil.this.contentView.getPaddingBottom() != 0) {
                KeyboardUtil.this.contentView.setPadding(0, 0, 0, 0);
            }
        }
    }

    public KeyboardUtil(Activity activity, View view) {
        this.decorView = activity.getWindow().getDecorView();
        this.contentView = view;
        if (VERSION.SDK_INT >= 19) {
            this.decorView.getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
        }
    }

    public final void enable() {
        if (VERSION.SDK_INT >= 19) {
            this.decorView.getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
        }
    }

    public final void disable() {
        if (VERSION.SDK_INT >= 19) {
            this.decorView.getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
        }
    }

    public static void hideKeyboard(Activity activity) {
        if (activity != null && activity.getCurrentFocus() != null) {
            ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 0);
        }
    }
}
