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

public final class RealmBinRealmProxy extends RealmBin implements RealmBinRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmBinColumnInfo columnInfo;
    private ProxyState<RealmBin> proxyState;

    static final class RealmBinColumnInfo extends ColumnInfo {
        long adviceIndex;
        long nameIndex;
        long transferHintIndex;
        long transferWorksIndex;
        long worksIndex;

        RealmBinColumnInfo(Table table) {
            super(5);
            this.worksIndex = addColumnDetails(table, "works", RealmFieldType.BOOLEAN);
            this.adviceIndex = addColumnDetails(table, "advice", RealmFieldType.STRING);
            this.transferHintIndex = addColumnDetails(table, "transferHint", RealmFieldType.STRING);
            this.transferWorksIndex = addColumnDetails(table, "transferWorks", RealmFieldType.BOOLEAN);
            this.nameIndex = addColumnDetails(table, "name", RealmFieldType.STRING);
        }

        private RealmBinColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmBinColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmBinColumnInfo realmBinColumnInfo = (RealmBinColumnInfo) columnInfo;
            RealmBinColumnInfo realmBinColumnInfo2 = (RealmBinColumnInfo) columnInfo2;
            realmBinColumnInfo2.worksIndex = realmBinColumnInfo.worksIndex;
            realmBinColumnInfo2.adviceIndex = realmBinColumnInfo.adviceIndex;
            realmBinColumnInfo2.transferHintIndex = realmBinColumnInfo.transferHintIndex;
            realmBinColumnInfo2.transferWorksIndex = realmBinColumnInfo.transferWorksIndex;
            realmBinColumnInfo2.nameIndex = realmBinColumnInfo.nameIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmBin";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("works");
        arrayList.add("advice");
        arrayList.add("transferHint");
        arrayList.add("transferWorks");
        arrayList.add("name");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmBinRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmBinColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final boolean realmGet$works() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.worksIndex);
    }

    public final void realmSet$works(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.worksIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean$3983140b(this.columnInfo.worksIndex, row$realm.getIndex(), z);
        }
    }

    public final String realmGet$advice() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.adviceIndex);
    }

    public final void realmSet$advice(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.adviceIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.adviceIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.adviceIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.adviceIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$transferHint() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.transferHintIndex);
    }

    public final void realmSet$transferHint(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.transferHintIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.transferHintIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.transferHintIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.transferHintIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final boolean realmGet$transferWorks() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.transferWorksIndex);
    }

    public final void realmSet$transferWorks(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.transferWorksIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean$3983140b(this.columnInfo.transferWorksIndex, row$realm.getIndex(), z);
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
        if (realmSchema.contains("RealmBin")) {
            return realmSchema.get("RealmBin");
        }
        realmSchema = realmSchema.create("RealmBin");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("works", RealmFieldType.BOOLEAN, false, false, true);
        realmSchema2.add("advice", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("transferHint", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("transferWorks", RealmFieldType.BOOLEAN, false, false, true);
        realmSchema2.add("name", RealmFieldType.STRING, false, false, false);
        return realmSchema;
    }

    public static RealmBinColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmBin")) {
            Table table = sharedRealm.getTable("class_RealmBin");
            long columnCount = table.getColumnCount();
            if (columnCount != 5) {
                if (columnCount < 5) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 5 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 5 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 5 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            RealmBinColumnInfo realmBinColumnInfo = new RealmBinColumnInfo(table);
            if (table.hasPrimaryKey()) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key defined for field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" was removed.");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("works")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'works' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("works") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'boolean' for field 'works' in existing Realm file.");
            } else if (table.isColumnNullable(realmBinColumnInfo.worksIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'works' does support null values in the existing Realm file. Use corresponding boxed type for field 'works' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("advice")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'advice' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("advice") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'advice' in existing Realm file.");
            } else if (!table.isColumnNullable(realmBinColumnInfo.adviceIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'advice' is required. Either set @Required to field 'advice' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("transferHint")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'transferHint' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("transferHint") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'transferHint' in existing Realm file.");
            } else if (!table.isColumnNullable(realmBinColumnInfo.transferHintIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'transferHint' is required. Either set @Required to field 'transferHint' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("transferWorks")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'transferWorks' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("transferWorks") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'boolean' for field 'transferWorks' in existing Realm file.");
            } else if (table.isColumnNullable(realmBinColumnInfo.transferWorksIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'transferWorks' does support null values in the existing Realm file. Use corresponding boxed type for field 'transferWorks' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("name")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'name' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("name") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'name' in existing Realm file.");
            } else if (table.isColumnNullable(realmBinColumnInfo.nameIndex)) {
                return realmBinColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'name' is required. Either set @Required to field 'name' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmBin' class is missing from the schema for this Realm.");
    }

    public static RealmBin copyOrUpdate$2db7cbdb(Realm realm, RealmBin realmBin, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmBin instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmBin;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmBin;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmBin;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmBin);
        if (realmObjectProxy != null) {
            return (RealmBin) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmBin);
        if (realmObjectProxy != null) {
            return (RealmBin) realmObjectProxy;
        }
        RealmBin realmBin2 = (RealmBin) realm.createObjectInternal$6d9349d5(RealmBin.class, Collections.emptyList());
        map.put(realmBin, (RealmObjectProxy) realmBin2);
        RealmBinRealmProxyInterface realmBinRealmProxyInterface = realmBin2;
        RealmBinRealmProxyInterface realmBinRealmProxyInterface2 = realmBin;
        realmBinRealmProxyInterface.realmSet$works(realmBinRealmProxyInterface2.realmGet$works());
        realmBinRealmProxyInterface.realmSet$advice(realmBinRealmProxyInterface2.realmGet$advice());
        realmBinRealmProxyInterface.realmSet$transferHint(realmBinRealmProxyInterface2.realmGet$transferHint());
        realmBinRealmProxyInterface.realmSet$transferWorks(realmBinRealmProxyInterface2.realmGet$transferWorks());
        realmBinRealmProxyInterface.realmSet$name(realmBinRealmProxyInterface2.realmGet$name());
        return realmBin2;
    }

    public static RealmBin createDetachedCopy(RealmBin realmBin, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmBin != null) {
                CacheData cacheData = (CacheData) map.get(realmBin);
                if (cacheData == null) {
                    i2 = new RealmBin();
                    map.put(realmBin, new CacheData(i, i2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    RealmBin realmBin2 = (RealmBin) cacheData.object;
                    cacheData.minDepth = i;
                    i2 = realmBin2;
                }
                RealmBinRealmProxyInterface realmBinRealmProxyInterface = (RealmBinRealmProxyInterface) i2;
                RealmBinRealmProxyInterface realmBinRealmProxyInterface2 = realmBin;
                realmBinRealmProxyInterface.realmSet$works(realmBinRealmProxyInterface2.realmGet$works());
                realmBinRealmProxyInterface.realmSet$advice(realmBinRealmProxyInterface2.realmGet$advice());
                realmBinRealmProxyInterface.realmSet$transferHint(realmBinRealmProxyInterface2.realmGet$transferHint());
                realmBinRealmProxyInterface.realmSet$transferWorks(realmBinRealmProxyInterface2.realmGet$transferWorks());
                realmBinRealmProxyInterface.realmSet$name(realmBinRealmProxyInterface2.realmGet$name());
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
        StringBuilder stringBuilder = new StringBuilder("RealmBin = proxy[");
        stringBuilder.append("{works:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getBoolean(this.columnInfo.worksIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{advice:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.adviceIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.adviceIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{transferHint:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.transferHintIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.transferHintIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{transferWorks:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getBoolean(this.columnInfo.transferWorksIndex));
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
        r7 = (io.realm.RealmBinRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmBinRealmProxy.equals(java.lang.Object):boolean");
    }
}
