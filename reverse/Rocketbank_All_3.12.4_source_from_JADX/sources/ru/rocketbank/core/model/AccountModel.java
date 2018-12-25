package ru.rocketbank.core.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.ChangePin;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.enums.Status;

/* compiled from: AccountModel.kt */
public final class AccountModel implements Parcelable {
    public static final Creator<AccountModel> CREATOR = new AccountModel$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    @SerializedName("account_details")
    private AccountDetailsModel accountDetails;
    @SerializedName("android_pay_works")
    private boolean androidPayWorks;
    private boolean applepay;
    @SerializedName("balance")
    private double balance;
    @SerializedName("better_limits")
    private LinkedHashMap<String, ArrayList<Limit>> betterLimits;
    @SerializedName("cash_out_count")
    private int cashOutCount;
    @SerializedName("change_limits")
    private boolean changeLimits;
    @SerializedName("change_pin")
    private ChangePin changePin;
    @SerializedName("currency")
    private String currencyCode;
    @SerializedName("current_tariff")
    private TariffModel currentTariff;
    @SerializedName("details")
    private String details;
    private boolean extracts;
    @SerializedName("free_cash_out_limit")
    private int freeCashOutLimit;
    @SerializedName("free_cash_out_limit_text")
    private String freeCashOutLimitText;
    @SerializedName("icon_url")
    private String iconUrl;
    @SerializedName("changed_tariff")
    private boolean isChangedTariff;
    @SerializedName("limits")
    private ArrayList<Limit> limits;
    private boolean main;
    private short month;
    @SerializedName("name_in_latin")
    private String nameInLatin;
    @SerializedName("next_tariff")
    private TariffModel nextTariff;
    private boolean operations;
    @SerializedName("pan")
    private String pan;
    @SerializedName("plastic_token")
    private String plasticToken;
    private double spent;
    @SerializedName("status")
    private String status;
    @SerializedName("title")
    private String title;
    @SerializedName("token")
    private String token;
    @SerializedName("unlimited_cashouts")
    private boolean unlimitedCashouts;
    private short year;

