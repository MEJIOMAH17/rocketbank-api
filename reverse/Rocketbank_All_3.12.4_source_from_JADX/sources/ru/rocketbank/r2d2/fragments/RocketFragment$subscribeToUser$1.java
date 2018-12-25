package ru.rocketbank.r2d2.fragments;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import rx.Subscriber;

/* compiled from: RocketFragment.kt */
public final class RocketFragment$subscribeToUser$1 extends Subscriber<UserModel> {
    final /* synthetic */ RocketFragment this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
    }

    RocketFragment$subscribeToUser$1(RocketFragment rocketFragment) {
        this.this$0 = rocketFragment;
    }

    public final void onNext(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        this.this$0.onUserModel(userModel);
    }
}
