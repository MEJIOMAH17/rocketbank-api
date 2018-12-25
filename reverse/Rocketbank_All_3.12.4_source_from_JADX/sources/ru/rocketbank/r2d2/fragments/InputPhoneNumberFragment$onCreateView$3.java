package ru.rocketbank.r2d2.fragments;

import rx.functions.Action1;

/* compiled from: InputPhoneNumberFragment.kt */
final class InputPhoneNumberFragment$onCreateView$3<T> implements Action1<Integer> {
    final /* synthetic */ InputPhoneNumberFragment this$0;

    InputPhoneNumberFragment$onCreateView$3(InputPhoneNumberFragment inputPhoneNumberFragment) {
        this.this$0 = inputPhoneNumberFragment;
    }

    public final void call(Integer num) {
        this.this$0.next();
    }
}
