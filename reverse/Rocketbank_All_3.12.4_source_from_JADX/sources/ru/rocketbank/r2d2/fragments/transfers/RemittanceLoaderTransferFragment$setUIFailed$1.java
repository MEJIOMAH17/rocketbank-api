package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: RemittanceLoaderTransferFragment.kt */
final class RemittanceLoaderTransferFragment$setUIFailed$1 implements OnClickListener {
    final /* synthetic */ RemittanceLoaderTransferFragment this$0;

    RemittanceLoaderTransferFragment$setUIFailed$1(RemittanceLoaderTransferFragment remittanceLoaderTransferFragment) {
        this.this$0 = remittanceLoaderTransferFragment;
    }

    public final void onClick(View view) {
        this.this$0.onRetry();
    }
}
