package ru.rocketbank.core.model.dto.operations;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AbstractOperation;
import ru.rocketbank.core.model.Image;
import ru.rocketbank.core.model.MoneyData;
import ru.rocketbank.core.model.card.LinkedCard;
import ru.rocketbank.core.model.payments.Payment;
import ru.rocketbank.core.network.model.ContextShopItem;
import ru.rocketbank.core.network.model.operation.FriendRequestType;
import ru.rocketbank.core.network.model.operation.OperationContextType;
import ru.rocketbank.core.utils.MoneyFormatter;

/* compiled from: Operation.kt */
public final class Operation extends AbstractOperation implements Parcelable {
    public static final Creator<Operation> CREATOR = new Operation$$special$$inlined$createParcel$1();
    public static final Companion Companion = new Companion();
    public static final String STATUS_PENDING_VISIBLE = "pending_visible";
    private OperationAnalytics analytics;
    private OperationCategory category;
    private String comment;
    private String compensation_status;
    @SerializedName("context_type")
    private OperationContextType contextType = OperationContextType.None;
    private Image cover;
    @SerializedName("decline_reason")
    private String declineReason;
    private String description;
    private String details;
    @SerializedName("display_money")
    private MoneyData displayMoney;
    @SerializedName("exchange_details")
    private ExchangeDetails exchangeDetails;
    private Friend friend;
    @SerializedName("friend_transfer_type")
    private FriendRequestType friendTransferType = FriendRequestType.None;
    @SerializedName("has_receipt")
    private boolean isHasReceipt;
    @SerializedName("linked_card")
    private LinkedCard linkedCard;
    private Location location;
    private Merchant merchant;
    private Miles miles;
    private double mimimiles;
    private MoneyData money;
    private Operation parent_operation;
    private Payment payment;
    @SerializedName("receipt_url")
    private String receiptUrl;
    @SerializedName("shop_items")
    private List<ContextShopItem> shopItems;
    private Boolean sputnik;
    private String status;

    /* compiled from: Operation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: Operation.kt */
    public static final class ExchangeDetails {
        private final double from_amount;
        private final String from_currency;
        private final double rate;
        private final double to_amount;
        private final String to_currency;

        public static /* bridge */ /* synthetic */ ExchangeDetails copy$default(ExchangeDetails exchangeDetails, String str, String str2, double d, double d2, double d3, int i, Object obj) {
            ExchangeDetails exchangeDetails2 = exchangeDetails;
            return exchangeDetails2.copy((i & 1) != 0 ? exchangeDetails2.from_currency : str, (i & 2) != 0 ? exchangeDetails2.to_currency : str2, (i & 4) != 0 ? exchangeDetails2.from_amount : d, (i & 8) != 0 ? exchangeDetails2.to_amount : d2, (i & 16) != 0 ? exchangeDetails2.rate : d3);
        }

        public final String component1() {
            return this.from_currency;
        }

        public final String component2() {
            return this.to_currency;
        }

        public final double component3() {
            return this.from_amount;
        }

        public final double component4() {
            return this.to_amount;
        }

        public final double component5() {
            return this.rate;
        }

