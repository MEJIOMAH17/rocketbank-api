package ru.rocketbank.r2d2.friends;

import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.PermalinkTariff;
import ru.rocketbank.core.model.response.CommissionResponse;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: TransferFriendAmountFragment.kt */
public final class TransferFriendAmountFragment$onTextChanged$2 extends Subscriber<CommissionResponse> {
    final /* synthetic */ TransferFriendAmountFragment this$0;

    public final void onCompleted() {
    }

    TransferFriendAmountFragment$onTextChanged$2(TransferFriendAmountFragment transferFriendAmountFragment) {
        this.this$0 = transferFriendAmountFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        th = this.this$0.commission;
        if (th == null) {
            Intrinsics.throwNpe();
        }
        th.setText(C0859R.string.ta_commission_failed);
        th = this.this$0.commissionSubscription;
        if (th == null) {
            Intrinsics.throwNpe();
        }
        th.unsubscribe();
        this.this$0.commissionSubscription = null;
        th = this.this$0.commissionSwitcher;
        if (th == null) {
            Intrinsics.throwNpe();
        }
        th.setDisplayedChild(0);
        this.this$0.disableNextButton();
    }

    public final void onNext(CommissionResponse commissionResponse) {
        Intrinsics.checkParameterIsNotNull(commissionResponse, "response");
        if (commissionResponse.getCommission() > BitmapDescriptorFactory.HUE_RED) {
            TextView access$getCommission$p = this.this$0.commission;
            if (access$getCommission$p == null) {
                Intrinsics.throwNpe();
            }
            TransferFriendAmountFragment transferFriendAmountFragment = this.this$0;
            UserModel access$getUserModel$p = this.this$0.userModel;
            if (access$getUserModel$p == null) {
                Intrinsics.throwNpe();
            }
            AccountModel currentAccount = access$getUserModel$p.getCurrentAccount();
            if (currentAccount == null) {
                Intrinsics.throwNpe();
            }
            TariffModel currentTariff = currentAccount.getCurrentTariff();
            if (currentTariff == null) {
                Intrinsics.throwNpe();
            }
            int i = currentTariff.getPermalink() == PermalinkTariff.METROPOLIS ? C0859R.string.ta_commission_metropolis : C0859R.string.ta_commission;
            Object[] objArr = new Object[1];
            MoneyFormatter access$getMoneyFormatter$p = this.this$0.moneyFormatter;
            if (access$getMoneyFormatter$p == null) {
                Intrinsics.throwNpe();
            }
            objArr[0] = access$getMoneyFormatter$p.format((double) commissionResponse.getCommission(), this.this$0.currencyCode, true);
            access$getCommission$p.setText(transferFriendAmountFragment.getString(i, objArr));
        } else {
            commissionResponse = this.this$0.commission;
            if (commissionResponse == null) {
                Intrinsics.throwNpe();
            }
            commissionResponse.setText(C0859R.string.ta_no_commission);
        }
        commissionResponse = this.this$0.commissionSwitcher;
        if (commissionResponse == null) {
            Intrinsics.throwNpe();
        }
        commissionResponse.setDisplayedChild(0);
        this.this$0.enableNextButton();
    }
}
