package ru.rocketbank.r2d2.registration;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class RegistrationStep$$special$$inlined$createParcel$1 implements Creator<RegistrationStep> {
    public final RegistrationStep createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new RegistrationStep(parcel);
    }

    public final RegistrationStep[] newArray(int i) {
        return new RegistrationStep[i];
    }
}