        public final ExchangeDetails copy(String str, String str2, double d, double d2, double d3) {
            String str3 = str;
            Intrinsics.checkParameterIsNotNull(str3, "from_currency");
            String str4 = str2;
            Intrinsics.checkParameterIsNotNull(str4, "to_currency");
            return new ExchangeDetails(str3, str4, d, d2, d3);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof ExchangeDetails) {
                    ExchangeDetails exchangeDetails = (ExchangeDetails) obj;
                    if (Intrinsics.areEqual(this.from_currency, exchangeDetails.from_currency) && Intrinsics.areEqual(this.to_currency, exchangeDetails.to_currency) && Double.compare(this.from_amount, exchangeDetails.from_amount) == 0 && Double.compare(this.to_amount, exchangeDetails.to_amount) == 0 && Double.compare(this.rate, exchangeDetails.rate) == 0) {
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            String str = this.from_currency;
            int i = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.to_currency;
            if (str2 != null) {
                i = str2.hashCode();
            }
            hashCode = (hashCode + i) * 31;
            long doubleToLongBits = Double.doubleToLongBits(this.from_amount);
            hashCode = (hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
            doubleToLongBits = Double.doubleToLongBits(this.to_amount);
            hashCode = (hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
            doubleToLongBits = Double.doubleToLongBits(this.rate);
            return hashCode + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("ExchangeDetails(from_currency=");
            stringBuilder.append(this.from_currency);
            stringBuilder.append(", to_currency=");
            stringBuilder.append(this.to_currency);
            stringBuilder.append(", from_amount=");
            stringBuilder.append(this.from_amount);
            stringBuilder.append(", to_amount=");
            stringBuilder.append(this.to_amount);
            stringBuilder.append(", rate=");
            stringBuilder.append(this.rate);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public ExchangeDetails(String str, String str2, double d, double d2, double d3) {
            Intrinsics.checkParameterIsNotNull(str, "from_currency");
            Intrinsics.checkParameterIsNotNull(str2, "to_currency");
            this.from_currency = str;
            this.to_currency = str2;
            this.from_amount = d;
            this.to_amount = d2;
            this.rate = d3;
        }

        public final String getFrom_currency() {
            return this.from_currency;
        }

        public final String getTo_currency() {
            return this.to_currency;
        }

        public final double getFrom_amount() {
            return this.from_amount;
        }

        public final double getTo_amount() {
            return this.to_amount;
        }

        public final double getRate() {
            return this.rate;
        }
    }

    public final Boolean getSputnik() {
        return this.sputnik;
    }

    public final void setSputnik(Boolean bool) {
        this.sputnik = bool;
    }

    public final String getCompensation_status() {
        return this.compensation_status;
    }

    public final void setCompensation_status(String str) {
        this.compensation_status = str;
    }

    public final OperationAnalytics getAnalytics() {
        return this.analytics;
    }

    public final void setAnalytics(OperationAnalytics operationAnalytics) {
        this.analytics = operationAnalytics;
    }

    public final LinkedCard getLinkedCard() {
        return this.linkedCard;
    }

    public final void setLinkedCard(LinkedCard linkedCard) {
        this.linkedCard = linkedCard;
    }

    public final FriendRequestType getFriendTransferType() {
        return this.friendTransferType;
    }

    public final void setFriendTransferType(FriendRequestType friendRequestType) {
        Intrinsics.checkParameterIsNotNull(friendRequestType, "<set-?>");
        this.friendTransferType = friendRequestType;
    }

    public final Miles getMiles() {
        return this.miles;
    }

    public final void setMiles(Miles miles) {
        this.miles = miles;
    }

    public final Friend getFriend() {
        return this.friend;
    }

    public final void setFriend(Friend friend) {
        this.friend = friend;
    }

    public final Payment getPayment() {
        return this.payment;
    }

    public final void setPayment(Payment payment) {
        this.payment = payment;
    }

    public final Operation getParent_operation() {
        return this.parent_operation;
    }

    public final void setParent_operation(Operation operation) {
        this.parent_operation = operation;
    }

    public final List<ContextShopItem> getShopItems() {
        return this.shopItems;
    }

    public final void setShopItems(List<ContextShopItem> list) {
        this.shopItems = list;
    }

    public final String getDescription() {
        return this.description;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final String getStatus() {
        return this.status;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final String getComment() {
        return this.comment;
    }

    public final void setComment(String str) {
        this.comment = str;
    }

    public final String getDetails() {
        return this.details;
    }

    public final void setDetails(String str) {
        this.details = str;
    }

    public final double getMimimiles() {
        return this.mimimiles;
    }

    public final void setMimimiles(double d) {
        this.mimimiles = d;
    }

    public final MoneyData getDisplayMoney() {
        return this.displayMoney;
    }

    public final void setDisplayMoney(MoneyData moneyData) {
        this.displayMoney = moneyData;
    }

    public final MoneyData getMoney() {
        return this.money;
    }

    public final void setMoney(MoneyData moneyData) {
        this.money = moneyData;
    }

    public final OperationCategory getCategory() {
        return this.category;
    }

    public final void setCategory(OperationCategory operationCategory) {
        this.category = operationCategory;
    }

    public final Merchant getMerchant() {
        return this.merchant;
    }

    public final void setMerchant(Merchant merchant) {
        this.merchant = merchant;
    }

    public final Location getLocation() {
        return this.location;
    }

    public final void setLocation(Location location) {
        this.location = location;
    }

    public final Image getCover() {
        return this.cover;
    }

    public final void setCover(Image image) {
        this.cover = image;
    }

    public final OperationContextType getContextType() {
        return this.contextType;
    }

    public final void setContextType(OperationContextType operationContextType) {
        Intrinsics.checkParameterIsNotNull(operationContextType, "<set-?>");
        this.contextType = operationContextType;
    }

    public final boolean isHasReceipt() {
        return this.isHasReceipt;
    }

    public final void setHasReceipt(boolean z) {
        this.isHasReceipt = z;
    }

    public final String getReceiptUrl() {
        return this.receiptUrl;
    }

    public final void setReceiptUrl(String str) {
        this.receiptUrl = str;
    }

    public final String getDeclineReason() {
        return this.declineReason;
    }

    public final void setDeclineReason(String str) {
        this.declineReason = str;
    }

    public final ExchangeDetails getExchangeDetails() {
        return this.exchangeDetails;
    }

    public final void setExchangeDetails(ExchangeDetails exchangeDetails) {
        this.exchangeDetails = exchangeDetails;
    }

    protected Operation(Parcel parcel) {
        Intrinsics.checkParameterIsNotNull(parcel, "in");
        super(parcel);
        this.status = parcel.readString();
        this.comment = parcel.readString();
        this.details = parcel.readString();
        this.analytics = (OperationAnalytics) parcel.readParcelable(OperationAnalytics.class.getClassLoader());
        this.mimimiles = parcel.readDouble();
        this.displayMoney = (MoneyData) parcel.readParcelable(MoneyData.class.getClassLoader());
        this.money = (MoneyData) parcel.readParcelable(MoneyData.class.getClassLoader());
        this.category = (OperationCategory) parcel.readParcelable(OperationCategory.class.getClassLoader());
        this.merchant = (Merchant) parcel.readParcelable(Merchant.class.getClassLoader());
        String readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.friendTransferType = FriendRequestType.valueOf(readString);
        this.miles = (Miles) parcel.readParcelable(Miles.class.getClassLoader());
        this.friend = (Friend) parcel.readParcelable(Friend.class.getClassLoader());
        this.location = (Location) parcel.readParcelable(Location.class.getClassLoader());
        this.payment = (Payment) parcel.readParcelable(Payment.class.getClassLoader());
        this.cover = (Image) parcel.readParcelable(Image.class.getClassLoader());
        this.linkedCard = (LinkedCard) parcel.readParcelable(LinkedCard.class.getClassLoader());
        readString = parcel.readString();
        Intrinsics.checkExpressionValueIsNotNull(readString, "`in`.readString()");
        this.contextType = OperationContextType.valueOf(readString);
        setHasReceipt(parcel.readByte() != (byte) 0);
        this.receiptUrl = parcel.readString();
        this.declineReason = parcel.readString();
        this.parent_operation = (Operation) parcel.readParcelable(Operation.class.getClassLoader());
        this.shopItems = parcel.createTypedArrayList(ContextShopItem.CREATOR);
        switch (parcel.readInt()) {
            case -1:
                parcel = null;
                break;
            case null:
                parcel = Boolean.FALSE;
                break;
            default:
                parcel = Boolean.TRUE;
                break;
        }
        this.sputnik = parcel;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        if (parcel != null) {
            parcel.writeString(this.status);
            parcel.writeString(this.comment);
            parcel.writeString(this.details);
            parcel.writeParcelable(this.analytics, i);
            parcel.writeDouble(this.mimimiles);
            parcel.writeParcelable(this.displayMoney, i);
            parcel.writeParcelable(this.money, i);
            parcel.writeParcelable(this.category, i);
            parcel.writeParcelable(this.merchant, i);
            parcel.writeString(this.friendTransferType.name());
            parcel.writeParcelable(this.miles, i);
            parcel.writeParcelable(this.friend, i);
            parcel.writeParcelable(this.location, i);
            parcel.writeParcelable(this.payment, i);
            parcel.writeParcelable(this.cover, i);
            parcel.writeParcelable(this.linkedCard, i);
            parcel.writeString(this.contextType.name());
            parcel.writeByte((byte) isHasReceipt());
            parcel.writeString(this.receiptUrl);
            parcel.writeString(this.declineReason);
            parcel.writeParcelable(this.parent_operation, i);
            parcel.writeTypedList(this.shopItems);
            i = this.sputnik;
            i = i != 0 ? i.booleanValue() != 0 ? 1 : 0 : -1;
            parcel.writeInt(i);
        }
    }

    public final boolean isRocketRubleOperation() {
        boolean contains = kotlin.collections.AbstractList.Companion.setOf(OperationContextType.RocketRubleIn, OperationContextType.RocketRubleOut, OperationContextType.MilesCashBack).contains(this.contextType);
        MoneyData moneyData = this.money;
        Object currencyCode = moneyData != null ? moneyData.getCurrencyCode() : null;
        ru.rocketbank.core.utils.MoneyFormatter.Companion companion = MoneyFormatter.Companion;
        boolean areEqual = Intrinsics.areEqual(currencyCode, MoneyFormatter.CURRENCY_ROCKET);
        if (!contains) {
            if (!areEqual) {
                return false;
            }
        }
        return true;
    }
}
