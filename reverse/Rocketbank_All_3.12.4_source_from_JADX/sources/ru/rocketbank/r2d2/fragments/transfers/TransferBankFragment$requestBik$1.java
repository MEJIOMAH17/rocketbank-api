package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.bank.BiksResponseData;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$requestBik$1<T> implements Action1<BiksResponseData> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$requestBik$1(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void call(BiksResponseData biksResponseData) {
        ViewField bank_name = this.this$0.transferViewModel.getBank_name();
        Intrinsics.checkExpressionValueIsNotNull(biksResponseData, "it");
        bank_name.setValue(biksResponseData.getBik().getBankName());
        this.this$0.transferViewModel.getCorr_bank().setValue(biksResponseData.getBik().getCorrBank());
        bank_name = this.this$0.transferViewModel.getLogo();
        biksResponseData = biksResponseData.getBik().getLogo();
        if (biksResponseData == null) {
            biksResponseData = "";
        }
        bank_name.setValue(biksResponseData);
        this.this$0.loadBikLogo();
    }
}
