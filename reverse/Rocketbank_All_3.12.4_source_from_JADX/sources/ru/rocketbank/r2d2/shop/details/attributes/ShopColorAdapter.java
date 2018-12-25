package ru.rocketbank.r2d2.shop.details.attributes;

import android.arch.lifecycle.MethodCallsLogger;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CompoundButton.OnCheckedChangeListener;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.shop.Color;
import ru.rocketbank.core.widgets.RocketRadioButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.RadioButtonColorBinding;

/* compiled from: ShopColorAdapter.kt */
public final class ShopColorAdapter extends Adapter<ViewHolder> {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(ShopColorAdapter.class), "selectedColor", "getSelectedColor()Lru/rocketbank/core/model/shop/Color;")), Reflection.mutableProperty1(new MutablePropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(ShopColorAdapter.class), "colors", "getColors()Ljava/util/List;"))};
    private final ReadWriteProperty colors$delegate;
    private final Function1<Color, Unit> onCheckChanged;
    private final ReadWriteProperty selectedColor$delegate;

    /* compiled from: ShopColorAdapter.kt */
    public static final class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        private final RadioButtonColorBinding binding;

        public ViewHolder(RadioButtonColorBinding radioButtonColorBinding) {
            Intrinsics.checkParameterIsNotNull(radioButtonColorBinding, "binding");
            super(radioButtonColorBinding.getRoot());
            this.binding = radioButtonColorBinding;
        }

        public final RadioButtonColorBinding getBinding() {
            return this.binding;
        }

        public final void bind(Color color, boolean z, Function0<Unit> function0) {
            Intrinsics.checkParameterIsNotNull(color, "color");
            Intrinsics.checkParameterIsNotNull(function0, "onClick");
            this.binding.setColor(color);
            this.binding.button.setOnCheckedChangeListener(null);
            RocketRadioButton rocketRadioButton = this.binding.button;
            Intrinsics.checkExpressionValueIsNotNull(rocketRadioButton, "binding.button");
            rocketRadioButton.setChecked(z);
            color = MethodCallsLogger.isSuperLightColor(color.getColorInt());
            this.binding.button.setBackgroundResource(color != null ? C0859R.drawable.color_radio_button_background_orange : C0859R.drawable.color_radio_button_background);
            z = this.binding.corner;
            Intrinsics.checkExpressionValueIsNotNull(z, "binding.corner");
            z.setVisibility(color != null ? null : 8);
            this.binding.button.setOnCheckedChangeListener((OnCheckedChangeListener) new ShopColorAdapter$ViewHolder$bind$1(function0));
        }
    }

    public final List<Color> getColors() {
        return (List) this.colors$delegate.getValue(this, $$delegatedProperties[1]);
    }

    public final Color getSelectedColor() {
        return (Color) this.selectedColor$delegate.getValue(this, $$delegatedProperties[0]);
    }

    public final void setColors(List<Color> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.colors$delegate.setValue(this, $$delegatedProperties[1], list);
    }

    public final void setSelectedColor(Color color) {
        this.selectedColor$delegate.setValue(this, $$delegatedProperties[0], color);
    }

    public ShopColorAdapter(List<Color> list, Function1<? super Color, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(list, "colors");
        Intrinsics.checkParameterIsNotNull(function1, "onCheckChanged");
        this.onCheckChanged = function1;
        function1 = Delegates.INSTANCE;
        this.selectedColor$delegate = (ReadWriteProperty) new ShopColorAdapter$$special$$inlined$observable$1(null, null, this, list);
        function1 = Delegates.INSTANCE;
        this.colors$delegate = (ReadWriteProperty) new ShopColorAdapter$$special$$inlined$observable$2(list, list, this);
    }

    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "holder");
        viewHolder.bind((Color) getColors().get(i), Intrinsics.areEqual((Color) getColors().get(i), getSelectedColor()), new ShopColorAdapter$onBindViewHolder$1(this, i));
    }

    public final int getItemCount() {
        return getColors().size();
    }

    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        viewGroup = RadioButtonColorBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "RadioButtonColorBinding.…tInflater, parent, false)");
        return new ViewHolder(viewGroup);
    }

    private final void selectItem(int i) {
        setSelectedColor((Color) getColors().get(i));
    }
}
