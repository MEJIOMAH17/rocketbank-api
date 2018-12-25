package ru.rocketbank.r2d2.widgets;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.OptionModel;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.model.UserModel;
import rx.Subscriber;

/* compiled from: NotificationDialog.kt */
public final class NotificationDialog$onResume$1 extends Subscriber<UserModel> {
    final /* synthetic */ NotificationDialog this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
    }

    NotificationDialog$onResume$1(NotificationDialog notificationDialog) {
        this.this$0 = notificationDialog;
    }

    public final void onNext(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        this.this$0.setUserModel(userModel);
        if (this.this$0.account != null) {
            userModel = this.this$0;
            AccountModel access$getAccount$p = this.this$0.account;
            if (access$getAccount$p == null) {
                Intrinsics.throwNpe();
            }
            TariffModel currentTariff = access$getAccount$p.getCurrentTariff();
            if (currentTariff == null) {
                Intrinsics.throwNpe();
            }
            OptionModel option = currentTariff.getOption();
            userModel.isActive = option != null ? option.isActive() : false;
            this.this$0.checkedIsActive = this.this$0.isActive;
            this.this$0.setupNotifications();
            return;
        }
        this.this$0.dismiss();
    }
}
