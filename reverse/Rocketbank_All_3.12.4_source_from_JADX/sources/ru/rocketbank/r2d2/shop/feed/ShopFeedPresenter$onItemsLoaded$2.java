package ru.rocketbank.r2d2.shop.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ShopFeedPresenter.kt */
final class ShopFeedPresenter$onItemsLoaded$2 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ ShopFeedPresenter this$0;

    ShopFeedPresenter$onItemsLoaded$2(ShopFeedPresenter shopFeedPresenter) {
        this.this$0 = shopFeedPresenter;
        super(1);
    }

    public final void invoke(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "it");
        this.this$0.onLoadingError(th);
    }
}
