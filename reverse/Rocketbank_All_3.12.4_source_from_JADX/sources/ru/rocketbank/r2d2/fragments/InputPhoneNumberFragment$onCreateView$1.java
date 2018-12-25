package ru.rocketbank.r2d2.fragments;

import rx.functions.Func1;

/* compiled from: InputPhoneNumberFragment.kt */
final class InputPhoneNumberFragment$onCreateView$1<T, R> implements Func1<Integer, Boolean> {
    public static final InputPhoneNumberFragment$onCreateView$1 INSTANCE = new InputPhoneNumberFragment$onCreateView$1();

    InputPhoneNumberFragment$onCreateView$1() {
    }

    public final boolean call(Integer num) {
        if (num != null) {
            if (num.intValue() == 6) {
                return true;
            }
        }
        return null;
    }
}
