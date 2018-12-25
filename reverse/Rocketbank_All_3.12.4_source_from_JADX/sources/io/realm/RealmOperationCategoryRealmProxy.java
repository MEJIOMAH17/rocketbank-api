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
import ru.rocketbank.core.realm.RealmMoneyData;
import ru.rocketbank.core.realm.RealmOperationCategory;

public final class RealmOperationCategoryRealmProxy extends RealmOperationCategory implements RealmOperationCategoryRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmOperationCategoryColumnInfo columnInfo;
    private ProxyState<RealmOperationCategory> proxyState;

    static final class RealmOperationCategoryColumnInfo extends ColumnInfo {
        long displayNameIndex;
        long fullNameIndex;
        long iconIndex;
        long idIndex;
        long nameIndex;
        long spentIndex;
        long subIconIndex;

        RealmOperationCategoryColumnInfo(Table table) {
            super(7);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.INTEGER);
            this.fullNameIndex = addColumnDetails(table, "fullName", RealmFieldType.STRING);
            this.iconIndex = addColumnDetails(table, "icon", RealmFieldType.STRING);
            this.subIconIndex = addColumnDetails(table, "subIcon", RealmFieldType.STRING);
            this.displayNameIndex = addColumnDetails(table, "displayName", RealmFieldType.STRING);
            this.nameIndex = addColumnDetails(table, "name", RealmFieldType.STRING);
            this.spentIndex = addColumnDetails(table, "spent", RealmFieldType.OBJECT);
        }

        private RealmOperationCategoryColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmOperationCategoryColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmOperationCategoryColumnInfo realmOperationCategoryColumnInfo = (RealmOperationCategoryColumnInfo) columnInfo;
            RealmOperationCategoryColumnInfo realmOperationCategoryColumnInfo2 = (RealmOperationCategoryColumnInfo) columnInfo2;
            realmOperationCategoryColumnInfo2.idIndex = realmOperationCategoryColumnInfo.idIndex;
            realmOperationCategoryColumnInfo2.fullNameIndex = realmOperationCategoryColumnInfo.fullNameIndex;
            realmOperationCategoryColumnInfo2.iconIndex = realmOperationCategoryColumnInfo.iconIndex;
            realmOperationCategoryColumnInfo2.subIconIndex = realmOperationCategoryColumnInfo.subIconIndex;
            realmOperationCategoryColumnInfo2.displayNameIndex = realmOperationCategoryColumnInfo.displayNameIndex;
            realmOperationCategoryColumnInfo2.nameIndex = realmOperationCategoryColumnInfo.nameIndex;
            realmOperationCategoryColumnInfo2.spentIndex = realmOperationCategoryColumnInfo.spentIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmOperationCategory";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("fullName");
        arrayList.add("icon");
        arrayList.add("subIcon");
        arrayList.add("displayName");
        arrayList.add("name");
        arrayList.add("spent");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmOperationCategoryRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmOperationCategoryColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    public final void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.idIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong$398a59fb(this.columnInfo.idIndex, row$realm.getIndex(), j);
        }
    }

    public final String realmGet$fullName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.fullNameIndex);
    }

    public final void realmSet$fullName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.fullNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.fullNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.fullNameIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.fullNameIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$icon() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.iconIndex);
    }

    public final void realmSet$icon(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.iconIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.iconIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.iconIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.iconIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$subIcon() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.subIconIndex);
    }

    public final void realmSet$subIcon(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.subIconIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.subIconIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.subIconIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.subIconIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$displayName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.displayNameIndex);
    }

    public final void realmSet$displayName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.displayNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.displayNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.displayNameIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.displayNameIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    public final void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.nameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.nameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.nameIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.nameIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final RealmMoneyData realmGet$spent() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.spentIndex)) {
            return null;
        }
        return (RealmMoneyData) this.proxyState.getRealm$realm().get$1557dc49(RealmMoneyData.class, this.proxyState.getRow$realm().getLink(this.columnInfo.spentIndex), Collections.emptyList());
    }

    public final void realmSet$spent(RealmMoneyData realmMoneyData) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmMoneyData == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.spentIndex);
                return;
            }
            if (realmMoneyData instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmMoneyData)) {
                    realmObjectProxy = (RealmObjectProxy) realmMoneyData;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.spentIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("spent")) {
            if (!(realmMoneyData == null || (realmMoneyData instanceof RealmObjectProxy))) {
                realmMoneyData = (RealmMoneyData) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmMoneyData);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmMoneyData == null) {
                row$realm.nullifyLink(this.columnInfo.spentIndex);
            } else if (RealmObject.isValid(realmMoneyData)) {
                realmObjectProxy = (RealmObjectProxy) realmMoneyData;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.spentIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmOperationCategory")) {
            return realmSchema.get("RealmOperationCategory");
        }
        RealmObjectSchema create = realmSchema.create("RealmOperationCategory");
        RealmObjectSchema realmObjectSchema = create;
        realmObjectSchema.add("id", RealmFieldType.INTEGER, false, false, true);
        realmObjectSchema.add("fullName", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("icon", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("subIcon", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("displayName", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("name", RealmFieldType.STRING, false, false, false);
        if (!realmSchema.contains("RealmMoneyData")) {
            RealmMoneyDataRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("spent", RealmFieldType.OBJECT, realmSchema.get("RealmMoneyData"));
        return create;
    }

    public static RealmOperationCategoryColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmOperationCategory")) {
            Table table = sharedRealm.getTable("class_RealmOperationCategory");
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
            RealmOperationCategoryColumnInfo realmOperationCategoryColumnInfo = new RealmOperationCategoryColumnInfo(table);
            if (table.hasPrimaryKey()) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key defined for field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" was removed.");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'long' for field 'id' in existing Realm file.");
            } else if (table.isColumnNullable(realmOperationCategoryColumnInfo.idIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'id' does support null values in the existing Realm file. Use corresponding boxed type for field 'id' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("fullName")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'fullName' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("fullName") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'fullName' in existing Realm file.");
            } else if (!table.isColumnNullable(realmOperationCategoryColumnInfo.fullNameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'fullName' is required. Either set @Required to field 'fullName' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("icon")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'icon' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("icon") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'icon' in existing Realm file.");
            } else if (!table.isColumnNullable(realmOperationCategoryColumnInfo.iconIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'icon' is required. Either set @Required to field 'icon' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("subIcon")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'subIcon' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("subIcon") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'subIcon' in existing Realm file.");
            } else if (!table.isColumnNullable(realmOperationCategoryColumnInfo.subIconIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'subIcon' is required. Either set @Required to field 'subIcon' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("displayName")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'displayName' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("displayName") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'displayName' in existing Realm file.");
            } else if (!table.isColumnNullable(realmOperationCategoryColumnInfo.displayNameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'displayName' is required. Either set @Required to field 'displayName' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("name")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'name' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("name") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'name' in existing Realm file.");
            } else if (!table.isColumnNullable(realmOperationCategoryColumnInfo.nameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'name' is required. Either set @Required to field 'name' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("spent")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'spent' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("spent") != RealmFieldType.OBJECT) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmMoneyData' for field 'spent'");
            } else if (sharedRealm.hasTable("class_RealmMoneyData")) {
                z = sharedRealm.getTable("class_RealmMoneyData");
                if (table.getLinkTarget(realmOperationCategoryColumnInfo.spentIndex).hasSameSchema(z)) {
                    return realmOperationCategoryColumnInfo;
                }
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'spent': '");
                stringBuilder2.append(table.getLinkTarget(realmOperationCategoryColumnInfo.spentIndex).getName());
                stringBuilder2.append("' expected - was '");
                stringBuilder2.append(z.getName());
                stringBuilder2.append("'");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmMoneyData' for field 'spent'");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmOperationCategory' class is missing from the schema for this Realm.");
    }

    public static RealmOperationCategory copyOrUpdate$3a139521(Realm realm, RealmOperationCategory realmOperationCategory, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmOperationCategory instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmOperationCategory;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmOperationCategory;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmOperationCategory;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmOperationCategory);
        if (realmObjectProxy != null) {
            return (RealmOperationCategory) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmOperationCategory);
        if (realmObjectProxy != null) {
            return (RealmOperationCategory) realmObjectProxy;
        }
        RealmOperationCategory realmOperationCategory2 = (RealmOperationCategory) realm.createObjectInternal$6d9349d5(RealmOperationCategory.class, Collections.emptyList());
        map.put(realmOperationCategory, (RealmObjectProxy) realmOperationCategory2);
        RealmOperationCategoryRealmProxyInterface realmOperationCategoryRealmProxyInterface = realmOperationCategory2;
        RealmOperationCategoryRealmProxyInterface realmOperationCategoryRealmProxyInterface2 = realmOperationCategory;
        realmOperationCategoryRealmProxyInterface.realmSet$id(realmOperationCategoryRealmProxyInterface2.realmGet$id());
        realmOperationCategoryRealmProxyInterface.realmSet$fullName(realmOperationCategoryRealmProxyInterface2.realmGet$fullName());
        realmOperationCategoryRealmProxyInterface.realmSet$icon(realmOperationCategoryRealmProxyInterface2.realmGet$icon());
        realmOperationCategoryRealmProxyInterface.realmSet$subIcon(realmOperationCategoryRealmProxyInterface2.realmGet$subIcon());
        realmOperationCategoryRealmProxyInterface.realmSet$displayName(realmOperationCategoryRealmProxyInterface2.realmGet$displayName());
        realmOperationCategoryRealmProxyInterface.realmSet$name(realmOperationCategoryRealmProxyInterface2.realmGet$name());
        realmOperationCategory = realmOperationCategoryRealmProxyInterface2.realmGet$spent();
        if (realmOperationCategory != null) {
            RealmMoneyData realmMoneyData = (RealmMoneyData) map.get(realmOperationCategory);
            if (realmMoneyData != null) {
                realmOperationCategoryRealmProxyInterface.realmSet$spent(realmMoneyData);
            } else {
                realmOperationCategoryRealmProxyInterface.realmSet$spent(RealmMoneyDataRealmProxy.copyOrUpdate$47a39055(realm, realmOperationCategory, map));
            }
        } else {
            realmOperationCategoryRealmProxyInterface.realmSet$spent(null);
        }
        return realmOperationCategory2;
    }

    public static RealmOperationCategory createDetachedCopy(RealmOperationCategory realmOperationCategory, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmOperationCategory != null) {
                RealmOperationCategory realmOperationCategory2;
                CacheData cacheData = (CacheData) map.get(realmOperationCategory);
                if (cacheData == null) {
                    realmOperationCategory2 = new RealmOperationCategory();
                    map.put(realmOperationCategory, new CacheData(i, realmOperationCategory2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    realmOperationCategory2 = (RealmOperationCategory) cacheData.object;
                    cacheData.minDepth = i;
                }
                RealmOperationCategoryRealmProxyInterface realmOperationCategoryRealmProxyInterface = realmOperationCategory2;
                RealmOperationCategoryRealmProxyInterface realmOperationCategoryRealmProxyInterface2 = realmOperationCategory;
                realmOperationCategoryRealmProxyInterface.realmSet$id(realmOperationCategoryRealmProxyInterface2.realmGet$id());
                realmOperationCategoryRealmProxyInterface.realmSet$fullName(realmOperationCategoryRealmProxyInterface2.realmGet$fullName());
                realmOperationCategoryRealmProxyInterface.realmSet$icon(realmOperationCategoryRealmProxyInterface2.realmGet$icon());
                realmOperationCategoryRealmProxyInterface.realmSet$subIcon(realmOperationCategoryRealmProxyInterface2.realmGet$subIcon());
                realmOperationCategoryRealmProxyInterface.realmSet$displayName(realmOperationCategoryRealmProxyInterface2.realmGet$displayName());
                realmOperationCategoryRealmProxyInterface.realmSet$name(realmOperationCategoryRealmProxyInterface2.realmGet$name());
                realmOperationCategoryRealmProxyInterface.realmSet$spent(RealmMoneyDataRealmProxy.createDetachedCopy(realmOperationCategoryRealmProxyInterface2.realmGet$spent(), i + 1, i2, map));
                return realmOperationCategory2;
            }
        }
        return null;
    }

    public final String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        String string;
        StringBuilder stringBuilder = new StringBuilder("RealmOperationCategory = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{fullName:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.fullNameIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.fullNameIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{icon:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.iconIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.iconIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{subIcon:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.subIconIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.subIconIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{displayName:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.displayNameIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.displayNameIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{name:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{spent:");
        stringBuilder.append(realmGet$spent() != null ? "RealmMoneyData" : "null");
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
        r7 = (io.realm.RealmOperationCategoryRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmOperationCategoryRealmProxy.equals(java.lang.Object):boolean");
    }
}
