package ru.rocketbank.core.model.payments;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
import ru.rocketbank.core.model.provider.ProviderField;

public class Payment implements Parcelable, Serializable {
    public static final Creator<Payment> CREATOR = new C08241();
    private float amount;
    private List<ProviderField> fields;
    private int id;
    private String name;
    @SerializedName("provider_id")
    private int providerId;

    /* renamed from: ru.rocketbank.core.model.payments.Payment$1 */
    static class C08241 implements Creator<Payment> {
        C08241() {
        }

        public final Payment createFromParcel(Parcel parcel) {
            return new Payment(parcel);
        }

        public final Payment[] newArray(int i) {
            return new Payment[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected Payment(Parcel parcel) {
        this.amount = parcel.readFloat();
        this.id = parcel.readInt();
        this.providerId = parcel.readInt();
        this.fields = parcel.createTypedArrayList(ProviderField.CREATOR);
        this.name = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.amount);
        parcel.writeInt(this.id);
        parcel.writeInt(this.providerId);
        parcel.writeTypedList(this.fields);
        parcel.writeString(this.name);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Payment)) {
            Payment payment = (Payment) obj;
            if (payment.providerId == this.providerId && payment.fields.equals(this.fields) != null) {
                return true;
            }
        }
        return null;
    }

    public float getAmount() {
        return this.amount;
    }

    public int getId() {
        return this.id;
    }

    public int getProviderId() {
        return this.providerId;
    }

    public List<ProviderField> getFields() {
        return this.fields;
    }

    public String getName() {
        return this.name;
    }
}
