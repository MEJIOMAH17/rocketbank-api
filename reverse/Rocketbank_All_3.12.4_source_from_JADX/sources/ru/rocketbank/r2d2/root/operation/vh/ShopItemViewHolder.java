package ru.rocketbank.r2d2.root.operation.vh;

import android.view.View;
import android.widget.ImageView;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.network.model.ContextShopItem;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.utils.MoneyFormatter.Companion;
import ru.rocketbank.core.utils.MoneyFormatter.FormattedAmount;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ShopItemViewHolder.kt */
public final class ShopItemViewHolder extends GenericViewHolder {
    private final Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
    private final CurrencyManager currencyManager = RocketApplication.Companion.getInjector().getCurrencyManager();
    private final MoneyFormatter moneyFormatter;

    public ShopItemViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        view = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView.context");
        this.moneyFormatter = new MoneyFormatter(view, this.authorization, this.currencyManager);
        this.moneyFormatter.setFloorAmount(true);
    }

    public final Authorization getAuthorization() {
        return this.authorization;
    }

    public final CurrencyManager getCurrencyManager() {
        return this.currencyManager;
    }

    public final MoneyFormatter getMoneyFormatter() {
        return this.moneyFormatter;
    }

    public final void bind() {
        ParallaxItem item = getItem();
        if (item != null) {
            Object payload = item.getPayload();
            if (payload != null) {
                if (payload == null) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.network.model.ContextShopItem");
                }
                ContextShopItem contextShopItem = (ContextShopItem) payload;
                View view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                ImageView imageView = (ImageView) view.findViewById(C0859R.id.operationIcon);
                Intrinsics.checkExpressionValueIsNotNull(imageView, "itemView.operationIcon");
                String image_url = contextShopItem.getImage_url();
                View view2 = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view2, "itemView");
                ImageHelper.loadRound(imageView, image_url, new CropCircleTransformation(view2.getContext()));
                MoneyFormatter moneyFormatter = this.moneyFormatter;
                double d = -contextShopItem.getPrice();
                Companion companion = MoneyFormatter.Companion;
                FormattedAmount formatAmount = moneyFormatter.formatAmount(d, MoneyFormatter.access$getCURRENCY_ROCKET$cp(), false);
                if (contextShopItem.getCount() > 1) {
                    StringBuilder stringBuilder = new StringBuilder("(");
                    stringBuilder.append(contextShopItem.getCount());
                    stringBuilder.append(')');
                    image_url = stringBuilder.toString();
                } else {
                    image_url = "";
                }
                View view3 = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view3, "itemView");
                RocketTextView rocketTextView = (RocketTextView) view3.findViewById(C0859R.id.amount);
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.amount");
                rocketTextView.setText(formatAmount.getAmountString());
                view3 = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view3, "itemView");
                rocketTextView = (RocketTextView) view3.findViewById(C0859R.id.rocketroubles);
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "itemView.rocketroubles");
                rocketTextView.setText(formatAmount.getSuffix());
                view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                RocketTextView rocketTextView2 = (RocketTextView) view.findViewById(C0859R.id.name);
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "itemView.name");
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(contextShopItem.getTitle());
                stringBuilder2.append(image_url);
                rocketTextView2.setText(stringBuilder2.toString());
                View view4 = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view4, "itemView");
                RocketTextView rocketTextView3 = (RocketTextView) view4.findViewById(C0859R.id.comment);
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView3, "itemView.comment");
                rocketTextView3.setVisibility(8);
            }
        }
    }
}
