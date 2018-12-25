package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.bank.RemittanceIncoming;
import ru.rocketbank.core.model.transfers.bank.RemittanceResponseData;
import ru.rocketbank.r2d2.C0859R;
import rx.functions.Action1;

/* compiled from: RemittanceLoaderTransferFragment.kt */
final class RemittanceLoaderTransferFragment$sendMoney$1<T> implements Action1<RemittanceResponseData> {
    final /* synthetic */ RemittanceLoaderTransferFragment this$0;

    RemittanceLoaderTransferFragment$sendMoney$1(RemittanceLoaderTransferFragment remittanceLoaderTransferFragment) {
        this.this$0 = remittanceLoaderTransferFragment;
    }

    public final void call(RemittanceResponseData remittanceResponseData) {
        Intrinsics.checkExpressionValueIsNotNull(remittanceResponseData, "r");
        RemittanceIncoming remittance = remittanceResponseData.getRemittance();
        remittanceResponseData = remittanceResponseData.getResponse();
        if (remittance != null) {
            this.this$0.setUISuccess();
        } else if (remittanceResponseData != null) {
            this.this$0.setUIFailed(remittanceResponseData.getDescription());
        } else {
            this.this$0.setUIFailed(this.this$0.getString(C0859R.string.error_occur));
        }
    }
}
