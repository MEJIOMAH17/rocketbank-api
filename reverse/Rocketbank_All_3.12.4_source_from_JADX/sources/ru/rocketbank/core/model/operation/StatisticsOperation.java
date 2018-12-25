package ru.rocketbank.core.model.operation;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AbstractOperation;

/* compiled from: StatisticsOperation.kt */
public final class StatisticsOperation extends AbstractOperation implements Parcelable {
    public static final Creator<StatisticsOperation> CREATOR = new StatisticsOperation$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private List<Float> months;
    private Float total;
    private int type;

    /* compiled from: StatisticsOperation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final List<Float> getMonths() {
        return this.months;
    }

    public final void setMonths(List<Float> list) {
        this.months = list;
    }

    public final Float getTotal() {
        return this.total;
    }

    public final void setTotal(Float f) {
        this.total = f;
    }

    public StatisticsOperation(int i, int i2, List<Float> list, Float f) {
        Intrinsics.checkParameterIsNotNull(list, "months");
        this.type = i;
        this.months = list;
        this.total = f;
        setId(i2);
    }

    protected StatisticsOperation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        super(parcel);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
