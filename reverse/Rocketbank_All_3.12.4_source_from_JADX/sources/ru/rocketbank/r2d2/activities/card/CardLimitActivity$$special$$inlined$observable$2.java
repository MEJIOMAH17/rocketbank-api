package ru.rocketbank.r2d2.activities.card;

import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* compiled from: Delegates.kt */
public final class CardLimitActivity$$special$$inlined$observable$2 extends ReadWriteProperty<Boolean> {
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ CardLimitActivity this$0;

    public CardLimitActivity$$special$$inlined$observable$2(Object obj, Object obj2, CardLimitActivity cardLimitActivity) {
        this.$initialValue = obj;
        this.this$0 = cardLimitActivity;
        super(obj2);
    }

    protected final void afterChange(KProperty<?> kProperty, Boolean bool, Boolean bool2) {
        Intrinsics.checkParameterIsNotNull(kProperty, "property");
        kProperty = bool2.booleanValue();
        bool.booleanValue();
        bool = this.this$0;
        bool2 = CardLimitActivity.access$getActivityCardLimit$p(bool).cashAbroad;
        if (bool2 == null) {
            Intrinsics.throwNpe();
        }
        bool2 = bool2.switchCompat;
        bool2.setOnCheckedChangeListener(null);
        bool.data.getCashAbroad().getEnabled().set(kProperty);
        Intrinsics.checkExpressionValueIsNotNull(bool2, "switchCompat");
        bool2.setChecked(kProperty);
        bool2.setOnCheckedChangeListener(bool.cashAbroadOperationListener);
    }
}
