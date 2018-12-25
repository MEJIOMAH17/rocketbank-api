package ru.rocketbank.r2d2.shop.cart;

import android.content.Context;
import android.databinding.ObservableDouble;
import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.ShopCartDeficitBinding;
import ru.rocketbank.r2d2.shop.ShopUtilsKt;
import ru.rocketbank.r2d2.shop.cart.CartAdapterItem.CartItemViewHolder;

/* compiled from: ShopCartAdapter.kt */
public final class CartAdapterItemDeficit extends CartAdapterItem {
    private ObservableDouble deficit;

    /* compiled from: ShopCartAdapter.kt */
    public static final class ViewHolder extends CartItemViewHolder {
        private final ShopCartDeficitBinding binding;

        public ViewHolder(ShopCartDeficitBinding shopCartDeficitBinding) {
            Intrinsics.checkParameterIsNotNull(shopCartDeficitBinding, "binding");
            View root = shopCartDeficitBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = shopCartDeficitBinding;
        }

        public final ShopCartDeficitBinding getBinding() {
            return this.binding;
        }

        public final void bind(CartAdapterItem cartAdapterItem) {
            Intrinsics.checkParameterIsNotNull(cartAdapterItem, "item");
            super.bind(cartAdapterItem);
            CartAdapterItemDeficit cartAdapterItemDeficit = (CartAdapterItemDeficit) cartAdapterItem;
            if (cartAdapterItemDeficit.getDeficit().get() == 0.0d) {
                View root = this.binding.getRoot();
                Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
                root.setVisibility(8);
            } else {
                View root2 = this.binding.getRoot();
                Intrinsics.checkExpressionValueIsNotNull(root2, "binding.root");
                root2.setVisibility(0);
                RocketTextView rocketTextView = this.binding.textView;
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "binding.textView");
                Context context = rocketTextView.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                String createCartItemAmountText = ShopUtilsKt.createCartItemAmountText(context, cartAdapterItemDeficit.getDeficit().get());
                RocketTextView rocketTextView2 = this.binding.textView;
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "binding.textView");
                rocketTextView2.setText(context.getString(C0859R.string.cart_deficit_text, new Object[]{createCartItemAmountText}));
            }
            this.binding.buttonQuestion.setOnClickListener(new CartAdapterItemDeficit$ViewHolder$bind$1(cartAdapterItem));
        }
    }

    public CartAdapterItemDeficit(ObservableDouble observableDouble, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(observableDouble, "deficit");
        Intrinsics.checkParameterIsNotNull(function0, "onClick");
        super(CartAdapterItem.Companion.getITEM_TYPE_DEFICIT(), function0);
        this.deficit = observableDouble;
    }

    public /* synthetic */ CartAdapterItemDeficit(ObservableDouble observableDouble, Function0 function0, int i, Ref ref) {
        if ((i & 1) != 0) {
            observableDouble = new ObservableDouble();
        }
        this(observableDouble, function0);
    }

    public final ObservableDouble getDeficit() {
        return this.deficit;
    }

    public final void setDeficit(ObservableDouble observableDouble) {
        Intrinsics.checkParameterIsNotNull(observableDouble, "<set-?>");
        this.deficit = observableDouble;
    }
}
