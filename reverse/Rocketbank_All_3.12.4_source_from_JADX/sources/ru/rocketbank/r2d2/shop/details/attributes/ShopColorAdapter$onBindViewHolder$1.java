package ru.rocketbank.r2d2.shop.details.attributes;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: ShopColorAdapter.kt */
final class ShopColorAdapter$onBindViewHolder$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ int $position;
    final /* synthetic */ ShopColorAdapter this$0;

    ShopColorAdapter$onBindViewHolder$1(ShopColorAdapter shopColorAdapter, int i) {
        this.this$0 = shopColorAdapter;
        this.$position = i;
        super(0);
    }

    public final void invoke() {
        this.this$0.selectItem(this.$position);
    }
}
