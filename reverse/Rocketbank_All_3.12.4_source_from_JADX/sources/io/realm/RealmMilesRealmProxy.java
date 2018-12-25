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
import ru.rocketbank.core.realm.RealmMiles;

public final class RealmMilesRealmProxy extends RealmMiles implements RealmMilesRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmMilesColumnInfo columnInfo;
    private ProxyState<RealmMiles> proxyState;

    static final class RealmMilesColumnInfo extends ColumnInfo {
        long amountIndex;
        long enoughMilesIndex;
        long statusIndex;

        RealmMilesColumnInfo(Table table) {
            super(3);
            this.amountIndex = addColumnDetails(table, "amount", RealmFieldType.FLOAT);
            this.enoughMilesIndex = addColumnDetails(table, "enoughMiles", RealmFieldType.BOOLEAN);
            this.statusIndex = addColumnDetails(table, "status", RealmFieldType.STRING);
        }

        private RealmMilesColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmMilesColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmMilesColumnInfo realmMilesColumnInfo = (RealmMilesColumnInfo) columnInfo;
            RealmMilesColumnInfo realmMilesColumnInfo2 = (RealmMilesColumnInfo) columnInfo2;
            realmMilesColumnInfo2.amountIndex = realmMilesColumnInfo.amountIndex;
            realmMilesColumnInfo2.enoughMilesIndex = realmMilesColumnInfo.enoughMilesIndex;
            realmMilesColumnInfo2.statusIndex = realmMilesColumnInfo.statusIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmMiles";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("amount");
        arrayList.add("enoughMiles");
        arrayList.add("status");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmMilesRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmMilesColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final float realmGet$amount() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getFloat(this.columnInfo.amountIndex);
    }

    public final void realmSet$amount(float f) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setFloat(this.columnInfo.amountIndex, f);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setFloat$398c2b77(this.columnInfo.amountIndex, row$realm.getIndex(), f);
        }
    }

    public final boolean realmGet$enoughMiles() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.enoughMilesIndex);
    }

    public final void realmSet$enoughMiles(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.enoughMilesIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean$3983140b(this.columnInfo.enoughMilesIndex, row$realm.getIndex(), z);
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

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmMiles")) {
            return realmSchema.get("RealmMiles");
        }
        realmSchema = realmSchema.create("RealmMiles");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("amount", RealmFieldType.FLOAT, false, false, true);
        realmSchema2.add("enoughMiles", RealmFieldType.BOOLEAN, false, false, true);
        realmSchema2.add("status", RealmFieldType.STRING, false, false, false);
        return realmSchema;
    }

    public static RealmMilesColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmMiles")) {
            Table table = sharedRealm.getTable("class_RealmMiles");
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
            RealmMilesColumnInfo realmMilesColumnInfo = new RealmMilesColumnInfo(table);
            if (table.hasPrimaryKey()) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key defined for field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" was removed.");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("amount")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'amount' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("amount") != RealmFieldType.FLOAT) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'float' for field 'amount' in existing Realm file.");
            } else if (table.isColumnNullable(realmMilesColumnInfo.amountIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'amount' does support null values in the existing Realm file. Use corresponding boxed type for field 'amount' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("enoughMiles")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'enoughMiles' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("enoughMiles") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'boolean' for field 'enoughMiles' in existing Realm file.");
            } else if (table.isColumnNullable(realmMilesColumnInfo.enoughMilesIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'enoughMiles' does support null values in the existing Realm file. Use corresponding boxed type for field 'enoughMiles' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("status")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'status' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("status") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'status' in existing Realm file.");
            } else if (table.isColumnNullable(realmMilesColumnInfo.statusIndex)) {
                return realmMilesColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'status' is required. Either set @Required to field 'status' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmMiles' class is missing from the schema for this Realm.");
    }

    public static RealmMiles copyOrUpdate$785b4813(Realm realm, RealmMiles realmMiles, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmMiles instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmMiles;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmMiles;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmMiles;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmMiles);
        if (realmObjectProxy != null) {
            return (RealmMiles) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmMiles);
        if (realmObjectProxy != null) {
            return (RealmMiles) realmObjectProxy;
        }
        RealmMiles realmMiles2 = (RealmMiles) realm.createObjectInternal$6d9349d5(RealmMiles.class, Collections.emptyList());
        map.put(realmMiles, (RealmObjectProxy) realmMiles2);
        RealmMilesRealmProxyInterface realmMilesRealmProxyInterface = realmMiles2;
        RealmMilesRealmProxyInterface realmMilesRealmProxyInterface2 = realmMiles;
        realmMilesRealmProxyInterface.realmSet$amount(realmMilesRealmProxyInterface2.realmGet$amount());
        realmMilesRealmProxyInterface.realmSet$enoughMiles(realmMilesRealmProxyInterface2.realmGet$enoughMiles());
        realmMilesRealmProxyInterface.realmSet$status(realmMilesRealmProxyInterface2.realmGet$status());
        return realmMiles2;
    }

    public static RealmMiles createDetachedCopy(RealmMiles realmMiles, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmMiles != null) {
                CacheData cacheData = (CacheData) map.get(realmMiles);
                if (cacheData == null) {
                    i2 = new RealmMiles();
                    map.put(realmMiles, new CacheData(i, i2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    RealmMiles realmMiles2 = (RealmMiles) cacheData.object;
                    cacheData.minDepth = i;
                    i2 = realmMiles2;
                }
                RealmMilesRealmProxyInterface realmMilesRealmProxyInterface = (RealmMilesRealmProxyInterface) i2;
                RealmMilesRealmProxyInterface realmMilesRealmProxyInterface2 = realmMiles;
                realmMilesRealmProxyInterface.realmSet$amount(realmMilesRealmProxyInterface2.realmGet$amount());
                realmMilesRealmProxyInterface.realmSet$enoughMiles(realmMilesRealmProxyInterface2.realmGet$enoughMiles());
                realmMilesRealmProxyInterface.realmSet$status(realmMilesRealmProxyInterface2.realmGet$status());
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
        StringBuilder stringBuilder = new StringBuilder("RealmMiles = proxy[");
        stringBuilder.append("{amount:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getFloat(this.columnInfo.amountIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{enoughMiles:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getBoolean(this.columnInfo.enoughMilesIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
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
        r7 = (io.realm.RealmMilesRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmMilesRealmProxy.equals(java.lang.Object):boolean");
    }
}
