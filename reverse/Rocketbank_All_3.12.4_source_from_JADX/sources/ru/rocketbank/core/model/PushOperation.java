package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class PushOperation extends AbstractOperation implements Parcelable, Serializable {
    public static final Creator<PushOperation> CREATOR = new C07941();
    private String body;
    private String color;
    private String image;
    private String ref;
    private String title;

    /* renamed from: ru.rocketbank.core.model.PushOperation$1 */
    static class C07941 implements Creator<PushOperation> {
        C07941() {
        }

        public final PushOperation createFromParcel(Parcel parcel) {
            return new PushOperation(parcel);
        }

        public final PushOperation[] newArray(int i) {
            return new PushOperation[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    protected PushOperation(Parcel parcel) {
        super(parcel);
        this.body = parcel.readString();
        this.title = parcel.readString();
        this.ref = parcel.readString();
        this.color = parcel.readString();
        this.image = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.body);
        parcel.writeString(this.title);
        parcel.writeString(this.ref);
        parcel.writeString(this.color);
        parcel.writeString(this.image);
    }

    public String getBody() {
        return this.body;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getRef() {
        return this.ref;
    }

    public void setRef(String str) {
        this.ref = str;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public String getImage() {
        return this.image;
    }

    public void setImage(String str) {
        this.image = str;
    }
}
