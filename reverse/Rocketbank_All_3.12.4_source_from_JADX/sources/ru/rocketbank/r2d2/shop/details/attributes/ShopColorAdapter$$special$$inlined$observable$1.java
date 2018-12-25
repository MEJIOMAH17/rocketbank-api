package ru.rocketbank.r2d2.shop.details.attributes;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.shop.Color;

/* compiled from: Delegates.kt */
public final class ShopColorAdapter$$special$$inlined$observable$1 extends ReadWriteProperty<Color> {
    final /* synthetic */ List $colors$inlined;
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ ShopColorAdapter this$0;

    public ShopColorAdapter$$special$$inlined$observable$1(Object obj, Object obj2, ShopColorAdapter shopColorAdapter, List list) {
        this.$initialValue = obj;
        this.this$0 = shopColorAdapter;
        this.$colors$inlined = list;
        super(obj2);
    }

    protected final void afterChange(KProperty<?> kProperty, Color color, Color color2) {
        Intrinsics.checkParameterIsNotNull(kProperty, "property");
        color2 = color2;
        color = color;
        if (color != null) {
            this.this$0.notifyItemChanged(this.$colors$inlined.indexOf(color));
        }
        this.this$0.onCheckChanged.invoke(color2);
    }
}
