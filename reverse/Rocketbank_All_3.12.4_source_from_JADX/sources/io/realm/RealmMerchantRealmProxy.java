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
import ru.rocketbank.core.realm.RealmMerchant;

public final class RealmMerchantRealmProxy extends RealmMerchant implements RealmMerchantRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmMerchantColumnInfo columnInfo;
    private ProxyState<RealmMerchant> proxyState;

    static final class RealmMerchantColumnInfo extends ColumnInfo {
        long iconIndex;
        long idIndex;
        long nameIndex;

        RealmMerchantColumnInfo(Table table) {
            super(3);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.INTEGER);
            this.iconIndex = addColumnDetails(table, "icon", RealmFieldType.STRING);
            this.nameIndex = addColumnDetails(table, "name", RealmFieldType.STRING);
        }

        private RealmMerchantColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmMerchantColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmMerchantColumnInfo realmMerchantColumnInfo = (RealmMerchantColumnInfo) columnInfo;
            RealmMerchantColumnInfo realmMerchantColumnInfo2 = (RealmMerchantColumnInfo) columnInfo2;
            realmMerchantColumnInfo2.idIndex = realmMerchantColumnInfo.idIndex;
            realmMerchantColumnInfo2.iconIndex = realmMerchantColumnInfo.iconIndex;
            realmMerchantColumnInfo2.nameIndex = realmMerchantColumnInfo.nameIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmMerchant";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("icon");
        arrayList.add("name");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmMerchantRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmMerchantColumnInfo) realmObjectContext.getColumnInfo();
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

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmMerchant")) {
            return realmSchema.get("RealmMerchant");
        }
        realmSchema = realmSchema.create("RealmMerchant");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("id", RealmFieldType.INTEGER, false, false, true);
        realmSchema2.add("icon", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("name", RealmFieldType.STRING, false, false, false);
        return realmSchema;
    }

    public static RealmMerchantColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmMerchant")) {
            Table table = sharedRealm.getTable("class_RealmMerchant");
            long columnCount = table.getColumnCount();
            if (columnCount != 3) {
                if (columnCount < 3) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 3 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 3 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 3 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            RealmMerchantColumnInfo realmMerchantColumnInfo = new RealmMerchantColumnInfo(table);
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
            } else if (table.isColumnNullable(realmMerchantColumnInfo.idIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'id' does support null values in the existing Realm file. Use corresponding boxed type for field 'id' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("icon")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'icon' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("icon") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'icon' in existing Realm file.");
            } else if (!table.isColumnNullable(realmMerchantColumnInfo.iconIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'icon' is required. Either set @Required to field 'icon' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("name")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'name' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("name") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'name' in existing Realm file.");
            } else if (table.isColumnNullable(realmMerchantColumnInfo.nameIndex)) {
                return realmMerchantColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'name' is required. Either set @Required to field 'name' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmMerchant' class is missing from the schema for this Realm.");
    }

    public static RealmMerchant copyOrUpdate$4c5ba239(Realm realm, RealmMerchant realmMerchant, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmMerchant instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmMerchant;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmMerchant;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmMerchant;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmMerchant);
        if (realmObjectProxy != null) {
            return (RealmMerchant) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmMerchant);
        if (realmObjectProxy != null) {
            return (RealmMerchant) realmObjectProxy;
        }
        RealmMerchant realmMerchant2 = (RealmMerchant) realm.createObjectInternal$6d9349d5(RealmMerchant.class, Collections.emptyList());
        map.put(realmMerchant, (RealmObjectProxy) realmMerchant2);
        RealmMerchantRealmProxyInterface realmMerchantRealmProxyInterface = realmMerchant2;
        RealmMerchantRealmProxyInterface realmMerchantRealmProxyInterface2 = realmMerchant;
        realmMerchantRealmProxyInterface.realmSet$id(realmMerchantRealmProxyInterface2.realmGet$id());
        realmMerchantRealmProxyInterface.realmSet$icon(realmMerchantRealmProxyInterface2.realmGet$icon());
        realmMerchantRealmProxyInterface.realmSet$name(realmMerchantRealmProxyInterface2.realmGet$name());
        return realmMerchant2;
    }

    public static RealmMerchant createDetachedCopy(RealmMerchant realmMerchant, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmMerchant != null) {
                CacheData cacheData = (CacheData) map.get(realmMerchant);
                if (cacheData == null) {
                    i2 = new RealmMerchant();
                    map.put(realmMerchant, new CacheData(i, i2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    RealmMerchant realmMerchant2 = (RealmMerchant) cacheData.object;
                    cacheData.minDepth = i;
                    i2 = realmMerchant2;
                }
                RealmMerchantRealmProxyInterface realmMerchantRealmProxyInterface = (RealmMerchantRealmProxyInterface) i2;
                RealmMerchantRealmProxyInterface realmMerchantRealmProxyInterface2 = realmMerchant;
                realmMerchantRealmProxyInterface.realmSet$id(realmMerchantRealmProxyInterface2.realmGet$id());
                realmMerchantRealmProxyInterface.realmSet$icon(realmMerchantRealmProxyInterface2.realmGet$icon());
                realmMerchantRealmProxyInterface.realmSet$name(realmMerchantRealmProxyInterface2.realmGet$name());
                return i2;
            }
        }
        return null;
    }

    public final String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        String string;
        StringBuilder stringBuilder = new StringBuilder("RealmMerchant = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex));
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
        r7 = (io.realm.RealmMerchantRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmMerchantRealmProxy.equals(java.lang.Object):boolean");
    }
}
