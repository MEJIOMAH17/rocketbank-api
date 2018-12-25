package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import android.widget.CompoundButton.OnCheckedChangeListener;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* compiled from: Delegates.kt */
public final class GenericSwitchViewHolder$$special$$inlined$observable$1 extends ReadWriteProperty<Boolean> {
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ GenericSwitchViewHolder this$0;

    public GenericSwitchViewHolder$$special$$inlined$observable$1(Object obj, Object obj2, GenericSwitchViewHolder genericSwitchViewHolder) {
        this.$initialValue = obj;
        this.this$0 = genericSwitchViewHolder;
        super(obj2);
    }

    protected final void afterChange(KProperty<?> kProperty, Boolean bool, Boolean bool2) {
        Intrinsics.checkParameterIsNotNull(kProperty, "property");
        kProperty = bool2.booleanValue();
        bool.booleanValue();
        bool = this.this$0;
        bool.switchCompat.setOnCheckedChangeListener(null);
        bool.switchCompat.setChecked(kProperty);
        bool.switchCompat.setOnCheckedChangeListener((OnCheckedChangeListener) this.this$0);
    }
}
