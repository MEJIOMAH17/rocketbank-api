package ru.rocketbank.core.network.model.leads;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParcelableUtils.kt */
public final class Document$$special$$inlined$createParcel$1 implements Creator<Document> {
    public final Document createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new Document(parcel);
    }

    public final Document[] newArray(int i) {
        return new Document[i];
    }
}
