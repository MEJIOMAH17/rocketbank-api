package ru.rocketbank.core.model.transfers.bank;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind;
import ru.rocketbank.core.network.model.TransfersModelUrFiz.Remittance;

/* compiled from: BudgetData.kt */
public final class BudgetRemittance extends Remittance {
    public static final Creator<BudgetRemittance> CREATOR = new BudgetRemittance$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    private String drawer_status;
    private String from;
    private String inn_from;
    private String kbk;
    private String oktmo;
    private String tax_basis;
    private String tax_inn;
    private String tax_period;
    private String tax_period_kind;
    private String uin;

    /* compiled from: BudgetData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final String getInn_from() {
        return this.inn_from;
    }

    public final void setInn_from(String str) {
        this.inn_from = str;
    }

    public final String getKbk() {
        return this.kbk;
    }

    public final void setKbk(String str) {
        this.kbk = str;
    }

    public final String getUin() {
        return this.uin;
    }

    public final void setUin(String str) {
        this.uin = str;
    }

    public final String getOktmo() {
        return this.oktmo;
    }

    public final void setOktmo(String str) {
        this.oktmo = str;
    }

    public final String getDrawer_status() {
        return this.drawer_status;
    }

    public final void setDrawer_status(String str) {
        this.drawer_status = str;
    }

    public final String getTax_inn() {
        return this.tax_inn;
    }

    public final void setTax_inn(String str) {
        this.tax_inn = str;
    }

    public final String getTax_basis() {
        return this.tax_basis;
    }

    public final void setTax_basis(String str) {
        this.tax_basis = str;
    }

    public final String getTax_period() {
        return this.tax_period;
    }

    public final void setTax_period(String str) {
        this.tax_period = str;
    }

    public final String getTax_period_kind() {
        return this.tax_period_kind;
    }

    public final void setTax_period_kind(String str) {
        this.tax_period_kind = str;
    }

    public final String getFrom() {
        return this.from;
    }

    public final void setFrom(String str) {
        this.from = str;
    }

    public final RemittanceOutgoing toRemittanceOutgoing(RecipientType recipientType) {
        Intrinsics.checkParameterIsNotNull(recipientType, "recipientType");
        recipientType = new RemittanceOutgoing((Remittance) this);
        recipientType.getMap().put("inn_from", this.inn_from);
        recipientType.getMap().put("kbk", this.kbk);
        recipientType.getMap().put("uin", this.uin);
        recipientType.getMap().put("oktmo", this.oktmo);
        recipientType.getMap().put("drawer_status", this.drawer_status);
        recipientType.getMap().put("tax_inn", this.tax_inn);
        recipientType.getMap().put("tax_basis", this.tax_basis);
        recipientType.getMap().put("tax_period", this.tax_period);
        recipientType.getMap().put("tax_period_kind", this.tax_period_kind);
        recipientType.setRemittance_kind(Kind.budget.name());
        return recipientType;
    }

    public BudgetRemittance(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        super(parcel);
        this.inn_from = parcel.readString();
        this.kbk = parcel.readString();
        this.uin = parcel.readString();
        this.oktmo = parcel.readString();
        this.drawer_status = parcel.readString();
        this.tax_inn = parcel.readString();
        this.tax_basis = parcel.readString();
        this.tax_period = parcel.readString();
        this.tax_period_kind = parcel.readString();
        this.from = parcel.readString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.inn_from);
        parcel.writeString(this.kbk);
        parcel.writeString(this.uin);
        parcel.writeString(this.oktmo);
        parcel.writeString(this.drawer_status);
        parcel.writeString(this.tax_inn);
        parcel.writeString(this.tax_basis);
        parcel.writeString(this.tax_period);
        parcel.writeString(this.tax_period_kind);
        parcel.writeString(this.from);
    }
}
