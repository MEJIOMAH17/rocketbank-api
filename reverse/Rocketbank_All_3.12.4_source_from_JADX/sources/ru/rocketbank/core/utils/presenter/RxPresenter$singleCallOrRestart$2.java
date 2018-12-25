package ru.rocketbank.core.utils.presenter;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import rx.Observable;
import rx.Subscription;

/* compiled from: RxPresenter.kt */
final class RxPresenter$singleCallOrRestart$2 extends Lambda implements Function0<Subscription> {
    final /* synthetic */ Function0 $factory;
    final /* synthetic */ int $instanceId;
    final /* synthetic */ Function2 $onError;
    final /* synthetic */ Function2 $onSuccess;
    final /* synthetic */ RxPresenter this$0;

    RxPresenter$singleCallOrRestart$2(RxPresenter rxPresenter, Function2 function2, Function2 function22, Function0 function0, int i) {
        this.this$0 = rxPresenter;
        this.$onSuccess = function2;
        this.$onError = function22;
        this.$factory = function0;
        this.$instanceId = i;
        super(0);
    }

    public final Subscription invoke() {
        Subscription subscribe = ((Observable) this.$factory.invoke()).compose(this.this$0.deliverCacheSingle(this.$instanceId, this.this$0.getRequestCache())).subscribe(this.this$0.split(this.$onSuccess, this.$onError));
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "factory()\n              … .subscribe(subscription)");
        return subscribe;
    }
}
