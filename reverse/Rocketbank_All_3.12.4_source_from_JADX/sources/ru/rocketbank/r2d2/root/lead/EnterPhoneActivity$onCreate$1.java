package ru.rocketbank.r2d2.root.lead;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

/* compiled from: EnterPhoneActivity.kt */
final class EnterPhoneActivity$onCreate$1 implements OnEditorActionListener {
    final /* synthetic */ EnterPhoneActivity this$0;

    EnterPhoneActivity$onCreate$1(EnterPhoneActivity enterPhoneActivity) {
        this.this$0 = enterPhoneActivity;
    }

    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return null;
        }
        if (this.this$0.validate() != null) {
            this.this$0.next();
        }
        return true;
    }
}
