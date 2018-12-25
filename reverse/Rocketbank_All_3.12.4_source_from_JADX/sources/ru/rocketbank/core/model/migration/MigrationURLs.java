package ru.rocketbank.core.model.migration;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MigrationURLs implements Parcelable {
    public static final Creator<MigrationURLs> CREATOR = new C08211();
    private String compare_tariff_url;
    private String faq_url;
    private String old_card_fate_url;
    private String rules_url;

    /* renamed from: ru.rocketbank.core.model.migration.MigrationURLs$1 */
    static class C08211 implements Creator<MigrationURLs> {
        C08211() {
        }

        public final MigrationURLs createFromParcel(Parcel parcel) {
            return new MigrationURLs(parcel);
        }

        public final MigrationURLs[] newArray(int i) {
            return new MigrationURLs[i];
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getCompareTariffUrl() {
        return this.compare_tariff_url;
    }

    public String getFaqUrl() {
        return this.faq_url;
    }

    public String getOldCardFateUrl() {
        return this.old_card_fate_url;
    }

    public String getRulesUrl() {
        return this.rules_url;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.compare_tariff_url);
        parcel.writeString(this.faq_url);
        parcel.writeString(this.old_card_fate_url);
        parcel.writeString(this.rules_url);
    }

    protected MigrationURLs(Parcel parcel) {
        this.compare_tariff_url = parcel.readString();
        this.faq_url = parcel.readString();
        this.old_card_fate_url = parcel.readString();
        this.rules_url = parcel.readString();
    }
}
