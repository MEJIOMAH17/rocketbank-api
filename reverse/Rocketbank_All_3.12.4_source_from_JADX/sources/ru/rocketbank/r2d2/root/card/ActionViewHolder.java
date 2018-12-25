package ru.rocketbank.r2d2.root.card;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.databinding.ListItemCardDeleteBinding;
import ru.rocketbank.r2d2.root.card.binding.BlockHandler;
import ru.rocketbank.r2d2.root.card.binding.BlockModel;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ActionViewHolder.kt */
public final class ActionViewHolder extends GenericViewHolder implements BlockHandler {
    private final ListItemCardDeleteBinding binding;
    private final BlockModel data = new BlockModel();
    private Function1<? super ParallaxItem, Unit> onClick;

    public ActionViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.binding = ListItemCardDeleteBinding.bind(view);
        view = this.binding;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding");
        view.setData(this.data);
        view = this.binding;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding");
        view.setHandler(this);
    }

    public final void onBind(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        this.data.getText().set(str);
        this.data.getTextColor().set(Integer.valueOf(i));
        this.onClick = this.onClick;
    }

    public final void onClickBlock() {
        ParallaxItem item = getItem();
        if (item != null) {
            Function1 onClick = item.getOnClick();
            if (onClick != null) {
                onClick.invoke(item);
            }
        }
    }
}
