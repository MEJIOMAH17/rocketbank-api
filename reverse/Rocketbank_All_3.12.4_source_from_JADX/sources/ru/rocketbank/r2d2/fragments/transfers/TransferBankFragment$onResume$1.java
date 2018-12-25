package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;
import rx.functions.Action1;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$onResume$1<T> implements Action1<UserModel> {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$onResume$1(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void call(UserModel userModel) {
        ViewField from = this.this$0.budgetViewModel.getFrom();
        StringBuilder stringBuilder = new StringBuilder();
        Intrinsics.checkExpressionValueIsNotNull(userModel, "userModel");
        stringBuilder.append(userModel.getFirstName());
        stringBuilder.append(' ');
        stringBuilder.append(userModel.getSecondName());
        stringBuilder.append(' ');
        stringBuilder.append(userModel.getLastName());
        from.setValue(stringBuilder.toString());
    }
}
