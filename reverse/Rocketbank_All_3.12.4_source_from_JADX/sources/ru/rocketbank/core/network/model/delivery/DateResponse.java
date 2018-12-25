package ru.rocketbank.core.network.model.delivery;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: DateResponse.kt */
public final class DateResponse {
    private final String step;
    private final StepData stepData;

    public static /* bridge */ /* synthetic */ DateResponse copy$default(DateResponse dateResponse, String str, StepData stepData, int i, Object obj) {
        if ((i & 1) != 0) {
            str = dateResponse.step;
        }
        if ((i & 2) != 0) {
            stepData = dateResponse.stepData;
        }
        return dateResponse.copy(str, stepData);
    }

    public final String component1() {
        return this.step;
    }

    public final StepData component2() {
        return this.stepData;
    }

    public final DateResponse copy(String str, StepData stepData) {
        Intrinsics.checkParameterIsNotNull(str, "step");
        Intrinsics.checkParameterIsNotNull(stepData, "stepData");
        return new DateResponse(str, stepData);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DateResponse) {
                DateResponse dateResponse = (DateResponse) obj;
                if (Intrinsics.areEqual(this.step, dateResponse.step) && Intrinsics.areEqual(this.stepData, dateResponse.stepData)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.step;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        StepData stepData = this.stepData;
        if (stepData != null) {
            i = stepData.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("DateResponse(step=");
        stringBuilder.append(this.step);
        stringBuilder.append(", stepData=");
        stringBuilder.append(this.stepData);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public DateResponse(String str, StepData stepData) {
        Intrinsics.checkParameterIsNotNull(str, "step");
        Intrinsics.checkParameterIsNotNull(stepData, "stepData");
        this.step = str;
        this.stepData = stepData;
    }

    public final String getStep() {
        return this.step;
    }

    public final StepData getStepData() {
        return this.stepData;
    }
}
