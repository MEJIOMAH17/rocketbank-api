package ru.rocketbank.r2d2.activities;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FirstRefillActivity.kt */
final class FirstRefillActivity$onCreate$1 implements OnTouchListener {
    final /* synthetic */ InputMethodManager $inputMethodManager;
    final /* synthetic */ FirstRefillActivity this$0;

    FirstRefillActivity$onCreate$1(FirstRefillActivity firstRefillActivity, InputMethodManager inputMethodManager) {
        this.this$0 = firstRefillActivity;
        this.$inputMethodManager = inputMethodManager;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(motionEvent, "motionEvent");
        if (this.$inputMethodManager.isAcceptingText() != null) {
            KeyboardUtil.hideKeyboard((Activity) this.this$0);
        }
        return null;
    }
}
