package ru.rocketbank.r2d2.data.binding.discount;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: NonSelectedDiscountsData.kt */
public final class NonSelectedDiscountsData {
    private final ObservableBoolean confirmEnabled;
    private final ObservableField<String> selectionStatus;
    private final ObservableBoolean selectionTextVisibility;
    private final ObservableField<String> title;

    public NonSelectedDiscountsData() {
        this(null, null, false, false, 15, null);
    }

    public NonSelectedDiscountsData(String str, String str2, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(str2, "selectionStatut");
        this.confirmEnabled = new ObservableBoolean(z);
        this.title = new ObservableField(str);
        this.selectionStatus = new ObservableField(str2);
        this.selectionTextVisibility = new ObservableBoolean(z2);
    }

    public /* synthetic */ NonSelectedDiscountsData(String str, String str2, boolean z, boolean z2, int i, Ref ref) {
        if ((i & 1) != null) {
            str = "";
        }
        if ((i & 2) != null) {
            str2 = "";
        }
        if ((i & 4) != null) {
            z = false;
        }
        if ((i & 8) != 0) {
            z2 = false;
        }
        this(str, str2, z, z2);
    }

    public final ObservableBoolean getConfirmEnabled() {
        return this.confirmEnabled;
    }

    public final ObservableField<String> getTitle() {
        return this.title;
    }

    public final ObservableField<String> getSelectionStatus() {
        return this.selectionStatus;
    }

    public final ObservableBoolean getSelectionTextVisibility() {
        return this.selectionTextVisibility;
    }
}
