package ru.rocketbank.r2d2.activities;

import rx.functions.Action0;

/* compiled from: StatusActivity.kt */
final class StatusActivity$execute$1 implements Action0 {
    final /* synthetic */ StatusActivity this$0;

    StatusActivity$execute$1(StatusActivity statusActivity) {
        this.this$0 = statusActivity;
    }

    public final void call() {
        this.this$0.onSubscribe();
    }
}
