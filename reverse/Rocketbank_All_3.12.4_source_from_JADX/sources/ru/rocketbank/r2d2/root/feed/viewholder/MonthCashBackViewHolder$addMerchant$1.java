package ru.rocketbank.r2d2.root.feed.viewholder;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Merchant;

/* compiled from: MonthCashBackViewHolder.kt */
final class MonthCashBackViewHolder$addMerchant$1 implements OnClickListener {
    final /* synthetic */ View $clickView;
    final /* synthetic */ Merchant $merchant;
    final /* synthetic */ View $merchantRevealIconView;
    final /* synthetic */ View $merchantView;
    final /* synthetic */ MonthCashBackViewHolder this$0;

    MonthCashBackViewHolder$addMerchant$1(MonthCashBackViewHolder monthCashBackViewHolder, View view, View view2, View view3, Merchant merchant) {
        this.this$0 = monthCashBackViewHolder;
        this.$clickView = view;
        this.$merchantView = view2;
        this.$merchantRevealIconView = view3;
        this.$merchant = merchant;
    }

    public final void onClick(View view) {
        view = this.this$0;
        View view2 = this.$clickView;
        Intrinsics.checkExpressionValueIsNotNull(view2, "clickView");
        View view3 = this.$merchantView;
        Intrinsics.checkExpressionValueIsNotNull(view3, "merchantView");
        View view4 = this.$merchantRevealIconView;
        Intrinsics.checkExpressionValueIsNotNull(view4, "merchantRevealIconView");
        view.onClickMerchant(view2, view3, view4, this.$merchant);
    }
}
