package ru.rocketbank.core.model.dto.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsOperationsResponseData.kt */
public final class AnalyticsTagOperation implements Parcelable {
    public static final Creator<AnalyticsTagOperation> CREATOR = new AnalyticsTagOperation$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private Double amount;
    private Integer count;
    private String name;
    private Integer percentage;

    /* compiled from: AnalyticsOperationsResponseData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ AnalyticsTagOperation copy$default(AnalyticsTagOperation analyticsTagOperation, Double d, Integer num, Integer num2, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            d = analyticsTagOperation.amount;
        }
        if ((i & 2) != 0) {
            num = analyticsTagOperation.count;
        }
        if ((i & 4) != 0) {
            num2 = analyticsTagOperation.percentage;
        }
        if ((i & 8) != 0) {
            str = analyticsTagOperation.name;
        }
        return analyticsTagOperation.copy(d, num, num2, str);
    }

    public final Double component1() {
        return this.amount;
    }

    public final Integer component2() {
        return this.count;
    }

    public final Integer component3() {
        return this.percentage;
    }

    public final String component4() {
        return this.name;
    }

    public final AnalyticsTagOperation copy(Double d, Integer num, Integer num2, String str) {
        return new AnalyticsTagOperation(d, num, num2, str);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AnalyticsTagOperation) {
                AnalyticsTagOperation analyticsTagOperation = (AnalyticsTagOperation) obj;
                if (Intrinsics.areEqual(this.amount, analyticsTagOperation.amount) && Intrinsics.areEqual(this.count, analyticsTagOperation.count) && Intrinsics.areEqual(this.percentage, analyticsTagOperation.percentage) && Intrinsics.areEqual(this.name, analyticsTagOperation.name)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Double d = this.amount;
        int i = 0;
        int hashCode = (d != null ? d.hashCode() : 0) * 31;
        Integer num = this.count;
        hashCode = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        num = this.percentage;
        hashCode = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str = this.name;
        if (str != null) {
            i = str.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("AnalyticsTagOperation(amount=");
        stringBuilder.append(this.amount);
        stringBuilder.append(", count=");
        stringBuilder.append(this.count);
        stringBuilder.append(", percentage=");
        stringBuilder.append(this.percentage);
        stringBuilder.append(", name=");
        stringBuilder.append(this.name);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public AnalyticsTagOperation(Double d, Integer num, Integer num2, String str) {
        this.amount = d;
        this.count = num;
        this.percentage = num2;
        this.name = str;
    }

    public final Double getAmount() {
        return this.amount;
    }

    public final void setAmount(Double d) {
        this.amount = d;
    }

    public final Integer getCount() {
        return this.count;
    }

    public final void setCount(Integer num) {
        this.count = num;
    }

    public final Integer getPercentage() {
        return this.percentage;
    }

    public final void setPercentage(Integer num) {
        this.percentage = num;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public AnalyticsTagOperation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this((Double) parcel.readValue(Double.TYPE.getClassLoader()), (Integer) parcel.readValue(Integer.TYPE.getClassLoader()), (Integer) parcel.readValue(Integer.TYPE.getClassLoader()), parcel.readString());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            parcel.writeValue(this.amount);
        }
        if (parcel != null) {
            parcel.writeValue(this.percentage);
        }
        if (parcel != null) {
            parcel.writeValue(this.count);
        }
        if (parcel != null) {
            parcel.writeString(this.name);
        }
    }
}
