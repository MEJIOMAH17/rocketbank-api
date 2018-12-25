package ru.rocketbank.r2d2.shop.cart;

import android.arch.lifecycle.MethodCallsLogger;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.CartItem;
import ru.rocketbank.core.model.shop.Size;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.ShopCartItemBinding;
import ru.rocketbank.r2d2.databinding.ShopSelectedColorBinding;
import ru.rocketbank.r2d2.databinding.ShopSelectedSizeBinding;
import ru.rocketbank.r2d2.shop.ShopUtilsKt;
import ru.rocketbank.r2d2.shop.cart.CartAdapterItem.CartItemViewHolder;

/* compiled from: ShopCartAdapter.kt */
public final class CartAdapterItemItem extends CartAdapterItem {
    private CartItem cartItem;

    /* compiled from: ShopCartAdapter.kt */
    public static final class ViewHolder extends CartItemViewHolder {
        private final ShopCartItemBinding binding;
        private final Function1<CartItem, Unit> onDeleteItemClick;
        private final Function1<CartItem, Unit> onItemClick;

        public ViewHolder(ShopCartItemBinding shopCartItemBinding, Function1<? super CartItem, Unit> function1, Function1<? super CartItem, Unit> function12) {
            Intrinsics.checkParameterIsNotNull(shopCartItemBinding, "binding");
            View root = shopCartItemBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = shopCartItemBinding;
            this.onItemClick = function1;
            this.onDeleteItemClick = function12;
        }

        public final ShopCartItemBinding getBinding() {
            return this.binding;
        }

        public final Function1<CartItem, Unit> getOnDeleteItemClick() {
            return this.onDeleteItemClick;
        }

        public final Function1<CartItem, Unit> getOnItemClick() {
            return this.onItemClick;
        }

        public final void bind(CartAdapterItem cartAdapterItem) {
            String string;
            Intrinsics.checkParameterIsNotNull(cartAdapterItem, "item");
            super.bind(cartAdapterItem);
            cartAdapterItem = ((CartAdapterItemItem) cartAdapterItem).getCartItem();
            this.binding.setItem(cartAdapterItem);
            View view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            Context context = view.getContext();
            RocketTextView rocketTextView = this.binding.textViewAmount;
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "binding.textViewAmount");
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            rocketTextView.setText(ShopUtilsKt.createCartItemAmountText(context, cartAdapterItem.getAmount()));
            this.binding.getRoot().setOnClickListener(new CartAdapterItemItem$ViewHolder$bind$1(this, cartAdapterItem));
            this.binding.deleteButton.setOnClickListener(new CartAdapterItemItem$ViewHolder$bind$2(this, cartAdapterItem));
            this.binding.attributes.removeAllViews();
            LayoutInflater from = LayoutInflater.from(context);
            Size size = cartAdapterItem.getSize();
            ShopSelectedSizeBinding inflate = ShopSelectedSizeBinding.inflate(from, this.binding.attributes, true);
            Intrinsics.checkExpressionValueIsNotNull(inflate, "b");
            int i = 0;
            if (size != null) {
                string = context.getString(C0859R.string.selected_size_title, new Object[]{size.getName()});
            } else {
                string = context.getString(C0859R.string.shop_no_size);
            }
            inflate.setDescription(string);
            if (cartAdapterItem.getColor() != null) {
                from.inflate(C0859R.layout.shop_selected_delimitter, this.binding.attributes, true);
            }
            cartAdapterItem = cartAdapterItem.getColor();
            if (cartAdapterItem != null) {
                ShopSelectedColorBinding inflate2 = ShopSelectedColorBinding.inflate(from, this.binding.attributes, true);
                Intrinsics.checkExpressionValueIsNotNull(inflate2, "b");
                inflate2.setColor(cartAdapterItem);
                ImageView imageView = inflate2.corner;
                Intrinsics.checkExpressionValueIsNotNull(imageView, "b.corner");
                if (MethodCallsLogger.isSuperLightColor(cartAdapterItem.getColorInt()) == null) {
                    i = 8;
                }
                imageView.setVisibility(i);
            }
        }
    }

    public CartAdapterItemItem(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "cartItem");
        super(CartAdapterItem.Companion.getITEM_TYPE_CART_ITEM(), null, 2, null);
        this.cartItem = cartItem;
    }

    public final CartItem getCartItem() {
        return this.cartItem;
    }

    public final void setCartItem(CartItem cartItem) {
        Intrinsics.checkParameterIsNotNull(cartItem, "<set-?>");
        this.cartItem = cartItem;
    }
}
