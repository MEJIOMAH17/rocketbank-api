package ru.rocketbank.r2d2.shop.cart;

import android.databinding.ObservableDouble;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.r2d2.databinding.ShopCartAmountBinding;
import ru.rocketbank.r2d2.shop.cart.CartAdapterItem.CartItemViewHolder;

/* compiled from: ShopCartAdapter.kt */
public final class CartAdapterItemHeader extends CartAdapterItem {
    private ObservableDouble amount;

    /* compiled from: ShopCartAdapter.kt */
    public static final class ViewHolder extends CartItemViewHolder {
        private final ShopCartAmountBinding binding;

        public ViewHolder(ShopCartAmountBinding shopCartAmountBinding) {
            Intrinsics.checkParameterIsNotNull(shopCartAmountBinding, "binding");
            View root = shopCartAmountBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = shopCartAmountBinding;
        }

        public final ShopCartAmountBinding getBinding() {
            return this.binding;
        }

        public final void bind(CartAdapterItem cartAdapterItem) {
            Intrinsics.checkParameterIsNotNull(cartAdapterItem, "item");
            super.bind(cartAdapterItem);
            this.binding.setPrice(((CartAdapterItemHeader) cartAdapterItem).getAmount());
        }
    }

    public CartAdapterItemHeader() {
        this(null, 1, null);
    }

    public CartAdapterItemHeader(ObservableDouble observableDouble) {
        Intrinsics.checkParameterIsNotNull(observableDouble, "amount");
        super(CartAdapterItem.Companion.getITEM_TYPE_AMOUNT(), null, 2, null);
        this.amount = observableDouble;
    }

    public /* synthetic */ CartAdapterItemHeader(ObservableDouble observableDouble, int i, Ref ref) {
        if ((i & 1) != 0) {
            observableDouble = new ObservableDouble();
        }
        this(observableDouble);
    }

    public final ObservableDouble getAmount() {
        return this.amount;
    }

    public final void setAmount(ObservableDouble observableDouble) {
        Intrinsics.checkParameterIsNotNull(observableDouble, "<set-?>");
        this.amount = observableDouble;
    }
}
