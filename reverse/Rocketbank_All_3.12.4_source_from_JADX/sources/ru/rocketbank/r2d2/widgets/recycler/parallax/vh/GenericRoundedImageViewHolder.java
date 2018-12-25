package ru.rocketbank.r2d2.widgets.recycler.parallax.vh;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxRoundItem;
import ru.rocketbank.r2d2.databinding.ParallaxRoundImageItemBinding;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: GenericRoundedImageViewHolder.kt */
public final class GenericRoundedImageViewHolder extends GenericViewHolder implements OnClickListener {
    private final ParallaxRoundImageItemBinding binding;
    private Function1<? super ParallaxItem, Unit> onClickAction;

    public final ParallaxRoundImageItemBinding getBinding() {
        return this.binding;
    }

    public GenericRoundedImageViewHolder(ParallaxRoundImageItemBinding parallaxRoundImageItemBinding) {
        Intrinsics.checkParameterIsNotNull(parallaxRoundImageItemBinding, "binding");
        super(parallaxRoundImageItemBinding.getRoot());
        this.binding = parallaxRoundImageItemBinding;
        this.binding.setData(new ParallaxRoundItem());
        this.itemView.setOnClickListener(this);
    }

    public final void onClick(View view) {
        view = this.onClickAction;
        if (view != null) {
            view.invoke(getItem());
        }
    }

    public final void onBind(Function1<? super ParallaxItem, Unit> function1) {
        this.onClickAction = function1;
    }
}
