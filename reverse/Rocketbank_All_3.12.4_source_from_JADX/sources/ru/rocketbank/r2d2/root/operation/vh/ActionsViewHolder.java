package ru.rocketbank.r2d2.root.operation.vh;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.SupportChatActivity;
import ru.rocketbank.r2d2.activities.SupportChatActivity.Companion;
import ru.rocketbank.r2d2.databinding.LayoutOperationActionBinding;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ActionsViewHolder.kt */
public final class ActionsViewHolder extends GenericViewHolder implements ActionsHandler {
    public ActionsViewHolder(View view) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        super(view);
        view = LayoutOperationActionBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "binding");
        view.setHandler(this);
    }

    public final void onBind() {
        ParallaxItem item = getItem();
        if (item != null) {
            Object payload = item.getPayload();
            if (payload != null) {
                if (payload == null) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation");
                }
                int i = ((Operation) payload).isHasReceipt() ? 0 : 8;
                View view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                FrameLayout frameLayout = (FrameLayout) view.findViewById(C0859R.id.receipt);
                Intrinsics.checkExpressionValueIsNotNull(frameLayout, "itemView.receipt");
                frameLayout.setVisibility(i);
            }
        }
    }

    public final void onSupport() {
        ParallaxItem item = getItem();
        if (item != null) {
            Object payload = item.getPayload();
            if (payload != null) {
                if (payload == null) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation");
                }
                Operation operation = (Operation) payload;
                Companion companion = SupportChatActivity.Companion;
                View view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                Context context = view.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
                companion.startActivity(context, operation);
            }
        }
    }

    public final void onReceipt() {
        ParallaxItem item = getItem();
        if (item != null) {
            Object payload = item.getPayload();
            if (payload != null) {
                if (payload == null) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation");
                }
                String receiptUrl = ((Operation) payload).getReceiptUrl();
                if (receiptUrl != null) {
                    View view = this.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                    Context context = view.getContext();
                    if (context != null) {
                        Utils.openUrl(context, receiptUrl);
                    }
                }
            }
        }
    }
}
