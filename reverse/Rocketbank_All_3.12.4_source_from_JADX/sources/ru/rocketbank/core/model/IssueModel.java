package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.dto.ChangePin;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.enums.StatusIssue;

public final class IssueModel implements Parcelable {
    public static final Creator<IssueModel> CREATOR = new C07911();
    @SerializedName("currency")
    private String currency;
    @SerializedName("delivery_scheduled")
    private DeliveryScheduledModel deliveryScheduled;
    @SerializedName("pin")
    private ChangePin pin;
    @SerializedName("status")
    private String status;
    @SerializedName("title")
    private String title;

    /* renamed from: ru.rocketbank.core.model.IssueModel$1 */
    static class C07911 implements Creator<IssueModel> {
        C07911() {
        }

        public final IssueModel createFromParcel(Parcel parcel) {
            return new IssueModel(parcel);
        }

        public final IssueModel[] newArray(int i) {
            return new IssueModel[i];
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final Currency getCurrency() {
        return Currency.fromString(this.currency);
    }

    public final DeliveryScheduledModel getDeliveryScheduled() {
        return this.deliveryScheduled;
    }

    public final StatusIssue getStatus() {
        return StatusIssue.fromString(this.status);
    }

    public final ChangePin getPin() {
        return this.pin;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.deliveryScheduled, 0);
        parcel.writeString(this.currency);
        parcel.writeString(this.status);
        parcel.writeString(this.title);
        parcel.writeParcelable(this.pin, 0);
    }

    protected IssueModel(Parcel parcel) {
        this.deliveryScheduled = (DeliveryScheduledModel) parcel.readParcelable(DeliveryScheduledModel.class.getClassLoader());
        this.currency = parcel.readString();
        this.status = parcel.readString();
        this.title = parcel.readString();
        this.pin = (ChangePin) parcel.readParcelable(ChangePin.class.getClassLoader());
    }
}
