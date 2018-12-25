package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.Payments;

/* compiled from: SendMoneyBody.kt */
public final class SendMoneyBody implements Parcelable {
    public static final Creator<SendMoneyBody> CREATOR = new SendMoneyBody$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private double amount;
    @SerializedName("app_uniq_timestamp_hash")
    private String hash = Payments.INSTANCE.newHash();
    @SerializedName("linked_card_id")
    private String linkedCardId;
    @SerializedName("source_card")
    private String sourceCard;

    /* compiled from: SendMoneyBody.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final double getAmount() {
        return this.amount;
    }

    public final void setAmount(double d) {
        this.amount = d;
    }

    public final String getSourceCard() {
        return this.sourceCard;
    }

    public final void setSourceCard(String str) {
        this.sourceCard = str;
    }

    public final String getLinkedCardId() {
        return this.linkedCardId;
    }

    public final void setLinkedCardId(String str) {
        this.linkedCardId = str;
    }

    public SendMoneyBody(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.amount = parcel.readDouble();
        this.sourceCard = parcel.readString();
        this.linkedCardId = parcel.readString();
        this.hash = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeDouble(this.amount);
        parcel.writeString(this.sourceCard);
        parcel.writeString(this.linkedCardId);
        parcel.writeString(this.hash);
    }
}
