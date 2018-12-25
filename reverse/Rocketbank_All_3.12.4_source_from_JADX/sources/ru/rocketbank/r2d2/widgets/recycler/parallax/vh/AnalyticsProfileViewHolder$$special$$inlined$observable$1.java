package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.widget.CompoundButton.OnCheckedChangeListener;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: Delegates.kt */
public final class AnalyticsProfileViewHolder$$special$$inlined$observable$1 extends ReadWriteProperty<Boolean> {
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ View $itemView$inlined;
    final /* synthetic */ AnalyticsProfileViewHolder this$0;

    public AnalyticsProfileViewHolder$$special$$inlined$observable$1(Object obj, Object obj2, AnalyticsProfileViewHolder analyticsProfileViewHolder, View view) {
        this.$initialValue = obj;
        this.this$0 = analyticsProfileViewHolder;
        this.$itemView$inlined = view;
        super(obj2);
    }

    protected final void afterChange(KProperty<?> kProperty, Boolean bool, Boolean bool2) {
        Intrinsics.checkParameterIsNotNull(kProperty, "property");
        kProperty = bool2.booleanValue();
        bool.booleanValue();
        ((SwitchCompat) this.$itemView$inlined.findViewById(C0859R.id.switcher)).setOnCheckedChangeListener(null);
        SwitchCompat switchCompat = (SwitchCompat) this.$itemView$inlined.findViewById(C0859R.id.switcher);
        Intrinsics.checkExpressionValueIsNotNull(switchCompat, "itemView.switcher");
        switchCompat.setChecked(kProperty);
        ((SwitchCompat) this.$itemView$inlined.findViewById(C0859R.id.switcher)).setOnCheckedChangeListener((OnCheckedChangeListener) this.this$0);
    }
}
