package ru.rocketbank.r2d2.shop.details.attributes;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import kotlin.jvm.functions.Function0;

/* compiled from: ShopColorAdapter.kt */
final class ShopColorAdapter$ViewHolder$bind$1 implements OnCheckedChangeListener {
    final /* synthetic */ Function0 $onClick;

    ShopColorAdapter$ViewHolder$bind$1(Function0 function0) {
        this.$onClick = function0;
    }

    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.$onClick.invoke();
    }
}
