package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.enums.StatusDeposit;

/* compiled from: DepositModel.kt */
public final class DepositModel implements Parcelable {
    public static final Creator<DepositModel> CREATOR = new DepositModel$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("balance")
    private float balance;
    @SerializedName("balance_without_percents")
    private float balanceWithoutPercents;
    private String bank;
    @SerializedName("can_be_refilled")
    private boolean canBeRefilled;
    @SerializedName("can_refill_by_date")
    private boolean canRefillByDate;
    @SerializedName("deliver")
    private DeliveryScheduledModel deliver;
    @SerializedName("end_date")
    private String endDate;
    private long id;
    @SerializedName("max_amount")
    private float maxAmount;
    @SerializedName("percent")
    private double percent;
    @SerializedName("period")
    private int period;
    @SerializedName("refillable")
    private boolean refillable;
    @SerializedName("requisites")
    private RequisitesModel requisites;
    @SerializedName("rocket_deposit")
    private RocketDepositModel rocketDeposit;
    @SerializedName("start_date")
    private String startDate;
    @SerializedName("statement_kinds")
    private List<String> statementKinds;
    @SerializedName("statements")
    private List<StatementModel> statements;
    @SerializedName("status")
    private String status;
    @SerializedName("title")
    private String title;

    /* compiled from: DepositModel.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final String getBank() {
        return this.bank;
    }

    public final void setBank(String str) {
        this.bank = str;
    }

    public final float getBalance() {
        return this.balance;
    }

    public final void setBalance(float f) {
        this.balance = f;
    }

    public final float getMaxAmount() {
        return this.maxAmount;
    }

    public final void setMaxAmount(float f) {
        this.maxAmount = f;
    }

    public final double getPercent() {
        return this.percent;
    }

    public final void setPercent(double d) {
        this.percent = d;
    }

    public final long getId() {
        return this.id;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final int getPeriod() {
        return this.period;
    }

    public final void setPeriod(int i) {
        this.period = i;
    }

    public final boolean getCanBeRefilled() {
        return this.canBeRefilled;
    }

    public final void setCanBeRefilled(boolean z) {
        this.canBeRefilled = z;
    }

    public final DeliveryScheduledModel getDeliver() {
        return this.deliver;
    }

    public final void setDeliver(DeliveryScheduledModel deliveryScheduledModel) {
        this.deliver = deliveryScheduledModel;
    }

    public final boolean getRefillable() {
        return this.refillable;
    }

    public final void setRefillable(boolean z) {
        this.refillable = z;
    }

    public final boolean getCanRefillByDate() {
        return this.canRefillByDate;
    }

    public final void setCanRefillByDate(boolean z) {
        this.canRefillByDate = z;
    }

    public final List<StatementModel> getStatements() {
        return this.statements;
    }

    public final void setStatements(List<StatementModel> list) {
        this.statements = list;
    }

    public final List<String> getStatementKinds() {
        return this.statementKinds;
    }

    public final void setStatementKinds(List<String> list) {
        this.statementKinds = list;
    }

    public final RequisitesModel getRequisites() {
        return this.requisites;
    }

    public final void setRequisites(RequisitesModel requisitesModel) {
        this.requisites = requisitesModel;
    }

    public final RocketDepositModel getRocketDeposit() {
        return this.rocketDeposit;
    }

    public final void setRocketDeposit(RocketDepositModel rocketDepositModel) {
        this.rocketDeposit = rocketDepositModel;
    }

    public final String getEndDate() {
        return this.endDate;
    }

    public final void setEndDate(String str) {
        this.endDate = str;
    }

    public final String getStartDate() {
        return this.startDate;
    }

    public final void setStartDate(String str) {
        this.startDate = str;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final float getBalanceWithoutPercents() {
        return this.balanceWithoutPercents;
    }

    public final void setBalanceWithoutPercents(float f) {
        this.balanceWithoutPercents = f;
    }

    public DepositModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        this.bank = parcel.readString();
        this.balance = parcel.readFloat();
        this.id = parcel.readLong();
        this.period = parcel.readInt();
        this.canBeRefilled = parcel.readByte() != (byte) 0;
        this.deliver = (DeliveryScheduledModel) parcel.readParcelable(DeliveryScheduledModel.class.getClassLoader());
        this.statements = parcel.createTypedArrayList(StatementModel.CREATOR);
        this.statementKinds = parcel.createStringArrayList();
        this.requisites = (RequisitesModel) parcel.readParcelable(RequisitesModel.class.getClassLoader());
        this.rocketDeposit = (RocketDepositModel) parcel.readParcelable(RocketDepositModel.class.getClassLoader());
        this.endDate = parcel.readString();
        this.startDate = parcel.readString();
        this.status = parcel.readString();
        this.title = parcel.readString();
        Object readValue = parcel.readValue(Double.TYPE.getClassLoader());
        if (readValue == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Double");
        }
        this.percent = ((Double) readValue).doubleValue();
        readValue = parcel.readValue(Boolean.TYPE.getClassLoader());
        if (readValue == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
        }
        this.refillable = ((Boolean) readValue).booleanValue();
        readValue = parcel.readValue(Boolean.TYPE.getClassLoader());
        if (readValue == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
        }
        this.canRefillByDate = ((Boolean) readValue).booleanValue();
        this.maxAmount = parcel.readFloat();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeString(this.bank);
        parcel.writeFloat(this.balance);
        parcel.writeLong(this.id);
        parcel.writeInt(this.period);
        parcel.writeByte((byte) this.canBeRefilled);
        parcel.writeParcelable(this.deliver, i);
        parcel.writeTypedList(this.statements);
        parcel.writeStringList(this.statementKinds);
        parcel.writeParcelable(this.requisites, i);
        parcel.writeParcelable(this.rocketDeposit, i);
        parcel.writeString(this.endDate);
        parcel.writeString(this.startDate);
        parcel.writeString(this.status);
        parcel.writeString(this.title);
        parcel.writeValue(Double.valueOf(this.percent));
        parcel.writeValue(Boolean.valueOf(this.refillable));
        parcel.writeValue(Boolean.valueOf(this.canRefillByDate));
        parcel.writeFloat(this.maxAmount);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DepositModel) && ((DepositModel) obj).id == this.id) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.id;
    }

    public final StatusDeposit getStatusValue() {
        StatusDeposit fromString = StatusDeposit.fromString(this.status);
        Intrinsics.checkExpressionValueIsNotNull(fromString, "StatusDeposit.fromString(status)");
        return fromString;
    }
}
