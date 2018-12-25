package ru.rocketbank.r2d2.fragments.transfers;

import android.support.v4.app.Fragment;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$subscribeValid$1<T> implements Action1<Boolean> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$subscribeValid$1(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void call(Boolean bool) {
        bool = this.this$0;
        Fragment parentFragment = this.this$0.getParentFragment();
        if (parentFragment == null) {
            parentFragment = this.this$0;
        }
        bool.updateNextButton(parentFragment);
    }
}
