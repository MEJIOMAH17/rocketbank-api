package ru.rocketbank.core.model.dto.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;

/* compiled from: AnalyticsOperationsResponseData.kt */
public final class AnalyticsOperations implements Parcelable {
    public static final Creator<AnalyticsOperations> CREATOR = new AnalyticsOperations$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private Long amount;
    private List<Operation> operations;
    private Integer percentage;

    /* compiled from: AnalyticsOperationsResponseData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ AnalyticsOperations copy$default(AnalyticsOperations analyticsOperations, Long l, Integer num, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            l = analyticsOperations.amount;
        }
        if ((i & 2) != 0) {
            num = analyticsOperations.percentage;
        }
        if ((i & 4) != 0) {
            list = analyticsOperations.operations;
        }
        return analyticsOperations.copy(l, num, list);
    }

    public final Long component1() {
        return this.amount;
    }

    public final Integer component2() {
        return this.percentage;
    }

    public final List<Operation> component3() {
        return this.operations;
    }

    public final AnalyticsOperations copy(Long l, Integer num, List<Operation> list) {
        return new AnalyticsOperations(l, num, list);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AnalyticsOperations) {
                AnalyticsOperations analyticsOperations = (AnalyticsOperations) obj;
                if (Intrinsics.areEqual(this.amount, analyticsOperations.amount) && Intrinsics.areEqual(this.percentage, analyticsOperations.percentage) && Intrinsics.areEqual(this.operations, analyticsOperations.operations)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Long l = this.amount;
        int i = 0;
        int hashCode = (l != null ? l.hashCode() : 0) * 31;
        Integer num = this.percentage;
        hashCode = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        List list = this.operations;
        if (list != null) {
            i = list.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("AnalyticsOperations(amount=");
        stringBuilder.append(this.amount);
        stringBuilder.append(", percentage=");
        stringBuilder.append(this.percentage);
        stringBuilder.append(", operations=");
        stringBuilder.append(this.operations);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public AnalyticsOperations(Long l, Integer num, List<Operation> list) {
        this.amount = l;
        this.percentage = num;
        this.operations = list;
    }

    public final Long getAmount() {
        return this.amount;
    }

    public final void setAmount(Long l) {
        this.amount = l;
    }

    public final Integer getPercentage() {
        return this.percentage;
    }

    public final void setPercentage(Integer num) {
        this.percentage = num;
    }

    public final List<Operation> getOperations() {
        return this.operations;
    }

    public final void setOperations(List<Operation> list) {
        this.operations = list;
    }

    public AnalyticsOperations(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this((Long) parcel.readValue(Long.TYPE.getClassLoader()), (Integer) parcel.readValue(Integer.TYPE.getClassLoader()), parcel.createTypedArrayList(Operation.CREATOR));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeValue(this.amount);
        }
        if (parcel != null) {
            parcel.writeValue(this.percentage);
        }
        if (parcel != null) {
            parcel.writeTypedList(this.operations);
        }
    }
}
