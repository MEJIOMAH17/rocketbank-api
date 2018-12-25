package ru.rocketbank.r2d2.root.feed.viewholder;

import android.databinding.ObservableField;
import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.OneTwoTripUidOperation;
import ru.rocketbank.r2d2.data.binding.feed.FeedOnetwotripHolderData;
import ru.rocketbank.r2d2.databinding.FeedItemOnetwotripBinding;

/* compiled from: OneTwoTripViewHolder.kt */
public final class OneTwoTripViewHolder extends FeedViewHolder {
    private final FeedItemOnetwotripBinding binding;
    private final FeedOnetwotripHolderData data = new FeedOnetwotripHolderData();

    public OneTwoTripViewHolder(FeedItemOnetwotripBinding feedItemOnetwotripBinding) {
        Intrinsics.checkParameterIsNotNull(feedItemOnetwotripBinding, "binding");
        View root = feedItemOnetwotripBinding.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
        super(root);
        this.binding = feedItemOnetwotripBinding;
        this.binding.setData(this.data);
    }

    public final FeedItemOnetwotripBinding getBinding() {
        return this.binding;
    }

    public final void onBind(OneTwoTripUidOperation oneTwoTripUidOperation) {
        Intrinsics.checkParameterIsNotNull(oneTwoTripUidOperation, "operation");
        this.data.getTariffText().set(oneTwoTripUidOperation.getTitleText());
        this.data.getTariffDescription().set(oneTwoTripUidOperation.getSubtitleText());
        ObservableField buttonText = this.data.getButtonText();
        String buttonText2 = oneTwoTripUidOperation.getButtonText();
        if (buttonText2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        buttonText2 = buttonText2.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(buttonText2, "(this as java.lang.String).toUpperCase()");
        buttonText.set(buttonText2);
        this.data.getUid().set(oneTwoTripUidOperation.getUid());
        this.binding.tariffCode.setOnClickListener(new OneTwoTripViewHolder$onBind$1(this, oneTwoTripUidOperation));
        this.binding.button.setOnClickListener(new OneTwoTripViewHolder$onBind$2(this, oneTwoTripUidOperation));
    }
}
