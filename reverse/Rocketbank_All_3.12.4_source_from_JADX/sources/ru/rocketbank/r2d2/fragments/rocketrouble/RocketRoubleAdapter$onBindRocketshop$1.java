package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.content.Context;
import android.view.View;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.activities.MainActivity;

/* compiled from: RocketRoubleAdapter.kt */
final class RocketRoubleAdapter$onBindRocketshop$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ GoToShopViewHolder $goToShopViewHolder;

    RocketRoubleAdapter$onBindRocketshop$1(GoToShopViewHolder goToShopViewHolder) {
        this.$goToShopViewHolder = goToShopViewHolder;
        super(0);
    }

    public final void invoke() {
        View view = this.$goToShopViewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "goToShopViewHolder.itemView");
        Context context = view.getContext();
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
        }
        ((MainActivity) context).showShop();
    }
}
