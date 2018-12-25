package ru.rocketbank.core.utils;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

/* compiled from: Interactor.kt */
public abstract class Interactor<T> {
    private Subscription subscription = Subscriptions.empty();

    public abstract Observable<T> getObservable();

    public static /* bridge */ /* synthetic */ void execute$default(Interactor interactor, Function1 function1, Function1 function12, Function0 function0, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: execute");
        }
        if ((i & 2) != null) {
            function12 = Interactor$execute$1.INSTANCE;
        }
        if ((i & 4) != 0) {
            function0 = Interactor$execute$2.INSTANCE;
        }
        interactor.execute(function1, function12, function0);
    }

    public final void execute(Function1<? super T, Unit> function1, Function1<? super Throwable, Unit> function12, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function1, "onNext");
        this.subscription = getObservable().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Interactor$sam$rx_functions_Action1$0(function1), (Action1) (function12 != null ? new Interactor$sam$rx_functions_Action1$0(function12) : function12), (Action0) (function0 != null ? new Interactor$sam$rx_functions_Action0$0(function0) : function0));
    }

    public void unsubscribe() {
        Subscription subscription = this.subscription;
        Intrinsics.checkExpressionValueIsNotNull(subscription, "subscription");
        if (!subscription.isUnsubscribed()) {
            this.subscription.unsubscribe();
        }
    }
}
