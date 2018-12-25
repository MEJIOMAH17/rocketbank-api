package ru.rocketbank.core.network.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.transfers.bank.BudgetRemittance;
import ru.rocketbank.core.model.transfers.bank.RecipientType;
import ru.rocketbank.core.model.transfers.bank.RemittanceKindResponseData.Kind;
import ru.rocketbank.core.model.transfers.bank.RemittanceOutgoing;

public class TransfersModelUrFiz implements Parcelable {
    public static final Creator<TransfersModelUrFiz> CREATOR = new C08321();
    @SerializedName("budget_remittance")
    public BudgetRemittance budgetRemittance;
    @SerializedName("card2card")
    public Card2Card card2card;
    @SerializedName("corporate_remittance")
    public Remittance corporateRemittance;
    public int happened_at;
    @SerializedName("individual_remittance")
    public Remittance individualRemittance;

    /* renamed from: ru.rocketbank.core.network.model.TransfersModelUrFiz$1 */
    static class C08321 implements Creator<TransfersModelUrFiz> {
        C08321() {
        }

        public final TransfersModelUrFiz createFromParcel(Parcel parcel) {
            return new TransfersModelUrFiz(parcel);
        }

        public final TransfersModelUrFiz[] newArray(int i) {
            return new TransfersModelUrFiz[i];
        }
    }

    public static class Card2Card implements Parcelable {
        public static final Creator<Card2Card> CREATOR = new C08341();
        public String bank;
        public String color;
        @SerializedName("feed_icon_url")
        public String feedIconUrl;
        public String image;
        public String logo;
        public String pan;
        @SerializedName("small2x_url")
        public String small2xUrl;
        public String title;
        public String token;

        /* renamed from: ru.rocketbank.core.network.model.TransfersModelUrFiz$Card2Card$1 */
        static class C08341 implements Creator<Card2Card> {
            C08341() {
            }

            public final Card2Card createFromParcel(Parcel parcel) {
                return new Card2Card(parcel);
            }

            public final Card2Card[] newArray(int i) {
                return new Card2Card[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        protected Card2Card(CardModel cardModel) {
            this.bank = cardModel.getBank();
            this.color = cardModel.getStringColor();
            this.image = cardModel.getImage();
            this.logo = cardModel.getLogo();
            this.pan = cardModel.getPan();
            this.title = cardModel.getTitle();
            this.token = cardModel.getToken();
            this.feedIconUrl = cardModel.getFeedIconUrl();
            this.small2xUrl = cardModel.getSmall2xUrl();
        }

        protected Card2Card(Parcel parcel) {
            this.token = parcel.readString();
            this.bank = parcel.readString();
            this.image = parcel.readString();
            this.logo = parcel.readString();
            this.color = parcel.readString();
            this.title = parcel.readString();
            this.pan = parcel.readString();
            this.feedIconUrl = parcel.readString();
            this.small2xUrl = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.token);
            parcel.writeString(this.bank);
            parcel.writeString(this.image);
            parcel.writeString(this.logo);
            parcel.writeString(this.color);
            parcel.writeString(this.title);
            parcel.writeString(this.pan);
            parcel.writeString(this.feedIconUrl);
            parcel.writeString(this.small2xUrl);
        }
    }

    public static class LinkedAccount implements Parcelable {
        public static final Creator<LinkedAccount> CREATOR = new C08351();
        public String formatted_number;
        public String title;
        public String token;

        /* renamed from: ru.rocketbank.core.network.model.TransfersModelUrFiz$LinkedAccount$1 */
        static class C08351 implements Creator<LinkedAccount> {
            C08351() {
            }

            public final LinkedAccount createFromParcel(Parcel parcel) {
                return new LinkedAccount(parcel);
            }

