package ru.rocketbank.r2d2.utils;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.Empty;
import ru.rocketbank.core.model.ValueRequest;
import ru.rocketbank.core.network.api.RocketAPI;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: GaToken.kt */
final class GaToken$sendGaToken$2<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ RocketAPI $rocketApi;

    GaToken$sendGaToken$2(RocketAPI rocketAPI) {
        this.$rocketApi = rocketAPI;
    }

    public final Observable<Empty> call(String str) {
        RocketAPI rocketAPI = this.$rocketApi;
        Intrinsics.checkExpressionValueIsNotNull(str, "it");
        return rocketAPI.sendGoogleAdvId(new ValueRequest(str));
    }
}
