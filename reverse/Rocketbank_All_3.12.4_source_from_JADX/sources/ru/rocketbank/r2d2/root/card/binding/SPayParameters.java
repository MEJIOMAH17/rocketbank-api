package ru.rocketbank.r2d2.root.card.binding;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: DetailCardViewInputModel.kt */
public final class SPayParameters {
    private final Function0<Unit> clickFun;
    private final boolean showSpButton;
    private final int textRes;

    public static /* bridge */ /* synthetic */ SPayParameters copy$default(SPayParameters sPayParameters, boolean z, Function0 function0, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = sPayParameters.showSpButton;
        }
        if ((i2 & 2) != 0) {
            function0 = sPayParameters.clickFun;
        }
        if ((i2 & 4) != 0) {
            i = sPayParameters.textRes;
        }
        return sPayParameters.copy(z, function0, i);
    }

    public final boolean component1() {
        return this.showSpButton;
    }

    public final Function0<Unit> component2() {
        return this.clickFun;
    }

    public final int component3() {
        return this.textRes;
    }

    public final SPayParameters copy(boolean z, Function0<Unit> function0, int i) {
        return new SPayParameters(z, function0, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SPayParameters) {
            SPayParameters sPayParameters = (SPayParameters) obj;
            if ((this.showSpButton == sPayParameters.showSpButton) && Intrinsics.areEqual(this.clickFun, sPayParameters.clickFun)) {
                if (this.textRes == sPayParameters.textRes) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.showSpButton;
        if (i != 0) {
            i = 1;
        }
        i *= 31;
        Function0 function0 = this.clickFun;
        return ((i + (function0 != null ? function0.hashCode() : 0)) * 31) + this.textRes;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("SPayParameters(showSpButton=");
        stringBuilder.append(this.showSpButton);
        stringBuilder.append(", clickFun=");
        stringBuilder.append(this.clickFun);
        stringBuilder.append(", textRes=");
        stringBuilder.append(this.textRes);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public SPayParameters(boolean z, Function0<Unit> function0, int i) {
        this.showSpButton = z;
        this.clickFun = function0;
        this.textRes = i;
    }

    public final boolean getShowSpButton() {
        return this.showSpButton;
    }

    public final Function0<Unit> getClickFun() {
        return this.clickFun;
    }

    public /* synthetic */ SPayParameters(boolean z, Function0 function0, int i, int i2, Ref ref) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        this(z, function0, i);
    }

    public final int getTextRes() {
        return this.textRes;
    }
}
