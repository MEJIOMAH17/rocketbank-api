package ru.rocketbank.r2d2.root.feed.viewholder;

import ru.rocketbank.core.manager.AnalyticsManager;
import rx.functions.Action1;

/* compiled from: APViewHolder.kt */
final class APViewHolder$onClick$4<T> implements Action1<Throwable> {
    public static final APViewHolder$onClick$4 INSTANCE = new APViewHolder$onClick$4();

    APViewHolder$onClick$4() {
    }

    public final void call(Throwable th) {
        AnalyticsManager.logException(th);
    }
}
