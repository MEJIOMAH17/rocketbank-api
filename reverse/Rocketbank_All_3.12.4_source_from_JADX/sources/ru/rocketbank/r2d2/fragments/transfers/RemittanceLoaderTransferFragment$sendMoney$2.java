package ru.rocketbank.r2d2.fragments.transfers;

import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import rx.functions.Action1;

/* compiled from: RemittanceLoaderTransferFragment.kt */
final class RemittanceLoaderTransferFragment$sendMoney$2<T> implements Action1<Throwable> {
    final /* synthetic */ RemittanceLoaderTransferFragment this$0;

    RemittanceLoaderTransferFragment$sendMoney$2(RemittanceLoaderTransferFragment remittanceLoaderTransferFragment) {
        this.this$0 = remittanceLoaderTransferFragment;
    }

    public final void call(Throwable th) {
        String str = null;
        if (th instanceof RocketResponseException) {
            th = ((RocketResponseException) th).getGenericRequestResponseData();
            if (th != null) {
                ResponseData response = th.getResponse();
                if (response != null ? response.getShowIt() : false) {
                    th = th.getResponse();
                    if (th != null) {
                        str = th.getDescription();
                    }
                }
            }
        }
        this.this$0.setUIFailed(str);
    }
}
