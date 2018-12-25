package ru.rocketbank.core.network.model.delivery;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IntervalResponse.kt */
public final class IntervalResponse {
    private final ArrayList<Interval> intervals;

    public static /* bridge */ /* synthetic */ IntervalResponse copy$default(IntervalResponse intervalResponse, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = intervalResponse.intervals;
        }
        return intervalResponse.copy(arrayList);
    }

    public final ArrayList<Interval> component1() {
        return this.intervals;
    }

    public final IntervalResponse copy(ArrayList<Interval> arrayList) {
        return new IntervalResponse(arrayList);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof IntervalResponse) {
                if (Intrinsics.areEqual(this.intervals, ((IntervalResponse) obj).intervals)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        ArrayList arrayList = this.intervals;
        return arrayList != null ? arrayList.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("IntervalResponse(intervals=");
        stringBuilder.append(this.intervals);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public IntervalResponse(ArrayList<Interval> arrayList) {
        this.intervals = arrayList;
    }

    public final ArrayList<Interval> getIntervals() {
        return this.intervals;
    }
}
