package ru.rocketbank.r2d2.fragments.deposit;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.rx.TextObserverToDecimal;

/* compiled from: FirstDepositRefillFragment.kt */
public final class FirstDepositRefillFragment$itemSelectedListener$1 implements OnItemSelectedListener {
    final /* synthetic */ FirstDepositRefillFragment this$0;

    public final void onNothingSelected(AdapterView<?> adapterView) {
        Intrinsics.checkParameterIsNotNull(adapterView, "parent");
    }

    FirstDepositRefillFragment$itemSelectedListener$1(FirstDepositRefillFragment firstDepositRefillFragment) {
        this.this$0 = firstDepositRefillFragment;
    }

    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        Intrinsics.checkParameterIsNotNull(adapterView, "parent");
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.this$0.currentAccount = FirstDepositRefillFragment.access$getAccountAdapter$p(this.this$0).getItem(i);
        this.this$0.amountChangeSubscriber.call(TextObserverToDecimal.convertTextToBigDecimal(FirstDepositRefillFragment.access$getAmountView$p(this.this$0).getText().toString()));
        this.this$0.updateCurrentCurrencyButton();
    }
}
