package ru.rocketbank.r2d2.root.feed.viewholder;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.facade.Account;
import rx.functions.Func1;

/* compiled from: APViewHolder.kt */
final class APViewHolder$onClick$2<T, R> implements Func1<Account, Boolean> {
    public static final APViewHolder$onClick$2 INSTANCE = new APViewHolder$onClick$2();

    APViewHolder$onClick$2() {
    }

    public final boolean call(Account account) {
        return Intrinsics.areEqual(account.getCurrencyCode(), "RUB");
    }
}
