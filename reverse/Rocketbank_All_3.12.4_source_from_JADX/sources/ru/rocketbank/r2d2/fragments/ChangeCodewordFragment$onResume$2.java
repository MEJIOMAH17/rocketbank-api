package ru.rocketbank.r2d2.fragments;

import ru.rocketbank.core.manager.AnalyticsManager;
import rx.functions.Action1;

/* compiled from: ChangeCodewordFragment.kt */
final class ChangeCodewordFragment$onResume$2<T> implements Action1<Throwable> {
    public static final ChangeCodewordFragment$onResume$2 INSTANCE = new ChangeCodewordFragment$onResume$2();

    ChangeCodewordFragment$onResume$2() {
    }

    public final void call(Throwable th) {
        AnalyticsManager.logException(th);
    }
}
