package io.card.payment;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Calendar;
import java.util.UUID;
import kotlin.text.Typography;

public class CreditCard implements Parcelable {
    public static final Creator<CreditCard> CREATOR = new C07351();
    public static final int EXPIRY_MAX_FUTURE_YEARS = 15;
    private static final String TAG = "CreditCard";
    public String cardNumber;
    public String cardholderName;
    public String cvv;
    public int expiryMonth;
    public int expiryYear;
    boolean flipped;
    public String postalCode;
    String scanId;
    int[] xoff;
    int yoff;

    /* renamed from: io.card.payment.CreditCard$1 */
    static class C07351 implements Creator<CreditCard> {
        C07351() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CreditCard[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CreditCard(parcel);
        }
    }

    public int describeContents() {
        return 0;
    }

    public CreditCard() {
        this.expiryMonth = 0;
        this.expiryYear = 0;
        this.flipped = false;
        this.xoff = new int[16];
        this.scanId = UUID.randomUUID().toString();
    }

    public CreditCard(String str, int i, int i2, String str2, String str3, String str4) {
        this.expiryMonth = 0;
        this.expiryYear = 0;
        this.flipped = false;
        this.cardNumber = str;
        this.expiryMonth = i;
        this.expiryYear = i2;
        this.cvv = str2;
        this.postalCode = str3;
        this.cardholderName = str4;
    }

    private CreditCard(Parcel parcel) {
        this.expiryMonth = 0;
        this.expiryYear = 0;
        this.flipped = false;
        this.cardNumber = parcel.readString();
        this.expiryMonth = parcel.readInt();
        this.expiryYear = parcel.readInt();
        this.cvv = parcel.readString();
        this.postalCode = parcel.readString();
        this.cardholderName = parcel.readString();
        this.scanId = parcel.readString();
        this.yoff = parcel.readInt();
        this.xoff = parcel.createIntArray();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.cardNumber);
        parcel.writeInt(this.expiryMonth);
        parcel.writeInt(this.expiryYear);
        parcel.writeString(this.cvv);
        parcel.writeString(this.postalCode);
        parcel.writeString(this.cardholderName);
        parcel.writeString(this.scanId);
        parcel.writeInt(this.yoff);
        parcel.writeIntArray(this.xoff);
    }

    public String getLastFourDigitsOfCardNumber() {
        if (this.cardNumber == null) {
            return "";
        }
        return this.cardNumber.substring(this.cardNumber.length() - Math.min(4, this.cardNumber.length()));
    }

    public String getRedactedCardNumber() {
        if (this.cardNumber == null) {
            return "";
        }
        StringBuilder stringBuilder;
        String str = "";
        if (this.cardNumber.length() > 4) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            StringBuilder stringBuilder2 = new StringBuilder("%");
            stringBuilder2.append(this.cardNumber.length() - 4);
            stringBuilder2.append("s");
            stringBuilder.append(String.format(stringBuilder2.toString(), new Object[]{""}).replace(' ', Typography.bullet));
            str = stringBuilder.toString();
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(getLastFourDigitsOfCardNumber());
        return Logo.formatString(stringBuilder.toString(), false, CardType.fromCardNumber(this.cardNumber));
    }

    public CardType getCardType() {
        return CardType.fromCardNumber(this.cardNumber);
    }

    public String getFormattedCardNumber() {
        return Logo.formatString(this.cardNumber, true, null);
    }

    public boolean isExpiryValid() {
        int i = this.expiryMonth;
        int i2 = this.expiryYear;
        if (i > 0) {
            if (12 >= i) {
                Calendar instance = Calendar.getInstance();
                int i3 = instance.get(1);
                int i4 = instance.get(2) + 1;
                if (i2 < i3) {
                    return false;
                }
                return (i2 != i3 || i >= i4) && i2 <= i3 + 15;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder stringBuilder;
        StringBuilder stringBuilder2 = new StringBuilder("{");
        stringBuilder2.append(getCardType());
        stringBuilder2.append(": ");
        stringBuilder2.append(getRedactedCardNumber());
        String stringBuilder3 = stringBuilder2.toString();
        if (this.expiryMonth > 0 || this.expiryYear > 0) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(stringBuilder3);
            stringBuilder.append("  expiry:");
            stringBuilder.append(this.expiryMonth);
            stringBuilder.append("/");
            stringBuilder.append(this.expiryYear);
            stringBuilder3 = stringBuilder.toString();
        }
        if (this.postalCode != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(stringBuilder3);
            stringBuilder.append("  postalCode:");
            stringBuilder.append(this.postalCode);
            stringBuilder3 = stringBuilder.toString();
        }
        if (this.cardholderName != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(stringBuilder3);
            stringBuilder.append("  cardholderName:");
            stringBuilder.append(this.cardholderName);
            stringBuilder3 = stringBuilder.toString();
        }
        if (this.cvv != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(stringBuilder3);
            stringBuilder.append("  cvvLength:");
            stringBuilder.append(this.cvv != null ? this.cvv.length() : 0);
            stringBuilder3 = stringBuilder.toString();
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append(stringBuilder3);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
