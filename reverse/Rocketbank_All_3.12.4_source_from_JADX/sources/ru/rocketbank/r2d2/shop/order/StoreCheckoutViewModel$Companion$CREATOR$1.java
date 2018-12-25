package ru.rocketbank.r2d2.shop.order;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.charges.tax.TaxChargeViewModel;

/* compiled from: ShopOrderActivity.kt */
public final class StoreCheckoutViewModel$Companion$CREATOR$1 implements Creator<TaxChargeViewModel> {
    StoreCheckoutViewModel$Companion$CREATOR$1() {
    }

    public final TaxChargeViewModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new TaxChargeViewModel(parcel);
    }

    public final TaxChargeViewModel[] newArray(int i) {
        return new TaxChargeViewModel[i];
    }
}
