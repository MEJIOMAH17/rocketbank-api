package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Limit.kt */
public final class Limit implements Parcelable {
    public static final Creator<Limit> CREATOR = new Limit$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private ArrayList<String> limits;

    /* compiled from: Limit.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ Limit copy$default(Limit limit, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = limit.limits;
        }
        return limit.copy(arrayList);
    }

    public final ArrayList<String> component1() {
        return this.limits;
    }

    public final Limit copy(ArrayList<String> arrayList) {
        return new Limit((ArrayList) arrayList);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Limit) {
                if (Intrinsics.areEqual(this.limits, ((Limit) obj).limits)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        ArrayList arrayList = this.limits;
        return arrayList != null ? arrayList.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Limit(limits=");
        stringBuilder.append(this.limits);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Limit(ArrayList<String> arrayList) {
        this.limits = arrayList;
    }

    public final ArrayList<String> getLimits() {
        return this.limits;
    }

    public final void setLimits(ArrayList<String> arrayList) {
        this.limits = arrayList;
    }

    protected Limit(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        this(parcel.createStringArrayList());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeStringList((List) this.limits);
    }
}
