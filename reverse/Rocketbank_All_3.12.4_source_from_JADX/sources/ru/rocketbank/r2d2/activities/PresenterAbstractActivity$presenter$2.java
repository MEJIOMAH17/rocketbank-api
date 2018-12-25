package ru.rocketbank.r2d2.activities;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: PresenterAbstractActivity.kt */
final class PresenterAbstractActivity$presenter$2 extends Lambda implements Function0<PR> {
    final /* synthetic */ PresenterAbstractActivity this$0;

    PresenterAbstractActivity$presenter$2(PresenterAbstractActivity presenterAbstractActivity) {
        this.this$0 = presenterAbstractActivity;
        super(0);
    }

    public final PR invoke() {
        return this.this$0.createPresenter();
    }
}
