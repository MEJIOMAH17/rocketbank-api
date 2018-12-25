package ru.rocketbank.r2d2.root.feed.viewholder;

import android.content.Context;
import android.databinding.ObservableField;
import android.view.View;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.TariffOperation;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.tariffs.SalaryTariffInstructionActivity;
import ru.rocketbank.r2d2.activities.tariffs.SalaryTariffInstructionActivity.Companion;
import ru.rocketbank.r2d2.data.binding.feed.FeedTariffClickListener;
import ru.rocketbank.r2d2.data.binding.feed.FeedTariffHolderData;
import ru.rocketbank.r2d2.databinding.FeedItemSalaryTariffsBinding;

/* compiled from: TariffViewHolder.kt */
public final class TariffViewHolder extends FeedViewHolder implements FeedTariffClickListener {
    private final FeedItemSalaryTariffsBinding binding;
    private final FeedTariffHolderData data = new FeedTariffHolderData();

    public final FeedItemSalaryTariffsBinding getBinding() {
        return this.binding;
    }

    public TariffViewHolder(FeedItemSalaryTariffsBinding feedItemSalaryTariffsBinding) {
        Intrinsics.checkParameterIsNotNull(feedItemSalaryTariffsBinding, "binding");
        View root = feedItemSalaryTariffsBinding.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
        super(root);
        this.binding = feedItemSalaryTariffsBinding;
        this.binding.setData(this.data);
        this.binding.setListener(this);
        feedItemSalaryTariffsBinding = this.binding.background;
        Intrinsics.checkExpressionValueIsNotNull(feedItemSalaryTariffsBinding, "binding.background");
        ImageHelper.loadFromRes$default(C0859R.drawable.tarif_push, feedItemSalaryTariffsBinding, 0, 4, null);
    }

    public final void onBind(TariffOperation tariffOperation) {
        Intrinsics.checkParameterIsNotNull(tariffOperation, "operation");
        this.binding.setOperation(tariffOperation);
        this.data.getTariffText().set(tariffOperation.getTitleText());
        this.data.getTariffDescription().set(tariffOperation.getSubtitleText());
        ObservableField buttonText = this.data.getButtonText();
        tariffOperation = tariffOperation.getButtonText();
        if (tariffOperation == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        tariffOperation = tariffOperation.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(tariffOperation, "(this as java.lang.String).toUpperCase()");
        buttonText.set(tariffOperation);
    }

    public final void onTariffButtonClicked(TariffOperation tariffOperation) {
        Intrinsics.checkParameterIsNotNull(tariffOperation, "operation");
        Companion companion = SalaryTariffInstructionActivity.Companion;
        View root = this.binding.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
        Context context = root.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "binding.root.context");
        companion.start(context, tariffOperation.getInfoUrl(), tariffOperation.getDownloadUrl());
    }
}
