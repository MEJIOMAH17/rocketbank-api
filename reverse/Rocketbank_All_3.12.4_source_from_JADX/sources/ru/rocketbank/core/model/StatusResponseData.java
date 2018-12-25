package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.EventHelper.IEvent;
import ru.rocketbank.core.model.dto.ChangePin;
import ru.rocketbank.core.network.model.leads.Document;

/* compiled from: StatusResponseData1.kt */
public final class StatusResponseData implements Parcelable, IEvent {
    public static final Creator<StatusResponseData> CREATOR = new StatusResponseData$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private DeliveryData delivery;
    @SerializedName("delivery_scheduled")
    private DeliveryScheduledData deliveryScheduled;
    @SerializedName("document_check")
    private Document documentCheck;
    @SerializedName("document_rejected")
    private Document documentRejected;
    private FormData form;
    private StatusResponseSubData go;
    private StatusResponseSubData password;
    private ChangePin pin;
    @SerializedName("pusher_token")
    private String pusherToken;
    @SerializedName(alternate = {"status"}, value = "sexy_api_status")
    private String status;
    private final String token;

    /* compiled from: StatusResponseData1.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public StatusResponseData(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.pin = (ChangePin) parcel.readParcelable(ChangePin.class.getClassLoader());
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.status = readString;
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.pusherToken = readString;
        this.form = (FormData) parcel.readParcelable(FormData.class.getClassLoader());
        this.deliveryScheduled = (DeliveryScheduledData) parcel.readParcelable(DeliveryScheduledData.class.getClassLoader());
        this.go = (StatusResponseSubData) parcel.readParcelable(StatusResponseSubData.class.getClassLoader());
        this.password = (StatusResponseSubData) parcel.readParcelable(StatusResponseSubData.class.getClassLoader());
        this.documentCheck = (Document) parcel.readParcelable(Document.class.getClassLoader());
        this.documentRejected = (Document) parcel.readParcelable(Document.class.getClassLoader());
        parcel = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(parcel, "`in`.readString()");
        this.token = parcel;
    }

    public final String getToken() {
        return this.token;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.status = str;
    }

    public final String getPusherToken() {
        return this.pusherToken;
    }

    public final void setPusherToken(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.pusherToken = str;
    }

    public final ChangePin getPin() {
        return this.pin;
    }

    public final void setPin(ChangePin changePin) {
        this.pin = changePin;
    }

    public final FormData getForm() {
        return this.form;
    }

    public final void setForm(FormData formData) {
        this.form = formData;
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

    public final Document getDocumentCheck() {
        return this.documentCheck;
    }

    public final void setDocumentCheck(Document document) {
        this.documentCheck = document;
    }

    public final Document getDocumentRejected() {
        return this.documentRejected;
    }

    public final void setDocumentRejected(Document document) {
        this.documentRejected = document;
    }

    public final DeliveryData getDelivery() {
        return this.delivery;
    }

    public final void setDelivery(DeliveryData deliveryData) {
        this.delivery = deliveryData;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeParcelable(this.pin, 0);
        parcel.writeString(this.status);
        parcel.writeString(this.pusherToken);
        parcel.writeParcelable(this.form, i);
        parcel.writeParcelable(this.deliveryScheduled, 0);
        parcel.writeParcelable(this.go, i);
        parcel.writeParcelable(this.password, i);
        parcel.writeParcelable(this.documentCheck, i);
        parcel.writeParcelable(this.documentRejected, i);
        parcel.writeString(this.token);
    }
}
