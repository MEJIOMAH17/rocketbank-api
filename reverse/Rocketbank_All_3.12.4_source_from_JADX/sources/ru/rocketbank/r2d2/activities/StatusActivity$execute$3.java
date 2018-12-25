package ru.rocketbank.r2d2.activities;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: StatusActivity.kt */
final class StatusActivity$execute$3<T> implements Action1<Throwable> {
    final /* synthetic */ StatusActivity this$0;

    StatusActivity$execute$3(StatusActivity statusActivity) {
        this.this$0 = statusActivity;
    }

    public final void call(Throwable th) {
        StatusActivity statusActivity = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(th, "it");
        statusActivity.onError(th);
    }
}
