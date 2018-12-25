package ru.rocketbank.core.model;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: InnResponseData.kt */
public final class InnResponseData {
    @SerializedName("gis_gkh")
    private final boolean gisGkh;
    private String inn;
    private String kpp;
    private String recipient_name;

    public InnResponseData(String str, String str2, String str3, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "inn");
        this.inn = str;
        this.kpp = str2;
        this.recipient_name = str3;
        this.gisGkh = z;
    }

    public /* synthetic */ InnResponseData(String str, String str2, String str3, boolean z, int i, Ref ref) {
        if ((i & 8) != 0) {
            z = false;
        }
        this(str, str2, str3, z);
    }

    public final boolean getGisGkh() {
        return this.gisGkh;
    }

    public final String getInn() {
        return this.inn;
    }

    public final String getKpp() {
        return this.kpp;
    }

    public final String getRecipient_name() {
        return this.recipient_name;
    }

    public final void setInn(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.inn = str;
    }

    public final void setKpp(String str) {
        this.kpp = str;
    }

    public final void setRecipient_name(String str) {
        this.recipient_name = str;
    }
}
