package ru.rocketbank.r2d2.shop.details.attributes;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: ShopSizeAdapter.kt */
final class ShopSizeAdapter$onBindViewHolder$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ int $position;
    final /* synthetic */ ShopSizeAdapter this$0;

    ShopSizeAdapter$onBindViewHolder$1(ShopSizeAdapter shopSizeAdapter, int i) {
        this.this$0 = shopSizeAdapter;
        this.$position = i;
        super(0);
    }

    public final void invoke() {
        this.this$0.selectItem(this.$position);
    }
}
