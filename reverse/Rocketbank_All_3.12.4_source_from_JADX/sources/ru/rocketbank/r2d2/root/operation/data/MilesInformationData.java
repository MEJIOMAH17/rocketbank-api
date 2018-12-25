package ru.rocketbank.r2d2.root.operation.data;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: MilesInformationData.kt */
public final class MilesInformationData {
    private double amount;
    private double miles;
    private String milesCurrency;

    public static /* bridge */ /* synthetic */ MilesInformationData copy$default(MilesInformationData milesInformationData, double d, String str, double d2, int i, Object obj) {
        if ((i & 1) != 0) {
            d = milesInformationData.miles;
        }
        double d3 = d;
        if ((i & 2) != 0) {
            str = milesInformationData.milesCurrency;
        }
        String str2 = str;
        if ((i & 4) != 0) {
            d2 = milesInformationData.amount;
        }
        return milesInformationData.copy(d3, str2, d2);
    }

    public final double component1() {
        return this.miles;
    }

    public final String component2() {
        return this.milesCurrency;
    }

    public final double component3() {
        return this.amount;
    }

    public final MilesInformationData copy(double d, String str, double d2) {
        Intrinsics.checkParameterIsNotNull(str, "milesCurrency");
        return new MilesInformationData(d, str, d2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MilesInformationData) {
                MilesInformationData milesInformationData = (MilesInformationData) obj;
                if (Double.compare(this.miles, milesInformationData.miles) == 0 && Intrinsics.areEqual(this.milesCurrency, milesInformationData.milesCurrency) && Double.compare(this.amount, milesInformationData.amount) == 0) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.miles);
        int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31;
        String str = this.milesCurrency;
        i = (i + (str != null ? str.hashCode() : 0)) * 31;
        long doubleToLongBits2 = Double.doubleToLongBits(this.amount);
        return i + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("MilesInformationData(miles=");
        stringBuilder.append(this.miles);
        stringBuilder.append(", milesCurrency=");
        stringBuilder.append(this.milesCurrency);
        stringBuilder.append(", amount=");
        stringBuilder.append(this.amount);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public MilesInformationData(double d, String str, double d2) {
        Intrinsics.checkParameterIsNotNull(str, "milesCurrency");
        this.miles = d;
        this.milesCurrency = str;
        this.amount = d2;
    }

    public final double getMiles() {
        return this.miles;
    }

    public final void setMiles(double d) {
        this.miles = d;
    }

    public final String getMilesCurrency() {
        return this.milesCurrency;
    }

    public final void setMilesCurrency(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.milesCurrency = str;
    }

    public final double getAmount() {
        return this.amount;
    }

    public final void setAmount(double d) {
        this.amount = d;
    }
}
