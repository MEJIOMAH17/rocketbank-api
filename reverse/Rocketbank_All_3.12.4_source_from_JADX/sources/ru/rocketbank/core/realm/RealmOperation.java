package ru.rocketbank.core.realm;

import io.realm.RealmObject;
import io.realm.RealmOperationRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* compiled from: RealmOperation.kt */
public class RealmOperation extends RealmObject implements RealmOperationRealmProxyInterface {
    public static final Companion Companion = new Companion();
    private RealmOperationCategory category;
    private String comment;
    private String contextType;
    private RealmImage cover;
    private String declineReason;
    private String details;
    private RealmMoneyData displayMoney;
    private RealmFriend friend;
    private String friendTransferType;
    private boolean isHasReceipt;
    private RealmLinkedCard linkedCard;
    private RealmMerchant merchant;
    private RealmMiles miles;
    private double mimimiles;
    private RealmMoneyData money;
    private String receiptUrl;
    private String status;

    /* compiled from: RealmOperation.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public RealmOperationCategory realmGet$category() {
        return this.category;
    }

    public String realmGet$comment() {
        return this.comment;
    }

    public String realmGet$contextType() {
        return this.contextType;
    }

    public RealmImage realmGet$cover() {
        return this.cover;
    }

    public String realmGet$declineReason() {
        return this.declineReason;
    }

    public String realmGet$details() {
        return this.details;
    }

    public RealmMoneyData realmGet$displayMoney() {
        return this.displayMoney;
    }

    public RealmFriend realmGet$friend() {
        return this.friend;
    }

    public String realmGet$friendTransferType() {
        return this.friendTransferType;
    }

    public boolean realmGet$isHasReceipt() {
        return this.isHasReceipt;
    }

    public RealmLinkedCard realmGet$linkedCard() {
        return this.linkedCard;
    }

    public RealmMerchant realmGet$merchant() {
        return this.merchant;
    }

    public RealmMiles realmGet$miles() {
        return this.miles;
    }

    public double realmGet$mimimiles() {
        return this.mimimiles;
    }

    public RealmMoneyData realmGet$money() {
        return this.money;
    }

    public String realmGet$receiptUrl() {
        return this.receiptUrl;
    }

    public String realmGet$status() {
        return this.status;
    }

    public void realmSet$category(RealmOperationCategory realmOperationCategory) {
        this.category = realmOperationCategory;
    }

    public void realmSet$comment(String str) {
        this.comment = str;
    }

    public void realmSet$contextType(String str) {
        this.contextType = str;
    }

    public void realmSet$cover(RealmImage realmImage) {
        this.cover = realmImage;
    }

    public void realmSet$declineReason(String str) {
        this.declineReason = str;
    }

    public void realmSet$details(String str) {
        this.details = str;
    }

    public void realmSet$displayMoney(RealmMoneyData realmMoneyData) {
        this.displayMoney = realmMoneyData;
    }

    public void realmSet$friend(RealmFriend realmFriend) {
        this.friend = realmFriend;
    }

    public void realmSet$friendTransferType(String str) {
        this.friendTransferType = str;
    }

    public void realmSet$isHasReceipt(boolean z) {
        this.isHasReceipt = z;
    }

    public void realmSet$linkedCard(RealmLinkedCard realmLinkedCard) {
        this.linkedCard = realmLinkedCard;
    }

    public void realmSet$merchant(RealmMerchant realmMerchant) {
        this.merchant = realmMerchant;
    }

    public void realmSet$miles(RealmMiles realmMiles) {
        this.miles = realmMiles;
    }

    public void realmSet$mimimiles(double d) {
        this.mimimiles = d;
    }

    public void realmSet$money(RealmMoneyData realmMoneyData) {
        this.money = realmMoneyData;
    }

    public void realmSet$receiptUrl(String str) {
        this.receiptUrl = str;
    }

    public void realmSet$status(String str) {
        this.status = str;
    }

    public RealmOperation() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }
}
