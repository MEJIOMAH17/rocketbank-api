package ru.rocketbank.r2d2.shop.cart;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: ShopCartAdapter.kt */
public abstract class CartAdapterItem {
    public static final Companion Companion = new Companion();
    private static final int ITEM_TYPE_AMOUNT = 0;
    private static final int ITEM_TYPE_CART_ITEM = 1;
    private static final int ITEM_TYPE_DEFICIT = 2;
    private Function0<Unit> onClick;
    private Function0<Unit> onUpdate;
    private final int type;

    /* compiled from: ShopCartAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getITEM_TYPE_AMOUNT() {
            return CartAdapterItem.ITEM_TYPE_AMOUNT;
        }

        public final int getITEM_TYPE_CART_ITEM() {
            return CartAdapterItem.ITEM_TYPE_CART_ITEM;
        }

        public final int getITEM_TYPE_DEFICIT() {
            return CartAdapterItem.ITEM_TYPE_DEFICIT;
        }
    }

    /* compiled from: ShopCartAdapter.kt */
    public static abstract class CartItemViewHolder extends ViewHolder {
        public CartItemViewHolder(View view) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            super(view);
        }

        public void bind(CartAdapterItem cartAdapterItem) {
            Intrinsics.checkParameterIsNotNull(cartAdapterItem, "item");
            cartAdapterItem.setOnUpdate(new CartAdapterItem$CartItemViewHolder$bind$1(this, cartAdapterItem));
        }
    }

    public CartAdapterItem(int i, Function0<Unit> function0) {
        this.type = i;
        this.onClick = function0;
    }

    public /* synthetic */ CartAdapterItem(int i, Function0 function0, int i2, Ref ref) {
        if ((i2 & 2) != 0) {
            function0 = null;
        }
        this(i, function0);
    }

    public final Function0<Unit> getOnClick() {
        return this.onClick;
    }

    public final int getType() {
        return this.type;
    }

    public final void setOnClick(Function0<Unit> function0) {
        this.onClick = function0;
    }

    public final Function0<Unit> getOnUpdate() {
        return this.onUpdate;
    }

    public final void setOnUpdate(Function0<Unit> function0) {
        this.onUpdate = function0;
    }
}
