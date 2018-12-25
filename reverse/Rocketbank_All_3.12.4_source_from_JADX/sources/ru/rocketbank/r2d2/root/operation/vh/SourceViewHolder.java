package ru.rocketbank.r2d2.root.operation.vh;

import android.view.View;
import com.bumptech.glide.Glide;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.databinding.LayoutOperationSourceBinding;
import ru.rocketbank.r2d2.root.operation.data.SourceViewData;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: SourceViewHolder.kt */
public final class SourceViewHolder extends GenericViewHolder {
    private final LayoutOperationSourceBinding binding;
    private final SourceData sourceData = new SourceData();

    public SourceViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        view = LayoutOperationSourceBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "LayoutOperationSourceBinding.bind(itemView)");
        this.binding = view;
        this.binding.setData(this.sourceData);
    }

    public final LayoutOperationSourceBinding getBinding() {
        return this.binding;
    }

    public final SourceData getSourceData() {
        return this.sourceData;
    }

    public final void onBind() {
        ParallaxItem item = getItem();
        SourceViewData sourceViewData = (SourceViewData) (item != null ? item.getPayload() : null);
        if (sourceViewData != null) {
            this.sourceData.getImageSource().set(sourceViewData.getIcon());
            this.sourceData.getSourceName().set(sourceViewData.getText());
            String icon = sourceViewData.getIcon();
            if ((icon != null ? icon.length() : 0) > 0) {
                View view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                Glide.with(view.getContext()).load(sourceViewData.getIcon()).into(this.binding.image);
            }
        }
    }
}
