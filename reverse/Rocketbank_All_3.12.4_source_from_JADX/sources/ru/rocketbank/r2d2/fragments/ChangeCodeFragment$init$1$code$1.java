package ru.rocketbank.r2d2.fragments;

import android.content.Intent;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.dto.ActivationResponse;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.ChangeCodeActivity;
import ru.rocketbank.r2d2.activities.StartupActivity;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Subscriber;

/* compiled from: ChangeCodeFragment.kt */
public final class ChangeCodeFragment$init$1$code$1 extends Subscriber<ActivationResponse> {
    final /* synthetic */ ChangeCodeFragment$init$1 this$0;

    public final void onCompleted() {
    }

    ChangeCodeFragment$init$1$code$1(ChangeCodeFragment$init$1 changeCodeFragment$init$1) {
        this.this$0 = changeCodeFragment$init$1;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        if (this.this$0.this$0.getChangeActivity() != null) {
            ChangeCodeActivity access$getChangeActivity$p = this.this$0.this$0.getChangeActivity();
            if (access$getChangeActivity$p == null) {
                Intrinsics.throwNpe();
            }
            access$getChangeActivity$p.hideProgressDialog();
            UIHelper.showSnackWithError(this.this$0.$view, th);
            this.this$0.this$0.reset(this.this$0.$view);
            if (th instanceof RocketResponseException) {
                th = ((RocketResponseException) th).getGenericRequestResponseData();
                if ((th != null ? th.getErrors() : null) != null) {
                    RocketTextView rocketTextView = this.this$0.$textViewErrors;
                    Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewErrors");
                    rocketTextView.setText(th.getErrors());
                    th = this.this$0.$textViewErrors;
                    Intrinsics.checkExpressionValueIsNotNull(th, "textViewErrors");
                    th.setVisibility(0);
                }
            }
        }
    }

    public final void onNext(ActivationResponse activationResponse) {
        Intrinsics.checkParameterIsNotNull(activationResponse, "response");
        if (this.this$0.this$0.getChangeActivity() != null) {
            ChangeCodeActivity access$getChangeActivity$p = this.this$0.this$0.getChangeActivity();
            if (access$getChangeActivity$p == null) {
                Intrinsics.throwNpe();
            }
            access$getChangeActivity$p.hideProgressDialog();
            ResponseData response = activationResponse.getResponse();
            if (response == null) {
                UIHelper.showSnack(this.this$0.$view, (int) C0859R.string.data_not_received);
                this.this$0.this$0.reset(this.this$0.$view);
            } else if (response.getStatus() == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                Toast.makeText(this.this$0.this$0.getActivity(), response.getDescription(), 0).show();
                if (this.this$0.this$0.change) {
                    activationResponse = this.this$0.this$0.getActivity();
                    if (activationResponse != null) {
                        activationResponse.finish();
                    }
                    return;
                }
                Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
                this.this$0.this$0.getDataManager().isResetCodeToken = false;
                authorization.setStatus(RegistrationStatus.UserFeed);
                UserModel user = activationResponse.getUser();
                Intrinsics.checkExpressionValueIsNotNull(user, "response.user");
                authorization.setLogin(user.getEmail());
                authorization.setToken(activationResponse.getToken());
                authorization.setUserModel(activationResponse.getUser());
                this.this$0.this$0.startActivity(new Intent(this.this$0.this$0.getActivity(), StartupActivity.class));
            }
        }
    }
}
