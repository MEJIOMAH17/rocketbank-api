package ru.rocketbank.core.user;

import ru.rocketbank.core.network.model.UserResponse;
import rx.functions.Action1;

/* compiled from: Authorization.kt */
final class Authorization$refreshProfile$1<T> implements Action1<UserResponse> {
    final /* synthetic */ Authorization this$0;

    Authorization$refreshProfile$1(Authorization authorization) {
        this.this$0 = authorization;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        UserResponse userResponse = (UserResponse) obj;
        if (userResponse != null) {
            this.this$0.setUserModel(userResponse.getUser());
        }
    }
}
