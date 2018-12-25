package ru.rocketbank.r2d2.fragments;

import android.support.v4.app.FragmentActivity;
import android.util.Log;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.network.model.OpenSafeAccountResponse;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MainActivity;
import rx.Subscriber;

/* compiled from: OpenSafeAccountFragment.kt */
public final class OpenSafeAccountFragment$openSafeAccount$2 extends Subscriber<OpenSafeAccountResponse> {
    final /* synthetic */ OpenSafeAccountFragment this$0;

    public final void onCompleted() {
    }

    OpenSafeAccountFragment$openSafeAccount$2(OpenSafeAccountFragment openSafeAccountFragment) {
        this.this$0 = openSafeAccountFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("SAFE_ACCOUNT", "Not able to create account", th);
        this.this$0.showAlert(C0859R.string.not_able_to_create_account);
        this.this$0.hideProgress();
    }

    public final void onNext(OpenSafeAccountResponse openSafeAccountResponse) {
        Intrinsics.checkParameterIsNotNull(openSafeAccountResponse, "openSafeAccountResponse");
        this.this$0.hideProgress();
        openSafeAccountResponse = openSafeAccountResponse.getAccount();
        UserModel userImmediate = this.this$0.getAuthorization().getUserImmediate();
        if (userImmediate == null) {
            Intrinsics.throwNpe();
        }
        userImmediate.getSafeAccounts().add(openSafeAccountResponse);
        this.this$0.getAuthorization().reloadProfile();
        FragmentActivity activity = this.this$0.getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
        }
        MainActivity mainActivity = (MainActivity) activity;
        if (openSafeAccountResponse == null) {
            Intrinsics.throwNpe();
        }
        mainActivity.showSafe(openSafeAccountResponse.getToken());
    }
}
