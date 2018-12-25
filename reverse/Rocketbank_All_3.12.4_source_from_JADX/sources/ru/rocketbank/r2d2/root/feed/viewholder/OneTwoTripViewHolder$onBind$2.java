package ru.rocketbank.r2d2.root.feed.viewholder;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.OneTwoTripUidOperation;
import ru.rocketbank.r2d2.Utils;

/* compiled from: OneTwoTripViewHolder.kt */
final class OneTwoTripViewHolder$onBind$2 implements OnClickListener {
    final /* synthetic */ OneTwoTripUidOperation $operation;
    final /* synthetic */ OneTwoTripViewHolder this$0;

    OneTwoTripViewHolder$onBind$2(OneTwoTripViewHolder oneTwoTripViewHolder, OneTwoTripUidOperation oneTwoTripUidOperation) {
        this.this$0 = oneTwoTripViewHolder;
        this.$operation = oneTwoTripUidOperation;
    }

    public final void onClick(View view) {
        view = this.this$0.getBinding().getRoot();
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.root");
        Utils.openUrl(view.getContext(), this.$operation.getRef());
    }
}
