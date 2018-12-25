package ru.rocketbank.r2d2.root.feed.viewholder;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.OneTwoTripUidOperation;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.helpers.UIHelper;

/* compiled from: OneTwoTripViewHolder.kt */
final class OneTwoTripViewHolder$onBind$1 implements OnClickListener {
    final /* synthetic */ OneTwoTripUidOperation $operation;
    final /* synthetic */ OneTwoTripViewHolder this$0;

    OneTwoTripViewHolder$onBind$1(OneTwoTripViewHolder oneTwoTripViewHolder, OneTwoTripUidOperation oneTwoTripUidOperation) {
        this.this$0 = oneTwoTripViewHolder;
        this.$operation = oneTwoTripUidOperation;
    }

    public final void onClick(View view) {
        view = this.this$0.getBinding().getRoot();
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.root");
        Utils.copyTextToClipboard(view.getContext(), "OneTwoTrip", this.$operation.getUid());
        UIHelper.showSnack(this.this$0.getBinding().getRoot(), (int) C0859R.string.onetwotrip_code_copied);
    }
}
