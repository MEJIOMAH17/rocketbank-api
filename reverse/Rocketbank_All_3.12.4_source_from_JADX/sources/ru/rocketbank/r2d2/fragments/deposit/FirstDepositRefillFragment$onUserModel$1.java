package ru.rocketbank.r2d2.fragments.deposit;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.mikepenz.materialdrawer.util.KeyboardUtil;

/* compiled from: FirstDepositRefillFragment.kt */
final class FirstDepositRefillFragment$onUserModel$1 implements OnFocusChangeListener {
    final /* synthetic */ FirstDepositRefillFragment this$0;

    FirstDepositRefillFragment$onUserModel$1(FirstDepositRefillFragment firstDepositRefillFragment) {
        this.this$0 = firstDepositRefillFragment;
    }

    public final void onFocusChange(View view, boolean z) {
        if (!z) {
            KeyboardUtil.hideKeyboard(this.this$0.getActivity());
        }
    }
}
