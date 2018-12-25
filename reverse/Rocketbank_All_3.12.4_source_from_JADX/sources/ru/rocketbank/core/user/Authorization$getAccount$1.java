package ru.rocketbank.core.user;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.exceptions.NoAccountException;
import ru.rocketbank.core.model.UserModel;
import rx.functions.Func1;

/* compiled from: Authorization.kt */
final class Authorization$getAccount$1<T, R> implements Func1<T, R> {
    final /* synthetic */ String $token;
    final /* synthetic */ Authorization this$0;

    Authorization$getAccount$1(Authorization authorization, String str) {
        this.this$0 = authorization;
        this.$token = str;
    }

    public final /* bridge */ /* synthetic */ Object call(Object obj) {
        UserModel userModel = (UserModel) obj;
        Authorization authorization = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(userModel, "userModel");
        obj = authorization.getAccountImmediate(userModel, this.$token);
        if (obj != null) {
            return obj;
        }
        throw ((Throwable) new NoAccountException(this.$token));
    }
}