    /* compiled from: AccountModel.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean isChangedTariff() {
        return this.isChangedTariff;
    }

    public final void setChangedTariff(boolean z) {
        this.isChangedTariff = z;
    }

    public final double getBalance() {
        return this.balance;
    }

    public final void setBalance(double d) {
        this.balance = d;
    }

    public final short getMonth() {
        return this.month;
    }

    public final void setMonth(short s) {
        this.month = s;
    }

    public final short getYear() {
        return this.year;
    }

    public final void setYear(short s) {
        this.year = s;
    }

    public final AccountDetailsModel getAccountDetails() {
        return this.accountDetails;
    }

    public final void setAccountDetails(AccountDetailsModel accountDetailsModel) {
        this.accountDetails = accountDetailsModel;
    }

    public final ArrayList<Limit> getLimits() {
        return this.limits;
    }

    public final void setLimits(ArrayList<Limit> arrayList) {
        this.limits = arrayList;
    }

    public final LinkedHashMap<String, ArrayList<Limit>> getBetterLimits() {
        return this.betterLimits;
    }

    public final void setBetterLimits(LinkedHashMap<String, ArrayList<Limit>> linkedHashMap) {
        this.betterLimits = linkedHashMap;
    }

    public final String getCurrencyCode() {
        return this.currencyCode;
    }

    public final void setCurrencyCode(String str) {
        this.currencyCode = str;
    }

    public final String getDetails() {
        return this.details;
    }

    public final void setDetails(String str) {
        this.details = str;
    }

    public final String getNameInLatin() {
        return this.nameInLatin;
    }

    public final void setNameInLatin(String str) {
        this.nameInLatin = str;
    }

    public final String getPan() {
        return this.pan;
    }

    public final void setPan(String str) {
        this.pan = str;
    }

    public final boolean getApplepay() {
        return this.applepay;
    }

    public final void setApplepay(boolean z) {
        this.applepay = z;
    }

    public final boolean getAndroidPayWorks() {
        return this.androidPayWorks;
    }

    public final void setAndroidPayWorks(boolean z) {
        this.androidPayWorks = z;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final int getCashOutCount() {
        return this.cashOutCount;
    }

    public final void setCashOutCount(int i) {
        this.cashOutCount = i;
    }

    public final int getFreeCashOutLimit() {
        return this.freeCashOutLimit;
    }

    public final void setFreeCashOutLimit(int i) {
        this.freeCashOutLimit = i;
    }

    public final boolean getUnlimitedCashouts() {
        return this.unlimitedCashouts;
    }

    public final void setUnlimitedCashouts(boolean z) {
        this.unlimitedCashouts = z;
    }

    public final String getFreeCashOutLimitText() {
        return this.freeCashOutLimitText;
    }

    public final void setFreeCashOutLimitText(String str) {
        this.freeCashOutLimitText = str;
    }

    public final double getSpent() {
        return this.spent;
    }

    public final void setSpent(double d) {
        this.spent = d;
    }

    public final boolean getOperations() {
        return this.operations;
    }

    public final void setOperations(boolean z) {
        this.operations = z;
    }

    public final boolean getChangeLimits() {
        return this.changeLimits;
    }

    public final void setChangeLimits(boolean z) {
        this.changeLimits = z;
    }

    public final boolean getExtracts() {
        return this.extracts;
    }

    public final void setExtracts(boolean z) {
        this.extracts = z;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final boolean getMain() {
        return this.main;
    }

    public final void setMain(boolean z) {
        this.main = z;
    }

    public final String getToken() {
        return this.token;
    }

    public final void setToken(String str) {
        this.token = str;
    }

    public final TariffModel getCurrentTariff() {
        return this.currentTariff;
    }

    public final void setCurrentTariff(TariffModel tariffModel) {
        this.currentTariff = tariffModel;
    }

    public final TariffModel getNextTariff() {
        return this.nextTariff;
    }

    public final void setNextTariff(TariffModel tariffModel) {
        this.nextTariff = tariffModel;
    }

    public final ChangePin getChangePin() {
        return this.changePin;
    }

    public final void setChangePin(ChangePin changePin) {
        this.changePin = changePin;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public final String getPlasticToken() {
        return this.plasticToken;
    }

    public final void setPlasticToken(String str) {
        this.plasticToken = str;
    }

    protected AccountModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        boolean z = false;
        this.isChangedTariff = parcel.readByte() != (byte) 0;
        this.balance = parcel.readDouble();
        this.accountDetails = (AccountDetailsModel) parcel.readParcelable(AccountDetailsModel.class.getClassLoader());
        this.limits = parcel.createTypedArrayList(Limit.CREATOR);
        this.currencyCode = parcel.readString();
        this.details = parcel.readString();
        this.nameInLatin = parcel.readString();
        this.pan = parcel.readString();
        this.status = parcel.readString();
        this.title = parcel.readString();
        this.token = parcel.readString();
        this.currentTariff = (TariffModel) parcel.readParcelable(TariffModel.class.getClassLoader());
        this.nextTariff = (TariffModel) parcel.readParcelable(TariffModel.class.getClassLoader());
        this.changePin = (ChangePin) parcel.readParcelable(ChangePin.class.getClassLoader());
        this.iconUrl = parcel.readString();
        this.plasticToken = parcel.readString();
        this.year = (short) parcel.readInt();
        this.month = (short) parcel.readInt();
        this.applepay = parcel.readInt() == 1;
        this.cashOutCount = parcel.readInt();
        this.freeCashOutLimit = parcel.readInt();
        this.unlimitedCashouts = parcel.readInt() == 1;
        this.freeCashOutLimitText = parcel.readString();
        this.spent = parcel.readDouble();
        this.operations = parcel.readInt() == 1;
        this.changeLimits = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            z = true;
        }
        this.extracts = z;
        parcel = parcel.readBundle(Limit.class.getClassLoader());
        if (parcel != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Set<String> keySet = parcel.keySet();
            Intrinsics.checkExpressionValueIsNotNull(keySet, "bundle.keySet()");
            for (String str : keySet) {
                ArrayList parcelableArrayList = parcel.getParcelableArrayList(str);
                Intrinsics.checkExpressionValueIsNotNull(parcelableArrayList, "bundle.getParcelableArrayList(it)");
                linkedHashMap.put(str, parcelableArrayList);
            }
            this.betterLimits = linkedHashMap;
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        Intrinsics.checkParameterIsNotNull(parcel, "dest");
        parcel.writeByte((byte) this.isChangedTariff);
        parcel.writeDouble(this.balance);
        parcel.writeParcelable(this.accountDetails, i);
        parcel.writeTypedList(this.limits);
        parcel.writeString(this.currencyCode);
        parcel.writeString(this.details);
        parcel.writeString(this.nameInLatin);
        parcel.writeString(this.pan);
        parcel.writeString(this.status);
        parcel.writeString(this.title);
        parcel.writeString(this.token);
        parcel.writeParcelable(this.currentTariff, i);
        parcel.writeParcelable(this.nextTariff, i);
        parcel.writeParcelable(this.changePin, i);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.plasticToken);
        parcel.writeInt(this.year);
        parcel.writeInt(this.month);
        parcel.writeInt(this.applepay);
        parcel.writeInt(this.cashOutCount);
        parcel.writeInt(this.freeCashOutLimit);
        parcel.writeInt(this.unlimitedCashouts);
        parcel.writeString(this.freeCashOutLimitText);
        parcel.writeDouble(this.spent);
        parcel.writeInt(this.operations);
        parcel.writeInt(this.changeLimits);
        parcel.writeInt(this.extracts);
        i = new Bundle();
        LinkedHashMap linkedHashMap = this.betterLimits;
        if (linkedHashMap != null) {
            for (Entry entry : linkedHashMap.entrySet()) {
                i.putParcelableArrayList((String) entry.getKey(), (ArrayList) entry.getValue());
            }
        }
        parcel.writeBundle(i);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AccountModel) {
            return ((AccountModel) this) == obj ? true : Intrinsics.areEqual(this.token, ((AccountModel) obj).token);
        } else {
            return null;
        }
    }

    public final Currency getCurrency() {
        Currency fromString = Currency.fromString(this.currencyCode);
        Intrinsics.checkExpressionValueIsNotNull(fromString, "Currency.fromString(currencyCode)");
        return fromString;
    }

    /* renamed from: getLimits */
    public final List<LimitModel> m681getLimits() {
        ArrayList arrayList = new ArrayList();
        if (this.limits != null) {
            ArrayList arrayList2 = this.limits;
            if (arrayList2 == null) {
                Intrinsics.throwNpe();
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Limit limit = (Limit) it.next();
                ArrayList limits = limit.getLimits();
                if (limits == null) {
                    Intrinsics.throwNpe();
                }
                String str = (String) limits.get(0);
                ArrayList limits2 = limit.getLimits();
                if (limits2 == null) {
                    Intrinsics.throwNpe();
                }
                Object obj = limits2.get(1);
                Intrinsics.checkExpressionValueIsNotNull(obj, "limit.limits!![1]");
                arrayList.add(new LimitModel(str, StringsKt__StringsJVMKt.replace$default((String) obj, "ђ", "₽", false, 4, null)));
            }
        }
        return arrayList;
    }

    public final LimitModel getLimitByName(String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        List limits = getLimits();
        int size = limits.size();
        for (int i = 0; i < size; i++) {
            LimitModel limitModel = (LimitModel) limits.get(i);
            if (StringsKt__StringsJVMKt.equals(limitModel.getKey(), str, true)) {
                return limitModel;
            }
        }
        return null;
    }

    public final Status getStatusValue() {
        Status fromString = Status.fromString(this.status);
        Intrinsics.checkExpressionValueIsNotNull(fromString, "Status.fromString(status)");
        return fromString;
    }

    public final void setUserStatus(Status status) {
        Intrinsics.checkParameterIsNotNull(status, "status");
        this.status = status.toString();
    }

    public final int hashCode() {
        String str = this.token;
        return str != null ? str.hashCode() : 0;
    }

    public final boolean isBlocked() {
        if (!(getStatusValue() == Status.BLOCKED || getStatusValue() == Status.HARD_BLOCKED)) {
            if (getStatusValue() != Status.FRAUD_BLOCKED) {
                return false;
            }
        }
        return true;
    }
}
