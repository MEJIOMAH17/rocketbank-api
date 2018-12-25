package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.enums.Currency;

public final class RefillCardResponse implements Parcelable {
    public static final Creator<RefillCardResponse> CREATOR = new C08311();
    private String currency;
    private RefillModel from;
    @SerializedName("formatted_rate")
    private String rate;
    private String status;
    private String text;
    private RefillModel to;

    /* renamed from: ru.rocketbank.core.network.model.RefillCardResponse$1 */
    static class C08311 implements Creator<RefillCardResponse> {
        C08311() {
        }

        public final RefillCardResponse createFromParcel(Parcel parcel) {
            return new RefillCardResponse(parcel);
        }

        public final RefillCardResponse[] newArray(int i) {
            return new RefillCardResponse[i];
        }
    }

    public class RefillModel {
        private float amount;
        private String currency;

        public float getAmount() {
            return this.amount;
        }

        public Currency getCurrency() {
            return Currency.fromString(this.currency);
        }

        public String getCurrencyCode() {
            return this.currency;
        }
    }

    public final int describeContents() {
        return 0;
    }

    protected RefillCardResponse(Parcel parcel) {
        this.currency = parcel.readString();
        this.rate = parcel.readString();
        this.status = parcel.readString();
        this.text = parcel.readString();
    }

    public final RefillModel getFrom() {
        return this.from;
    }

    public final RefillModel getTo() {
        return this.to;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getRate() {
        return this.rate.replace("ђ", "₽");
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getText() {
        return this.text;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.currency);
        parcel.writeString(this.rate);
        parcel.writeString(this.status);
        parcel.writeString(this.text);
    }
}
