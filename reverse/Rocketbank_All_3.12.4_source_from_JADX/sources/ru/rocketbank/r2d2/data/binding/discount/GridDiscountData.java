package ru.rocketbank.r2d2.data.binding.discount;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: GridDiscountData.kt */
public final class GridDiscountData {
    private final ObservableBoolean isWhiteBackground;
    private final ObservableField<String> title;

    public GridDiscountData(String str, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        this.title = new ObservableField(str);
        this.isWhiteBackground = new ObservableBoolean(z);
    }

    public /* synthetic */ GridDiscountData(String str, boolean z, int i, Ref ref) {
        if ((i & 2) != 0) {
            z = true;
        }
        this(str, z);
    }

    public final ObservableField<String> getTitle() {
        return this.title;
    }

    public final ObservableBoolean isWhiteBackground() {
        return this.isWhiteBackground;
    }
}
