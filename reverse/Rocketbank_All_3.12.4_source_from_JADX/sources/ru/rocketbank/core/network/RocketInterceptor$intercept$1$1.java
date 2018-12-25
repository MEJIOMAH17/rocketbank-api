package ru.rocketbank.core.network;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Request.Builder;

/* compiled from: RocketInterceptor.kt */
final class RocketInterceptor$intercept$1$1 extends Lambda implements Function2<String, String, Unit> {
    final /* synthetic */ Builder $requestBuilder;

    RocketInterceptor$intercept$1$1(Builder builder) {
        this.$requestBuilder = builder;
        super(2);
    }

    public final void invoke(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "k");
        Intrinsics.checkParameterIsNotNull(str2, "v");
        this.$requestBuilder.addHeader(str, str2);
    }
}
