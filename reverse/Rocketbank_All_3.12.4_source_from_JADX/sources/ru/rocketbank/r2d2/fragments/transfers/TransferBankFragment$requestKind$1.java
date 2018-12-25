package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.widget.ProgressBar;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.r2d2.C0859R;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$requestKind$1<T> implements Action1<RemittanceKindResponseData> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$requestKind$1(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void call(RemittanceKindResponseData remittanceKindResponseData) {
        if (remittanceKindResponseData.getErrors() != null) {
            Throwable exception = new Exception();
            GenericRequestResponseData genericRequestResponseData = new GenericRequestResponseData();
            genericRequestResponseData.setErrors(remittanceKindResponseData.getErrors());
            throw new RocketResponseException(exception, genericRequestResponseData);
        }
        this.this$0.remittanceKind = remittanceKindResponseData.getRemittanceKind();
        this.this$0.message = remittanceKindResponseData.getMessage();
        this.this$0.extra = remittanceKindResponseData.getExtra();
        this.this$0.showKind(this.this$0.remittanceKind, this.this$0.message, this.this$0.extra, this.this$0.isGkh);
        ProgressBar progressBar = (ProgressBar) this.this$0.getFragmentView().findViewById(C0859R.id.cardNumberProgressBar);
        if (progressBar != null) {
            View view = progressBar;
            Intrinsics.checkParameterIsNotNull(view, "$receiver");
            view.setVisibility(8);
        }
        this.this$0.subscribeRecipientName();
    }
}
