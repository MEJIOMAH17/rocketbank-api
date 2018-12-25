package ru.rocketbank.core.network.model.androidpay;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: OpcResponse.kt */
public final class OpcResponse {
    private final String address;
    private String opc;
    private final String postIndex;

    public static /* bridge */ /* synthetic */ OpcResponse copy$default(OpcResponse opcResponse, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = opcResponse.opc;
        }
        if ((i & 2) != 0) {
            str2 = opcResponse.address;
        }
        if ((i & 4) != 0) {
            str3 = opcResponse.postIndex;
        }
        return opcResponse.copy(str, str2, str3);
    }

    public final String component1() {
        return this.opc;
    }

    public final String component2() {
        return this.address;
    }

    public final String component3() {
        return this.postIndex;
    }

    public final OpcResponse copy(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "opc");
        Intrinsics.checkParameterIsNotNull(str2, "address");
        return new OpcResponse(str, str2, str3);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof OpcResponse) {
                OpcResponse opcResponse = (OpcResponse) obj;
                if (Intrinsics.areEqual(this.opc, opcResponse.opc) && Intrinsics.areEqual(this.address, opcResponse.address) && Intrinsics.areEqual(this.postIndex, opcResponse.postIndex)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.opc;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.address;
        hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        str2 = this.postIndex;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("OpcResponse(opc=");
        stringBuilder.append(this.opc);
        stringBuilder.append(", address=");
        stringBuilder.append(this.address);
        stringBuilder.append(", postIndex=");
        stringBuilder.append(this.postIndex);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public OpcResponse(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "opc");
        Intrinsics.checkParameterIsNotNull(str2, "address");
        this.opc = str;
        this.address = str2;
        this.postIndex = str3;
    }

    public final String getOpc() {
        return this.opc;
    }

    public final void setOpc(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.opc = str;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getPostIndex() {
        return this.postIndex;
    }
}
