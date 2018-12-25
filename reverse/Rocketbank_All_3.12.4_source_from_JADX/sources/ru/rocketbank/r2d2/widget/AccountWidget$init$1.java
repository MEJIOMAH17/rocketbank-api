package ru.rocketbank.r2d2.widget;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.user.Authorization;
import rx.functions.Action1;

/* compiled from: AccountWidget.kt */
final class AccountWidget$init$1<T> implements Action1<UserModel> {
    final /* synthetic */ AccountWidget this$0;

    AccountWidget$init$1(AccountWidget accountWidget) {
        this.this$0 = accountWidget;
    }

    public final void call(UserModel userModel) {
        this.this$0.authorization;
        Intrinsics.checkExpressionValueIsNotNull(userModel, "user");
        this.this$0.accounts = Authorization.getAccountsImmediate(userModel);
        this.this$0.filterAccounts((Function1) this.this$0.defaultFilter.invoke(userModel));
    }
}
