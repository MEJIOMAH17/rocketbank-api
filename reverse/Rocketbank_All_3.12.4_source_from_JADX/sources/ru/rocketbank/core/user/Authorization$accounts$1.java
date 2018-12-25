package ru.rocketbank.core.user;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import rx.functions.Func1;

/* compiled from: Authorization.kt */
final class Authorization$accounts$1<T, R> implements Func1<T, R> {
    final /* synthetic */ Authorization this$0;

    Authorization$accounts$1(Authorization authorization) {
        this.this$0 = authorization;
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        UserModel userModel = (UserModel) obj;
        Intrinsics.checkExpressionValueIsNotNull(userModel, "it");
        return Authorization.getAccountsImmediate(userModel);
    }
}
