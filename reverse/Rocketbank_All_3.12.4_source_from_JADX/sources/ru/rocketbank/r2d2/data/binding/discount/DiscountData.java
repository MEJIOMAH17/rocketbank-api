package ru.rocketbank.r2d2.data.binding.discount;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: DiscountData.kt */
public final class DiscountData {
    public final ObservableField<String> promoCode;
    public final ObservableBoolean promoCodeVisibility;
    public final ObservableField<String> promoDescription;
    public final ObservableField<String> promoLink;
    public final ObservableField<String> promoTextCopy;
    public final ObservableField<String> promoTitle;

    public DiscountData(String str, String str2, String str3, String str4, String str5, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        Intrinsics.checkParameterIsNotNull(str2, "description");
        Intrinsics.checkParameterIsNotNull(str3, "textCopy");
        Intrinsics.checkParameterIsNotNull(str4, "link");
        this.promoLink = new ObservableField(str4);
        this.promoTitle = new ObservableField(str);
        this.promoTextCopy = new ObservableField(str3);
        this.promoCode = new ObservableField(str5);
        this.promoDescription = new ObservableField(str2);
        this.promoCodeVisibility = new ObservableBoolean(z);
    }

    public /* synthetic */ DiscountData(String str, String str2, String str3, String str4, String str5, boolean z, int i, Ref ref) {
        if ((i & 16) != null) {
            str5 = null;
        }
        String str6 = str5;
        if ((i & 32) != null) {
            z = false;
        }
        this(str, str2, str3, str4, str6, z);
    }
}
