package ru.rocketbank.r2d2.fragments.deposit;

import android.support.v4.app.FragmentActivity;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.network.model.DepositOpenResult;
import ru.rocketbank.core.utils.SoundNotification;
import ru.rocketbank.r2d2.activities.MainActivity;
import rx.Subscriber;

/* compiled from: FirstDepositRefillFragment.kt */
public final class FirstDepositRefillFragment$openDeposit$1 extends Subscriber<DepositOpenResult> {
    final /* synthetic */ FirstDepositRefillFragment this$0;

    public final void onCompleted() {
    }

    FirstDepositRefillFragment$openDeposit$1(FirstDepositRefillFragment firstDepositRefillFragment) {
        this.this$0 = firstDepositRefillFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.hideSpinner();
        this.this$0.depositSubscription.unsubscribe();
    }

    public final void onNext(DepositOpenResult depositOpenResult) {
        Intrinsics.checkParameterIsNotNull(depositOpenResult, "depositOpenResult");
        SoundNotification.INSTANCE.playSoundNotification(4);
        this.this$0.hideSpinner();
        depositOpenResult = depositOpenResult.getDeposit();
        UserModel userImmediate = FirstDepositRefillFragment.access$getAuthorization$p(this.this$0).getUserImmediate();
        if (userImmediate == null) {
            Intrinsics.throwNpe();
        }
        userImmediate.getDeposits().add(depositOpenResult);
        FirstDepositRefillFragment.access$getAuthorization$p(this.this$0).reloadProfile();
        FirstDepositRefillFragment.access$getAuthorization$p(this.this$0).refreshBackgroundProfile();
        FragmentActivity activity = this.this$0.getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
        }
        MainActivity mainActivity = (MainActivity) activity;
        mainActivity.onBackPressed();
        mainActivity.showDeposit(depositOpenResult);
        this.this$0.depositSubscription.unsubscribe();
    }
}
