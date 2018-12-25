package ru.rocketbank.r2d2.adapters.discounts.holders;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Merchant;
import ru.rocketbank.core.model.dto.operations.MonthlyMerchant;

/* compiled from: NonSelectedHolder.kt */
final class NonSelectedHolder$addDiscount$1 implements OnClickListener {
    final /* synthetic */ View $clickView;
    final /* synthetic */ MonthlyMerchant $dsc;
    final /* synthetic */ View $merchantRevealIconView;
    final /* synthetic */ NonSelectedHolder this$0;

    NonSelectedHolder$addDiscount$1(NonSelectedHolder nonSelectedHolder, View view, View view2, MonthlyMerchant monthlyMerchant) {
        this.this$0 = nonSelectedHolder;
        this.$clickView = view;
        this.$merchantRevealIconView = view2;
        this.$dsc = monthlyMerchant;
    }

    public final void onClick(View view) {
        NonSelectedHolder nonSelectedHolder = this.this$0;
        View view2 = this.$clickView;
        Intrinsics.checkExpressionValueIsNotNull(view2, "clickView");
        Intrinsics.checkExpressionValueIsNotNull(view, "v");
        View view3 = this.$merchantRevealIconView;
        Intrinsics.checkExpressionValueIsNotNull(view3, "merchantRevealIconView");
        Merchant merchant = this.$dsc.getMerchant();
        Intrinsics.checkExpressionValueIsNotNull(merchant, "dsc.merchant");
        nonSelectedHolder.onClickMerchant(view2, view, view3, merchant);
    }
}
