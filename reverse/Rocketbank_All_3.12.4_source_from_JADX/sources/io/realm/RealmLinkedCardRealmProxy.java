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
import ru.rocketbank.core.realm.RealmBin;
import ru.rocketbank.core.realm.RealmLinkedCard;

public final class RealmLinkedCardRealmProxy extends RealmLinkedCard implements RealmLinkedCardRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmLinkedCardColumnInfo columnInfo;
    private ProxyState<RealmLinkedCard> proxyState;

    static final class RealmLinkedCardColumnInfo extends ColumnInfo {
        long bankIndex;
        long binIndex;
        long colorIndex;
        long feedIconUrlIndex;
        long logoIndex;
        long panIndex;
        long tokenIndex;

        RealmLinkedCardColumnInfo(Table table) {
            super(7);
            this.panIndex = addColumnDetails(table, "pan", RealmFieldType.STRING);
            this.tokenIndex = addColumnDetails(table, "token", RealmFieldType.STRING);
            this.bankIndex = addColumnDetails(table, "bank", RealmFieldType.STRING);
            this.logoIndex = addColumnDetails(table, "logo", RealmFieldType.STRING);
            this.feedIconUrlIndex = addColumnDetails(table, "feedIconUrl", RealmFieldType.STRING);
            this.binIndex = addColumnDetails(table, "bin", RealmFieldType.OBJECT);
            this.colorIndex = addColumnDetails(table, "color", RealmFieldType.STRING);
        }

        private RealmLinkedCardColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmLinkedCardColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmLinkedCardColumnInfo realmLinkedCardColumnInfo = (RealmLinkedCardColumnInfo) columnInfo;
            RealmLinkedCardColumnInfo realmLinkedCardColumnInfo2 = (RealmLinkedCardColumnInfo) columnInfo2;
            realmLinkedCardColumnInfo2.panIndex = realmLinkedCardColumnInfo.panIndex;
            realmLinkedCardColumnInfo2.tokenIndex = realmLinkedCardColumnInfo.tokenIndex;
            realmLinkedCardColumnInfo2.bankIndex = realmLinkedCardColumnInfo.bankIndex;
            realmLinkedCardColumnInfo2.logoIndex = realmLinkedCardColumnInfo.logoIndex;
            realmLinkedCardColumnInfo2.feedIconUrlIndex = realmLinkedCardColumnInfo.feedIconUrlIndex;
            realmLinkedCardColumnInfo2.binIndex = realmLinkedCardColumnInfo.binIndex;
            realmLinkedCardColumnInfo2.colorIndex = realmLinkedCardColumnInfo.colorIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmLinkedCard";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("pan");
        arrayList.add("token");
        arrayList.add("bank");
        arrayList.add("logo");
        arrayList.add("feedIconUrl");
        arrayList.add("bin");
        arrayList.add("color");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmLinkedCardRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmLinkedCardColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final String realmGet$pan() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.panIndex);
    }

    public final void realmSet$pan(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.panIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.panIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.panIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.panIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$token() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.tokenIndex);
    }

    public final void realmSet$token(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.tokenIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.tokenIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.tokenIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.tokenIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$bank() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.bankIndex);
    }

    public final void realmSet$bank(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.bankIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.bankIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.bankIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.bankIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$logo() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.logoIndex);
    }

    public final void realmSet$logo(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.logoIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.logoIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.logoIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.logoIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$feedIconUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.feedIconUrlIndex);
    }

    public final void realmSet$feedIconUrl(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.feedIconUrlIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.feedIconUrlIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.feedIconUrlIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.feedIconUrlIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final RealmBin realmGet$bin() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.binIndex)) {
            return null;
        }
        return (RealmBin) this.proxyState.getRealm$realm().get$1557dc49(RealmBin.class, this.proxyState.getRow$realm().getLink(this.columnInfo.binIndex), Collections.emptyList());
    }

    public final void realmSet$bin(RealmBin realmBin) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmBin == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.binIndex);
                return;
            }
            if (realmBin instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmBin)) {
                    realmObjectProxy = (RealmObjectProxy) realmBin;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.binIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("bin")) {
            if (!(realmBin == null || (realmBin instanceof RealmObjectProxy))) {
                realmBin = (RealmBin) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmBin);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmBin == null) {
                row$realm.nullifyLink(this.columnInfo.binIndex);
            } else if (RealmObject.isValid(realmBin)) {
                realmObjectProxy = (RealmObjectProxy) realmBin;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.binIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final String realmGet$color() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.colorIndex);
    }

    public final void realmSet$color(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.colorIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.colorIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.colorIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.colorIndex, row$realm.getIndex(), str);
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmLinkedCard")) {
            return realmSchema.get("RealmLinkedCard");
        }
        RealmObjectSchema create = realmSchema.create("RealmLinkedCard");
        RealmObjectSchema realmObjectSchema = create;
        realmObjectSchema.add("pan", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("token", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("bank", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("logo", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("feedIconUrl", RealmFieldType.STRING, false, false, false);
        if (!realmSchema.contains("RealmBin")) {
            RealmBinRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("bin", RealmFieldType.OBJECT, realmSchema.get("RealmBin"));
        create.add("color", RealmFieldType.STRING, false, false, false);
        return create;
    }

    public static RealmLinkedCardColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmLinkedCard")) {
            Table table = sharedRealm.getTable("class_RealmLinkedCard");
            long columnCount = table.getColumnCount();
            if (columnCount != 7) {
                if (columnCount < 7) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 7 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 7 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 7 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            RealmLinkedCardColumnInfo realmLinkedCardColumnInfo = new RealmLinkedCardColumnInfo(table);
            if (table.hasPrimaryKey()) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key defined for field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" was removed.");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("pan")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'pan' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("pan") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'pan' in existing Realm file.");
            } else if (!table.isColumnNullable(realmLinkedCardColumnInfo.panIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'pan' is required. Either set @Required to field 'pan' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("token")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'token' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("token") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'token' in existing Realm file.");
            } else if (!table.isColumnNullable(realmLinkedCardColumnInfo.tokenIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'token' is required. Either set @Required to field 'token' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("bank")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'bank' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("bank") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'bank' in existing Realm file.");
            } else if (!table.isColumnNullable(realmLinkedCardColumnInfo.bankIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'bank' is required. Either set @Required to field 'bank' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("logo")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'logo' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("logo") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'logo' in existing Realm file.");
            } else if (!table.isColumnNullable(realmLinkedCardColumnInfo.logoIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'logo' is required. Either set @Required to field 'logo' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("feedIconUrl")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'feedIconUrl' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("feedIconUrl") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'feedIconUrl' in existing Realm file.");
            } else if (!table.isColumnNullable(realmLinkedCardColumnInfo.feedIconUrlIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'feedIconUrl' is required. Either set @Required to field 'feedIconUrl' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("bin")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'bin' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("bin") != RealmFieldType.OBJECT) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmBin' for field 'bin'");
            } else if (sharedRealm.hasTable("class_RealmBin")) {
                Table table2 = sharedRealm.getTable("class_RealmBin");
                if (!table.getLinkTarget(realmLinkedCardColumnInfo.binIndex).hasSameSchema(table2)) {
                    sharedRealm = sharedRealm.getPath();
                    StringBuilder stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'bin': '");
                    stringBuilder2.append(table.getLinkTarget(realmLinkedCardColumnInfo.binIndex).getName());
                    stringBuilder2.append("' expected - was '");
                    stringBuilder2.append(table2.getName());
                    stringBuilder2.append("'");
                    throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                } else if (!z.containsKey("color")) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'color' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                } else if (z.get("color") != RealmFieldType.STRING) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'color' in existing Realm file.");
                } else if (table.isColumnNullable(realmLinkedCardColumnInfo.colorIndex)) {
                    return realmLinkedCardColumnInfo;
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'color' is required. Either set @Required to field 'color' or migrate using RealmObjectSchema.setNullable().");
                }
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmBin' for field 'bin'");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmLinkedCard' class is missing from the schema for this Realm.");
    }

    public static RealmLinkedCard copyOrUpdate$76c565d9(Realm realm, RealmLinkedCard realmLinkedCard, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmLinkedCard instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmLinkedCard;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmLinkedCard;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmLinkedCard;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmLinkedCard);
        if (realmObjectProxy != null) {
            return (RealmLinkedCard) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmLinkedCard);
        if (realmObjectProxy != null) {
            return (RealmLinkedCard) realmObjectProxy;
        }
        RealmLinkedCard realmLinkedCard2 = (RealmLinkedCard) realm.createObjectInternal$6d9349d5(RealmLinkedCard.class, Collections.emptyList());
        map.put(realmLinkedCard, (RealmObjectProxy) realmLinkedCard2);
        RealmLinkedCardRealmProxyInterface realmLinkedCardRealmProxyInterface = realmLinkedCard2;
        RealmLinkedCardRealmProxyInterface realmLinkedCardRealmProxyInterface2 = realmLinkedCard;
        realmLinkedCardRealmProxyInterface.realmSet$pan(realmLinkedCardRealmProxyInterface2.realmGet$pan());
        realmLinkedCardRealmProxyInterface.realmSet$token(realmLinkedCardRealmProxyInterface2.realmGet$token());
        realmLinkedCardRealmProxyInterface.realmSet$bank(realmLinkedCardRealmProxyInterface2.realmGet$bank());
        realmLinkedCardRealmProxyInterface.realmSet$logo(realmLinkedCardRealmProxyInterface2.realmGet$logo());
        realmLinkedCardRealmProxyInterface.realmSet$feedIconUrl(realmLinkedCardRealmProxyInterface2.realmGet$feedIconUrl());
        RealmBin realmGet$bin = realmLinkedCardRealmProxyInterface2.realmGet$bin();
        if (realmGet$bin != null) {
            RealmBin realmBin = (RealmBin) map.get(realmGet$bin);
            if (realmBin != null) {
                realmLinkedCardRealmProxyInterface.realmSet$bin(realmBin);
            } else {
                realmLinkedCardRealmProxyInterface.realmSet$bin(RealmBinRealmProxy.copyOrUpdate$2db7cbdb(realm, realmGet$bin, map));
            }
        } else {
            realmLinkedCardRealmProxyInterface.realmSet$bin(null);
        }
        realmLinkedCardRealmProxyInterface.realmSet$color(realmLinkedCardRealmProxyInterface2.realmGet$color());
        return realmLinkedCard2;
    }

    public static RealmLinkedCard createDetachedCopy(RealmLinkedCard realmLinkedCard, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmLinkedCard != null) {
                RealmLinkedCard realmLinkedCard2;
                CacheData cacheData = (CacheData) map.get(realmLinkedCard);
                if (cacheData == null) {
                    realmLinkedCard2 = new RealmLinkedCard();
                    map.put(realmLinkedCard, new CacheData(i, realmLinkedCard2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    realmLinkedCard2 = (RealmLinkedCard) cacheData.object;
                    cacheData.minDepth = i;
                }
                RealmLinkedCardRealmProxyInterface realmLinkedCardRealmProxyInterface = realmLinkedCard2;
                RealmLinkedCardRealmProxyInterface realmLinkedCardRealmProxyInterface2 = realmLinkedCard;
                realmLinkedCardRealmProxyInterface.realmSet$pan(realmLinkedCardRealmProxyInterface2.realmGet$pan());
                realmLinkedCardRealmProxyInterface.realmSet$token(realmLinkedCardRealmProxyInterface2.realmGet$token());
                realmLinkedCardRealmProxyInterface.realmSet$bank(realmLinkedCardRealmProxyInterface2.realmGet$bank());
                realmLinkedCardRealmProxyInterface.realmSet$logo(realmLinkedCardRealmProxyInterface2.realmGet$logo());
                realmLinkedCardRealmProxyInterface.realmSet$feedIconUrl(realmLinkedCardRealmProxyInterface2.realmGet$feedIconUrl());
                realmLinkedCardRealmProxyInterface.realmSet$bin(RealmBinRealmProxy.createDetachedCopy(realmLinkedCardRealmProxyInterface2.realmGet$bin(), i + 1, i2, map));
                realmLinkedCardRealmProxyInterface.realmSet$color(realmLinkedCardRealmProxyInterface2.realmGet$color());
                return realmLinkedCard2;
            }
        }
        return null;
    }

    public final String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        String string;
        StringBuilder stringBuilder = new StringBuilder("RealmLinkedCard = proxy[");
        stringBuilder.append("{pan:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.panIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.panIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{token:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.tokenIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.tokenIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{bank:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.bankIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.bankIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{logo:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.logoIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.logoIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{feedIconUrl:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.feedIconUrlIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.feedIconUrlIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{bin:");
        stringBuilder.append(realmGet$bin() != null ? "RealmBin" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{color:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.colorIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.colorIndex);
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
        r7 = (io.realm.RealmLinkedCardRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmLinkedCardRealmProxy.equals(java.lang.Object):boolean");
    }
}
