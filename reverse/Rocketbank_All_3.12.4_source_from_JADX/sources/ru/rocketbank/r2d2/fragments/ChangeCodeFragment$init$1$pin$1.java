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
import ru.rocketbank.r2d2.activities.ChangeCodeActivity;
import ru.rocketbank.r2d2.activities.StartupActivity;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Subscriber;

/* compiled from: ChangeCodeFragment.kt */
public final class ChangeCodeFragment$init$1$pin$1 extends Subscriber<ActivationResponse> {
    final /* synthetic */ ChangeCodeFragment$init$1 this$0;

    public final void onCompleted() {
    }

    ChangeCodeFragment$init$1$pin$1(ChangeCodeFragment$init$1 changeCodeFragment$init$1) {
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
                if (!(th == null || th.getErrors() == null)) {
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
                    if (this.this$0.this$0.getAuthorization().isAuthorized() != null) {
                        this.this$0.this$0.getAuthorization().refreshBackgroundProfile();
                    }
                    activationResponse = this.this$0.this$0.getActivity();
                    if (activationResponse != null) {
                        activationResponse.finish();
                    }
                    return;
                }
                this.this$0.this$0.getAuthorization().setStatus(RegistrationStatus.UserFeed);
                Authorization authorization = this.this$0.this$0.getAuthorization();
                UserModel user = activationResponse.getUser();
                Intrinsics.checkExpressionValueIsNotNull(user, "response.user");
                authorization.setLogin(user.getEmail());
                this.this$0.this$0.getAuthorization().setToken(activationResponse.getToken());
                this.this$0.this$0.getAuthorization().setUserModel(activationResponse.getUser());
                this.this$0.this$0.startActivity(new Intent(this.this$0.this$0.getActivity(), StartupActivity.class));
            } else {
                UIHelper.showSnack(this.this$0.$view, response.getDescription());
                this.this$0.this$0.reset(this.this$0.$view);
                if (activationResponse.getErrors() != null) {
                    RocketTextView rocketTextView = this.this$0.$textViewErrors;
                    Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "textViewErrors");
                    rocketTextView.setText(activationResponse.getErrors());
                    activationResponse = this.this$0.$textViewErrors;
                    Intrinsics.checkExpressionValueIsNotNull(activationResponse, "textViewErrors");
                    activationResponse.setVisibility(0);
                }
            }
        }
    }
}