            public final LinkedAccount[] newArray(int i) {
                return new LinkedAccount[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public String getToken() {
            return this.token;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public String getFormatted_number() {
            return this.formatted_number;
        }

        public void setFormatted_number(String str) {
            this.formatted_number = str;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.formatted_number);
            parcel.writeString(this.title);
            parcel.writeString(this.token);
        }

        protected LinkedAccount(Parcel parcel) {
            this.formatted_number = parcel.readString();
            this.title = parcel.readString();
            this.token = parcel.readString();
        }
    }

    public static class Remittance implements Parcelable {
        public static final Creator<Remittance> CREATOR = new C08361();
        private String bank_name;
        private String bik;
        private String corr_bank;
        private String corr_number;
        private String icon_url;
        private String inn;
        private boolean isGkh = false;
        private String kpp;
        private LinkedAccount linked_account;
        private String nds;
        private String purpose;
        private String recipient_name;
        private String small_icon_url;
        private String status;

        /* renamed from: ru.rocketbank.core.network.model.TransfersModelUrFiz$Remittance$1 */
        static class C08361 implements Creator<Remittance> {
            C08361() {
            }

            public final Remittance createFromParcel(Parcel parcel) {
                return new Remittance(parcel);
            }

            public final Remittance[] newArray(int i) {
                return new Remittance[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public String getCorr_bank() {
            return this.corr_bank;
        }

        public void setCorr_bank(String str) {
            this.corr_bank = str;
        }

        public String getNds() {
            return this.nds;
        }

        public void setNds(String str) {
            this.nds = str;
        }

        public String getStatus() {
            return this.status;
        }

        public void setStatus(String str) {
            this.status = str;
        }

        public String getBank_name() {
            return this.bank_name;
        }

        public void setBank_name(String str) {
            this.bank_name = str;
        }

        public String getRecipient_name() {
            return this.recipient_name;
        }

        public void setRecipient_name(String str) {
            this.recipient_name = str;
        }

        public String getPurpose() {
            return this.purpose;
        }

        public void setPurpose(String str) {
            this.purpose = str;
        }

        public String getKpp() {
            return this.kpp;
        }

        public void setKpp(String str) {
            this.kpp = str;
        }

        public String getInn() {
            return this.inn;
        }

        public void setInn(String str) {
            this.inn = str;
        }

        public String getCorr_number() {
            return this.corr_number;
        }

        public void setCorr_number(String str) {
            this.corr_number = str;
        }

        public String getBik() {
            return this.bik;
        }

        public void setBik(String str) {
            this.bik = str;
        }

        public String getIcon_url() {
            return this.icon_url;
        }

        public void setIcon_url(String str) {
            this.icon_url = str;
        }

        public String getSmall_icon_url() {
            return this.small_icon_url;
        }

        public void setSmall_icon_url(String str) {
            this.small_icon_url = str;
        }

        public LinkedAccount getLinked_account() {
            return this.linked_account;
        }

        public void setLinked_account(LinkedAccount linkedAccount) {
            this.linked_account = linkedAccount;
        }

        protected Remittance() {
        }

        protected Remittance(Parcel parcel) {
            boolean z = false;
            this.small_icon_url = parcel.readString();
            this.icon_url = parcel.readString();
            this.bik = parcel.readString();
            this.corr_number = parcel.readString();
            this.inn = parcel.readString();
            this.kpp = parcel.readString();
            this.purpose = parcel.readString();
            this.recipient_name = parcel.readString();
            this.bank_name = parcel.readString();
            this.status = parcel.readString();
            this.nds = parcel.readString();
            this.corr_bank = parcel.readString();
            this.linked_account = (LinkedAccount) parcel.readParcelable(LinkedAccount.class.getClassLoader());
            if (parcel.readByte() == 1) {
                z = true;
            }
            this.isGkh = z;
        }

        public RemittanceOutgoing toRemittanceOutgoing(RecipientType recipientType) {
            RemittanceOutgoing remittanceOutgoing = new RemittanceOutgoing(this);
            switch (recipientType) {
                case PERSON:
                    remittanceOutgoing.setRemittance_kind(Kind.individual.name());
                    break;
                case BUSINESS:
                    remittanceOutgoing.setRemittance_kind(Kind.corporate.name());
                    break;
                case BUDGET:
                    remittanceOutgoing.setRemittance_kind(Kind.budget.name());
                    break;
                default:
                    break;
            }
            return remittanceOutgoing;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.small_icon_url);
            parcel.writeString(this.icon_url);
            parcel.writeString(this.bik);
            parcel.writeString(this.corr_number);
            parcel.writeString(this.inn);
            parcel.writeString(this.kpp);
            parcel.writeString(this.purpose);
            parcel.writeString(this.recipient_name);
            parcel.writeString(this.bank_name);
            parcel.writeString(this.status);
            parcel.writeString(this.nds);
            parcel.writeString(this.corr_bank);
            parcel.writeParcelable(this.linked_account, i);
            parcel.writeByte(this.isGkh);
        }

        public boolean isGkh() {
            return this.isGkh;
        }

        public void setGkh(boolean z) {
            this.isGkh = z;
        }
    }

    public int describeContents() {
        return 0;
    }

    public int getHappened_at() {
        return this.happened_at;
    }

    public Card2Card getCard2card() {
        return this.card2card;
    }

    public Remittance getRemittance() {
        if (this.corporateRemittance != null) {
            return this.corporateRemittance;
        }
        if (this.individualRemittance != null) {
            return this.individualRemittance;
        }
        return this.budgetRemittance != null ? this.budgetRemittance : null;
    }

    public TransfersModelUrFiz(CardModel cardModel) {
        this.card2card = new Card2Card(cardModel);
    }

    public boolean isCorporate() {
        return this.corporateRemittance != null;
    }

    public boolean isIndividual() {
        return this.individualRemittance != null;
    }

    public boolean isBudget() {
        return this.budgetRemittance != null;
    }

    public RecipientType getRecipientType() {
        if (isIndividual()) {
            return RecipientType.PERSON;
        }
        if (isCorporate()) {
            return RecipientType.BUSINESS;
        }
        if (isCard2Card()) {
            return RecipientType.CARD2CARD;
        }
        return RecipientType.BUDGET;
    }

    public boolean isCard2Card() {
        return this.card2card != null;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.happened_at);
        parcel.writeParcelable(this.corporateRemittance, i);
        parcel.writeParcelable(this.individualRemittance, i);
        parcel.writeParcelable(this.card2card, i);
        parcel.writeParcelable(this.budgetRemittance, i);
    }

    protected TransfersModelUrFiz(Parcel parcel) {
        this.happened_at = parcel.readInt();
        this.corporateRemittance = (Remittance) parcel.readParcelable(Remittance.class.getClassLoader());
        this.individualRemittance = (Remittance) parcel.readParcelable(Remittance.class.getClassLoader());
        this.card2card = (Card2Card) parcel.readParcelable(Card2Card.class.getClassLoader());
        this.budgetRemittance = (BudgetRemittance) parcel.readParcelable(BudgetRemittance.class.getClassLoader());
    }
}
