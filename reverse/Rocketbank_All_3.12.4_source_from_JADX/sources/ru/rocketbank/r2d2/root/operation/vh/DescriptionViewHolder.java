package ru.rocketbank.r2d2.root.operation.vh;

import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.LayoutOperationDescriptionBinding;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: DescriptionViewHolder.kt */
public final class DescriptionViewHolder extends GenericViewHolder {
    private final LayoutOperationDescriptionBinding binding;

    public DescriptionViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        view = LayoutOperationDescriptionBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "LayoutOperationDescriptionBinding.bind(itemView)");
        this.binding = view;
    }

    public final void bind() {
        ParallaxItem item = getItem();
        if (item != null) {
            Object payload = item.getPayload();
            if (payload != null) {
                LayoutOperationDescriptionBinding layoutOperationDescriptionBinding = this.binding;
                if (payload == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
                }
                layoutOperationDescriptionBinding.setData((String) payload);
                View view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                ((RocketTextView) view.findViewById(C0859R.id.rocketRublesInfo)).setOnClickListener(new DescriptionViewHolder$bind$$inlined$let$lambda$1(this));
            }
        }
    }
}
