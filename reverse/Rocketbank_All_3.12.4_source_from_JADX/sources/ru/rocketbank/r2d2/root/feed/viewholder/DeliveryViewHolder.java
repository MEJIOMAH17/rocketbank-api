package ru.rocketbank.r2d2.root.feed.viewholder;

import android.content.Context;
import android.databinding.ObservableField;
import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.DeliveryOperation;
import ru.rocketbank.core.model.dto.operations.Miles;
import ru.rocketbank.r2d2.data.binding.feed.DeliveryItemClickListener;
import ru.rocketbank.r2d2.data.binding.feed.FeedDeliveryHolderData;
import ru.rocketbank.r2d2.databinding.FeedItemDeliveryBinding;
import ru.rocketbank.r2d2.root.delivery.DeliveryActivity;
import ru.rocketbank.r2d2.root.delivery.DeliveryActivity.Companion;

/* compiled from: DeliveryViewHolder.kt */
public final class DeliveryViewHolder extends FeedViewHolder implements DeliveryItemClickListener {
    private final FeedItemDeliveryBinding binding;
    private final FeedDeliveryHolderData data = new FeedDeliveryHolderData();
    private String status;
    private String token;

    public final FeedItemDeliveryBinding getBinding() {
        return this.binding;
    }

    public DeliveryViewHolder(FeedItemDeliveryBinding feedItemDeliveryBinding) {
        Intrinsics.checkParameterIsNotNull(feedItemDeliveryBinding, "binding");
        View root = feedItemDeliveryBinding.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
        super(root);
        this.binding = feedItemDeliveryBinding;
        this.binding.setData(this.data);
        this.binding.setListener(this);
    }

    public final FeedDeliveryHolderData getData() {
        return this.data;
    }

    public final void onBind(DeliveryOperation deliveryOperation) {
        Intrinsics.checkParameterIsNotNull(deliveryOperation, "deliveryOperation");
        this.data.getDescription().set(deliveryOperation.getText());
        ObservableField buttonText = this.data.getButtonText();
        String buttonText2 = deliveryOperation.getButtonText();
        if (buttonText2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        buttonText2 = buttonText2.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(buttonText2, "(this as java.lang.String).toUpperCase()");
        buttonText.set(buttonText2);
        this.token = deliveryOperation.getToken();
        this.status = deliveryOperation.getStatus();
    }

    public final void onDeliveryClicked() {
        String str = this.status;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("status");
        }
        int hashCode = str.hashCode();
        Companion companion;
        View view;
        Context context;
        String str2;
        if (hashCode != -1402931637) {
            if (hashCode == -682587753) {
                if (str.equals("pending")) {
                    companion = DeliveryActivity.Companion;
                    view = this.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                    context = view.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
                    str2 = this.token;
                    if (str2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("token");
                    }
                    Companion.startPending$default(companion, context, str2, false, 4, null);
                }
            }
        } else if (str.equals(Miles.STATUS_COMPLETED)) {
            companion = DeliveryActivity.Companion;
            view = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
            context = view.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "itemView.context");
            str2 = this.token;
            if (str2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("token");
            }
            Companion.startCompleted$default(companion, context, str2, false, 4, null);
        }
    }
}
