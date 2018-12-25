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

public final class RealmMoneyDataRealmProxy extends RealmMoneyData implements RealmMoneyDataRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmMoneyDataColumnInfo columnInfo;
    private ProxyState<RealmMoneyData> proxyState;

    static final class RealmMoneyDataColumnInfo extends ColumnInfo {
        long amountIndex;
        long currencyCodeIndex;
        long formattedExactIndex;
        long formattedIndex;

        RealmMoneyDataColumnInfo(Table table) {
            super(4);
            this.formattedIndex = addColumnDetails(table, "formatted", RealmFieldType.STRING);
            this.formattedExactIndex = addColumnDetails(table, "formattedExact", RealmFieldType.STRING);
            this.amountIndex = addColumnDetails(table, "amount", RealmFieldType.DOUBLE);
            this.currencyCodeIndex = addColumnDetails(table, "currencyCode", RealmFieldType.STRING);
        }

        private RealmMoneyDataColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmMoneyDataColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmMoneyDataColumnInfo realmMoneyDataColumnInfo = (RealmMoneyDataColumnInfo) columnInfo;
            RealmMoneyDataColumnInfo realmMoneyDataColumnInfo2 = (RealmMoneyDataColumnInfo) columnInfo2;
            realmMoneyDataColumnInfo2.formattedIndex = realmMoneyDataColumnInfo.formattedIndex;
            realmMoneyDataColumnInfo2.formattedExactIndex = realmMoneyDataColumnInfo.formattedExactIndex;
            realmMoneyDataColumnInfo2.amountIndex = realmMoneyDataColumnInfo.amountIndex;
            realmMoneyDataColumnInfo2.currencyCodeIndex = realmMoneyDataColumnInfo.currencyCodeIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmMoneyData";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("formatted");
        arrayList.add("formattedExact");
        arrayList.add("amount");
        arrayList.add("currencyCode");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmMoneyDataRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmMoneyDataColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final String realmGet$formatted() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.formattedIndex);
    }

    public final void realmSet$formatted(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.formattedIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.formattedIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.formattedIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.formattedIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$formattedExact() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.formattedExactIndex);
    }

    public final void realmSet$formattedExact(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.formattedExactIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.formattedExactIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.formattedExactIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.formattedExactIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final double realmGet$amount() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDouble(this.columnInfo.amountIndex);
    }

    public final void realmSet$amount(double d) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setDouble(this.columnInfo.amountIndex, d);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setDouble$398d1435(this.columnInfo.amountIndex, row$realm.getIndex(), d);
        }
    }

    public final String realmGet$currencyCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.currencyCodeIndex);
    }

    public final void realmSet$currencyCode(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.currencyCodeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.currencyCodeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.currencyCodeIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.currencyCodeIndex, row$realm.getIndex(), str);
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmMoneyData")) {
            return realmSchema.get("RealmMoneyData");
        }
        realmSchema = realmSchema.create("RealmMoneyData");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("formatted", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("formattedExact", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("amount", RealmFieldType.DOUBLE, false, false, true);
        realmSchema2.add("currencyCode", RealmFieldType.STRING, false, false, false);
        return realmSchema;
    }

    public static RealmMoneyDataColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmMoneyData")) {
            Table table = sharedRealm.getTable("class_RealmMoneyData");
            long columnCount = table.getColumnCount();
            if (columnCount != 4) {
                if (columnCount < 4) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 4 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 4 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 4 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            RealmMoneyDataColumnInfo realmMoneyDataColumnInfo = new RealmMoneyDataColumnInfo(table);
            if (table.hasPrimaryKey()) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key defined for field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" was removed.");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("formatted")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'formatted' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("formatted") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'formatted' in existing Realm file.");
            } else if (!table.isColumnNullable(realmMoneyDataColumnInfo.formattedIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'formatted' is required. Either set @Required to field 'formatted' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("formattedExact")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'formattedExact' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("formattedExact") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'formattedExact' in existing Realm file.");
            } else if (!table.isColumnNullable(realmMoneyDataColumnInfo.formattedExactIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'formattedExact' is required. Either set @Required to field 'formattedExact' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("amount")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'amount' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("amount") != RealmFieldType.DOUBLE) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'double' for field 'amount' in existing Realm file.");
            } else if (table.isColumnNullable(realmMoneyDataColumnInfo.amountIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'amount' does support null values in the existing Realm file. Use corresponding boxed type for field 'amount' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("currencyCode")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'currencyCode' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("currencyCode") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'currencyCode' in existing Realm file.");
            } else if (table.isColumnNullable(realmMoneyDataColumnInfo.currencyCodeIndex)) {
                return realmMoneyDataColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'currencyCode' is required. Either set @Required to field 'currencyCode' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmMoneyData' class is missing from the schema for this Realm.");
    }

    public static RealmMoneyData copyOrUpdate$47a39055(Realm realm, RealmMoneyData realmMoneyData, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmMoneyData instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmMoneyData;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmMoneyData;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmMoneyData;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmMoneyData);
        if (realmObjectProxy != null) {
            return (RealmMoneyData) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmMoneyData);
        if (realmObjectProxy != null) {
            return (RealmMoneyData) realmObjectProxy;
        }
        RealmMoneyData realmMoneyData2 = (RealmMoneyData) realm.createObjectInternal$6d9349d5(RealmMoneyData.class, Collections.emptyList());
        map.put(realmMoneyData, (RealmObjectProxy) realmMoneyData2);
        RealmMoneyDataRealmProxyInterface realmMoneyDataRealmProxyInterface = realmMoneyData2;
        RealmMoneyDataRealmProxyInterface realmMoneyDataRealmProxyInterface2 = realmMoneyData;
        realmMoneyDataRealmProxyInterface.realmSet$formatted(realmMoneyDataRealmProxyInterface2.realmGet$formatted());
        realmMoneyDataRealmProxyInterface.realmSet$formattedExact(realmMoneyDataRealmProxyInterface2.realmGet$formattedExact());
        realmMoneyDataRealmProxyInterface.realmSet$amount(realmMoneyDataRealmProxyInterface2.realmGet$amount());
        realmMoneyDataRealmProxyInterface.realmSet$currencyCode(realmMoneyDataRealmProxyInterface2.realmGet$currencyCode());
        return realmMoneyData2;
    }

    public static RealmMoneyData createDetachedCopy(RealmMoneyData realmMoneyData, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmMoneyData != null) {
                CacheData cacheData = (CacheData) map.get(realmMoneyData);
                if (cacheData == null) {
                    i2 = new RealmMoneyData();
                    map.put(realmMoneyData, new CacheData(i, i2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    RealmMoneyData realmMoneyData2 = (RealmMoneyData) cacheData.object;
                    cacheData.minDepth = i;
                    i2 = realmMoneyData2;
                }
                RealmMoneyDataRealmProxyInterface realmMoneyDataRealmProxyInterface = (RealmMoneyDataRealmProxyInterface) i2;
                RealmMoneyDataRealmProxyInterface realmMoneyDataRealmProxyInterface2 = realmMoneyData;
                realmMoneyDataRealmProxyInterface.realmSet$formatted(realmMoneyDataRealmProxyInterface2.realmGet$formatted());
                realmMoneyDataRealmProxyInterface.realmSet$formattedExact(realmMoneyDataRealmProxyInterface2.realmGet$formattedExact());
                realmMoneyDataRealmProxyInterface.realmSet$amount(realmMoneyDataRealmProxyInterface2.realmGet$amount());
                realmMoneyDataRealmProxyInterface.realmSet$currencyCode(realmMoneyDataRealmProxyInterface2.realmGet$currencyCode());
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
        StringBuilder stringBuilder = new StringBuilder("RealmMoneyData = proxy[");
        stringBuilder.append("{formatted:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.formattedIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.formattedIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{formattedExact:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.formattedExactIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.formattedExactIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{amount:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getDouble(this.columnInfo.amountIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{currencyCode:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.currencyCodeIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.currencyCodeIndex);
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
        r7 = (io.realm.RealmMoneyDataRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmMoneyDataRealmProxy.equals(java.lang.Object):boolean");
    }
}
