package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.EventHelper.IEvent;

/* compiled from: StatusResponseData.kt */
public final class SexyStatusResponse implements Parcelable, IEvent {
    public static final Creator<SexyStatusResponse> CREATOR = new SexyStatusResponse$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private DeliveryData delivery;
    @SerializedName("delivery_scheduled")
    private DeliveryScheduledData deliveryScheduled;
    private StatusResponseSubData go;
    private StatusResponseSubData password;
    @SerializedName("pusher_token")
    private String pusherToken = "";
    private String status;
    private String token = "";
    private UserModel user;

    /* compiled from: StatusResponseData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public SexyStatusResponse(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.status = parcel.readString();
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.pusherToken = readString;
        this.deliveryScheduled = (DeliveryScheduledData) parcel.readParcelable(DeliveryScheduledData.class.getClassLoader());
        this.go = (StatusResponseSubData) parcel.readParcelable(StatusResponseSubData.class.getClassLoader());
        this.password = (StatusResponseSubData) parcel.readParcelable(StatusResponseSubData.class.getClassLoader());
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "`in`.readString()");
        this.token = parcel;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final String getPusherToken() {
        return this.pusherToken;
    }

    public final void setPusherToken(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.pusherToken = str;
    }

    public final DeliveryScheduledData getDeliveryScheduled() {
        return this.deliveryScheduled;
    }

    public final void setDeliveryScheduled(DeliveryScheduledData deliveryScheduledData) {
        this.deliveryScheduled = deliveryScheduledData;
    }

    public final StatusResponseSubData getGo() {
        return this.go;
    }

    public final void setGo(StatusResponseSubData statusResponseSubData) {
        this.go = statusResponseSubData;
    }

    public final StatusResponseSubData getPassword() {
        return this.password;
    }

    public final void setPassword(StatusResponseSubData statusResponseSubData) {
        this.password = statusResponseSubData;
    }

    public final UserModel getUser() {
        return this.user;
    }

    public final void setUser(UserModel userModel) {
        this.user = userModel;
    }

    public final DeliveryData getDelivery() {
        return this.delivery;
    }

    public final void setDelivery(DeliveryData deliveryData) {
        this.delivery = deliveryData;
    }

    public final String getToken() {
        return this.token;
    }

    public final void setToken(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.token = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.status);
        parcel.writeString(this.pusherToken);
        parcel.writeParcelable(this.deliveryScheduled, 0);
        parcel.writeParcelable(this.go, i);
        parcel.writeParcelable(this.password, i);
        parcel.writeString(this.token);
    }
}
