package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.enums.Status;

public class SafeAccount implements Parcelable {
    public static final Creator<SafeAccount> CREATOR = new C07951();
    private AccountDetailsModel account_details;
    private double balance;
    private String bank;
    private String close_text;
    private String currency;
    private String status;
    private String title;
    private String token;
    private String url;

    /* renamed from: ru.rocketbank.core.model.SafeAccount$1 */
    static class C07951 implements Creator<SafeAccount> {
        C07951() {
        }

        public final SafeAccount createFromParcel(Parcel parcel) {
            return new SafeAccount(parcel);
        }

        public final SafeAccount[] newArray(int i) {
            return new SafeAccount[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getTitle() {
        return this.title;
    }

    public double getBalance() {
        return this.balance;
    }

    public String getToken() {
        return this.token;
    }

    public String getUrl() {
        return this.url;
    }

    public String getBank() {
        return this.bank;
    }

    public AccountDetailsModel getAccount_details() {
        return this.account_details;
    }

    public Status getStatus() {
        return Status.fromString(this.status);
    }

    public AccountDetailsModel getAccountDetails() {
        return this.account_details;
    }

    public Currency getCurrency() {
        return Currency.fromString(this.currency);
    }

    public String getCurrencyCode() {
        return this.currency;
    }

    public String getCloseText() {
        return this.close_text;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r7) {
        /*
        r6 = this;
        r0 = 1;
        if (r6 != r7) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = 0;
        if (r7 == 0) goto L_0x00c1;
    L_0x0007:
        r2 = r6.getClass();
        r3 = r7.getClass();
        if (r2 == r3) goto L_0x0013;
    L_0x0011:
        goto L_0x00c1;
    L_0x0013:
        r7 = (ru.rocketbank.core.model.SafeAccount) r7;
        r2 = r7.balance;
        r4 = r6.balance;
        r2 = java.lang.Double.compare(r2, r4);
        if (r2 == 0) goto L_0x0020;
    L_0x001f:
        return r1;
    L_0x0020:
        r2 = r6.title;
        if (r2 == 0) goto L_0x002f;
    L_0x0024:
        r2 = r6.title;
        r3 = r7.title;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0034;
    L_0x002e:
        goto L_0x0033;
    L_0x002f:
        r2 = r7.title;
        if (r2 == 0) goto L_0x0034;
    L_0x0033:
        return r1;
    L_0x0034:
        r2 = r6.bank;
        if (r2 == 0) goto L_0x0043;
    L_0x0038:
        r2 = r6.bank;
        r3 = r7.bank;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0048;
    L_0x0042:
        goto L_0x0047;
    L_0x0043:
        r2 = r7.bank;
        if (r2 == 0) goto L_0x0048;
    L_0x0047:
        return r1;
    L_0x0048:
        r2 = r6.token;
        if (r2 == 0) goto L_0x0057;
    L_0x004c:
        r2 = r6.token;
        r3 = r7.token;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x005c;
    L_0x0056:
        goto L_0x005b;
    L_0x0057:
        r2 = r7.token;
        if (r2 == 0) goto L_0x005c;
    L_0x005b:
        return r1;
    L_0x005c:
        r2 = r6.url;
        if (r2 == 0) goto L_0x006b;
    L_0x0060:
        r2 = r6.url;
        r3 = r7.url;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0070;
    L_0x006a:
        goto L_0x006f;
    L_0x006b:
        r2 = r7.url;
        if (r2 == 0) goto L_0x0070;
    L_0x006f:
        return r1;
    L_0x0070:
        r2 = r6.status;
        if (r2 == 0) goto L_0x007f;
    L_0x0074:
        r2 = r6.status;
        r3 = r7.status;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0084;
    L_0x007e:
        goto L_0x0083;
    L_0x007f:
        r2 = r7.status;
        if (r2 == 0) goto L_0x0084;
    L_0x0083:
        return r1;
    L_0x0084:
        r2 = r6.account_details;
        if (r2 == 0) goto L_0x0093;
    L_0x0088:
        r2 = r6.account_details;
        r3 = r7.account_details;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0098;
    L_0x0092:
        goto L_0x0097;
    L_0x0093:
        r2 = r7.account_details;
        if (r2 == 0) goto L_0x0098;
    L_0x0097:
        return r1;
    L_0x0098:
        r2 = r6.currency;
        if (r2 == 0) goto L_0x00a7;
    L_0x009c:
        r2 = r6.currency;
        r3 = r7.currency;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x00ac;
    L_0x00a6:
        goto L_0x00ab;
    L_0x00a7:
        r2 = r7.currency;
        if (r2 == 0) goto L_0x00ac;
    L_0x00ab:
        return r1;
    L_0x00ac:
        r2 = r6.close_text;
        if (r2 == 0) goto L_0x00bb;
    L_0x00b0:
        r2 = r6.close_text;
        r7 = r7.close_text;
        r7 = r2.equals(r7);
        if (r7 != 0) goto L_0x00c0;
    L_0x00ba:
        goto L_0x00bf;
    L_0x00bb:
        r7 = r7.close_text;
        if (r7 == 0) goto L_0x00c0;
    L_0x00bf:
        return r1;
    L_0x00c0:
        return r0;
    L_0x00c1:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.model.SafeAccount.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.title != null ? this.title.hashCode() : 0) * 31) + (this.bank != null ? this.bank.hashCode() : 0);
        long doubleToLongBits = Double.doubleToLongBits(this.balance);
        hashCode = ((((((((((((hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + (this.token != null ? this.token.hashCode() : 0)) * 31) + (this.url != null ? this.url.hashCode() : 0)) * 31) + (this.status != null ? this.status.hashCode() : 0)) * 31) + (this.account_details != null ? this.account_details.hashCode() : 0)) * 31) + (this.currency != null ? this.currency.hashCode() : 0)) * 31;
        if (this.close_text != null) {
            i = this.close_text.hashCode();
        }
        return hashCode + i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.title);
        parcel.writeString(this.bank);
        parcel.writeDouble(this.balance);
        parcel.writeString(this.token);
        parcel.writeString(this.url);
        parcel.writeString(this.status);
        parcel.writeParcelable(this.account_details, i);
        parcel.writeString(this.currency);
        parcel.writeString(this.close_text);
    }

    protected SafeAccount(Parcel parcel) {
        this.title = parcel.readString();
        this.bank = parcel.readString();
        this.balance = parcel.readDouble();
        this.token = parcel.readString();
        this.url = parcel.readString();
        this.status = parcel.readString();
        this.account_details = (AccountDetailsModel) parcel.readParcelable(AccountDetailsModel.class.getClassLoader());
        this.currency = parcel.readString();
        this.close_text = parcel.readString();
    }
}
