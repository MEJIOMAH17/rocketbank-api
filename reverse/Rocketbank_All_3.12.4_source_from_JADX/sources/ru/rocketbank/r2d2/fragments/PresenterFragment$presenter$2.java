package ru.rocketbank.r2d2.fragments;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: PresenterFragment.kt */
final class PresenterFragment$presenter$2 extends Lambda implements Function0<PR> {
    final /* synthetic */ PresenterFragment this$0;

    PresenterFragment$presenter$2(PresenterFragment presenterFragment) {
        this.this$0 = presenterFragment;
        super(0);
    }

    public final PR invoke() {
        return this.this$0.createPresenter();
    }
}
