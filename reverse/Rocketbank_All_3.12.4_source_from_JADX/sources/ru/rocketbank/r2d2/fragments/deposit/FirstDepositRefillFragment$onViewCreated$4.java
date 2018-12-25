package ru.rocketbank.r2d2.fragments.deposit;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FirstDepositRefillFragment.kt */
final class FirstDepositRefillFragment$onViewCreated$4 implements OnClickListener {
    final /* synthetic */ FirstDepositRefillFragment this$0;

    FirstDepositRefillFragment$onViewCreated$4(FirstDepositRefillFragment firstDepositRefillFragment) {
        this.this$0 = firstDepositRefillFragment;
    }

    public final void onClick(View view) {
        Intrinsics.checkExpressionValueIsNotNull(view, "v");
        view.setEnabled(false);
        this.this$0.isDepositCurrency = this.this$0.isDepositCurrency ^ true;
        this.this$0.updateCurrentCurrencyButton();
        this.this$0.updateCurrencySymbol();
        view.setEnabled(true);
    }
}
