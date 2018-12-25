package ru.rocketbank.r2d2.fragments.transfers;

import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$requestInn$2<T> implements Action1<Throwable> {
    final /* synthetic */ View $innProgressBar;
    final /* synthetic */ TextView $kpp;
    final /* synthetic */ TextView $recipient_name;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$requestInn$2(TransferBankFragment transferBankFragment, TextView textView, TextView textView2, View view) {
        this.this$0 = transferBankFragment;
        this.$kpp = textView;
        this.$recipient_name = textView2;
        this.$innProgressBar = view;
    }

    public final void call(Throwable th) {
        this.$kpp.setEnabled(true);
        this.$recipient_name.setEnabled(true);
        View view = this.$innProgressBar;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(8);
        UIHelper.showSnackWithError(this.this$0.getView(), th, -1);
    }
}
