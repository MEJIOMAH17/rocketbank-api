package ru.rocketbank.core.network.model.delivery;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StepData.kt */
public final class StepData {
    private final ArrayList<Interval> intervals;
    private final String nearestFreeDate;
    private final String startDate;

    public static /* bridge */ /* synthetic */ StepData copy$default(StepData stepData, String str, String str2, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stepData.startDate;
        }
        if ((i & 2) != 0) {
            str2 = stepData.nearestFreeDate;
        }
        if ((i & 4) != 0) {
            arrayList = stepData.intervals;
        }
        return stepData.copy(str, str2, arrayList);
    }

    public final String component1() {
        return this.startDate;
    }

    public final String component2() {
        return this.nearestFreeDate;
    }

    public final ArrayList<Interval> component3() {
        return this.intervals;
    }

    public final StepData copy(String str, String str2, ArrayList<Interval> arrayList) {
        Intrinsics.checkParameterIsNotNull(str, "startDate");
        Intrinsics.checkParameterIsNotNull(str2, "nearestFreeDate");
        Intrinsics.checkParameterIsNotNull(arrayList, "intervals");
        return new StepData(str, str2, arrayList);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof StepData) {
                StepData stepData = (StepData) obj;
                if (Intrinsics.areEqual(this.startDate, stepData.startDate) && Intrinsics.areEqual(this.nearestFreeDate, stepData.nearestFreeDate) && Intrinsics.areEqual(this.intervals, stepData.intervals)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.startDate;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.nearestFreeDate;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        ArrayList arrayList = this.intervals;
        if (arrayList != null) {
            i = arrayList.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("StepData(startDate=");
        stringBuilder.append(this.startDate);
        stringBuilder.append(", nearestFreeDate=");
        stringBuilder.append(this.nearestFreeDate);
        stringBuilder.append(", intervals=");
        stringBuilder.append(this.intervals);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public StepData(String str, String str2, ArrayList<Interval> arrayList) {
        Intrinsics.checkParameterIsNotNull(str, "startDate");
        Intrinsics.checkParameterIsNotNull(str2, "nearestFreeDate");
        Intrinsics.checkParameterIsNotNull(arrayList, "intervals");
        this.startDate = str;
        this.nearestFreeDate = str2;
        this.intervals = arrayList;
    }

    public final String getStartDate() {
        return this.startDate;
    }

    public final String getNearestFreeDate() {
        return this.nearestFreeDate;
    }

    public final ArrayList<Interval> getIntervals() {
        return this.intervals;
    }
}
