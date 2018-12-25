package ru.rocketbank.core.model.provider;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ProviderField implements Parcelable, Serializable {
    public static final Creator<ProviderField> CREATOR = new C08261();
    public static final String DATE = "date";
    public static final String DATETIME = "datetime";
    public static final String NUMBERS = "numbers";
    public static final String NUMBERSDOT = "numbersdot";
    public static final String PAYMENTDATE = "paymentdate";
    public static final String PHONE = "phone";
    public static final String SHORTDATE = "shortdate";
    public static final String TEXT = "text";
    public static final String TIME = "time";
    public static final String VALUE = "value";
    private String date_format;
    private String detail;
    private String field_kind;
    private String keyboard_kind;
    private String label;
    private boolean mandatory;
    private String name;
    private String pattern;
    private String placeholder;
    private String regexp;

    /* renamed from: ru.rocketbank.core.model.provider.ProviderField$1 */
    static class C08261 implements Creator<ProviderField> {
        C08261() {
        }

        public final ProviderField createFromParcel(Parcel parcel) {
            return new ProviderField(parcel);
        }

        public final ProviderField[] newArray(int i) {
            return new ProviderField[i];
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

    public String getRegexp() {
        return this.regexp;
    }

    public void setRegexp(String str) {
        this.regexp = str;
    }

    public boolean isMandatory() {
        return this.mandatory;
    }

    public void setMandatory(boolean z) {
        this.mandatory = z;
    }

    public String getDate_format() {
        return this.date_format;
    }

    public void setDate_format(String str) {
        this.date_format = str;
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public String getKeyboard_kind() {
        return this.keyboard_kind;
    }

    public void setKeyboard_kind(String str) {
        this.keyboard_kind = str;
    }

    public String getField_kind() {
        return this.field_kind;
    }

    public void setField_kind(String str) {
        this.field_kind = str;
    }

    public String getPattern() {
        return this.pattern;
    }

    public void setPattern(String str) {
        this.pattern = str;
    }

    public String getDetail() {
        return this.detail;
    }

    public void setDetail(String str) {
        this.detail = str;
    }

    public String getPlaceholder() {
        return this.placeholder;
    }

    public void setPlaceholder(String str) {
        this.placeholder = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.regexp);
        parcel.writeByte(this.mandatory);
        parcel.writeString(this.date_format);
        parcel.writeString(this.label);
        parcel.writeString(this.keyboard_kind);
        parcel.writeString(this.field_kind);
        parcel.writeString(this.pattern);
        parcel.writeString(this.detail);
        parcel.writeString(this.placeholder);
    }

    protected ProviderField(Parcel parcel) {
        this.name = parcel.readString();
        this.regexp = parcel.readString();
        this.mandatory = parcel.readByte() != (byte) 0;
        this.date_format = parcel.readString();
        this.label = parcel.readString();
        this.keyboard_kind = parcel.readString();
        this.field_kind = parcel.readString();
        this.pattern = parcel.readString();
        this.detail = parcel.readString();
        this.placeholder = parcel.readString();
    }
}
