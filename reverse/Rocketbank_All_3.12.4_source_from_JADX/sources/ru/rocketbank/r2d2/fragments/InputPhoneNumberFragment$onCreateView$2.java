package ru.rocketbank.r2d2.fragments;

import rx.functions.Func1;

/* compiled from: InputPhoneNumberFragment.kt */
final class InputPhoneNumberFragment$onCreateView$2<T, R> implements Func1<Integer, Boolean> {
    final /* synthetic */ InputPhoneNumberFragment this$0;

    InputPhoneNumberFragment$onCreateView$2(InputPhoneNumberFragment inputPhoneNumberFragment) {
        this.this$0 = inputPhoneNumberFragment;
    }

    public final boolean call(Integer num) {
        return this.this$0.validate();
    }
}
