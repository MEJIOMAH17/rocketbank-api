package ru.rocketbank.core.utils.presenter;

import kotlin.jvm.functions.Function2;
import rx.functions.Action1;

/* compiled from: RxPresenter.kt */
final class RxPresenter$split$1<T> implements Action1<Delivery<Z, T>> {
    final /* synthetic */ Function2 $onError;
    final /* synthetic */ Function2 $onSuccess;

    RxPresenter$split$1(Function2 function2, Function2 function22) {
        this.$onSuccess = function2;
        this.$onError = function22;
    }

    public final void call(Delivery<Z, T> delivery) {
        delivery.handle(this.$onSuccess, this.$onError);
    }
}
