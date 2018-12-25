package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.InnResponseData;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$requestInn$1<T> implements Action1<InnResponseData> {
    final /* synthetic */ View $innProgressBar;
    final /* synthetic */ TextView $kpp;
    final /* synthetic */ ViewField $kppField;
    final /* synthetic */ ViewField $recipientNameField;
    final /* synthetic */ TextView $recipient_name;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$requestInn$1(TransferBankFragment transferBankFragment, View view, ViewField viewField, ViewField viewField2, TextView textView, TextView textView2) {
        this.this$0 = transferBankFragment;
        this.$innProgressBar = view;
        this.$kppField = viewField;
        this.$recipientNameField = viewField2;
        this.$kpp = textView;
        this.$recipient_name = textView2;
    }

    public final void call(InnResponseData innResponseData) {
        boolean z;
        View view = this.$innProgressBar;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(8);
        CharSequence kpp = innResponseData.getKpp();
        boolean z2 = false;
        if (kpp != null) {
            if (kpp.length() != 0) {
                z = false;
                if (!z) {
                    this.$kppField.setValue(innResponseData.getKpp());
                }
                kpp = innResponseData.getRecipient_name();
                if (kpp == null || kpp.length() == 0) {
                    z2 = true;
                }
                if (!z2) {
                    this.$recipientNameField.setValue(innResponseData.getRecipient_name());
                }
                this.$kpp.setEnabled(true);
                this.this$0.isGkh = innResponseData.getGisGkh();
                this.$recipient_name.setEnabled(true);
                this.this$0.corporateViewModel.getGkhVisible().set(innResponseData.getGisGkh());
            }
        }
        z = true;
        if (z) {
            this.$kppField.setValue(innResponseData.getKpp());
        }
        kpp = innResponseData.getRecipient_name();
        z2 = true;
        if (z2) {
            this.$recipientNameField.setValue(innResponseData.getRecipient_name());
        }
        this.$kpp.setEnabled(true);
        this.this$0.isGkh = innResponseData.getGisGkh();
        this.$recipient_name.setEnabled(true);
        this.this$0.corporateViewModel.getGkhVisible().set(innResponseData.getGisGkh());
    }
}
