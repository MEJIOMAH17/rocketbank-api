package ru.rocketbank.core.network.model.tariffs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class TariffFeature$$special$$inlined$createParcel$1 implements Creator<TariffFeature> {
    public final TariffFeature createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new TariffFeature(parcel);
    }

    public final TariffFeature[] newArray(int i) {
        return new TariffFeature[i];
    }
}
