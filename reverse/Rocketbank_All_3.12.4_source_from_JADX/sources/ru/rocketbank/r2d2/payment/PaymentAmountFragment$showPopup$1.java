package ru.rocketbank.r2d2.payment;

import android.support.v7.widget.PopupMenu.OnMenuItemClickListener;
import android.view.MenuItem;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.provider.Provider;

/* compiled from: PaymentAmountFragment.kt */
final class PaymentAmountFragment$showPopup$1 implements OnMenuItemClickListener {
    final /* synthetic */ PaymentAmountFragment this$0;

    PaymentAmountFragment$showPopup$1(PaymentAmountFragment paymentAmountFragment) {
        this.this$0 = paymentAmountFragment;
    }

    public final boolean onMenuItemClick(MenuItem menuItem) {
        Intrinsics.checkExpressionValueIsNotNull(menuItem, "it");
        if (menuItem.getItemId() == null) {
            menuItem = this.this$0.getActivity();
            if (menuItem == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.payment.PaymentDetailsActivity");
            }
            PaymentDetailsActivity paymentDetailsActivity = (PaymentDetailsActivity) menuItem;
            Provider access$getProvider$p = this.this$0.provider;
            if (access$getProvider$p == null) {
                Intrinsics.throwNpe();
            }
            paymentDetailsActivity.replaceDetailsFragment(access$getProvider$p, this.this$0.template);
        }
        return null;
    }
}
