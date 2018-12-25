package ru.rocketbank.r2d2.root.card;

import android.view.View;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.data.binding.LimitData;
import ru.rocketbank.r2d2.databinding.ListItemCardLimitBinding;
import ru.rocketbank.r2d2.root.card.binding.BlockHandler;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: LimitViewHolder.kt */
public final class LimitViewHolder extends GenericViewHolder implements BlockHandler {
    private final ListItemCardLimitBinding binding;
    private final LimitData data = new LimitData();

    public LimitViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        this.binding = ListItemCardLimitBinding.bind(view);
        view = this.binding;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding");
        view.setData(this.data);
    }

    public final void onBind(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "limitName");
        Intrinsics.checkParameterIsNotNull(str2, "limitValue");
        this.data.getLimit().set(str2);
        this.data.getName().set(str);
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
