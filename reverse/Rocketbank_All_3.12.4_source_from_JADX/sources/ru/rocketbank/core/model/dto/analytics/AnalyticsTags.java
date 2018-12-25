package ru.rocketbank.core.model.dto.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsOperationsResponseData.kt */
public final class AnalyticsTags implements Parcelable {
    public static final Creator<AnalyticsTags> CREATOR = new AnalyticsTags$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private List<AnalyticsTagOperation> tags;
    private Double total;

    /* compiled from: AnalyticsOperationsResponseData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ AnalyticsTags copy$default(AnalyticsTags analyticsTags, Double d, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            d = analyticsTags.total;
        }
        if ((i & 2) != 0) {
            list = analyticsTags.tags;
        }
        return analyticsTags.copy(d, list);
    }

    public final Double component1() {
        return this.total;
    }

    public final List<AnalyticsTagOperation> component2() {
        return this.tags;
    }

    public final AnalyticsTags copy(Double d, List<AnalyticsTagOperation> list) {
        return new AnalyticsTags(d, list);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AnalyticsTags) {
                AnalyticsTags analyticsTags = (AnalyticsTags) obj;
                if (Intrinsics.areEqual(this.total, analyticsTags.total) && Intrinsics.areEqual(this.tags, analyticsTags.tags)) {
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
        List list = this.tags;
        if (list != null) {
            i = list.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("AnalyticsTags(total=");
        stringBuilder.append(this.total);
        stringBuilder.append(", tags=");
        stringBuilder.append(this.tags);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public AnalyticsTags(Double d, List<AnalyticsTagOperation> list) {
        this.total = d;
        this.tags = list;
    }

    public final Double getTotal() {
        return this.total;
    }

    public final void setTotal(Double d) {
        this.total = d;
    }

    public final List<AnalyticsTagOperation> getTags() {
        return this.tags;
    }

    public final void setTags(List<AnalyticsTagOperation> list) {
        this.tags = list;
    }

    public AnalyticsTags(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this((Double) parcel.readValue(Double.TYPE.getClassLoader()), parcel.createTypedArrayList(AnalyticsTagOperation.CREATOR));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeValue(this.total);
        }
        if (parcel != null) {
            parcel.writeTypedList(this.tags);
        }
    }
}
