package ru.rocketbank.core.model.provider;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class Provider implements Parcelable {
    public static final Creator<Provider> CREATOR = new C08251();
    private List<Integer> category_ids;
    private boolean commission;
    private List<ProviderField> fields;
    private String icon;
    private int id;
    private int max;
    private int min;
    private String name;
    private int position;

    /* renamed from: ru.rocketbank.core.model.provider.Provider$1 */
    static class C08251 implements Creator<Provider> {
        C08251() {
        }

        public final Provider createFromParcel(Parcel parcel) {
            return new Provider(parcel);
        }

        public final Provider[] newArray(int i) {
            return new Provider[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public int getMin() {
        return this.min;
    }

    public void setMin(int i) {
        this.min = i;
    }

    public int getMax() {
        return this.max;
    }

    public void setMax(int i) {
        this.max = i;
    }

    public boolean isCommission() {
        return this.commission;
    }

    public void setCommission(boolean z) {
        this.commission = z;
    }

    public int getPosition() {
        return this.position;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public List<Integer> getCategory_ids() {
        return this.category_ids;
    }

    public void setCategory_ids(List<Integer> list) {
        this.category_ids = list;
    }

    public List<ProviderField> getFields() {
        return this.fields;
    }

    public void setFields(List<ProviderField> list) {
        this.fields = list;
    }

    public boolean contains(String str) {
        return this.name.toLowerCase().contains(str.toLowerCase());
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Provider{name='");
        stringBuilder.append(this.name);
        stringBuilder.append('\'');
        stringBuilder.append(", id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", category_ids=");
        stringBuilder.append(this.category_ids);
        stringBuilder.append(", position=");
        stringBuilder.append(this.position);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeInt(this.id);
        parcel.writeString(this.icon);
        parcel.writeInt(this.min);
        parcel.writeInt(this.max);
        parcel.writeByte(this.commission);
        parcel.writeInt(this.position);
        parcel.writeList(this.category_ids);
        parcel.writeTypedList(this.fields);
    }

    protected Provider(Parcel parcel) {
        this.name = parcel.readString();
        this.id = parcel.readInt();
        this.icon = parcel.readString();
        this.min = parcel.readInt();
        this.max = parcel.readInt();
        this.commission = parcel.readByte() != (byte) 0;
        this.position = parcel.readInt();
        this.category_ids = new ArrayList();
        parcel.readList(this.category_ids, Integer.class.getClassLoader());
        this.fields = parcel.createTypedArrayList(ProviderField.CREATOR);
    }
}
