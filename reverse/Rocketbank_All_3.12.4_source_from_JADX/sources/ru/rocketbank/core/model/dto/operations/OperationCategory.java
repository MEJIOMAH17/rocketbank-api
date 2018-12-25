package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import ru.rocketbank.core.model.MoneyData;

public class OperationCategory implements Parcelable, Serializable {
    public static final Creator<OperationCategory> CREATOR = new C08161();
    @SerializedName("display_name")
    private String displayName;
    @SerializedName("full_name")
    private String fullName;
    private String icon;
    private long id;
    private String name;
    private MoneyData spent;
    @SerializedName("sub_icon")
    private String subIcon;

    /* renamed from: ru.rocketbank.core.model.dto.operations.OperationCategory$1 */
    static class C08161 implements Creator<OperationCategory> {
        C08161() {
        }

        public final OperationCategory createFromParcel(Parcel parcel) {
            return new OperationCategory(parcel);
        }

        public final OperationCategory[] newArray(int i) {
            return new OperationCategory[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected OperationCategory(Parcel parcel) {
        this.id = parcel.readLong();
        this.fullName = parcel.readString();
        this.icon = parcel.readString();
        this.subIcon = parcel.readString();
        this.displayName = parcel.readString();
        this.name = parcel.readString();
        this.spent = (MoneyData) parcel.readParcelable(MoneyData.class.getClassLoader());
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.id);
        parcel.writeString(this.fullName);
        parcel.writeString(this.icon);
        parcel.writeString(this.subIcon);
        parcel.writeString(this.displayName);
        parcel.writeString(this.name);
        parcel.writeParcelable(this.spent, i);
    }

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public String getFullName() {
        return this.fullName;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public String getSubIcon() {
        return this.subIcon;
    }

    public void setSubIcon(String str) {
        this.subIcon = str;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public MoneyData getSpent() {
        return this.spent;
    }

    public void setSpent(MoneyData moneyData) {
        this.spent = moneyData;
    }
}
