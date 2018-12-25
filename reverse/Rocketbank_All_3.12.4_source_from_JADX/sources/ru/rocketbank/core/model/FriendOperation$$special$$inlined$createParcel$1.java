package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class FriendOperation$$special$$inlined$createParcel$1 implements Creator<FriendOperation> {
    public final FriendOperation createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new FriendOperation(parcel);
    }

    public final FriendOperation[] newArray(int i) {
        return new FriendOperation[i];
    }
}
