package ru.rocketbank.core.model.dto.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsOperationsResponseData.kt */
public final class AnalyticsOperationsResponseData implements Parcelable {
    public static final Creator<AnalyticsOperationsResponseData> CREATOR = new AnalyticsOperationsResponseData$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private AnalyticsOperations joint;
    private AnalyticsOperations mine;
    private Double total;

    /* compiled from: AnalyticsOperationsResponseData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ AnalyticsOperationsResponseData copy$default(AnalyticsOperationsResponseData analyticsOperationsResponseData, Double d, AnalyticsOperations analyticsOperations, AnalyticsOperations analyticsOperations2, int i, Object obj) {
        if ((i & 1) != 0) {
            d = analyticsOperationsResponseData.total;
        }
        if ((i & 2) != 0) {
            analyticsOperations = analyticsOperationsResponseData.joint;
        }
        if ((i & 4) != 0) {
            analyticsOperations2 = analyticsOperationsResponseData.mine;
        }
        return analyticsOperationsResponseData.copy(d, analyticsOperations, analyticsOperations2);
    }

    public final Double component1() {
        return this.total;
    }

    public final AnalyticsOperations component2() {
        return this.joint;
    }

    public final AnalyticsOperations component3() {
        return this.mine;
    }

    public final AnalyticsOperationsResponseData copy(Double d, AnalyticsOperations analyticsOperations, AnalyticsOperations analyticsOperations2) {
        return new AnalyticsOperationsResponseData(d, analyticsOperations, analyticsOperations2);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AnalyticsOperationsResponseData) {
                AnalyticsOperationsResponseData analyticsOperationsResponseData = (AnalyticsOperationsResponseData) obj;
                if (Intrinsics.areEqual(this.total, analyticsOperationsResponseData.total) && Intrinsics.areEqual(this.joint, analyticsOperationsResponseData.joint) && Intrinsics.areEqual(this.mine, analyticsOperationsResponseData.mine)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Double d = this.total;
        int i = 0;
        int hashCode = (d != null ? d.hashCode() : 0) * 31;
        AnalyticsOperations analyticsOperations = this.joint;
        hashCode = (hashCode + (analyticsOperations != null ? analyticsOperations.hashCode() : 0)) * 31;
        analyticsOperations = this.mine;
        if (analyticsOperations != null) {
            i = analyticsOperations.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("AnalyticsOperationsResponseData(total=");
        stringBuilder.append(this.total);
        stringBuilder.append(", joint=");
        stringBuilder.append(this.joint);
        stringBuilder.append(", mine=");
        stringBuilder.append(this.mine);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public AnalyticsOperationsResponseData(Double d, AnalyticsOperations analyticsOperations, AnalyticsOperations analyticsOperations2) {
        this.total = d;
        this.joint = analyticsOperations;
        this.mine = analyticsOperations2;
    }

    public final Double getTotal() {
        return this.total;
    }

    public final void setTotal(Double d) {
        this.total = d;
    }

    public final AnalyticsOperations getJoint() {
        return this.joint;
    }

    public final void setJoint(AnalyticsOperations analyticsOperations) {
        this.joint = analyticsOperations;
    }

    public final AnalyticsOperations getMine() {
        return this.mine;
    }

    public final void setMine(AnalyticsOperations analyticsOperations) {
        this.mine = analyticsOperations;
    }

    public AnalyticsOperationsResponseData(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this((Double) parcel.readValue(Double.TYPE.getClassLoader()), (AnalyticsOperations) parcel.readParcelable(AnalyticsOperations.class.getClassLoader()), (AnalyticsOperations) parcel.readParcelable(AnalyticsOperations.class.getClassLoader()));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeValue(this.total);
        }
        if (parcel != null) {
            parcel.writeParcelable(this.joint, 0);
        }
        if (parcel != null) {
            parcel.writeParcelable(this.mine, 0);
        }
    }
}
