package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.AbstractOperation;

public class MonthCashBackOperation extends AbstractOperation implements Parcelable {
    public static final Creator<MonthCashBackOperation> CREATOR = new C08291();
    private String color;
    @SerializedName("discount_id")
    private long discountId;
    @SerializedName("happened_at")
    private long happenedAt;
    private String image;

    /* renamed from: ru.rocketbank.core.network.model.MonthCashBackOperation$1 */
    static class C08291 implements Creator<MonthCashBackOperation> {
        C08291() {
        }

        public final MonthCashBackOperation createFromParcel(Parcel parcel) {
            return new MonthCashBackOperation(parcel);
        }

        public final MonthCashBackOperation[] newArray(int i) {
            return new MonthCashBackOperation[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected MonthCashBackOperation(Parcel parcel) {
        super(parcel);
        this.color = parcel.readString();
        this.discountId = parcel.readLong();
        this.happenedAt = parcel.readLong();
        this.image = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.color);
        parcel.writeLong(this.discountId);
        parcel.writeLong(this.happenedAt);
        parcel.writeString(this.image);
    }

    public String getColor() {
        return this.color;
    }

    public long getDiscountId() {
        return this.discountId;
    }

    public String getImage() {
        return this.image;
    }
}
