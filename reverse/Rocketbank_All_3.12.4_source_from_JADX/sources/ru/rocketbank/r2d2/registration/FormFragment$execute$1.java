package ru.rocketbank.r2d2.registration;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: FormFragment.kt */
final class FormFragment$execute$1<T> implements Action1<Model> {
    final /* synthetic */ FormFragment this$0;

    FormFragment$execute$1(FormFragment formFragment) {
        this.this$0 = formFragment;
    }

    public final void call(Model model) {
        FormFragment formFragment = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(model, "model1");
        formFragment.onRequestCompleted(model);
    }
}
