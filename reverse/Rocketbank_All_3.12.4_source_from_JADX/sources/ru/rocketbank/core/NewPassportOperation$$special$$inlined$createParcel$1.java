package ru.rocketbank.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class NewPassportOperation$$special$$inlined$createParcel$1 implements Creator<NewPassportOperation> {
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new NewPassportOperation(parcel);
    }

    public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return new NewPassportOperation[i];
    }
}
