package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$subscribeInn$1<T> implements Action1<Boolean> {
    final /* synthetic */ InnKpp $innKppHolder;
    final /* synthetic */ View $innProgressBar;
    final /* synthetic */ TextView $kpp;
    final /* synthetic */ TextView $recipientName;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$subscribeInn$1(TransferBankFragment transferBankFragment, View view, TextView textView, TextView textView2, InnKpp innKpp) {
        this.this$0 = transferBankFragment;
        this.$innProgressBar = view;
        this.$kpp = textView;
        this.$recipientName = textView2;
        this.$innKppHolder = innKpp;
    }

    public final void call(Boolean bool) {
        TransferBankFragment transferBankFragment = this.this$0;
        Kind access$getRemittanceKind$p = this.this$0.remittanceKind;
        Intrinsics.checkExpressionValueIsNotNull(bool, "it");
        boolean booleanValue = bool.booleanValue();
        View view = this.$innProgressBar;
        Intrinsics.checkExpressionValueIsNotNull(view, "innProgressBar");
        transferBankFragment.requestInn(access$getRemittanceKind$p, booleanValue, view, this.$kpp, this.$recipientName, this.$innKppHolder.getInn(), this.$innKppHolder.getKpp(), this.$innKppHolder.getRecipient_name());
    }
}
