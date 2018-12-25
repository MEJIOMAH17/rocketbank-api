package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import ru.rocketbank.core.model.AbstractOperation;

public class MonthCashBack extends AbstractOperation implements Parcelable {
    public static final Creator<MonthCashBack> CREATOR = new C08121();
    private int count;
    @SerializedName("merchants")
    private List<MonthlyMerchant> monthlyMerchants;
    private String title;

    /* renamed from: ru.rocketbank.core.model.dto.operations.MonthCashBack$1 */
    static class C08121 implements Creator<MonthCashBack> {
        C08121() {
        }

        public final MonthCashBack createFromParcel(Parcel parcel) {
            return new MonthCashBack(parcel);
        }

        public final MonthCashBack[] newArray(int i) {
            return new MonthCashBack[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected MonthCashBack(Parcel parcel) {
        super(parcel);
        this.count = parcel.readInt();
        this.monthlyMerchants = parcel.createTypedArrayList(MonthlyMerchant.CREATOR);
        this.title = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.count);
        parcel.writeTypedList(this.monthlyMerchants);
        parcel.writeString(this.title);
    }

    public int getCount() {
        return this.count;
    }

    public List<MonthlyMerchant> getMonthlyMerchants() {
        return this.monthlyMerchants;
    }

    public String getTitle() {
        return this.title;
    }
}
