package ru.rocketbank.r2d2.registration;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: FormFragment.kt */
final class FormFragment$execute$2<T> implements Action1<Throwable> {
    final /* synthetic */ FormFragment this$0;

    FormFragment$execute$2(FormFragment formFragment) {
        this.this$0 = formFragment;
    }

    public final void call(Throwable th) {
        FormFragment formFragment = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(th, "e");
        formFragment.onError(th);
    }
}
