package ru.rocketbank.r2d2.root.card.binding;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DetailCardViewInputModel.kt */
public final class AndroidPayParameters {
    private final Function0<Unit> clickFun;
    private final int itemTextRes;
    private final boolean showIt;

    public static /* bridge */ /* synthetic */ AndroidPayParameters copy$default(AndroidPayParameters androidPayParameters, int i, boolean z, Function0 function0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = androidPayParameters.itemTextRes;
        }
        if ((i2 & 2) != 0) {
            z = androidPayParameters.showIt;
        }
        if ((i2 & 4) != 0) {
            function0 = androidPayParameters.clickFun;
        }
        return androidPayParameters.copy(i, z, function0);
    }

    public final int component1() {
        return this.itemTextRes;
    }

    public final boolean component2() {
        return this.showIt;
    }

    public final Function0<Unit> component3() {
        return this.clickFun;
    }

    public final AndroidPayParameters copy(int i, boolean z, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "clickFun");
        return new AndroidPayParameters(i, z, function0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AndroidPayParameters) {
            AndroidPayParameters androidPayParameters = (AndroidPayParameters) obj;
            if (this.itemTextRes == androidPayParameters.itemTextRes) {
                return (this.showIt == androidPayParameters.showIt) && Intrinsics.areEqual(this.clickFun, androidPayParameters.clickFun);
            }
        }
    }

    public final int hashCode() {
        int i = this.itemTextRes * 31;
        int i2 = this.showIt;
        if (i2 != 0) {
            i2 = 1;
        }
        i = (i + i2) * 31;
        Function0 function0 = this.clickFun;
        return i + (function0 != null ? function0.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("AndroidPayParameters(itemTextRes=");
        stringBuilder.append(this.itemTextRes);
        stringBuilder.append(", showIt=");
        stringBuilder.append(this.showIt);
        stringBuilder.append(", clickFun=");
        stringBuilder.append(this.clickFun);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public AndroidPayParameters(int i, boolean z, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, "clickFun");
        this.itemTextRes = i;
        this.showIt = z;
        this.clickFun = function0;
    }

    public final int getItemTextRes() {
        return this.itemTextRes;
    }

    public final boolean getShowIt() {
        return this.showIt;
    }

    public final Function0<Unit> getClickFun() {
        return this.clickFun;
    }
}
