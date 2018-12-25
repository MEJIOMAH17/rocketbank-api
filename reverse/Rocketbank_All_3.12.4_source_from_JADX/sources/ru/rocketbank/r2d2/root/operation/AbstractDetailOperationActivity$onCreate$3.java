package ru.rocketbank.r2d2.root.operation;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.mikepenz.materialdrawer.util.KeyboardUtil;

/* compiled from: AbstractDetailOperationActivity.kt */
final class AbstractDetailOperationActivity$onCreate$3 implements OnTouchListener {
    final /* synthetic */ AbstractDetailOperationActivity this$0;

    AbstractDetailOperationActivity$onCreate$3(AbstractDetailOperationActivity abstractDetailOperationActivity) {
        this.this$0 = abstractDetailOperationActivity;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.this$0.getBinding().operation.requestFocus();
        KeyboardUtil.hideKeyboard((Activity) this.this$0);
        return null;
    }
}
