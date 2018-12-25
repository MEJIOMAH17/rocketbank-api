package ru.rocketbank.r2d2.shop.feed;

import android.content.Context;
import android.support.constraint.ConstraintLayout;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.core.network.model.ShopImage;
import ru.rocketbank.core.widgets.RocketAutofitTextView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.ShopListItemBinding;
import ru.rocketbank.r2d2.shop.ShopUtilsKt;

/* compiled from: ShopFeedViewHolder.kt */
public final class ShopFeedViewHolder extends ViewHolder {
    private final ShopListItemBinding binding;
    private final Function1<ShopItem, Unit> onItemClick;

    public ShopFeedViewHolder(ShopListItemBinding shopListItemBinding, Function1<? super ShopItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(shopListItemBinding, "binding");
        super(shopListItemBinding.getRoot());
        this.binding = shopListItemBinding;
        this.onItemClick = function1;
    }

    public final ShopListItemBinding getBinding() {
        return this.binding;
    }

    public final Function1<ShopItem, Unit> getOnItemClick() {
        return this.onItemClick;
    }

    public final void bind(ShopItem shopItem) {
        Intrinsics.checkParameterIsNotNull(shopItem, "shopItem");
        this.binding.setItem(shopItem);
        boolean promoTextFront = shopItem.getPromoTextFront();
        RocketAutofitTextView rocketAutofitTextView = this.binding.textViewPromo;
        Intrinsics.checkExpressionValueIsNotNull(rocketAutofitTextView, "binding.textViewPromo");
        View view = rocketAutofitTextView;
        ImageView imageView = this.binding.imageView;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.imageView");
        View view2 = imageView;
        View root = this.binding.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
        ConstraintLayout constraintLayout = (ConstraintLayout) root.findViewById(C0859R.id.content);
        Intrinsics.checkExpressionValueIsNotNull(constraintLayout, "binding.root.content");
        ShopUtilsKt.bringPromoText(promoTextFront, view, view2, constraintLayout, new int[0]);
        View root2 = this.binding.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(root2, "binding.root");
        Context context = root2.getContext();
        view = this.binding.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.root");
        ProgressBar progressBar = (ProgressBar) view.findViewById(C0859R.id.progressBar);
        RocketTextView rocketTextView = this.binding.textViewAmount;
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "binding.textViewAmount");
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        String str = null;
        rocketTextView.setText(ShopUtilsKt.createShopItemAmountText$default(context, shopItem, 0, 4, null));
        this.binding.getRoot().setOnClickListener(new ShopFeedViewHolder$bind$1(this, shopItem));
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "progressBar");
        view2 = progressBar;
        Intrinsics.checkParameterIsNotNull(view2, "$receiver");
        view2.setVisibility(0);
        RequestManager with = Glide.with(context);
        ShopImage image = shopItem.getImage();
        with.load(image != null ? image.getImage_url() : null).diskCacheStrategy(DiskCacheStrategy.SOURCE).dontTransform().listener(new ShopFeedViewHolder$bind$2(progressBar)).into(this.binding.imageView);
        RequestManager with2 = Glide.with(context);
        shopItem = shopItem.getImage();
        if (shopItem != null) {
            str = shopItem.getTexture_url();
        }
        with2.load(str).asBitmap().into(new ShopFeedViewHolder$bind$3(this, context));
    }
}
