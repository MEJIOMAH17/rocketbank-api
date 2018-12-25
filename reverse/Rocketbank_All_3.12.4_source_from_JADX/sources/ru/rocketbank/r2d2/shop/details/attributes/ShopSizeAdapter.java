package ru.rocketbank.r2d2.shop.details.attributes;

import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CompoundButton.OnCheckedChangeListener;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.Size;
import ru.rocketbank.core.widgets.RocketRadioButton;
import ru.rocketbank.r2d2.databinding.RadioButtonOrangeBinding;

/* compiled from: ShopSizeAdapter.kt */
public final class ShopSizeAdapter extends Adapter<ViewHolder> {
    private Function1<? super Size, Unit> onCheckChanged;
    private int selectedPosition = -1;
    private final List<Size> sizes;

    /* compiled from: ShopSizeAdapter.kt */
    public static final class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        private final RadioButtonOrangeBinding binding;

        public ViewHolder(RadioButtonOrangeBinding radioButtonOrangeBinding) {
            Intrinsics.checkParameterIsNotNull(radioButtonOrangeBinding, "binding");
            super(radioButtonOrangeBinding.getRoot());
            this.binding = radioButtonOrangeBinding;
        }

        public final RadioButtonOrangeBinding getBinding() {
            return this.binding;
        }

        public final void bind(Size size, boolean z, Function0<Unit> function0) {
            Intrinsics.checkParameterIsNotNull(size, "size");
            Intrinsics.checkParameterIsNotNull(function0, "onClick");
            this.binding.setText(size.getName());
            this.binding.button.setOnCheckedChangeListener(null);
            RocketRadioButton rocketRadioButton = this.binding.button;
            Intrinsics.checkExpressionValueIsNotNull(rocketRadioButton, "binding.button");
            rocketRadioButton.setChecked(z);
            z = this.binding.button;
            Intrinsics.checkExpressionValueIsNotNull(z, "binding.button");
            z.setEnabled(size.getAvailable());
            this.binding.button.setOnCheckedChangeListener((OnCheckedChangeListener) new ShopSizeAdapter$ViewHolder$bind$1(function0));
        }
    }

    public ShopSizeAdapter(List<Size> list, Function1<? super Size, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(list, "sizes");
        Intrinsics.checkParameterIsNotNull(function1, "onCheckChanged");
        this.sizes = list;
        this.onCheckChanged = function1;
    }

    public final Function1<Size, Unit> getOnCheckChanged() {
        return this.onCheckChanged;
    }

    public final void setOnCheckChanged(Function1<? super Size, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.onCheckChanged = function1;
    }

    public final int getSelectedPosition() {
        return this.selectedPosition;
    }

    public final void setSelectedPosition(int i) {
        this.selectedPosition = i;
    }

    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "holder");
        viewHolder.bind((Size) this.sizes.get(i), i == this.selectedPosition, new ShopSizeAdapter$onBindViewHolder$1(this, i));
    }

    public final int getItemCount() {
        return this.sizes.size();
    }

    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        viewGroup = RadioButtonOrangeBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "RadioButtonOrangeBinding…tInflater, parent, false)");
        return new ViewHolder(viewGroup);
    }

    private final void selectItem(int i) {
        int i2 = this.selectedPosition;
        this.selectedPosition = i;
        if (i2 != -1) {
            notifyItemChanged(i2);
        }
        this.onCheckChanged.invoke(this.sizes.get(i));
    }
}
