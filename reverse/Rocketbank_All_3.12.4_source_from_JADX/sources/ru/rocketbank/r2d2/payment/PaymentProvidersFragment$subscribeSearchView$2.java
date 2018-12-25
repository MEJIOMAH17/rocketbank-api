package ru.rocketbank.r2d2.payment;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Func1;

/* compiled from: PaymentProvidersFragment.kt */
final class PaymentProvidersFragment$subscribeSearchView$2<T, R> implements Func1<T, R> {
    public static final PaymentProvidersFragment$subscribeSearchView$2 INSTANCE = new PaymentProvidersFragment$subscribeSearchView$2();

    PaymentProvidersFragment$subscribeSearchView$2() {
    }

    public final String call(String str) {
        Intrinsics.checkExpressionValueIsNotNull(str, "s1");
        CharSequence charSequence = str;
        int length = charSequence.length() - 1;
        int i = 0;
        int i2 = i;
        while (i <= length) {
            int i3 = charSequence.charAt(i2 == 0 ? i : length) <= ' ' ? 1 : 0;
            if (i2 != 0) {
                if (i3 == 0) {
                    break;
                }
                length--;
            } else if (i3 == 0) {
                i2 = 1;
            } else {
                i++;
            }
        }
        return charSequence.subSequence(i, length + 1).toString();
    }
}
