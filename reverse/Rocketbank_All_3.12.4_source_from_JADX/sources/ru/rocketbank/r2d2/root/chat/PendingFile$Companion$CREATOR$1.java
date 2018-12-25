package ru.rocketbank.r2d2.root.chat;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PendingFile.kt */
public final class PendingFile$Companion$CREATOR$1 implements Creator<PendingFile> {
    PendingFile$Companion$CREATOR$1() {
    }

    public final PendingFile createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "objIn");
        return new PendingFile(parcel);
    }

    public final PendingFile[] newArray(int i) {
        return new PendingFile[i];
    }
}
