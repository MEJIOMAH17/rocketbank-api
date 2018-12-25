package ru.rocketbank.core.network.model.leads;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.DeliveryData;

/* compiled from: SexyLeadsResponse.kt */
public final class SexyLeadsResponse {
    private final DeliveryData delivery;
    @SerializedName("document_check")
    private final Document documentCheck;
    @SerializedName("document_rejected")
    private final Document documentRejected;
    @SerializedName("pusher_token")
    private final String pusherToken;
    private final String status;
    private final String token;

    public static /* bridge */ /* synthetic */ SexyLeadsResponse copy$default(SexyLeadsResponse sexyLeadsResponse, String str, String str2, String str3, DeliveryData deliveryData, Document document, Document document2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sexyLeadsResponse.status;
        }
        if ((i & 2) != 0) {
            str2 = sexyLeadsResponse.token;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            str3 = sexyLeadsResponse.pusherToken;
        }
        String str5 = str3;
        if ((i & 8) != 0) {
            deliveryData = sexyLeadsResponse.delivery;
        }
        DeliveryData deliveryData2 = deliveryData;
        if ((i & 16) != 0) {
            document = sexyLeadsResponse.documentRejected;
        }
        Document document3 = document;
        if ((i & 32) != 0) {
            document2 = sexyLeadsResponse.documentCheck;
        }
        return sexyLeadsResponse.copy(str, str4, str5, deliveryData2, document3, document2);
    }

    public final String component1() {
        return this.status;
    }

    public final String component2() {
        return this.token;
    }

    public final String component3() {
        return this.pusherToken;
    }

    public final DeliveryData component4() {
        return this.delivery;
    }

    public final Document component5() {
        return this.documentRejected;
    }

    public final Document component6() {
        return this.documentCheck;
    }

    public final SexyLeadsResponse copy(String str, String str2, String str3, DeliveryData deliveryData, Document document, Document document2) {
        Intrinsics.checkParameterIsNotNull(str, "status");
        Intrinsics.checkParameterIsNotNull(str2, "token");
        Intrinsics.checkParameterIsNotNull(str3, "pusherToken");
        Intrinsics.checkParameterIsNotNull(document, "documentRejected");
        Intrinsics.checkParameterIsNotNull(document2, "documentCheck");
        return new SexyLeadsResponse(str, str2, str3, deliveryData, document, document2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SexyLeadsResponse) {
                SexyLeadsResponse sexyLeadsResponse = (SexyLeadsResponse) obj;
                if (Intrinsics.areEqual(this.status, sexyLeadsResponse.status) && Intrinsics.areEqual(this.token, sexyLeadsResponse.token) && Intrinsics.areEqual(this.pusherToken, sexyLeadsResponse.pusherToken) && Intrinsics.areEqual(this.delivery, sexyLeadsResponse.delivery) && Intrinsics.areEqual(this.documentRejected, sexyLeadsResponse.documentRejected) && Intrinsics.areEqual(this.documentCheck, sexyLeadsResponse.documentCheck)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.status;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.token;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.pusherToken;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        DeliveryData deliveryData = this.delivery;
        hashCode = (hashCode + (deliveryData != null ? deliveryData.hashCode() : 0)) * 31;
        Document document = this.documentRejected;
        hashCode = (hashCode + (document != null ? document.hashCode() : 0)) * 31;
        document = this.documentCheck;
        if (document != null) {
            i = document.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("SexyLeadsResponse(status=");
        stringBuilder.append(this.status);
        stringBuilder.append(", token=");
        stringBuilder.append(this.token);
        stringBuilder.append(", pusherToken=");
        stringBuilder.append(this.pusherToken);
        stringBuilder.append(", delivery=");
        stringBuilder.append(this.delivery);
        stringBuilder.append(", documentRejected=");
        stringBuilder.append(this.documentRejected);
        stringBuilder.append(", documentCheck=");
        stringBuilder.append(this.documentCheck);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public SexyLeadsResponse(String str, String str2, String str3, DeliveryData deliveryData, Document document, Document document2) {
        Intrinsics.checkParameterIsNotNull(str, "status");
        Intrinsics.checkParameterIsNotNull(str2, "token");
        Intrinsics.checkParameterIsNotNull(str3, "pusherToken");
        Intrinsics.checkParameterIsNotNull(document, "documentRejected");
        Intrinsics.checkParameterIsNotNull(document2, "documentCheck");
        this.status = str;
        this.token = str2;
        this.pusherToken = str3;
        this.delivery = deliveryData;
        this.documentRejected = document;
        this.documentCheck = document2;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getToken() {
        return this.token;
    }

    public /* synthetic */ SexyLeadsResponse(String str, String str2, String str3, DeliveryData deliveryData, Document document, Document document2, int i, Ref ref) {
        if ((i & 1) != null) {
            str = "";
        }
        String str4 = str;
        if ((i & 2) != null) {
            str2 = "";
        }
        String str5 = str2;
        if ((i & 4) != null) {
            str3 = "";
        }
        this(str4, str5, str3, deliveryData, document, document2);
    }

    public final String getPusherToken() {
        return this.pusherToken;
    }

    public final DeliveryData getDelivery() {
        return this.delivery;
    }

    public final Document getDocumentRejected() {
        return this.documentRejected;
    }

    public final Document getDocumentCheck() {
        return this.documentCheck;
    }
}
