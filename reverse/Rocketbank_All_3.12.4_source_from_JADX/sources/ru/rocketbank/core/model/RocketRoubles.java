package ru.rocketbank.core.model;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.RocketRublesData;

/* compiled from: RocketRoubles.kt */
public final class RocketRoubles {
    private RocketRublesData rocketrubles;

    public static /* bridge */ /* synthetic */ RocketRoubles copy$default(RocketRoubles rocketRoubles, RocketRublesData rocketRublesData, int i, Object obj) {
        if ((i & 1) != 0) {
            rocketRublesData = rocketRoubles.rocketrubles;
        }
        return rocketRoubles.copy(rocketRublesData);
    }

    public final RocketRublesData component1() {
        return this.rocketrubles;
    }

    public final RocketRoubles copy(RocketRublesData rocketRublesData) {
        return new RocketRoubles(rocketRublesData);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RocketRoubles) {
                if (Intrinsics.areEqual(this.rocketrubles, ((RocketRoubles) obj).rocketrubles)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        RocketRublesData rocketRublesData = this.rocketrubles;
        return rocketRublesData != null ? rocketRublesData.hashCode() : 0;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("RocketRoubles(rocketrubles=");
        stringBuilder.append(this.rocketrubles);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public RocketRoubles(RocketRublesData rocketRublesData) {
        this.rocketrubles = rocketRublesData;
    }

    public final RocketRublesData getRocketrubles() {
        return this.rocketrubles;
    }

    public final void setRocketrubles(RocketRublesData rocketRublesData) {
        this.rocketrubles = rocketRublesData;
    }
}
