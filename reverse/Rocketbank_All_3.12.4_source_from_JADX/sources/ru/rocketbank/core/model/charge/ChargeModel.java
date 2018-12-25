package ru.rocketbank.core.model.charge;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChargeModel.kt */
public final class ChargeModel implements Parcelable {
    public static final Creator<ChargeModel> CREATOR = new ChargeModel$Companion$CREATOR$1();
    public static final Companion Companion = new Companion();
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd.MM.yyyy", new Locale("ru"));
    private final Double discount_amount;
    private final String discount_date;
    private final Double discount_size;
    private final String document;
    private final String document_number;
    private final Integer id;
    private final Requisites requisites;
    private final String warning;

    /* compiled from: ChargeModel.kt */
    public static final class Companion {
        private Companion() {
        }

        public final SimpleDateFormat getDATE_FORMAT() {
            return ChargeModel.DATE_FORMAT;
        }
    }

    /* compiled from: ChargeModel.kt */
    public static final class Requisites implements Parcelable {
        public static final Creator<Requisites> CREATOR = new ChargeModel$Requisites$Companion$CREATOR$1();
        public static final Companion Companion = new Companion();
        private final Double amount;
        private final String bank_name;
        private final String bik;
        private final String bill_date;
        private final String corr_number;
        private final String drawer_status;
        private final String inn;
        private final String kbk;
        private final String kpp;
        private final String oktmo;
        private final String payer_name;
        private final String purpose;
        private final String recipient_name;
        private final String tax_basis;
        private final String tax_inn;
        private final String tax_period;
        private final String tax_period_kind;
        private final String treasure_branch;
        private final String uin;

        /* compiled from: ChargeModel.kt */
        public static final class Companion {
            private Companion() {
            }
        }

        public static /* bridge */ /* synthetic */ Requisites copy$default(Requisites requisites, String str, String str2, String str3, Double d, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, int i, Object obj) {
            String str19;
            String str20;
            Requisites requisites2 = requisites;
            int i2 = i;
            String str21 = (i2 & 1) != 0 ? requisites2.bill_date : str;
            String str22 = (i2 & 2) != 0 ? requisites2.drawer_status : str2;
            String str23 = (i2 & 4) != 0 ? requisites2.bik : str3;
            Double d2 = (i2 & 8) != 0 ? requisites2.amount : d;
            String str24 = (i2 & 16) != 0 ? requisites2.corr_number : str4;
            String str25 = (i2 & 32) != 0 ? requisites2.inn : str5;
            String str26 = (i2 & 64) != 0 ? requisites2.kpp : str6;
            String str27 = (i2 & 128) != 0 ? requisites2.purpose : str7;
            String str28 = (i2 & 256) != 0 ? requisites2.recipient_name : str8;
            String str29 = (i2 & 512) != 0 ? requisites2.bank_name : str9;
            String str30 = (i2 & 1024) != 0 ? requisites2.kbk : str10;
            String str31 = (i2 & 2048) != 0 ? requisites2.uin : str11;
            String str32 = (i2 & 4096) != 0 ? requisites2.oktmo : str12;
            String str33 = (i2 & 8192) != 0 ? requisites2.tax_basis : str13;
            String str34 = (i2 & 16384) != 0 ? requisites2.tax_period : str14;
            if ((i2 & 32768) != 0) {
                str19 = str34;
                str20 = requisites2.tax_inn;
            } else {
                str19 = str34;
                str20 = str15;
            }
            return requisites2.copy(str21, str22, str23, d2, str24, str25, str26, str27, str28, str29, str30, str31, str32, str33, str19, str20, (65536 & i2) != 0 ? requisites2.tax_period_kind : str16, (131072 & i2) != 0 ? requisites2.payer_name : str17, (i2 & 262144) != 0 ? requisites2.treasure_branch : str18);
        }

        public final String component1() {
            return this.bill_date;
        }

        public final String component10() {
            return this.bank_name;
        }

        public final String component11() {
            return this.kbk;
        }

        public final String component12() {
            return this.uin;
        }

        public final String component13() {
            return this.oktmo;
        }

        public final String component14() {
            return this.tax_basis;
        }

        public final String component15() {
            return this.tax_period;
        }

        public final String component16() {
            return this.tax_inn;
        }

        public final String component17() {
            return this.tax_period_kind;
        }

        public final String component18() {
            return this.payer_name;
        }

        public final String component19() {
            return this.treasure_branch;
        }

        public final String component2() {
            return this.drawer_status;
        }

        public final String component3() {
            return this.bik;
        }

