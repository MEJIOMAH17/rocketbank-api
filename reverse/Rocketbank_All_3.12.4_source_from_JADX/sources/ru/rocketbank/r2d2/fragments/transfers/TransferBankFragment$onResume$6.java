package ru.rocketbank.r2d2.fragments.transfers;

import rx.functions.Func1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$onResume$6<T, R> implements Func1<T, R> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$onResume$6(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final boolean call(Boolean bool) {
        return (this.this$0.transferViewModel.getCorr_number().getValid() == null || this.this$0.transferViewModel.getBik().getValid() == null) ? null : true;
    }
}
