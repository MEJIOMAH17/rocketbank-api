package ru.rocketbank.r2d2.fragments.transfers;

import ru.rocketbank.core.manager.AnalyticsManager;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$subscribeValid$2<T> implements Action1<Throwable> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$subscribeValid$2(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void call(Throwable th) {
        AnalyticsManager.logException(th);
        this.this$0.subscribeValid();
    }
}
