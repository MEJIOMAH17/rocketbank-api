package ru.rocketbank.core.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.FeedManager.Companion;
import ru.rocketbank.core.model.enums.BlockReason;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.model.enums.Status;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.model.migration.Migration;
import ru.rocketbank.core.model.migration.MigrationURLs;

public final class UserModel implements Parcelable {
    public static final Creator<UserModel> CREATOR = new C07991();
    @SerializedName("accounts")
    private ArrayList<AccountModel> accounts;
    private ArrayList<String> atm_kinds;
    @SerializedName("atms_hash")
    private int atmsHash;
    @SerializedName("available_accounts")
    private ArrayList<AvailableAccount> availableAccounts;
    @SerializedName("available_cards")
    private ArrayList<AvailableCardModel> availableCards;
    @SerializedName("block_reason")
    private String blockReason;
    @SerializedName("change_codeword")
    private ChangeCodeWord changeCodeWord;
    @SerializedName("change_mobile_phone")
    private ChangeMobilePhone changeMobilePhone;
    @SerializedName("change_short_code")
    private ChangeShortCode changeShortCode;
    @SerializedName("contacts_hash")
    private String contactsHash;
    @SerializedName("cover")
    private CoverModel cover;
    @SerializedName("ctc")
    private String ctc;
    @SerializedName("deposits")
    private ArrayList<DepositModel> deposits;
    @SerializedName("driver_licence")
    private String driverLicence;
    @SerializedName("email")
    private String email;
    @SerializedName("first_name")
    private String firstName;
    @SerializedName("foreign_joint_accounts")
    private JointAccount[] foreignJointAccounts;
    @SerializedName("gender")
    private String gender;
    @SerializedName("id")
    private long id;
    private ArrayList<Info> info;
    @SerializedName("inn")
    private String inn;
    @SerializedName("invitation_revenue")
    private int invitationRevenue;
    @SerializedName("invites")
    private InvitesModel invites;
    @SerializedName("can_open_deposit")
    private boolean isCanOpenDeposit;
    @SerializedName("deposit_works")
    private boolean isDepositWorks;
    @SerializedName("issues")
    private ArrayList<IssueModel> issues;
    @SerializedName("joint_accounts")
    private JointAccount[] jointAccounts;
    @SerializedName("last_name")
    private String lastName;
    @SerializedName("linked_cards")
    private ArrayList<CardModel> linkedCards;
    @SerializedName("login_token")
    private String loginToken;
    @SerializedName("tochka_joining")
    private Migration migration;
    @SerializedName("tochka_joining_urls")
    private MigrationURLs migrationURLs;
    @SerializedName("miles")
    private float miles;
    @SerializedName("mkb_works")
    private boolean mkbWorks;
    @SerializedName("onetwotrip_uid")
    private String onetwotripUid;
    @SerializedName("operations_per_page")
    private int operationsPerPage = 30;
    @SerializedName("penalty_tax_notifications")
    private boolean penaltyTaxNotifications;
    @SerializedName("phone")
    private PhoneModel phone;
    @SerializedName("providers_hash")
    private int providersHash;
    @SerializedName("pusher_token")
    private String pusherToken;
    private Rates rates;
    private ArrayList<SafeAccount> safe_accounts;
    @SerializedName("second_name")
    private String secondName;
    private AccountModel selectedCurrentAccount;
    @SerializedName("shop_works")
    private boolean shopWorks;
    @SerializedName("short_term_login")
    private boolean shortTermLogin;
    private String sound;
    @SerializedName("status")
    private String status;
    @SerializedName("transfer_linked_cards")
    private ArrayList<CardModel> transferLinkedCards;
    @SerializedName("transfers")
    private ArrayList<TransferModel> transfers;
    @SerializedName("unread_messages")
    private int unreadMessages;
    @SerializedName("username")
    private UsernameModel username;
    @SerializedName("userpic_url")
    private String userpicUrl;
    @SerializedName("widget_token")
    public String widgetToken;

    /* renamed from: ru.rocketbank.core.model.UserModel$1 */
    static class C07991 implements Creator<UserModel> {
        C07991() {
        }

