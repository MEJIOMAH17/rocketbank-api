package com.samsung.android.sdk.samsungpay.v2.payment.sheet;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class SheetControl implements Parcelable {
    public static final Creator<SheetControl> CREATOR = new C07191();
    private String controlId;
    private Controltype controltype;

    /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl$1 */
    static class C07191 implements Creator<SheetControl> {
        C07191() {
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new SheetControl[i];
        }

        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            switch ((Controltype) parcel.readParcelable(Controltype.class.getClassLoader())) {
                case PLAINTEXT:
                    return new PlainTextControl(parcel);
                case AMOUNTBOX:
                    return new AmountBoxControl(parcel);
                case ADDRESS:
                    return new AddressControl(parcel);
                case SPINNER:
                    return new SpinnerControl(parcel);
                default:
                    return new SheetControl(parcel);
            }
        }
    }

    public enum Controltype implements Parcelable {
        PLAINTEXT,
        AMOUNTBOX,
        ADDRESS,
        SPINNER;
        
        public static final Creator<Controltype> CREATOR = null;

        /* renamed from: com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl$Controltype$1 */
        static class C07211 implements Creator<Controltype> {
            C07211() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new Controltype[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return Controltype.values()[parcel.readInt()];
            }
        }

        public final int describeContents() {
            return 0;
        }

        static {
            CREATOR = new C07211();
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    public int describeContents() {
        return 0;
    }

    protected SheetControl(Parcel parcel) {
        this.controlId = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.controltype, i);
        parcel.writeString(this.controlId);
    }

    public SheetControl(Controltype controltype) {
        this.controltype = controltype;
    }

    public String getControlId() {
        return this.controlId;
    }

    protected void setControlId(String str) {
        if (str != null) {
            if (str.length() != 0) {
                this.controlId = str;
                return;
            }
        }
        throw new IllegalArgumentException("setControlId : controlId is invalid.");
    }

    public Controltype getControltype() {
        return this.controltype;
    }

    public void setControltype(Controltype controltype) {
        this.controltype = controltype;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
        r4 = this;
        r0 = 1;
        if (r4 != r5) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = 0;
        if (r5 == 0) goto L_0x0030;
    L_0x0007:
        r2 = r4.getClass();
        r3 = r5.getClass();
        if (r2 == r3) goto L_0x0012;
    L_0x0011:
        goto L_0x0030;
    L_0x0012:
        r5 = (com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl) r5;
        r2 = r4.controlId;
        if (r2 == 0) goto L_0x0023;
    L_0x0018:
        r2 = r4.controlId;
        r3 = r5.controlId;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0028;
    L_0x0022:
        goto L_0x0027;
    L_0x0023:
        r2 = r5.controlId;
        if (r2 == 0) goto L_0x0028;
    L_0x0027:
        return r1;
    L_0x0028:
        r2 = r4.controltype;
        r5 = r5.controltype;
        if (r2 != r5) goto L_0x002f;
    L_0x002e:
        return r0;
    L_0x002f:
        return r1;
    L_0x0030:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.samsungpay.v2.payment.sheet.SheetControl.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 0;
        int hashCode = (this.controlId != null ? this.controlId.hashCode() : 0) * 31;
        if (this.controltype != null) {
            i = this.controltype.hashCode();
        }
        return hashCode + i;
    }
}
