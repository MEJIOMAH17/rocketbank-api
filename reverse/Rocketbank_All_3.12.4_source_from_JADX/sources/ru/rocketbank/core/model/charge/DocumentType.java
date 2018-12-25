package ru.rocketbank.core.model.charge;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChargeModel.kt */
public enum DocumentType {
    ;
    
    private final ChargeType chargeType;
    private final int textStringRes;

    protected DocumentType(int i, ChargeType chargeType) {
        Intrinsics.checkParameterIsNotNull(chargeType, "chargeType");
        this.textStringRes = i;
        this.chargeType = chargeType;
    }

    public final ChargeType getChargeType() {
        return this.chargeType;
    }

    public final int getTextStringRes() {
        return this.textStringRes;
    }
}
