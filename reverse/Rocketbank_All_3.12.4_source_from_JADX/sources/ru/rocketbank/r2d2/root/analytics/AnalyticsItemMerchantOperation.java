package ru.rocketbank.r2d2.root.analytics;

import android.view.View;
import android.widget.ImageView;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.databinding.AnalyticsItemMerchantOperationBinding;
import ru.rocketbank.r2d2.root.analytics.AnalyticsItem.AnalyticsViewHolder;

/* compiled from: AnalyticsAdapter.kt */
public final class AnalyticsItemMerchantOperation extends AnalyticsItem {
    private static final float ALPHA = 0.7f;
    public static final Companion Companion = new Companion();
    private final String amount;
    private final String date;
    private final String icon;
    private final boolean isMine;
    private final String text;

    /* compiled from: AnalyticsAdapter.kt */
    public static final class Companion {
        public static /* synthetic */ void ALPHA$annotations() {
        }

        private Companion() {
        }

        public final float getALPHA() {
            return AnalyticsItemMerchantOperation.ALPHA;
        }
    }

    /* compiled from: AnalyticsAdapter.kt */
    public static final class MerchantOperationViewHolder extends AnalyticsViewHolder {
        private final AnalyticsItemMerchantOperationBinding binding;

        public MerchantOperationViewHolder(AnalyticsItemMerchantOperationBinding analyticsItemMerchantOperationBinding) {
            Intrinsics.checkParameterIsNotNull(analyticsItemMerchantOperationBinding, "binding");
            View root = analyticsItemMerchantOperationBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
            super(root);
            this.binding = analyticsItemMerchantOperationBinding;
        }

        public final AnalyticsItemMerchantOperationBinding getBinding() {
            return this.binding;
        }

        public final void bind(AnalyticsItem analyticsItem) {
            Intrinsics.checkParameterIsNotNull(analyticsItem, "analyticsItem");
            this.binding.setItem((AnalyticsItemMerchantOperation) analyticsItem);
            this.binding.setAlpha(Float.valueOf(AnalyticsItemMerchantOperation.Companion.getALPHA()));
            this.binding.getRoot().setOnClickListener(new C1614xf19695bc(analyticsItem));
            ImageView imageView = this.binding.imageViewItem;
            Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.imageViewItem");
            analyticsItem = new CropCircleTransformation(imageView.getContext());
            AnalyticsItemMerchantOperation item = this.binding.getItem();
            if (item == null) {
                Intrinsics.throwNpe();
            }
            if (Utils.isBlank(item.getIcon())) {
                imageView = this.binding.imageViewItem;
                Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.imageViewItem");
                ImageHelper.loadRound(imageView, C0859R.drawable.transfer_default, analyticsItem);
                return;
            }
            imageView = this.binding.imageViewItem;
            Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.imageViewItem");
            AnalyticsItemMerchantOperation item2 = this.binding.getItem();
            if (item2 == null) {
                Intrinsics.throwNpe();
            }
            ImageHelper.loadRound(imageView, item2.getIcon(), analyticsItem);
        }
    }

    public static final float getALPHA() {
        return ALPHA;
    }

    public final String getText() {
        return this.text;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getAmount() {
        return this.amount;
    }

    public final boolean isMine() {
        return this.isMine;
    }

    public AnalyticsItemMerchantOperation(String str, String str2, String str3, String str4, boolean z, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        Intrinsics.checkParameterIsNotNull(str3, "icon");
        Intrinsics.checkParameterIsNotNull(str4, "amount");
        super(5, function0);
        this.text = str;
        this.date = str2;
        this.icon = str3;
        this.amount = str4;
        this.isMine = z;
    }

    public /* synthetic */ AnalyticsItemMerchantOperation(String str, String str2, String str3, String str4, boolean z, Function0 function0, int i, Ref ref) {
        this(str, (i & 2) != 0 ? null : str2, str3, str4, (i & 16) != 0 ? true : z, (i & 32) != 0 ? null : function0);
    }
}
