package ru.rocketbank.r2d2.data.binding.transfer;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.text.Spanned;
import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonData;

/* compiled from: TransferAccountData.kt */
public final class TransferAccountData extends ToolbarWithButtonData {
    private final ObservableField<Drawable> currencyDownDrawable = new ObservableField();
    private final ObservableField<Drawable> currencyUpDrawable = new ObservableField();
    private final ObservableField<Spanned> infoText = new ObservableField();
    private final ObservableInt infoTextColor = new ObservableInt(ViewCompat.MEASURED_STATE_MASK);
    private ObservableBoolean progressVisible = new ObservableBoolean(false);

    public TransferAccountData(String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(str2, "button");
        super(str, str2, z, 0);
    }

    public final ObservableField<Spanned> getInfoText() {
        return this.infoText;
    }

    public final ObservableInt getInfoTextColor() {
        return this.infoTextColor;
    }

    public final ObservableField<Drawable> getCurrencyUpDrawable() {
        return this.currencyUpDrawable;
    }

    public final ObservableField<Drawable> getCurrencyDownDrawable() {
        return this.currencyDownDrawable;
    }

    public final ObservableBoolean getProgressVisible() {
        return this.progressVisible;
    }

    public final void setProgressVisible(ObservableBoolean observableBoolean) {
        Intrinsics.checkParameterIsNotNull(observableBoolean, "<set-?>");
        this.progressVisible = observableBoolean;
    }
}
