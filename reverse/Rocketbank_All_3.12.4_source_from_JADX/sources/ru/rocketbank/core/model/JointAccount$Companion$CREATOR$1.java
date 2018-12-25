package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: JointAccount.kt */
public final class JointAccount$Companion$CREATOR$1 implements Creator<JointAccount> {
    JointAccount$Companion$CREATOR$1() {
    }

    public final JointAccount createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        return new JointAccount(parcel);
    }

    public final JointAccount[] newArray(int i) {
        return new JointAccount[i];
    }
}
