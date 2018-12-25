package ru.rocketbank.r2d2;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: PresenterSecuredActivity.kt */
final class PresenterSecuredActivity$presenter$2 extends Lambda implements Function0<PR> {
    final /* synthetic */ PresenterSecuredActivity this$0;

    PresenterSecuredActivity$presenter$2(PresenterSecuredActivity presenterSecuredActivity) {
        this.this$0 = presenterSecuredActivity;
        super(0);
    }

    public final PR invoke() {
        return this.this$0.createPresenter();
    }
}