        public final UserModel createFromParcel(Parcel parcel) {
            return new UserModel(parcel);
        }

        public final UserModel[] newArray(int i) {
            return new UserModel[i];
        }
    }

    public enum Gender {
        male,
        female
    }

    public static class Info extends ArrayList<String> implements Parcelable {
        public static final Creator<Info> CREATOR = new C08001();

        /* renamed from: ru.rocketbank.core.model.UserModel$Info$1 */
        static class C08001 implements Creator<Info> {
            C08001() {
            }

            public final Info createFromParcel(Parcel parcel) {
                return new Info(parcel);
            }

            public final Info[] newArray(int i) {
                return new Info[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
        }

        protected Info(Parcel parcel) {
        }

        public String getTitle() {
            return (String) get(0);
        }

        public String getURL() {
            return (String) get(1);
        }
    }

    public static class Rates implements Parcelable {
        public static final Creator<Rates> CREATOR = new C08011();
        private double card_eur;
        private double card_usd;
        private String url;

        /* renamed from: ru.rocketbank.core.model.UserModel$Rates$1 */
        static class C08011 implements Creator<Rates> {
            C08011() {
            }

            public final Rates createFromParcel(Parcel parcel) {
                return new Rates(parcel);
            }

            public final Rates[] newArray(int i) {
                return new Rates[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        public double getCardUsd() {
            return this.card_usd;
        }

        public double getCardEur() {
            return this.card_eur;
        }

        public String getUrl() {
            return this.url;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeDouble(this.card_usd);
            parcel.writeDouble(this.card_eur);
            parcel.writeString(this.url);
        }

        protected Rates(Parcel parcel) {
            this.card_usd = parcel.readDouble();
            this.card_eur = parcel.readDouble();
            this.url = parcel.readString();
        }
    }

    public final int describeContents() {
        return 0;
    }

    public final ChangeCodeWord getChangeCodeWord() {
        return this.changeCodeWord;
    }

    public final String getSound() {
        return this.sound;
    }

    public final void setMkbWorks(boolean z) {
        this.mkbWorks = z;
    }

    public final String getOnetwotripUid() {
        return this.onetwotripUid;
    }

    public final int getOperationsPerPage() {
        return this.operationsPerPage;
    }

    public final boolean isDepositWorks() {
        return this.isDepositWorks;
    }

    public final void setDepositWorks(boolean z) {
        this.isDepositWorks = z;
    }

    public final boolean isCanOpenDeposit() {
        return this.isCanOpenDeposit;
    }

    public final void setCanOpenDeposit(boolean z) {
        this.isCanOpenDeposit = z;
    }

    public final boolean isPenaltyTaxNotifications() {
        return this.penaltyTaxNotifications;
    }

    public final String getCtc() {
        return this.ctc;
    }

    public final String getDriverLicence() {
        return this.driverLicence;
    }

    public final String getInn() {
        return this.inn;
    }

    public final boolean isMkbWorks() {
        return this.mkbWorks;
    }

    public final boolean isShopWorks() {
        return this.shopWorks;
    }

    public final int getUnreadMessages() {
        return this.unreadMessages;
    }

    public final void setUnreadMessages(int i) {
        this.unreadMessages = i;
    }

    public final ArrayList<AvailableAccount> getAvailableAccounts() {
        return this.availableAccounts;
    }

    public final boolean isShortTermLogin() {
        return this.shortTermLogin;
    }

    public final void setShortTermLogin(boolean z) {
        this.shortTermLogin = z;
    }

    public final float getMiles() {
        return this.miles;
    }

    public final long getId() {
        return this.id;
    }

    public final int getAtmsHash() {
        return this.atmsHash;
    }

    public final int getProvidersHash() {
        return this.providersHash;
    }

    public final int getInvitationRevenue() {
        return this.invitationRevenue;
    }

    public final AccountModel getCurrentAccountOrLocked() {
        if (this.selectedCurrentAccount != null) {
            return this.selectedCurrentAccount;
        }
        Iterator it = this.accounts.iterator();
        while (it.hasNext()) {
            AccountModel accountModel = (AccountModel) it.next();
            Status statusValue = accountModel.getStatusValue();
            if (accountModel.getCurrency() == Currency.ROUBLE && (statusValue.equals(Status.ACTIVE) || statusValue.equals(Status.NEW))) {
                this.selectedCurrentAccount = accountModel;
                return accountModel;
            }
        }
        if (this.selectedCurrentAccount == null) {
            it = this.accounts.iterator();
            while (it.hasNext()) {
                accountModel = (AccountModel) it.next();
                if (accountModel.getCurrency() == Currency.ROUBLE && accountModel.isBlocked() && accountModel.getMain()) {
                    return accountModel;
                }
            }
        }
        return null;
    }

    public final AccountModel getCurrentAccount() {
        if (this.selectedCurrentAccount != null) {
            return this.selectedCurrentAccount;
        }
        for (int i = 0; i < this.accounts.size(); i++) {
            AccountModel accountModel = (AccountModel) this.accounts.get(i);
            Status statusValue = accountModel.getStatusValue();
            if (accountModel.getCurrency() == Currency.ROUBLE && ((statusValue.equals(Status.ACTIVE) || statusValue.equals(Status.NEW)) && accountModel.getMain())) {
                this.selectedCurrentAccount = accountModel;
                return accountModel;
            }
        }
        return null;
    }

    public final Account getActiveAccount() {
        AccountModel currentAccount = getCurrentAccount();
        return currentAccount != null ? new Account(currentAccount) : null;
    }

    public final String getGender() {
        return this.gender;
    }

    public final CoverModel getCover() {
        return this.cover;
    }

    public final InvitesModel getInvites() {
        return this.invites;
    }

    public final ArrayList<AvailableCardModel> getAvailableCards() {
        return this.availableCards;
    }

    public final ArrayList<AccountModel> getAccounts() {
        return this.accounts;
    }

    public final void setAccounts(ArrayList<AccountModel> arrayList) {
        this.accounts = arrayList;
    }

    public final AccountModel getAccount(String str) {
        Iterator it = this.accounts.iterator();
        while (it.hasNext()) {
            AccountModel accountModel = (AccountModel) it.next();
            if (accountModel.getToken().equalsIgnoreCase(str)) {
                return accountModel;
            }
        }
        return null;
    }

    public final void setAccount(AccountModel accountModel) {
        int indexOf = this.accounts.indexOf(accountModel);
        this.accounts.remove(indexOf);
        this.accounts.add(indexOf, accountModel);
    }

    public final List<DepositModel> getDeposits() {
        return this.deposits;
    }

    public final List<IssueModel> getIssues() {
        return this.issues;
    }

    public final List<CardModel> getLinkedCards() {
        return this.linkedCards;
    }

    public final List<CardModel> getTransferLinkedCards() {
        return this.transferLinkedCards;
    }

    public final List<TransferModel> getTransfers() {
        return this.transfers;
    }

    public final PhoneModel getPhone() {
        return this.phone;
    }

    public final Status getStatus() {
        return Status.fromString(this.status);
    }

    public final BlockReason getBlockReason() {
        return BlockReason.fromString(this.blockReason);
    }

    public final void setUserStatus(Status status) {
        this.status = status.toString();
    }

    public final void setBlockReason(String str) {
        this.blockReason = str;
    }

    public final String getContactsHash() {
        return this.contactsHash;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getFirstName() {
        return this.firstName;
    }

    public final String getLastName() {
        return this.lastName;
    }

    public final String getLoginToken() {
        return this.loginToken;
    }

    public final String getPusherToken() {
        return this.pusherToken;
    }

    public final String getSecondName() {
        return this.secondName;
    }

    public final String getUserpicUrl() {
        return this.userpicUrl;
    }

    public final void setUserpicUrl(String str) {
        this.userpicUrl = str;
    }

    public final UsernameModel getUsername() {
        return this.username;
    }

    public final ChangeShortCode getChangeShortCode() {
        return this.changeShortCode;
    }

    public final ChangeMobilePhone getChangeMobilePhone() {
        return this.changeMobilePhone;
    }

    public final ArrayList<String> getAtmKinds() {
        return this.atm_kinds;
    }

    public final ArrayList<Info> getInfo() {
        return this.info;
    }

    public final JointAccount getJointAccount() {
        int i = 0;
        for (JointAccount jointAccount : getForeignJointAccounts()) {
            if (jointAccount.isConfirmed()) {
                JointAccount jointAccount2 = new JointAccount();
                jointAccount2.setId(jointAccount.getId());
                jointAccount2.setJoint_user_avatar(jointAccount.getUser_avatar());
                jointAccount2.setJoint_user_name(jointAccount.getUser_name());
                return jointAccount2;
            }
        }
        JointAccount[] jointAccounts = getJointAccounts();
        int length = jointAccounts.length;
        while (i < length) {
            JointAccount jointAccount3 = jointAccounts[i];
            if (jointAccount3.isConfirmed()) {
                return jointAccount3;
            }
            i++;
        }
        return null;
    }

    public final SafeAccount getSafeAccount(String str) {
        for (int i = 0; i < this.safe_accounts.size(); i++) {
            SafeAccount safeAccount = (SafeAccount) this.safe_accounts.get(i);
            if (safeAccount.getToken().equalsIgnoreCase(str)) {
                return safeAccount;
            }
        }
        return null;
    }

    public final void setMigration(Migration migration) {
        this.migration = migration;
    }

    public final Rates getRates() {
        return this.rates;
    }

    public final JointAccount[] getForeignJointAccounts() {
        return this.foreignJointAccounts;
    }

    public final JointAccount[] getJointAccounts() {
        return this.jointAccounts;
    }

    public final ArrayList<SafeAccount> getSafeAccounts() {
        return this.safe_accounts;
    }

    public final Migration getMigration() {
        return this.migration;
    }

    public final MigrationURLs getMigrationURLs() {
        return this.migrationURLs;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.shortTermLogin);
        parcel.writeFloat(this.miles);
        parcel.writeLong(this.id);
        parcel.writeInt(this.atmsHash);
        parcel.writeInt(this.providersHash);
        parcel.writeInt(this.invitationRevenue);
        parcel.writeParcelable(this.cover, i);
        parcel.writeParcelable(this.invites, i);
        parcel.writeString(this.gender);
        parcel.writeTypedList(this.accounts);
        parcel.writeTypedList(this.availableCards);
        parcel.writeTypedList(this.deposits);
        parcel.writeTypedList(this.issues);
        parcel.writeTypedList(this.linkedCards);
        parcel.writeTypedList(this.transferLinkedCards);
        parcel.writeTypedList(this.transfers);
        parcel.writeParcelable(this.phone, i);
        parcel.writeString(this.contactsHash);
        parcel.writeString(this.email);
        parcel.writeString(this.firstName);
        parcel.writeString(this.loginToken);
        parcel.writeString(this.lastName);
        parcel.writeString(this.pusherToken);
        parcel.writeString(this.secondName);
        parcel.writeString(this.status);
        parcel.writeString(this.userpicUrl);
        parcel.writeParcelable(this.username, i);
        parcel.writeParcelable(this.changeMobilePhone, i);
        parcel.writeParcelable(this.changeCodeWord, i);
        parcel.writeParcelable(this.changeShortCode, i);
        parcel.writeParcelable(this.migration, i);
        parcel.writeParcelable(this.migrationURLs, i);
        parcel.writeParcelable(this.rates, i);
        parcel.writeByte(this.isDepositWorks);
        parcel.writeByte(this.isCanOpenDeposit);
        parcel.writeByte(this.penaltyTaxNotifications);
        parcel.writeString(this.ctc);
        parcel.writeString(this.driverLicence);
        parcel.writeString(this.inn);
        parcel.writeByte(this.mkbWorks);
        parcel.writeByte(this.shopWorks);
        parcel.writeString(this.onetwotripUid);
        parcel.writeInt(this.operationsPerPage);
        parcel.writeInt(this.unreadMessages);
        parcel.writeTypedList(this.info);
        parcel.writeStringList(this.atm_kinds);
        parcel.writeTypedList(this.safe_accounts);
        parcel.writeTypedList(this.availableAccounts);
        parcel.writeParcelable(this.selectedCurrentAccount, i);
        parcel.writeString(this.blockReason);
    }

    public UserModel() {
        Companion companion = FeedManager.Companion;
    }

    protected UserModel(Parcel parcel) {
        Companion companion = FeedManager.Companion;
        boolean z = false;
        this.shortTermLogin = parcel.readByte() != (byte) 0;
        this.miles = parcel.readFloat();
        this.id = parcel.readLong();
        this.atmsHash = parcel.readInt();
        this.providersHash = parcel.readInt();
        this.invitationRevenue = parcel.readInt();
        this.cover = (CoverModel) parcel.readParcelable(CoverModel.class.getClassLoader());
        this.invites = (InvitesModel) parcel.readParcelable(InvitesModel.class.getClassLoader());
        this.gender = parcel.readString();
        this.accounts = parcel.createTypedArrayList(AccountModel.CREATOR);
        this.availableCards = parcel.createTypedArrayList(AvailableCardModel.CREATOR);
        this.deposits = parcel.createTypedArrayList(DepositModel.CREATOR);
        this.issues = parcel.createTypedArrayList(IssueModel.CREATOR);
        this.linkedCards = parcel.createTypedArrayList(CardModel.CREATOR);
        this.transferLinkedCards = parcel.createTypedArrayList(CardModel.CREATOR);
        this.transfers = parcel.createTypedArrayList(TransferModel.CREATOR);
        this.phone = (PhoneModel) parcel.readParcelable(PhoneModel.class.getClassLoader());
        this.contactsHash = parcel.readString();
        this.email = parcel.readString();
        this.firstName = parcel.readString();
        this.loginToken = parcel.readString();
        this.lastName = parcel.readString();
        this.pusherToken = parcel.readString();
        this.secondName = parcel.readString();
        this.status = parcel.readString();
        this.userpicUrl = parcel.readString();
        this.username = (UsernameModel) parcel.readParcelable(UsernameModel.class.getClassLoader());
        this.changeMobilePhone = (ChangeMobilePhone) parcel.readParcelable(ChangeMobilePhone.class.getClassLoader());
        this.changeCodeWord = (ChangeCodeWord) parcel.readParcelable(ChangeCodeWord.class.getClassLoader());
        this.changeShortCode = (ChangeShortCode) parcel.readParcelable(ChangeShortCode.class.getClassLoader());
        this.migration = (Migration) parcel.readParcelable(Migration.class.getClassLoader());
        this.migrationURLs = (MigrationURLs) parcel.readParcelable(MigrationURLs.class.getClassLoader());
        this.rates = (Rates) parcel.readParcelable(Rates.class.getClassLoader());
        this.isDepositWorks = parcel.readByte() != (byte) 0;
        this.isCanOpenDeposit = parcel.readByte() != (byte) 0;
        this.penaltyTaxNotifications = parcel.readByte() != (byte) 0;
        this.ctc = parcel.readString();
        this.driverLicence = parcel.readString();
        this.inn = parcel.readString();
        this.mkbWorks = parcel.readByte() != (byte) 0;
        if (parcel.readByte() != (byte) 0) {
            z = true;
        }
        this.shopWorks = z;
        this.onetwotripUid = parcel.readString();
        this.operationsPerPage = parcel.readInt();
        this.unreadMessages = parcel.readInt();
        this.info = parcel.createTypedArrayList(Info.CREATOR);
        this.atm_kinds = parcel.createStringArrayList();
        this.safe_accounts = parcel.createTypedArrayList(SafeAccount.CREATOR);
        this.availableAccounts = parcel.createTypedArrayList(AvailableAccount.CREATOR);
        this.selectedCurrentAccount = (AccountModel) parcel.readParcelable(AccountModel.class.getClassLoader());
        this.blockReason = parcel.readString();
    }
}
