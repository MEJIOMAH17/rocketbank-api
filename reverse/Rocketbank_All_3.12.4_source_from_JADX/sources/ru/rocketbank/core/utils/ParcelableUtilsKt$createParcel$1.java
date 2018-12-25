package ru.rocketbank.core.utils;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class ParcelableUtilsKt$createParcel$1 implements Creator<T> {
    final /* synthetic */ Function1 $createFromParcel;

    public ParcelableUtilsKt$createParcel$1(Function1 function1) {
        this.$createFromParcel = function1;
    }

    public final T createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return (Parcelable) this.$createFromParcel.invoke(parcel);
    }

    public final T[] newArray(int i) {
        Intrinsics.reifiedOperationMarker$4f708078();
        return new Parcelable[i];
    }
}
