package io.realm;

import io.realm.BaseRealm.RealmObjectContext;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmObjectProxy.CacheData;
import io.realm.internal.Row;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.log.RealmLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import ru.rocketbank.core.realm.RealmFriend;
import ru.rocketbank.core.realm.RealmImage;
import ru.rocketbank.core.realm.RealmLinkedCard;
import ru.rocketbank.core.realm.RealmMerchant;
import ru.rocketbank.core.realm.RealmMiles;
import ru.rocketbank.core.realm.RealmMoneyData;
import ru.rocketbank.core.realm.RealmOperation;
import ru.rocketbank.core.realm.RealmOperationCategory;

public final class RealmOperationRealmProxy extends RealmOperation implements RealmOperationRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmOperationColumnInfo columnInfo;
    private ProxyState<RealmOperation> proxyState;

    static final class RealmOperationColumnInfo extends ColumnInfo {
        long categoryIndex;
        long commentIndex;
        long contextTypeIndex;
        long coverIndex;
        long declineReasonIndex;
        long detailsIndex;
        long displayMoneyIndex;
        long friendIndex;
        long friendTransferTypeIndex;
        long isHasReceiptIndex;
        long linkedCardIndex;
        long merchantIndex;
        long milesIndex;
        long mimimilesIndex;
        long moneyIndex;
        long receiptUrlIndex;
        long statusIndex;

        RealmOperationColumnInfo(Table table) {
            super(17);
            this.statusIndex = addColumnDetails(table, "status", RealmFieldType.STRING);
            this.commentIndex = addColumnDetails(table, "comment", RealmFieldType.STRING);
            this.detailsIndex = addColumnDetails(table, "details", RealmFieldType.STRING);
            this.mimimilesIndex = addColumnDetails(table, "mimimiles", RealmFieldType.DOUBLE);
            this.linkedCardIndex = addColumnDetails(table, "linkedCard", RealmFieldType.OBJECT);
            this.displayMoneyIndex = addColumnDetails(table, "displayMoney", RealmFieldType.OBJECT);
            this.moneyIndex = addColumnDetails(table, "money", RealmFieldType.OBJECT);
            this.categoryIndex = addColumnDetails(table, "category", RealmFieldType.OBJECT);
            this.merchantIndex = addColumnDetails(table, "merchant", RealmFieldType.OBJECT);
            this.friendTransferTypeIndex = addColumnDetails(table, "friendTransferType", RealmFieldType.STRING);
            this.milesIndex = addColumnDetails(table, "miles", RealmFieldType.OBJECT);
            this.friendIndex = addColumnDetails(table, "friend", RealmFieldType.OBJECT);
            this.coverIndex = addColumnDetails(table, "cover", RealmFieldType.OBJECT);
            this.contextTypeIndex = addColumnDetails(table, "contextType", RealmFieldType.STRING);
            this.isHasReceiptIndex = addColumnDetails(table, "isHasReceipt", RealmFieldType.BOOLEAN);
            this.receiptUrlIndex = addColumnDetails(table, "receiptUrl", RealmFieldType.STRING);
            this.declineReasonIndex = addColumnDetails(table, "declineReason", RealmFieldType.STRING);
        }

        private RealmOperationColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmOperationColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmOperationColumnInfo realmOperationColumnInfo = (RealmOperationColumnInfo) columnInfo;
            RealmOperationColumnInfo realmOperationColumnInfo2 = (RealmOperationColumnInfo) columnInfo2;
            realmOperationColumnInfo2.statusIndex = realmOperationColumnInfo.statusIndex;
            realmOperationColumnInfo2.commentIndex = realmOperationColumnInfo.commentIndex;
            realmOperationColumnInfo2.detailsIndex = realmOperationColumnInfo.detailsIndex;
            realmOperationColumnInfo2.mimimilesIndex = realmOperationColumnInfo.mimimilesIndex;
            realmOperationColumnInfo2.linkedCardIndex = realmOperationColumnInfo.linkedCardIndex;
            realmOperationColumnInfo2.displayMoneyIndex = realmOperationColumnInfo.displayMoneyIndex;
            realmOperationColumnInfo2.moneyIndex = realmOperationColumnInfo.moneyIndex;
            realmOperationColumnInfo2.categoryIndex = realmOperationColumnInfo.categoryIndex;
            realmOperationColumnInfo2.merchantIndex = realmOperationColumnInfo.merchantIndex;
            realmOperationColumnInfo2.friendTransferTypeIndex = realmOperationColumnInfo.friendTransferTypeIndex;
            realmOperationColumnInfo2.milesIndex = realmOperationColumnInfo.milesIndex;
            realmOperationColumnInfo2.friendIndex = realmOperationColumnInfo.friendIndex;
            realmOperationColumnInfo2.coverIndex = realmOperationColumnInfo.coverIndex;
            realmOperationColumnInfo2.contextTypeIndex = realmOperationColumnInfo.contextTypeIndex;
            realmOperationColumnInfo2.isHasReceiptIndex = realmOperationColumnInfo.isHasReceiptIndex;
            realmOperationColumnInfo2.receiptUrlIndex = realmOperationColumnInfo.receiptUrlIndex;
            realmOperationColumnInfo2.declineReasonIndex = realmOperationColumnInfo.declineReasonIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmOperation";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("status");
        arrayList.add("comment");
        arrayList.add("details");
        arrayList.add("mimimiles");
        arrayList.add("linkedCard");
        arrayList.add("displayMoney");
        arrayList.add("money");
        arrayList.add("category");
        arrayList.add("merchant");
        arrayList.add("friendTransferType");
        arrayList.add("miles");
        arrayList.add("friend");
        arrayList.add("cover");
        arrayList.add("contextType");
        arrayList.add("isHasReceipt");
        arrayList.add("receiptUrl");
        arrayList.add("declineReason");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmOperationRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmOperationColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final String realmGet$status() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.statusIndex);
    }

    public final void realmSet$status(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.statusIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.statusIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.statusIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.statusIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$comment() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.commentIndex);
    }

    public final void realmSet$comment(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.commentIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.commentIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.commentIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.commentIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$details() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.detailsIndex);
    }

    public final void realmSet$details(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.detailsIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.detailsIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.detailsIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.detailsIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final double realmGet$mimimiles() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDouble(this.columnInfo.mimimilesIndex);
    }

    public final void realmSet$mimimiles(double d) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setDouble(this.columnInfo.mimimilesIndex, d);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setDouble$398d1435(this.columnInfo.mimimilesIndex, row$realm.getIndex(), d);
        }
    }

    public final RealmLinkedCard realmGet$linkedCard() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.linkedCardIndex)) {
            return null;
        }
        return (RealmLinkedCard) this.proxyState.getRealm$realm().get$1557dc49(RealmLinkedCard.class, this.proxyState.getRow$realm().getLink(this.columnInfo.linkedCardIndex), Collections.emptyList());
    }

    public final void realmSet$linkedCard(RealmLinkedCard realmLinkedCard) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmLinkedCard == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.linkedCardIndex);
                return;
            }
            if (realmLinkedCard instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmLinkedCard)) {
                    realmObjectProxy = (RealmObjectProxy) realmLinkedCard;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.linkedCardIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("linkedCard")) {
            if (!(realmLinkedCard == null || (realmLinkedCard instanceof RealmObjectProxy))) {
                realmLinkedCard = (RealmLinkedCard) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmLinkedCard);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmLinkedCard == null) {
                row$realm.nullifyLink(this.columnInfo.linkedCardIndex);
            } else if (RealmObject.isValid(realmLinkedCard)) {
                realmObjectProxy = (RealmObjectProxy) realmLinkedCard;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.linkedCardIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final RealmMoneyData realmGet$displayMoney() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.displayMoneyIndex)) {
            return null;
        }
        return (RealmMoneyData) this.proxyState.getRealm$realm().get$1557dc49(RealmMoneyData.class, this.proxyState.getRow$realm().getLink(this.columnInfo.displayMoneyIndex), Collections.emptyList());
    }

    public final void realmSet$displayMoney(RealmMoneyData realmMoneyData) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmMoneyData == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.displayMoneyIndex);
                return;
            }
            if (realmMoneyData instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmMoneyData)) {
                    realmObjectProxy = (RealmObjectProxy) realmMoneyData;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.displayMoneyIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("displayMoney")) {
            if (!(realmMoneyData == null || (realmMoneyData instanceof RealmObjectProxy))) {
                realmMoneyData = (RealmMoneyData) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmMoneyData);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmMoneyData == null) {
                row$realm.nullifyLink(this.columnInfo.displayMoneyIndex);
            } else if (RealmObject.isValid(realmMoneyData)) {
                realmObjectProxy = (RealmObjectProxy) realmMoneyData;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.displayMoneyIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final RealmMoneyData realmGet$money() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.moneyIndex)) {
            return null;
        }
        return (RealmMoneyData) this.proxyState.getRealm$realm().get$1557dc49(RealmMoneyData.class, this.proxyState.getRow$realm().getLink(this.columnInfo.moneyIndex), Collections.emptyList());
    }

    public final void realmSet$money(RealmMoneyData realmMoneyData) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmMoneyData == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.moneyIndex);
                return;
            }
            if (realmMoneyData instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmMoneyData)) {
                    realmObjectProxy = (RealmObjectProxy) realmMoneyData;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.moneyIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("money")) {
            if (!(realmMoneyData == null || (realmMoneyData instanceof RealmObjectProxy))) {
                realmMoneyData = (RealmMoneyData) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmMoneyData);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmMoneyData == null) {
                row$realm.nullifyLink(this.columnInfo.moneyIndex);
            } else if (RealmObject.isValid(realmMoneyData)) {
                realmObjectProxy = (RealmObjectProxy) realmMoneyData;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.moneyIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final RealmOperationCategory realmGet$category() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.categoryIndex)) {
            return null;
        }
        return (RealmOperationCategory) this.proxyState.getRealm$realm().get$1557dc49(RealmOperationCategory.class, this.proxyState.getRow$realm().getLink(this.columnInfo.categoryIndex), Collections.emptyList());
    }

    public final void realmSet$category(RealmOperationCategory realmOperationCategory) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmOperationCategory == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.categoryIndex);
                return;
            }
            if (realmOperationCategory instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmOperationCategory)) {
                    realmObjectProxy = (RealmObjectProxy) realmOperationCategory;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.categoryIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("category")) {
            if (!(realmOperationCategory == null || (realmOperationCategory instanceof RealmObjectProxy))) {
                realmOperationCategory = (RealmOperationCategory) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmOperationCategory);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmOperationCategory == null) {
                row$realm.nullifyLink(this.columnInfo.categoryIndex);
            } else if (RealmObject.isValid(realmOperationCategory)) {
                realmObjectProxy = (RealmObjectProxy) realmOperationCategory;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.categoryIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final RealmMerchant realmGet$merchant() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.merchantIndex)) {
            return null;
        }
        return (RealmMerchant) this.proxyState.getRealm$realm().get$1557dc49(RealmMerchant.class, this.proxyState.getRow$realm().getLink(this.columnInfo.merchantIndex), Collections.emptyList());
    }

    public final void realmSet$merchant(RealmMerchant realmMerchant) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmMerchant == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.merchantIndex);
                return;
            }
            if (realmMerchant instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmMerchant)) {
                    realmObjectProxy = (RealmObjectProxy) realmMerchant;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.merchantIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("merchant")) {
            if (!(realmMerchant == null || (realmMerchant instanceof RealmObjectProxy))) {
                realmMerchant = (RealmMerchant) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmMerchant);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmMerchant == null) {
                row$realm.nullifyLink(this.columnInfo.merchantIndex);
            } else if (RealmObject.isValid(realmMerchant)) {
                realmObjectProxy = (RealmObjectProxy) realmMerchant;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.merchantIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final String realmGet$friendTransferType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.friendTransferTypeIndex);
    }

    public final void realmSet$friendTransferType(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.friendTransferTypeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.friendTransferTypeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.friendTransferTypeIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.friendTransferTypeIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final RealmMiles realmGet$miles() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.milesIndex)) {
            return null;
        }
        return (RealmMiles) this.proxyState.getRealm$realm().get$1557dc49(RealmMiles.class, this.proxyState.getRow$realm().getLink(this.columnInfo.milesIndex), Collections.emptyList());
    }

    public final void realmSet$miles(RealmMiles realmMiles) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmMiles == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.milesIndex);
                return;
            }
            if (realmMiles instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmMiles)) {
                    realmObjectProxy = (RealmObjectProxy) realmMiles;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.milesIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("miles")) {
            if (!(realmMiles == null || (realmMiles instanceof RealmObjectProxy))) {
                realmMiles = (RealmMiles) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmMiles);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmMiles == null) {
                row$realm.nullifyLink(this.columnInfo.milesIndex);
            } else if (RealmObject.isValid(realmMiles)) {
                realmObjectProxy = (RealmObjectProxy) realmMiles;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.milesIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final RealmFriend realmGet$friend() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.friendIndex)) {
            return null;
        }
        return (RealmFriend) this.proxyState.getRealm$realm().get$1557dc49(RealmFriend.class, this.proxyState.getRow$realm().getLink(this.columnInfo.friendIndex), Collections.emptyList());
    }

    public final void realmSet$friend(RealmFriend realmFriend) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmFriend == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.friendIndex);
                return;
            }
            if (realmFriend instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmFriend)) {
                    realmObjectProxy = (RealmObjectProxy) realmFriend;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.friendIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("friend")) {
            if (!(realmFriend == null || (realmFriend instanceof RealmObjectProxy))) {
                realmFriend = (RealmFriend) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmFriend);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmFriend == null) {
                row$realm.nullifyLink(this.columnInfo.friendIndex);
            } else if (RealmObject.isValid(realmFriend)) {
                realmObjectProxy = (RealmObjectProxy) realmFriend;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.friendIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final RealmImage realmGet$cover() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.coverIndex)) {
            return null;
        }
        return (RealmImage) this.proxyState.getRealm$realm().get$1557dc49(RealmImage.class, this.proxyState.getRow$realm().getLink(this.columnInfo.coverIndex), Collections.emptyList());
    }

    public final void realmSet$cover(RealmImage realmImage) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmImage == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.coverIndex);
                return;
            }
            if (realmImage instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmImage)) {
                    realmObjectProxy = (RealmObjectProxy) realmImage;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.coverIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("cover")) {
            if (!(realmImage == null || (realmImage instanceof RealmObjectProxy))) {
                realmImage = (RealmImage) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmImage);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmImage == null) {
                row$realm.nullifyLink(this.columnInfo.coverIndex);
            } else if (RealmObject.isValid(realmImage)) {
                realmObjectProxy = (RealmObjectProxy) realmImage;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.coverIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final String realmGet$contextType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.contextTypeIndex);
    }

    public final void realmSet$contextType(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.contextTypeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.contextTypeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.contextTypeIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.contextTypeIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final boolean realmGet$isHasReceipt() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.isHasReceiptIndex);
    }

    public final void realmSet$isHasReceipt(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.isHasReceiptIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean$3983140b(this.columnInfo.isHasReceiptIndex, row$realm.getIndex(), z);
        }
    }

    public final String realmGet$receiptUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.receiptUrlIndex);
    }

    public final void realmSet$receiptUrl(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.receiptUrlIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.receiptUrlIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.receiptUrlIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.receiptUrlIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$declineReason() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.declineReasonIndex);
    }

    public final void realmSet$declineReason(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.declineReasonIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.declineReasonIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.declineReasonIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.declineReasonIndex, row$realm.getIndex(), str);
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmOperation")) {
            return realmSchema.get("RealmOperation");
        }
        RealmObjectSchema create = realmSchema.create("RealmOperation");
        RealmObjectSchema realmObjectSchema = create;
        realmObjectSchema.add("status", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("comment", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("details", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("mimimiles", RealmFieldType.DOUBLE, false, false, true);
        if (!realmSchema.contains("RealmLinkedCard")) {
            RealmLinkedCardRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("linkedCard", RealmFieldType.OBJECT, realmSchema.get("RealmLinkedCard"));
        if (!realmSchema.contains("RealmMoneyData")) {
            RealmMoneyDataRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("displayMoney", RealmFieldType.OBJECT, realmSchema.get("RealmMoneyData"));
        if (!realmSchema.contains("RealmMoneyData")) {
            RealmMoneyDataRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("money", RealmFieldType.OBJECT, realmSchema.get("RealmMoneyData"));
        if (!realmSchema.contains("RealmOperationCategory")) {
            RealmOperationCategoryRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("category", RealmFieldType.OBJECT, realmSchema.get("RealmOperationCategory"));
        if (!realmSchema.contains("RealmMerchant")) {
            RealmMerchantRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("merchant", RealmFieldType.OBJECT, realmSchema.get("RealmMerchant"));
        create.add("friendTransferType", RealmFieldType.STRING, false, false, false);
        if (!realmSchema.contains("RealmMiles")) {
            RealmMilesRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("miles", RealmFieldType.OBJECT, realmSchema.get("RealmMiles"));
        if (!realmSchema.contains("RealmFriend")) {
            RealmFriendRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("friend", RealmFieldType.OBJECT, realmSchema.get("RealmFriend"));
        if (!realmSchema.contains("RealmImage")) {
            RealmImageRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("cover", RealmFieldType.OBJECT, realmSchema.get("RealmImage"));
        realmObjectSchema = create;
        realmObjectSchema.add("contextType", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("isHasReceipt", RealmFieldType.BOOLEAN, false, false, true);
        realmObjectSchema.add("receiptUrl", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("declineReason", RealmFieldType.STRING, false, false, false);
        return create;
    }

    public static RealmOperationColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmOperation")) {
            Table table = sharedRealm.getTable("class_RealmOperation");
            long columnCount = table.getColumnCount();
            if (columnCount != 17) {
                if (columnCount < 17) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 17 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 17 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 17 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            RealmOperationColumnInfo realmOperationColumnInfo = new RealmOperationColumnInfo(table);
            if (table.hasPrimaryKey()) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key defined for field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" was removed.");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("status")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'status' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("status") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'status' in existing Realm file.");
            } else if (!table.isColumnNullable(realmOperationColumnInfo.statusIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'status' is required. Either set @Required to field 'status' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("comment")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'comment' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("comment") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'comment' in existing Realm file.");
            } else if (!table.isColumnNullable(realmOperationColumnInfo.commentIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'comment' is required. Either set @Required to field 'comment' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("details")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'details' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("details") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'details' in existing Realm file.");
            } else if (!table.isColumnNullable(realmOperationColumnInfo.detailsIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'details' is required. Either set @Required to field 'details' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("mimimiles")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'mimimiles' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("mimimiles") != RealmFieldType.DOUBLE) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'double' for field 'mimimiles' in existing Realm file.");
            } else if (table.isColumnNullable(realmOperationColumnInfo.mimimilesIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'mimimiles' does support null values in the existing Realm file. Use corresponding boxed type for field 'mimimiles' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("linkedCard")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'linkedCard' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("linkedCard") != RealmFieldType.OBJECT) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmLinkedCard' for field 'linkedCard'");
            } else if (sharedRealm.hasTable("class_RealmLinkedCard")) {
                Table table2 = sharedRealm.getTable("class_RealmLinkedCard");
                StringBuilder stringBuilder2;
                if (!table.getLinkTarget(realmOperationColumnInfo.linkedCardIndex).hasSameSchema(table2)) {
                    sharedRealm = sharedRealm.getPath();
                    stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'linkedCard': '");
                    stringBuilder2.append(table.getLinkTarget(realmOperationColumnInfo.linkedCardIndex).getName());
                    stringBuilder2.append("' expected - was '");
                    stringBuilder2.append(table2.getName());
                    stringBuilder2.append("'");
                    throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                } else if (!z.containsKey("displayMoney")) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'displayMoney' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                } else if (z.get("displayMoney") != RealmFieldType.OBJECT) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmMoneyData' for field 'displayMoney'");
                } else if (sharedRealm.hasTable("class_RealmMoneyData")) {
                    table2 = sharedRealm.getTable("class_RealmMoneyData");
                    if (!table.getLinkTarget(realmOperationColumnInfo.displayMoneyIndex).hasSameSchema(table2)) {
                        sharedRealm = sharedRealm.getPath();
                        stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'displayMoney': '");
                        stringBuilder2.append(table.getLinkTarget(realmOperationColumnInfo.displayMoneyIndex).getName());
                        stringBuilder2.append("' expected - was '");
                        stringBuilder2.append(table2.getName());
                        stringBuilder2.append("'");
                        throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                    } else if (!z.containsKey("money")) {
                        throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'money' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                    } else if (z.get("money") != RealmFieldType.OBJECT) {
                        throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmMoneyData' for field 'money'");
                    } else if (sharedRealm.hasTable("class_RealmMoneyData")) {
                        table2 = sharedRealm.getTable("class_RealmMoneyData");
                        if (!table.getLinkTarget(realmOperationColumnInfo.moneyIndex).hasSameSchema(table2)) {
                            sharedRealm = sharedRealm.getPath();
                            stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'money': '");
                            stringBuilder2.append(table.getLinkTarget(realmOperationColumnInfo.moneyIndex).getName());
                            stringBuilder2.append("' expected - was '");
                            stringBuilder2.append(table2.getName());
                            stringBuilder2.append("'");
                            throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                        } else if (!z.containsKey("category")) {
                            throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'category' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                        } else if (z.get("category") != RealmFieldType.OBJECT) {
                            throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmOperationCategory' for field 'category'");
                        } else if (sharedRealm.hasTable("class_RealmOperationCategory")) {
                            table2 = sharedRealm.getTable("class_RealmOperationCategory");
                            if (!table.getLinkTarget(realmOperationColumnInfo.categoryIndex).hasSameSchema(table2)) {
                                sharedRealm = sharedRealm.getPath();
                                stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'category': '");
                                stringBuilder2.append(table.getLinkTarget(realmOperationColumnInfo.categoryIndex).getName());
                                stringBuilder2.append("' expected - was '");
                                stringBuilder2.append(table2.getName());
                                stringBuilder2.append("'");
                                throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                            } else if (!z.containsKey("merchant")) {
                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'merchant' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                            } else if (z.get("merchant") != RealmFieldType.OBJECT) {
                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmMerchant' for field 'merchant'");
                            } else if (sharedRealm.hasTable("class_RealmMerchant")) {
                                table2 = sharedRealm.getTable("class_RealmMerchant");
                                if (!table.getLinkTarget(realmOperationColumnInfo.merchantIndex).hasSameSchema(table2)) {
                                    sharedRealm = sharedRealm.getPath();
                                    stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'merchant': '");
                                    stringBuilder2.append(table.getLinkTarget(realmOperationColumnInfo.merchantIndex).getName());
                                    stringBuilder2.append("' expected - was '");
                                    stringBuilder2.append(table2.getName());
                                    stringBuilder2.append("'");
                                    throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                                } else if (!z.containsKey("friendTransferType")) {
                                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'friendTransferType' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                                } else if (z.get("friendTransferType") != RealmFieldType.STRING) {
                                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'friendTransferType' in existing Realm file.");
                                } else if (!table.isColumnNullable(realmOperationColumnInfo.friendTransferTypeIndex)) {
                                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'friendTransferType' is required. Either set @Required to field 'friendTransferType' or migrate using RealmObjectSchema.setNullable().");
                                } else if (!z.containsKey("miles")) {
                                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'miles' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                                } else if (z.get("miles") != RealmFieldType.OBJECT) {
                                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmMiles' for field 'miles'");
                                } else if (sharedRealm.hasTable("class_RealmMiles")) {
                                    table2 = sharedRealm.getTable("class_RealmMiles");
                                    if (!table.getLinkTarget(realmOperationColumnInfo.milesIndex).hasSameSchema(table2)) {
                                        sharedRealm = sharedRealm.getPath();
                                        stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'miles': '");
                                        stringBuilder2.append(table.getLinkTarget(realmOperationColumnInfo.milesIndex).getName());
                                        stringBuilder2.append("' expected - was '");
                                        stringBuilder2.append(table2.getName());
                                        stringBuilder2.append("'");
                                        throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                                    } else if (!z.containsKey("friend")) {
                                        throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'friend' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                                    } else if (z.get("friend") != RealmFieldType.OBJECT) {
                                        throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmFriend' for field 'friend'");
                                    } else if (sharedRealm.hasTable("class_RealmFriend")) {
                                        table2 = sharedRealm.getTable("class_RealmFriend");
                                        if (!table.getLinkTarget(realmOperationColumnInfo.friendIndex).hasSameSchema(table2)) {
                                            sharedRealm = sharedRealm.getPath();
                                            stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'friend': '");
                                            stringBuilder2.append(table.getLinkTarget(realmOperationColumnInfo.friendIndex).getName());
                                            stringBuilder2.append("' expected - was '");
                                            stringBuilder2.append(table2.getName());
                                            stringBuilder2.append("'");
                                            throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                                        } else if (!z.containsKey("cover")) {
                                            throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'cover' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                                        } else if (z.get("cover") != RealmFieldType.OBJECT) {
                                            throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmImage' for field 'cover'");
                                        } else if (sharedRealm.hasTable("class_RealmImage")) {
                                            table2 = sharedRealm.getTable("class_RealmImage");
                                            if (!table.getLinkTarget(realmOperationColumnInfo.coverIndex).hasSameSchema(table2)) {
                                                sharedRealm = sharedRealm.getPath();
                                                stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'cover': '");
                                                stringBuilder2.append(table.getLinkTarget(realmOperationColumnInfo.coverIndex).getName());
                                                stringBuilder2.append("' expected - was '");
                                                stringBuilder2.append(table2.getName());
                                                stringBuilder2.append("'");
                                                throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                                            } else if (!z.containsKey("contextType")) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'contextType' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                                            } else if (z.get("contextType") != RealmFieldType.STRING) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'contextType' in existing Realm file.");
                                            } else if (!table.isColumnNullable(realmOperationColumnInfo.contextTypeIndex)) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'contextType' is required. Either set @Required to field 'contextType' or migrate using RealmObjectSchema.setNullable().");
                                            } else if (!z.containsKey("isHasReceipt")) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'isHasReceipt' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                                            } else if (z.get("isHasReceipt") != RealmFieldType.BOOLEAN) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'boolean' for field 'isHasReceipt' in existing Realm file.");
                                            } else if (table.isColumnNullable(realmOperationColumnInfo.isHasReceiptIndex)) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'isHasReceipt' does support null values in the existing Realm file. Use corresponding boxed type for field 'isHasReceipt' or migrate using RealmObjectSchema.setNullable().");
                                            } else if (!z.containsKey("receiptUrl")) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'receiptUrl' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                                            } else if (z.get("receiptUrl") != RealmFieldType.STRING) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'receiptUrl' in existing Realm file.");
                                            } else if (!table.isColumnNullable(realmOperationColumnInfo.receiptUrlIndex)) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'receiptUrl' is required. Either set @Required to field 'receiptUrl' or migrate using RealmObjectSchema.setNullable().");
                                            } else if (!z.containsKey("declineReason")) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'declineReason' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                                            } else if (z.get("declineReason") != RealmFieldType.STRING) {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'declineReason' in existing Realm file.");
                                            } else if (table.isColumnNullable(realmOperationColumnInfo.declineReasonIndex)) {
                                                return realmOperationColumnInfo;
                                            } else {
                                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'declineReason' is required. Either set @Required to field 'declineReason' or migrate using RealmObjectSchema.setNullable().");
                                            }
                                        } else {
                                            throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmImage' for field 'cover'");
                                        }
                                    } else {
                                        throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmFriend' for field 'friend'");
                                    }
                                } else {
                                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmMiles' for field 'miles'");
                                }
                            } else {
                                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmMerchant' for field 'merchant'");
                            }
                        } else {
                            throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmOperationCategory' for field 'category'");
                        }
                    } else {
                        throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmMoneyData' for field 'money'");
                    }
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmMoneyData' for field 'displayMoney'");
                }
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmLinkedCard' for field 'linkedCard'");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmOperation' class is missing from the schema for this Realm.");
    }

    public static RealmOperation copyOrUpdate$1048dc1b(Realm realm, RealmOperation realmOperation, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmOperation instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmOperation;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmOperation;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmOperation;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmOperation);
        if (realmObjectProxy != null) {
            return (RealmOperation) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmOperation);
        if (realmObjectProxy != null) {
            return (RealmOperation) realmObjectProxy;
        }
        RealmMoneyData realmMoneyData;
        RealmOperation realmOperation2 = (RealmOperation) realm.createObjectInternal$6d9349d5(RealmOperation.class, Collections.emptyList());
        map.put(realmOperation, (RealmObjectProxy) realmOperation2);
        RealmOperationRealmProxyInterface realmOperationRealmProxyInterface = realmOperation2;
        RealmOperationRealmProxyInterface realmOperationRealmProxyInterface2 = realmOperation;
        realmOperationRealmProxyInterface.realmSet$status(realmOperationRealmProxyInterface2.realmGet$status());
        realmOperationRealmProxyInterface.realmSet$comment(realmOperationRealmProxyInterface2.realmGet$comment());
        realmOperationRealmProxyInterface.realmSet$details(realmOperationRealmProxyInterface2.realmGet$details());
        realmOperationRealmProxyInterface.realmSet$mimimiles(realmOperationRealmProxyInterface2.realmGet$mimimiles());
        RealmLinkedCard realmGet$linkedCard = realmOperationRealmProxyInterface2.realmGet$linkedCard();
        if (realmGet$linkedCard != null) {
            RealmLinkedCard realmLinkedCard = (RealmLinkedCard) map.get(realmGet$linkedCard);
            if (realmLinkedCard != null) {
                realmOperationRealmProxyInterface.realmSet$linkedCard(realmLinkedCard);
            } else {
                realmOperationRealmProxyInterface.realmSet$linkedCard(RealmLinkedCardRealmProxy.copyOrUpdate$76c565d9(realm, realmGet$linkedCard, map));
            }
        } else {
            realmOperationRealmProxyInterface.realmSet$linkedCard(null);
        }
        RealmMoneyData realmGet$displayMoney = realmOperationRealmProxyInterface2.realmGet$displayMoney();
        if (realmGet$displayMoney != null) {
            realmMoneyData = (RealmMoneyData) map.get(realmGet$displayMoney);
            if (realmMoneyData != null) {
                realmOperationRealmProxyInterface.realmSet$displayMoney(realmMoneyData);
            } else {
                realmOperationRealmProxyInterface.realmSet$displayMoney(RealmMoneyDataRealmProxy.copyOrUpdate$47a39055(realm, realmGet$displayMoney, map));
            }
        } else {
            realmOperationRealmProxyInterface.realmSet$displayMoney(null);
        }
        realmGet$displayMoney = realmOperationRealmProxyInterface2.realmGet$money();
        if (realmGet$displayMoney != null) {
            realmMoneyData = (RealmMoneyData) map.get(realmGet$displayMoney);
            if (realmMoneyData != null) {
                realmOperationRealmProxyInterface.realmSet$money(realmMoneyData);
            } else {
                realmOperationRealmProxyInterface.realmSet$money(RealmMoneyDataRealmProxy.copyOrUpdate$47a39055(realm, realmGet$displayMoney, map));
            }
        } else {
            realmOperationRealmProxyInterface.realmSet$money(null);
        }
        RealmOperationCategory realmGet$category = realmOperationRealmProxyInterface2.realmGet$category();
        if (realmGet$category != null) {
            RealmOperationCategory realmOperationCategory = (RealmOperationCategory) map.get(realmGet$category);
            if (realmOperationCategory != null) {
                realmOperationRealmProxyInterface.realmSet$category(realmOperationCategory);
            } else {
                realmOperationRealmProxyInterface.realmSet$category(RealmOperationCategoryRealmProxy.copyOrUpdate$3a139521(realm, realmGet$category, map));
            }
        } else {
            realmOperationRealmProxyInterface.realmSet$category(null);
        }
        RealmMerchant realmGet$merchant = realmOperationRealmProxyInterface2.realmGet$merchant();
        if (realmGet$merchant != null) {
            RealmMerchant realmMerchant = (RealmMerchant) map.get(realmGet$merchant);
            if (realmMerchant != null) {
                realmOperationRealmProxyInterface.realmSet$merchant(realmMerchant);
            } else {
                realmOperationRealmProxyInterface.realmSet$merchant(RealmMerchantRealmProxy.copyOrUpdate$4c5ba239(realm, realmGet$merchant, map));
            }
        } else {
            realmOperationRealmProxyInterface.realmSet$merchant(null);
        }
        realmOperationRealmProxyInterface.realmSet$friendTransferType(realmOperationRealmProxyInterface2.realmGet$friendTransferType());
        RealmMiles realmGet$miles = realmOperationRealmProxyInterface2.realmGet$miles();
        if (realmGet$miles != null) {
            RealmMiles realmMiles = (RealmMiles) map.get(realmGet$miles);
            if (realmMiles != null) {
                realmOperationRealmProxyInterface.realmSet$miles(realmMiles);
            } else {
                realmOperationRealmProxyInterface.realmSet$miles(RealmMilesRealmProxy.copyOrUpdate$785b4813(realm, realmGet$miles, map));
            }
        } else {
            realmOperationRealmProxyInterface.realmSet$miles(null);
        }
        RealmFriend realmGet$friend = realmOperationRealmProxyInterface2.realmGet$friend();
        if (realmGet$friend != null) {
            RealmFriend realmFriend = (RealmFriend) map.get(realmGet$friend);
            if (realmFriend != null) {
                realmOperationRealmProxyInterface.realmSet$friend(realmFriend);
            } else {
                realmOperationRealmProxyInterface.realmSet$friend(RealmFriendRealmProxy.copyOrUpdate$55188d39(realm, realmGet$friend, map));
            }
        } else {
            realmOperationRealmProxyInterface.realmSet$friend(null);
        }
        RealmImage realmGet$cover = realmOperationRealmProxyInterface2.realmGet$cover();
        if (realmGet$cover != null) {
            RealmImage realmImage = (RealmImage) map.get(realmGet$cover);
            if (realmImage != null) {
                realmOperationRealmProxyInterface.realmSet$cover(realmImage);
            } else {
                realmOperationRealmProxyInterface.realmSet$cover(RealmImageRealmProxy.copyOrUpdate$2833b5cd(realm, realmGet$cover, map));
            }
        } else {
            realmOperationRealmProxyInterface.realmSet$cover(null);
        }
        realmOperationRealmProxyInterface.realmSet$contextType(realmOperationRealmProxyInterface2.realmGet$contextType());
        realmOperationRealmProxyInterface.realmSet$isHasReceipt(realmOperationRealmProxyInterface2.realmGet$isHasReceipt());
        realmOperationRealmProxyInterface.realmSet$receiptUrl(realmOperationRealmProxyInterface2.realmGet$receiptUrl());
        realmOperationRealmProxyInterface.realmSet$declineReason(realmOperationRealmProxyInterface2.realmGet$declineReason());
        return realmOperation2;
    }

    public static RealmOperation createDetachedCopy(RealmOperation realmOperation, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmOperation != null) {
                RealmOperation realmOperation2;
                CacheData cacheData = (CacheData) map.get(realmOperation);
                if (cacheData == null) {
                    realmOperation2 = new RealmOperation();
                    map.put(realmOperation, new CacheData(i, realmOperation2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    realmOperation2 = (RealmOperation) cacheData.object;
                    cacheData.minDepth = i;
                }
                RealmOperationRealmProxyInterface realmOperationRealmProxyInterface = realmOperation2;
                RealmOperationRealmProxyInterface realmOperationRealmProxyInterface2 = realmOperation;
                realmOperationRealmProxyInterface.realmSet$status(realmOperationRealmProxyInterface2.realmGet$status());
                realmOperationRealmProxyInterface.realmSet$comment(realmOperationRealmProxyInterface2.realmGet$comment());
                realmOperationRealmProxyInterface.realmSet$details(realmOperationRealmProxyInterface2.realmGet$details());
                realmOperationRealmProxyInterface.realmSet$mimimiles(realmOperationRealmProxyInterface2.realmGet$mimimiles());
                i++;
                realmOperationRealmProxyInterface.realmSet$linkedCard(RealmLinkedCardRealmProxy.createDetachedCopy(realmOperationRealmProxyInterface2.realmGet$linkedCard(), i, i2, map));
                realmOperationRealmProxyInterface.realmSet$displayMoney(RealmMoneyDataRealmProxy.createDetachedCopy(realmOperationRealmProxyInterface2.realmGet$displayMoney(), i, i2, map));
                realmOperationRealmProxyInterface.realmSet$money(RealmMoneyDataRealmProxy.createDetachedCopy(realmOperationRealmProxyInterface2.realmGet$money(), i, i2, map));
                realmOperationRealmProxyInterface.realmSet$category(RealmOperationCategoryRealmProxy.createDetachedCopy(realmOperationRealmProxyInterface2.realmGet$category(), i, i2, map));
                realmOperationRealmProxyInterface.realmSet$merchant(RealmMerchantRealmProxy.createDetachedCopy(realmOperationRealmProxyInterface2.realmGet$merchant(), i, i2, map));
                realmOperationRealmProxyInterface.realmSet$friendTransferType(realmOperationRealmProxyInterface2.realmGet$friendTransferType());
                realmOperationRealmProxyInterface.realmSet$miles(RealmMilesRealmProxy.createDetachedCopy(realmOperationRealmProxyInterface2.realmGet$miles(), i, i2, map));
                realmOperationRealmProxyInterface.realmSet$friend(RealmFriendRealmProxy.createDetachedCopy(realmOperationRealmProxyInterface2.realmGet$friend(), i, i2, map));
                realmOperationRealmProxyInterface.realmSet$cover(RealmImageRealmProxy.createDetachedCopy(realmOperationRealmProxyInterface2.realmGet$cover(), i, i2, map));
                realmOperationRealmProxyInterface.realmSet$contextType(realmOperationRealmProxyInterface2.realmGet$contextType());
                realmOperationRealmProxyInterface.realmSet$isHasReceipt(realmOperationRealmProxyInterface2.realmGet$isHasReceipt());
                realmOperationRealmProxyInterface.realmSet$receiptUrl(realmOperationRealmProxyInterface2.realmGet$receiptUrl());
                realmOperationRealmProxyInterface.realmSet$declineReason(realmOperationRealmProxyInterface2.realmGet$declineReason());
                return realmOperation2;
            }
        }
        return null;
    }

    public final String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        String string;
        StringBuilder stringBuilder = new StringBuilder("RealmOperation = proxy[");
        stringBuilder.append("{status:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.statusIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.statusIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{comment:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.commentIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.commentIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{details:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.detailsIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.detailsIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{mimimiles:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getDouble(this.columnInfo.mimimilesIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{linkedCard:");
        stringBuilder.append(realmGet$linkedCard() != null ? "RealmLinkedCard" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{displayMoney:");
        stringBuilder.append(realmGet$displayMoney() != null ? "RealmMoneyData" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{money:");
        stringBuilder.append(realmGet$money() != null ? "RealmMoneyData" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{category:");
        stringBuilder.append(realmGet$category() != null ? "RealmOperationCategory" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{merchant:");
        stringBuilder.append(realmGet$merchant() != null ? "RealmMerchant" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{friendTransferType:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.friendTransferTypeIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.friendTransferTypeIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{miles:");
        stringBuilder.append(realmGet$miles() != null ? "RealmMiles" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{friend:");
        stringBuilder.append(realmGet$friend() != null ? "RealmFriend" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{cover:");
        stringBuilder.append(realmGet$cover() != null ? "RealmImage" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{contextType:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.contextTypeIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.contextTypeIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{isHasReceipt:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getBoolean(this.columnInfo.isHasReceiptIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{receiptUrl:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.receiptUrlIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.receiptUrlIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{declineReason:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.declineReasonIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.declineReasonIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public final ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    public final int hashCode() {
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long index = this.proxyState.getRow$realm().getIndex();
        int i = 0;
        int hashCode = (527 + (path != null ? path.hashCode() : 0)) * 31;
        if (name != null) {
            i = name.hashCode();
        }
        return ((hashCode + i) * 31) + ((int) (index ^ (index >>> 32)));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(java.lang.Object r7) {
        /*
        r6 = this;
        r0 = 1;
        if (r6 != r7) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = 0;
        if (r7 == 0) goto L_0x0076;
    L_0x0007:
        r2 = r6.getClass();
        r3 = r7.getClass();
        if (r2 == r3) goto L_0x0012;
    L_0x0011:
        goto L_0x0076;
    L_0x0012:
        r7 = (io.realm.RealmOperationRealmProxy) r7;
        r2 = r6.proxyState;
        r2 = r2.getRealm$realm();
        r2 = r2.getPath();
        r3 = r7.proxyState;
        r3 = r3.getRealm$realm();
        r3 = r3.getPath();
        if (r2 == 0) goto L_0x0031;
    L_0x002a:
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0034;
    L_0x0030:
        goto L_0x0033;
    L_0x0031:
        if (r3 == 0) goto L_0x0034;
    L_0x0033:
        return r1;
    L_0x0034:
        r2 = r6.proxyState;
        r2 = r2.getRow$realm();
        r2 = r2.getTable();
        r2 = r2.getName();
        r3 = r7.proxyState;
        r3 = r3.getRow$realm();
        r3 = r3.getTable();
        r3 = r3.getName();
        if (r2 == 0) goto L_0x0059;
    L_0x0052:
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x005c;
    L_0x0058:
        goto L_0x005b;
    L_0x0059:
        if (r3 == 0) goto L_0x005c;
    L_0x005b:
        return r1;
    L_0x005c:
        r2 = r6.proxyState;
        r2 = r2.getRow$realm();
        r2 = r2.getIndex();
        r7 = r7.proxyState;
        r7 = r7.getRow$realm();
        r4 = r7.getIndex();
        r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r7 == 0) goto L_0x0075;
    L_0x0074:
        return r1;
    L_0x0075:
        return r0;
    L_0x0076:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmOperationRealmProxy.equals(java.lang.Object):boolean");
    }
}
