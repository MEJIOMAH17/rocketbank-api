package ru.rocketbank.r2d2.fragments.transfers;

import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$requestBik$2<T> implements Action1<Throwable> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$requestBik$2(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void call(Throwable th) {
        RocketEditText rocketEditText = (RocketEditText) this.this$0.getFragmentView().findViewById(C0859R.id.editTextBik);
        if (rocketEditText != null) {
            rocketEditText.setBackgroundResource(C0859R.drawable.underline_red);
        }
        this.this$0.transferViewModel.getBank_name().setValue(null);
        this.this$0.transferViewModel.getCorr_bank().setValue(null);
        this.this$0.transferViewModel.getLogo().setValue(null);
        this.this$0.transferViewModel.notifyPropertyChanged(8);
        UIHelper.showSnackWithError(this.this$0.getView(), th, -1);
    }
}
