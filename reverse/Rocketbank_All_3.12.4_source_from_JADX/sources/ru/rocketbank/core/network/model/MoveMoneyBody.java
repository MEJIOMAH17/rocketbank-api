package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.utils.Payments;

/* compiled from: MoveMoneyBody.kt */
public final class MoveMoneyBody implements Parcelable {
    public static final Creator<MoveMoneyBody> CREATOR = new MoveMoneyBody$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private double amount;
    private String currency;
    private String from;
    @SerializedName("app_uniq_timestamp_hash")
    private String hash;
    private String to;

    /* compiled from: MoveMoneyBody.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ MoveMoneyBody copy$default(MoveMoneyBody moveMoneyBody, double d, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            d = moveMoneyBody.amount;
        }
        double d2 = d;
        if ((i & 2) != 0) {
            str = moveMoneyBody.currency;
        }
        String str4 = str;
        if ((i & 4) != 0) {
            str2 = moveMoneyBody.from;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            str3 = moveMoneyBody.to;
        }
        return moveMoneyBody.copy(d2, str4, str5, str3);
    }

    public final double component1() {
        return this.amount;
    }

    public final String component2() {
        return this.currency;
    }

    public final String component3() {
        return this.from;
    }

    public final String component4() {
        return this.to;
    }

    public final MoveMoneyBody copy(double d, String str, String str2, String str3) {
        return new MoveMoneyBody(d, str, str2, str3);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MoveMoneyBody) {
                MoveMoneyBody moveMoneyBody = (MoveMoneyBody) obj;
                if (Double.compare(this.amount, moveMoneyBody.amount) == 0 && Intrinsics.areEqual(this.currency, moveMoneyBody.currency) && Intrinsics.areEqual(this.from, moveMoneyBody.from) && Intrinsics.areEqual(this.to, moveMoneyBody.to)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.amount);
        int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31;
        String str = this.currency;
        int i2 = 0;
        i = (i + (str != null ? str.hashCode() : 0)) * 31;
        str = this.from;
        i = (i + (str != null ? str.hashCode() : 0)) * 31;
        str = this.to;
        if (str != null) {
            i2 = str.hashCode();
        }
        return i + i2;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("MoveMoneyBody(amount=");
        stringBuilder.append(this.amount);
        stringBuilder.append(", currency=");
        stringBuilder.append(this.currency);
        stringBuilder.append(", from=");
        stringBuilder.append(this.from);
        stringBuilder.append(", to=");
        stringBuilder.append(this.to);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public MoveMoneyBody(double d, String str, String str2, String str3) {
        this.amount = d;
        this.currency = str;
        this.from = str2;
        this.to = str3;
        this.hash = Payments.INSTANCE.newHash();
    }

    public /* synthetic */ MoveMoneyBody(double d, String str, String str2, String str3, int i, Ref ref) {
        if ((i & 1) != 0) {
            d = 0.0d;
        }
        this(d, str, str2, str3);
    }

    public final double getAmount() {
        return this.amount;
    }

    public final void setAmount(double d) {
        this.amount = d;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final void setCurrency(String str) {
        this.currency = str;
    }

    public final String getFrom() {
        return this.from;
    }

    public final void setFrom(String str) {
        this.from = str;
    }

    public final String getTo() {
        return this.to;
    }

    public final void setTo(String str) {
        this.to = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeDouble(this.amount);
        parcel.writeString(this.currency);
        parcel.writeString(this.from);
        parcel.writeString(this.to);
        parcel.writeString(this.hash);
    }

    public MoveMoneyBody(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        this(parcel.readDouble(), parcel.readString(), parcel.readString(), parcel.readString());
        this.hash = parcel.readString();
    }
}
