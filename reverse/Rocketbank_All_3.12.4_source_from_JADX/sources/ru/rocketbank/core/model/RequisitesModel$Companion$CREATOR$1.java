package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RequisitesModel.kt */
public final class RequisitesModel$Companion$CREATOR$1 implements Creator<RequisitesModel> {
    RequisitesModel$Companion$CREATOR$1() {
    }

    public final RequisitesModel createFromParcel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        return new RequisitesModel(parcel);
    }

    public final RequisitesModel[] newArray(int i) {
        return new RequisitesModel[i];
    }
}
