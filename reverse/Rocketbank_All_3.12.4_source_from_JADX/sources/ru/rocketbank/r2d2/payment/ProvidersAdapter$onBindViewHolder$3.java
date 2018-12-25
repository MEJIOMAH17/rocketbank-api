package ru.rocketbank.r2d2.payment;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Func1;

/* compiled from: ProvidersAdapter.kt */
final class ProvidersAdapter$onBindViewHolder$3<T, R> implements Func1<Integer, Boolean> {
    final /* synthetic */ ProvidersAdapter this$0;

    ProvidersAdapter$onBindViewHolder$3(ProvidersAdapter providersAdapter) {
        this.this$0 = providersAdapter;
    }

    public final boolean call(Integer num) {
        ProvidersAdapter providersAdapter = this.this$0;
        if (num == null) {
            Intrinsics.throwNpe();
        }
        return providersAdapter.isLastInSection(num.intValue());
    }
}
