package ru.rocketbank.r2d2.fragments.transfers;

import android.text.Editable;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;

/* compiled from: TransferBankFragment.kt */
public final class TransferBankFragment$onViewCreated$4 extends TextWatcherAbstract {
    final /* synthetic */ RocketEditText $fio;
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$onViewCreated$4(TransferBankFragment transferBankFragment, RocketEditText rocketEditText) {
        this.this$0 = transferBankFragment;
        this.$fio = rocketEditText;
    }

    public final void afterTextChanged(Editable editable) {
        Intrinsics.checkParameterIsNotNull(editable, "s");
        if (IndividualObservable.Companion.checkFio(editable.toString()) == null) {
            editable = this.$fio;
            Intrinsics.checkExpressionValueIsNotNull(editable, "fio");
            editable.setError(this.this$0.getString(C0859R.string.fio_error));
        }
    }
}
