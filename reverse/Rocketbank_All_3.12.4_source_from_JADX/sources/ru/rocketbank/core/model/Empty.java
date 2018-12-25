package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Empty.kt */
public final class Empty extends AbstractOperation implements Parcelable {
    public static final Creator<Empty> CREATOR = new Empty$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();

    /* compiled from: Empty.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected Empty(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        super(parcel);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
