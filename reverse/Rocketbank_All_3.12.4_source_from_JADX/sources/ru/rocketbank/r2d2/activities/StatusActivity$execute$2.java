package ru.rocketbank.r2d2.activities;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import rx.functions.Action1;

/* compiled from: StatusActivity.kt */
final class StatusActivity$execute$2<T> implements Action1<T> {
    final /* synthetic */ StatusActivity this$0;

    StatusActivity$execute$2(StatusActivity statusActivity) {
        this.this$0 = statusActivity;
    }

    public final void call(T t) {
        try {
            StatusActivity statusActivity = this.this$0;
            Intrinsics.checkExpressionValueIsNotNull(t, "it");
            statusActivity.onNext(t);
        } catch (T t2) {
            AnalyticsManager.logException(t2);
        }
    }
}
