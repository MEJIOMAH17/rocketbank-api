package ru.rocketbank.r2d2.fragments.deposit;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FirstDepositRefillFragment.kt */
final class FirstDepositRefillFragment$navigationOnClickListener$1 implements OnClickListener {
    final /* synthetic */ FirstDepositRefillFragment this$0;

    FirstDepositRefillFragment$navigationOnClickListener$1(FirstDepositRefillFragment firstDepositRefillFragment) {
        this.this$0 = firstDepositRefillFragment;
    }

    public final void onClick(View view) {
        view = this.this$0.getActivity();
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.onBackPressed();
    }
}
