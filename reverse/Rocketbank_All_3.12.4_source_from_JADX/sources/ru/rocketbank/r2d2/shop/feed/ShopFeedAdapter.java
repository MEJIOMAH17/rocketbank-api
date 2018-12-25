package ru.rocketbank.r2d2.shop.feed;

import android.animation.TimeInterpolator;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.shop.ShopItem;
import ru.rocketbank.r2d2.databinding.ShopListItemBinding;
import ru.rocketbank.r2d2.shop.ShopUtilsKt;

/* compiled from: ShopFeedAdapter.kt */
public final class ShopFeedAdapter extends Adapter<ShopFeedViewHolder> {
    private final int ANIMATED_ITEMS_COUNT;
    private boolean animateItems;
    private List<? extends ShopItem> items;
    private int lastAnimatedPosition;
    private final Function1<ShopItem, Unit> onItemClick;

    public ShopFeedAdapter(List<? extends ShopItem> list, Function1<? super ShopItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(list, "items");
        this.onItemClick = function1;
        this.ANIMATED_ITEMS_COUNT = 2;
        this.lastAnimatedPosition = -1;
        this.items = list;
    }

    public /* synthetic */ ShopFeedAdapter(List list, Function1 function1, int i, Ref ref) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        this(list, function1);
    }

    public final Function1<ShopItem, Unit> getOnItemClick() {
        return this.onItemClick;
    }

    public final List<ShopItem> getItems() {
        return this.items;
    }

    public final void setItems(List<? extends ShopItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "value");
        this.items = list;
        this.animateItems = true;
        notifyDataSetChanged();
    }

    public final ShopFeedViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        viewGroup = ShopListItemBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "ShopListItemBinding.infl…tInflater, parent, false)");
        return new ShopFeedViewHolder(viewGroup, this.onItemClick);
    }

    public final int getItemCount() {
        return this.items.size();
    }

    public final void onBindViewHolder(ShopFeedViewHolder shopFeedViewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(shopFeedViewHolder, "holder");
        View view = shopFeedViewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
        runEnterAnimation(view, i);
        shopFeedViewHolder.bind((ShopItem) this.items.get(i));
    }

    private final void runEnterAnimation(View view, int i) {
        if (this.animateItems) {
            if (i <= this.ANIMATED_ITEMS_COUNT - 1) {
                if (i > this.lastAnimatedPosition) {
                    this.lastAnimatedPosition = i;
                    i = view.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(i, "view.context");
                    view.setTranslationY((float) ShopUtilsKt.getScreenHeight(i));
                    view.animate().translationY(0).setInterpolator((TimeInterpolator) new DecelerateInterpolator(3.0f)).setDuration(1000).start();
                }
            }
        }
    }
}
