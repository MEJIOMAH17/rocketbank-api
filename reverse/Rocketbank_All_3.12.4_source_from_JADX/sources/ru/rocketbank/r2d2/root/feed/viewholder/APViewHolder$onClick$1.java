package ru.rocketbank.r2d2.root.feed.viewholder;

import java.util.List;
import ru.rocketbank.core.model.facade.Account;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: APViewHolder.kt */
final class APViewHolder$onClick$1<T, R> implements Func1<T, Observable<? extends R>> {
    public static final APViewHolder$onClick$1 INSTANCE = new APViewHolder$onClick$1();

    APViewHolder$onClick$1() {
    }

    public final Observable<Account> call(List<Account> list) {
        return Observable.from((Iterable) list);
    }
}