        public final Double component4() {
            return this.amount;
        }

        public final String component5() {
            return this.corr_number;
        }

        public final String component6() {
            return this.inn;
        }

        public final String component7() {
            return this.kpp;
        }

        public final String component8() {
            return this.purpose;
        }

        public final String component9() {
            return this.recipient_name;
        }

        public final Requisites copy(String str, String str2, String str3, Double d, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18) {
            return new Requisites(str, str2, str3, d, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18);
        }

        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Requisites) {
                    Requisites requisites = (Requisites) obj;
                    if (Intrinsics.areEqual(this.bill_date, requisites.bill_date) && Intrinsics.areEqual(this.drawer_status, requisites.drawer_status) && Intrinsics.areEqual(this.bik, requisites.bik) && Intrinsics.areEqual(this.amount, requisites.amount) && Intrinsics.areEqual(this.corr_number, requisites.corr_number) && Intrinsics.areEqual(this.inn, requisites.inn) && Intrinsics.areEqual(this.kpp, requisites.kpp) && Intrinsics.areEqual(this.purpose, requisites.purpose) && Intrinsics.areEqual(this.recipient_name, requisites.recipient_name) && Intrinsics.areEqual(this.bank_name, requisites.bank_name) && Intrinsics.areEqual(this.kbk, requisites.kbk) && Intrinsics.areEqual(this.uin, requisites.uin) && Intrinsics.areEqual(this.oktmo, requisites.oktmo) && Intrinsics.areEqual(this.tax_basis, requisites.tax_basis) && Intrinsics.areEqual(this.tax_period, requisites.tax_period) && Intrinsics.areEqual(this.tax_inn, requisites.tax_inn) && Intrinsics.areEqual(this.tax_period_kind, requisites.tax_period_kind) && Intrinsics.areEqual(this.payer_name, requisites.payer_name) && Intrinsics.areEqual(this.treasure_branch, requisites.treasure_branch)) {
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            String str = this.bill_date;
            int i = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.drawer_status;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.bik;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            Double d = this.amount;
            hashCode = (hashCode + (d != null ? d.hashCode() : 0)) * 31;
            str2 = this.corr_number;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.inn;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.kpp;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.purpose;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.recipient_name;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.bank_name;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.kbk;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.uin;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.oktmo;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.tax_basis;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.tax_period;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.tax_inn;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.tax_period_kind;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.payer_name;
            hashCode = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            str2 = this.treasure_branch;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return hashCode + i;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("Requisites(bill_date=");
            stringBuilder.append(this.bill_date);
            stringBuilder.append(", drawer_status=");
            stringBuilder.append(this.drawer_status);
            stringBuilder.append(", bik=");
            stringBuilder.append(this.bik);
            stringBuilder.append(", amount=");
            stringBuilder.append(this.amount);
            stringBuilder.append(", corr_number=");
            stringBuilder.append(this.corr_number);
            stringBuilder.append(", inn=");
            stringBuilder.append(this.inn);
            stringBuilder.append(", kpp=");
            stringBuilder.append(this.kpp);
            stringBuilder.append(", purpose=");
            stringBuilder.append(this.purpose);
            stringBuilder.append(", recipient_name=");
            stringBuilder.append(this.recipient_name);
            stringBuilder.append(", bank_name=");
            stringBuilder.append(this.bank_name);
            stringBuilder.append(", kbk=");
            stringBuilder.append(this.kbk);
            stringBuilder.append(", uin=");
            stringBuilder.append(this.uin);
            stringBuilder.append(", oktmo=");
            stringBuilder.append(this.oktmo);
            stringBuilder.append(", tax_basis=");
            stringBuilder.append(this.tax_basis);
            stringBuilder.append(", tax_period=");
            stringBuilder.append(this.tax_period);
            stringBuilder.append(", tax_inn=");
            stringBuilder.append(this.tax_inn);
            stringBuilder.append(", tax_period_kind=");
            stringBuilder.append(this.tax_period_kind);
            stringBuilder.append(", payer_name=");
            stringBuilder.append(this.payer_name);
            stringBuilder.append(", treasure_branch=");
            stringBuilder.append(this.treasure_branch);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public Requisites(String str, String str2, String str3, Double d, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18) {
            this.bill_date = str;
            this.drawer_status = str2;
            this.bik = str3;
            this.amount = d;
            this.corr_number = str4;
            this.inn = str5;
            this.kpp = str6;
            this.purpose = str7;
            this.recipient_name = str8;
            this.bank_name = str9;
            this.kbk = str10;
            this.uin = str11;
            this.oktmo = str12;
            this.tax_basis = str13;
            this.tax_period = str14;
            this.tax_inn = str15;
            this.tax_period_kind = str16;
            this.payer_name = str17;
            this.treasure_branch = str18;
        }

        public final String getBill_date() {
            return this.bill_date;
        }

        public final String getDrawer_status() {
            return this.drawer_status;
        }

        public final String getBik() {
            return this.bik;
        }

        public final Double getAmount() {
            return this.amount;
        }

        public final String getCorr_number() {
            return this.corr_number;
        }

        public final String getInn() {
            return this.inn;
        }

        public final String getKpp() {
            return this.kpp;
        }

        public final String getPurpose() {
            return this.purpose;
        }

        public final String getRecipient_name() {
            return this.recipient_name;
        }

        public final String getBank_name() {
            return this.bank_name;
        }

        public final String getKbk() {
            return this.kbk;
        }

        public final String getUin() {
            return this.uin;
        }

        public final String getOktmo() {
            return this.oktmo;
        }

        public final String getTax_basis() {
            return this.tax_basis;
        }

        public final String getTax_period() {
            return this.tax_period;
        }

        public final String getTax_inn() {
            return this.tax_inn;
        }

        public final String getTax_period_kind() {
            return this.tax_period_kind;
        }

        public final String getPayer_name() {
            return this.payer_name;
        }

        public final String getTreasure_branch() {
            return this.treasure_branch;
        }

        public Requisites(Parcel parcel) {
            Parcel parcel2 = parcel;
            Intrinsics.checkParameterIsNotNull(parcel2, "source");
            this(parcel.readString(), parcel.readString(), parcel.readString(), (Double) parcel2.readValue(Double.TYPE.getClassLoader()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        public final Calendar getBill_date_calendar() {
            if (this.bill_date == null) {
                return null;
            }
            Calendar instance = Calendar.getInstance();
            instance.setTime(ChargeModel.Companion.getDATE_FORMAT().parse(this.bill_date));
            return instance;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            if (parcel != null) {
                parcel.writeString(this.bill_date);
            }
            if (parcel != null) {
                parcel.writeString(this.drawer_status);
            }
            if (parcel != null) {
                parcel.writeString(this.bik);
            }
            if (parcel != null) {
                parcel.writeValue(this.amount);
            }
            if (parcel != null) {
                parcel.writeString(this.corr_number);
            }
            if (parcel != null) {
                parcel.writeString(this.inn);
            }
            if (parcel != null) {
                parcel.writeString(this.kpp);
            }
            if (parcel != null) {
                parcel.writeString(this.purpose);
            }
            if (parcel != null) {
                parcel.writeString(this.recipient_name);
            }
            if (parcel != null) {
                parcel.writeString(this.bank_name);
            }
            if (parcel != null) {
                parcel.writeString(this.kbk);
            }
            if (parcel != null) {
                parcel.writeString(this.uin);
            }
            if (parcel != null) {
                parcel.writeString(this.oktmo);
            }
            if (parcel != null) {
                parcel.writeString(this.tax_basis);
            }
            if (parcel != null) {
                parcel.writeString(this.tax_period);
            }
            if (parcel != null) {
                parcel.writeString(this.tax_inn);
            }
            if (parcel != null) {
                parcel.writeString(this.tax_period_kind);
            }
            if (parcel != null) {
                parcel.writeString(this.payer_name);
            }
            if (parcel != null) {
                parcel.writeString(this.treasure_branch);
            }
        }
    }

    public static /* bridge */ /* synthetic */ ChargeModel copy$default(ChargeModel chargeModel, Integer num, String str, String str2, Double d, Double d2, String str3, String str4, Requisites requisites, int i, Object obj) {
        ChargeModel chargeModel2 = chargeModel;
        int i2 = i;
        return chargeModel2.copy((i2 & 1) != 0 ? chargeModel2.id : num, (i2 & 2) != 0 ? chargeModel2.document : str, (i2 & 4) != 0 ? chargeModel2.document_number : str2, (i2 & 8) != 0 ? chargeModel2.discount_size : d, (i2 & 16) != 0 ? chargeModel2.discount_amount : d2, (i2 & 32) != 0 ? chargeModel2.discount_date : str3, (i2 & 64) != 0 ? chargeModel2.warning : str4, (i2 & 128) != 0 ? chargeModel2.requisites : requisites);
    }

    public final Integer component1() {
        return this.id;
    }

    public final String component2() {
        return this.document;
    }

    public final String component3() {
        return this.document_number;
    }

    public final Double component4() {
        return this.discount_size;
    }

    public final Double component5() {
        return this.discount_amount;
    }

    public final String component6() {
        return this.discount_date;
    }

    public final String component7() {
        return this.warning;
    }

    public final Requisites component8() {
        return this.requisites;
    }

    public final ChargeModel copy(Integer num, String str, String str2, Double d, Double d2, String str3, String str4, Requisites requisites) {
        return new ChargeModel(num, str, str2, d, d2, str3, str4, requisites);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ChargeModel) {
                ChargeModel chargeModel = (ChargeModel) obj;
                if (Intrinsics.areEqual(this.id, chargeModel.id) && Intrinsics.areEqual(this.document, chargeModel.document) && Intrinsics.areEqual(this.document_number, chargeModel.document_number) && Intrinsics.areEqual(this.discount_size, chargeModel.discount_size) && Intrinsics.areEqual(this.discount_amount, chargeModel.discount_amount) && Intrinsics.areEqual(this.discount_date, chargeModel.discount_date) && Intrinsics.areEqual(this.warning, chargeModel.warning) && Intrinsics.areEqual(this.requisites, chargeModel.requisites)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Integer num = this.id;
        int i = 0;
        int hashCode = (num != null ? num.hashCode() : 0) * 31;
        String str = this.document;
        hashCode = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        str = this.document_number;
        hashCode = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        Double d = this.discount_size;
        hashCode = (hashCode + (d != null ? d.hashCode() : 0)) * 31;
        d = this.discount_amount;
        hashCode = (hashCode + (d != null ? d.hashCode() : 0)) * 31;
        str = this.discount_date;
        hashCode = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        str = this.warning;
        hashCode = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        Requisites requisites = this.requisites;
        if (requisites != null) {
            i = requisites.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ChargeModel(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", document=");
        stringBuilder.append(this.document);
        stringBuilder.append(", document_number=");
        stringBuilder.append(this.document_number);
        stringBuilder.append(", discount_size=");
        stringBuilder.append(this.discount_size);
        stringBuilder.append(", discount_amount=");
        stringBuilder.append(this.discount_amount);
        stringBuilder.append(", discount_date=");
        stringBuilder.append(this.discount_date);
        stringBuilder.append(", warning=");
        stringBuilder.append(this.warning);
        stringBuilder.append(", requisites=");
        stringBuilder.append(this.requisites);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ChargeModel(Integer num, String str, String str2, Double d, Double d2, String str3, String str4, Requisites requisites) {
        this.id = num;
        this.document = str;
        this.document_number = str2;
        this.discount_size = d;
        this.discount_amount = d2;
        this.discount_date = str3;
        this.warning = str4;
        this.requisites = requisites;
    }

    public final Integer getId() {
        return this.id;
    }

    public final String getDocument() {
        return this.document;
    }

    public final String getDocument_number() {
        return this.document_number;
    }

    public final Double getDiscount_size() {
        return this.discount_size;
    }

    public final Double getDiscount_amount() {
        return this.discount_amount;
    }

    public final String getDiscount_date() {
        return this.discount_date;
    }

    public final String getWarning() {
        return this.warning;
    }

    public final Requisites getRequisites() {
        return this.requisites;
    }

    public final Calendar getDiscount_date_calendar() {
        if (this.discount_date == null) {
            return null;
        }
        Calendar instance = Calendar.getInstance();
        instance.setTime(DATE_FORMAT.parse(this.discount_date));
        return instance;
    }

    public final DocumentType getDocument_type() {
        return DocumentType.valueOf(String.valueOf(this.document));
    }

    public ChargeModel(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "source");
        this(Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), (Double) parcel.readValue(Double.TYPE.getClassLoader()), (Double) parcel.readValue(Double.TYPE.getClassLoader()), parcel.readString(), parcel.readString(), (Requisites) parcel.readParcelable(Requisites.class.getClassLoader()));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        if (parcel != null) {
            i = this.id;
            parcel.writeInt(i != 0 ? i.intValue() : -1);
        }
        if (parcel != null) {
            parcel.writeString(this.document);
        }
        if (parcel != null) {
            parcel.writeString(this.document_number);
        }
        if (parcel != null) {
            parcel.writeValue(this.discount_size);
        }
        if (parcel != null) {
            parcel.writeValue(this.discount_amount);
        }
        if (parcel != null) {
            parcel.writeString(this.discount_date);
        }
        if (parcel != null) {
            parcel.writeString(this.warning);
        }
        if (parcel != null) {
            parcel.writeParcelable((Parcelable) this.requisites, 0);
        }
    }
}
