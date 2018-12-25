package ru.rocketbank.core.utils.presenter;

import android.util.Log;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rx.Notification;
import rx.Notification.Kind;

/* compiled from: Delivery.kt */
public final class Delivery<R, T> {
    private final Notification<T> notification;
    private final R target;

    public Delivery(R r, Notification<T> notification) {
        Intrinsics.checkParameterIsNotNull(notification, "notification");
        this.target = r;
        this.notification = notification;
    }

    public final void handle(Function2<? super R, ? super T, Unit> function2, Function2<? super R, ? super Throwable, Unit> function22) {
        if (this.notification.getKind() == Kind.OnNext) {
            if (function2 != null) {
                function2.invoke(this.target, this.notification.getValue());
            }
            return;
        }
        if (this.notification.getKind() == Kind.OnError) {
            Log.e("Delivery", "Deliver error", this.notification.getThrowable());
            if (function22 != null) {
                function2 = this.target;
                Throwable throwable = this.notification.getThrowable();
                Intrinsics.checkExpressionValueIsNotNull(throwable, "notification.throwable");
                function22.invoke(function2, throwable);
            }
        }
    }
}
