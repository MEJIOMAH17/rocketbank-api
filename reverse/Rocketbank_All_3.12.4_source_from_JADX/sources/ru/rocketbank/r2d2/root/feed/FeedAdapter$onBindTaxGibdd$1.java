package ru.rocketbank.r2d2.root.feed;

import android.content.Context;
import android.view.View;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.TaxGibddPush;
import ru.rocketbank.core.model.charge.ChargeType;
import ru.rocketbank.r2d2.charges.ChargesListActivity;
import ru.rocketbank.r2d2.charges.ChargesListActivity.Companion;
import ru.rocketbank.r2d2.root.feed.viewholder.TaxGibddViewHolder;

/* compiled from: FeedAdapter.kt */
final class FeedAdapter$onBindTaxGibdd$1 implements Runnable {
    final /* synthetic */ String $icon;
    final /* synthetic */ TaxGibddPush $push;
    final /* synthetic */ TaxGibddViewHolder $viewHolder;

    FeedAdapter$onBindTaxGibdd$1(TaxGibddViewHolder taxGibddViewHolder, String str, TaxGibddPush taxGibddPush) {
        this.$viewHolder = taxGibddViewHolder;
        this.$icon = str;
        this.$push = taxGibddPush;
    }

    public final void run() {
        Companion companion = ChargesListActivity.Companion;
        View view = this.$viewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "viewHolder.itemView");
        Context context = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "viewHolder.itemView.context");
        companion.start(context, this.$icon, Intrinsics.areEqual(Param.TAX, this.$push.getType()) ? ChargeType.TAX : ChargeType.PENALTY);
    }
}
