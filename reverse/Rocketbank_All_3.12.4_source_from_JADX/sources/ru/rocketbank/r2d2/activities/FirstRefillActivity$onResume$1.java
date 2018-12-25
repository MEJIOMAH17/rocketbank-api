package ru.rocketbank.r2d2.activities;

import rx.functions.Action1;

/* compiled from: FirstRefillActivity.kt */
final class FirstRefillActivity$onResume$1<T> implements Action1<Long> {
    final /* synthetic */ FirstRefillActivity this$0;

    FirstRefillActivity$onResume$1(FirstRefillActivity firstRefillActivity) {
        this.this$0 = firstRefillActivity;
    }

    public final void call(Long l) {
        this.this$0.authorization.refreshBackgroundProfile();
    }
}
