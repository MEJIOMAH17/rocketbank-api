package ru.rocketbank.r2d2.shop.details.attributes;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.shop.Color;

/* compiled from: Delegates.kt */
public final class ShopColorAdapter$$special$$inlined$observable$2 extends ReadWriteProperty<List<? extends Color>> {
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ ShopColorAdapter this$0;

    public ShopColorAdapter$$special$$inlined$observable$2(Object obj, Object obj2, ShopColorAdapter shopColorAdapter) {
        this.$initialValue = obj;
        this.this$0 = shopColorAdapter;
        super(obj2);
    }

    protected final void afterChange(KProperty<?> kProperty, List<? extends Color> list, List<? extends Color> list2) {
        Intrinsics.checkParameterIsNotNull(kProperty, "property");
        if (CollectionsKt.contains(list2, this.this$0.getSelectedColor()) == null) {
            this.this$0.setSelectedColor(null);
        }
    }
}
