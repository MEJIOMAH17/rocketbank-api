package ru.rocketbank.core.network.model.tariffs;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TariffsResp.kt */
public final class TariffsResp {
    private final ArrayList<Tariff> tariffs;

    public static /* bridge */ /* synthetic */ TariffsResp copy$default(TariffsResp tariffsResp, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = tariffsResp.tariffs;
        }
        return tariffsResp.copy(arrayList);
    }

    public final ArrayList<Tariff> component1() {
        return this.tariffs;
    }

    public final TariffsResp copy(ArrayList<Tariff> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "tariffs");
        return new TariffsResp(arrayList);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TariffsResp) {
                if (Intrinsics.areEqual(this.tariffs, ((TariffsResp) obj).tariffs)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        ArrayList arrayList = this.tariffs;
        return arrayList != null ? arrayList.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("TariffsResp(tariffs=");
        stringBuilder.append(this.tariffs);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public TariffsResp(ArrayList<Tariff> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "tariffs");
        this.tariffs = arrayList;
    }

    public final ArrayList<Tariff> getTariffs() {
        return this.tariffs;
    }
}
