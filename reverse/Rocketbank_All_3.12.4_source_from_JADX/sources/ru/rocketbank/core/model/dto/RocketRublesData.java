package ru.rocketbank.core.model.dto;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.dto.operations.Operation;

/* compiled from: RocketRublesData.kt */
public final class RocketRublesData {
    private float balance;
    private List<Operation> history;
    private List<Float> months;
    private List<Operation> operations;
    private float total;

    public RocketRublesData() {
        this(null, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, null, 31, null);
    }

    public static /* bridge */ /* synthetic */ RocketRublesData copy$default(RocketRublesData rocketRublesData, List list, List list2, float f, float f2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            list = rocketRublesData.history;
        }
        if ((i & 2) != 0) {
            list2 = rocketRublesData.operations;
        }
        List list4 = list2;
        if ((i & 4) != 0) {
            f = rocketRublesData.total;
        }
        float f3 = f;
        if ((i & 8) != 0) {
            f2 = rocketRublesData.balance;
        }
        float f4 = f2;
        if ((i & 16) != 0) {
            list3 = rocketRublesData.months;
        }
        return rocketRublesData.copy(list, list4, f3, f4, list3);
    }

    public final List<Operation> component1() {
        return this.history;
    }

    public final List<Operation> component2() {
        return this.operations;
    }

    public final float component3() {
        return this.total;
    }

    public final float component4() {
        return this.balance;
    }

    public final List<Float> component5() {
        return this.months;
    }

    public final RocketRublesData copy(List<Operation> list, List<Operation> list2, float f, float f2, List<Float> list3) {
        return new RocketRublesData(list, list2, f, f2, list3);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RocketRublesData) {
                RocketRublesData rocketRublesData = (RocketRublesData) obj;
                if (Intrinsics.areEqual(this.history, rocketRublesData.history) && Intrinsics.areEqual(this.operations, rocketRublesData.operations) && Float.compare(this.total, rocketRublesData.total) == 0 && Float.compare(this.balance, rocketRublesData.balance) == 0 && Intrinsics.areEqual(this.months, rocketRublesData.months)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        List list = this.history;
        int i = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        List list2 = this.operations;
        hashCode = (((((hashCode + (list2 != null ? list2.hashCode() : 0)) * 31) + Float.floatToIntBits(this.total)) * 31) + Float.floatToIntBits(this.balance)) * 31;
        list2 = this.months;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("RocketRublesData(history=");
        stringBuilder.append(this.history);
        stringBuilder.append(", operations=");
        stringBuilder.append(this.operations);
        stringBuilder.append(", total=");
        stringBuilder.append(this.total);
        stringBuilder.append(", balance=");
        stringBuilder.append(this.balance);
        stringBuilder.append(", months=");
        stringBuilder.append(this.months);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public RocketRublesData(List<Operation> list, List<Operation> list2, float f, float f2, List<Float> list3) {
        this.history = list;
        this.operations = list2;
        this.total = f;
        this.balance = f2;
        this.months = list3;
    }

    public final List<Operation> getHistory() {
        return this.history;
    }

    public final void setHistory(List<Operation> list) {
        this.history = list;
    }

    public final List<Operation> getOperations() {
        return this.operations;
    }

    public final void setOperations(List<Operation> list) {
        this.operations = list;
    }

    public final float getTotal() {
        return this.total;
    }

    public final void setTotal(float f) {
        this.total = f;
    }

    public final float getBalance() {
        return this.balance;
    }

    public final void setBalance(float f) {
        this.balance = f;
    }

    public /* synthetic */ RocketRublesData(List list, List list2, float f, float f2, List list3, int i, Ref ref) {
        this((i & 1) != null ? null : list, (i & 2) != null ? null : list2, (i & 4) != null ? null : f, (i & 8) != null ? null : f2, (i & 16) != null ? 0 : list3);
    }

    public final List<Float> getMonths() {
        return this.months;
    }

    public final void setMonths(List<Float> list) {
        this.months = list;
    }
}
