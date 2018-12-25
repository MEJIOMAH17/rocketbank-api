package ru.rocketbank.r2d2.fragments;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.LoginResponseData;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.exception.RocketResponseException;
import rx.Subscriber;

/* compiled from: CodeInputDialogFragment.kt */
public final class CodeInputDialogFragment$requestLogin$1 extends Subscriber<LoginResponseData> {
    final /* synthetic */ boolean $isTouch;
    final /* synthetic */ CodeInputDialogFragment this$0;

    public final void onCompleted() {
    }

    CodeInputDialogFragment$requestLogin$1(CodeInputDialogFragment codeInputDialogFragment, boolean z) {
        this.this$0 = codeInputDialogFragment;
        this.$isTouch = z;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        if (th instanceof RocketResponseException) {
            GenericRequestResponseData genericResponse = ((RocketResponseException) th).getGenericResponse();
            if (genericResponse != null) {
                ResponseData response = genericResponse.getResponse();
                if (response != null && Intrinsics.areEqual(response.getCode(), "NOT_TRUSTED")) {
                    this.this$0.dropAllSession();
                    return;
                }
            }
        }
        this.this$0.handleLoginError(th, this.$isTouch);
    }

    public final void onNext(LoginResponseData loginResponseData) {
        Intrinsics.checkParameterIsNotNull(loginResponseData, "loginResponseData");
        this.this$0.handleLogin(this.$isTouch, loginResponseData);
    }
}
