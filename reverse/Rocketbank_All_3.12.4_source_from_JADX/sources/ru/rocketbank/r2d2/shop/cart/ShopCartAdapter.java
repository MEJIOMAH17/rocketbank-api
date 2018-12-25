package ru.rocketbank.r2d2.shop.cart;

import android.animation.TimeInterpolator;
import android.databinding.ObservableDouble;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.r2d2.databinding.ShopCartAmountBinding;
import ru.rocketbank.r2d2.databinding.ShopCartDeficitBinding;
import ru.rocketbank.r2d2.databinding.ShopCartItemBinding;
import ru.rocketbank.r2d2.shop.ShopUtilsKt;
import ru.rocketbank.r2d2.shop.cart.CartAdapterItem.CartItemViewHolder;
import ru.rocketbank.r2d2.shop.cart.CartAdapterItemHeader.ViewHolder;

/* compiled from: ShopCartAdapter.kt */
public final class ShopCartAdapter extends Adapter<CartItemViewHolder> {
    private static final int ANIMATED_ITEMS_COUNT = 4;
    public static final Companion Companion = new Companion();
    private ObservableDouble amount = new ObservableDouble();
    private boolean animateItems;
    private List<CartItem> cartItems = ((List) new ArrayList());
    private ObservableDouble deficit = new ObservableDouble();
    private View infoButton;
    private List<CartAdapterItem> items = ((List) new ArrayList());
    private int lastAnimatedPosition = -1;
    private final Function1<CartItem, Unit> onDeleteItemClick;
    private final Function0<Unit> onInfoClick;
    private final Function1<CartItem, Unit> onItemClick;

    /* compiled from: ShopCartAdapter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public ShopCartAdapter(Function0<Unit> function0, Function1<? super CartItem, Unit> function1, Function1<? super CartItem, Unit> function12) {
        Intrinsics.checkParameterIsNotNull(function0, "onInfoClick");
        Intrinsics.checkParameterIsNotNull(function1, "onItemClick");
        Intrinsics.checkParameterIsNotNull(function12, "onDeleteItemClick");
        this.onInfoClick = function0;
        this.onItemClick = function1;
        this.onDeleteItemClick = function12;
    }

    public final View getInfoButton() {
        return this.infoButton;
    }

    public final void setInfoButton(View view) {
        this.infoButton = view;
    }

    public final ObservableDouble getAmount() {
        return this.amount;
    }

    public final void setAmount(ObservableDouble observableDouble) {
        Intrinsics.checkParameterIsNotNull(observableDouble, "<set-?>");
        this.amount = observableDouble;
    }

    public final ObservableDouble getDeficit() {
        return this.deficit;
    }

    public final void setDeficit(ObservableDouble observableDouble) {
        Intrinsics.checkParameterIsNotNull(observableDouble, "<set-?>");
        this.deficit = observableDouble;
    }

    public final List<CartItem> getCartItems() {
        return this.cartItems;
    }

    public final void setCartItems(List<CartItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.cartItems = list;
    }

    public final List<CartAdapterItem> getItems() {
        return this.items;
    }

    public final void setItems(List<CartAdapterItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.items = list;
    }

    public static /* bridge */ /* synthetic */ void setData$default(ShopCartAdapter shopCartAdapter, List list, double d, double d2, int i, Object obj) {
        if ((i & 4) != 0) {
            d2 = 0.0d;
        }
        shopCartAdapter.setData(list, d, d2);
    }

    public final void setData(List<CartItem> list, double d, double d2) {
        Intrinsics.checkParameterIsNotNull(list, "cartItems");
        this.animateItems = true;
        this.cartItems = list;
        this.amount.set(d);
        this.deficit.set(d2);
        this.items = CollectionsKt.mutableListOf(new CartAdapterItem[]{new CartAdapterItemHeader(this.amount)});
        this.items.add(new CartAdapterItemDeficit(this.deficit, this.onInfoClick));
        notifyDataSetChanged();
        d = this.items;
        Iterable<CartItem> iterable = list;
        Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (CartItem cartAdapterItemItem : iterable) {
            arrayList.add(new CartAdapterItemItem(cartAdapterItemItem));
        }
        d.addAll((List) arrayList);
    }

    public final void setDeficit(double d) {
        for (Object next : this.items) {
            if (((CartAdapterItem) next) instanceof CartAdapterItemDeficit) {
                break;
            }
        }
        Object next2 = null;
        CartAdapterItemDeficit cartAdapterItemDeficit = (CartAdapterItemDeficit) next2;
        if (d != 0.0d) {
            if (cartAdapterItemDeficit == null) {
                cartAdapterItemDeficit = new CartAdapterItemDeficit(this.deficit, this.onInfoClick);
                this.items.add(2, cartAdapterItemDeficit);
            }
            cartAdapterItemDeficit.getDeficit().set(d);
            notifyItemChanged(this.items.indexOf(cartAdapterItemDeficit));
        } else if (cartAdapterItemDeficit != null) {
            d = this.items.indexOf(cartAdapterItemDeficit);
            this.items.remove(cartAdapterItemDeficit);
            notifyItemRemoved(d);
        }
    }

    public final CartItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i == CartAdapterItem.Companion.getITEM_TYPE_AMOUNT()) {
            viewGroup = ShopCartAmountBinding.inflate(from, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "ShopCartAmountBinding.in…tInflater, parent, false)");
            return (CartItemViewHolder) new ViewHolder(viewGroup);
        } else if (i == CartAdapterItem.Companion.getITEM_TYPE_DEFICIT()) {
            viewGroup = ShopCartDeficitBinding.inflate(from, viewGroup, false);
            this.infoButton = (View) viewGroup.buttonQuestion;
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "binding");
            return (CartItemViewHolder) new CartAdapterItemDeficit.ViewHolder(viewGroup);
        } else {
            viewGroup = ShopCartItemBinding.inflate(from, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(viewGroup, "ShopCartItemBinding.infl…tInflater, parent, false)");
            return (CartItemViewHolder) new CartAdapterItemItem.ViewHolder(viewGroup, this.onItemClick, this.onDeleteItemClick);
        }
    }

    public final int getItemCount() {
        return this.items.size();
    }

    public final int getItemViewType(int i) {
        return ((CartAdapterItem) this.items.get(i)).getType();
    }

    public final void onBindViewHolder(CartItemViewHolder cartItemViewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(cartItemViewHolder, "holder");
        View view = cartItemViewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
        runEnterAnimation(view, i);
        cartItemViewHolder.bind((CartAdapterItem) this.items.get(i));
    }

    private final void runEnterAnimation(View view, int i) {
        if (this.animateItems) {
            if (i <= ANIMATED_ITEMS_COUNT - 1) {
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

    public final void delete(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        int i = 0;
        for (CartAdapterItem cartAdapterItem : this.items) {
            Object obj = ((cartAdapterItem instanceof CartAdapterItemItem) && Intrinsics.areEqual(((CartAdapterItemItem) cartAdapterItem).getCartItem(), cartItem)) ? 1 : null;
            if (obj != null) {
                break;
            }
            i++;
        }
        i = -1;
        this.items.remove(i);
        this.cartItems.remove(cartItem);
        notifyItemRemoved(i);
    }
}
