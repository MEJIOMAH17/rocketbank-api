package ru.rocketbank.core.manager.social;

import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.login.LoginResult;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FacebookImpl.kt */
public final class FacebookImpl$authorize$1 implements FacebookCallback<LoginResult> {
    final /* synthetic */ SocialNetCallback $callback;

    public final void onCancel() {
    }

    FacebookImpl$authorize$1(SocialNetCallback socialNetCallback) {
        this.$callback = socialNetCallback;
    }

    public final /* bridge */ /* synthetic */ void onSuccess(Object obj) {
        LoginResult loginResult = (LoginResult) obj;
        Intrinsics.checkParameterIsNotNull(loginResult, "result");
        AccessToken accessToken = loginResult.getAccessToken();
        Intrinsics.checkExpressionValueIsNotNull(accessToken, "result.accessToken");
        String token = accessToken.getToken();
        Intrinsics.checkExpressionValueIsNotNull(token, "result.accessToken.token");
        obj = loginResult.getAccessToken();
        Intrinsics.checkExpressionValueIsNotNull(obj, "result.accessToken");
        obj = obj.getUserId();
        Intrinsics.checkExpressionValueIsNotNull(obj, "result.accessToken.userId");
        this.$callback.onResult(new SocialUserModel(Long.parseLong(obj), token));
    }

    public final void onError(FacebookException facebookException) {
        Intrinsics.checkParameterIsNotNull(facebookException, "error");
        this.$callback.onError(facebookException);
    }
}
