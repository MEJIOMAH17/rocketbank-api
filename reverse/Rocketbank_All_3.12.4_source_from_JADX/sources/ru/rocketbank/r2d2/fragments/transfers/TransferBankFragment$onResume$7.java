package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$onResume$7<T> implements Action1<Boolean> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$onResume$7(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void call(Boolean bool) {
        TransferBankFragment transferBankFragment = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(bool, "valid");
        transferBankFragment.requestKind(bool.booleanValue());
    }
}
