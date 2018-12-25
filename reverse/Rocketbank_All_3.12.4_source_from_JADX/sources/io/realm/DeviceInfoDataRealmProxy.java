package io.realm;

import io.realm.BaseRealm.RealmObjectContext;
import io.realm.exceptions.RealmException;
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
import ru.rocketbank.core.realm.DeviceInfoData;

public final class DeviceInfoDataRealmProxy extends DeviceInfoData implements DeviceInfoDataRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private DeviceInfoDataColumnInfo columnInfo;
    private ProxyState<DeviceInfoData> proxyState;

    static final class DeviceInfoDataColumnInfo extends ColumnInfo {
        long activationIndex;
        long androidIdIndex;
        long deviceIdIndex;
        long idIndex;

        DeviceInfoDataColumnInfo(Table table) {
            super(4);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.INTEGER);
            this.activationIndex = addColumnDetails(table, "activation", RealmFieldType.STRING);
            this.androidIdIndex = addColumnDetails(table, "androidId", RealmFieldType.STRING);
            this.deviceIdIndex = addColumnDetails(table, "deviceId", RealmFieldType.STRING);
        }

        private DeviceInfoDataColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new DeviceInfoDataColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            DeviceInfoDataColumnInfo deviceInfoDataColumnInfo = (DeviceInfoDataColumnInfo) columnInfo;
            DeviceInfoDataColumnInfo deviceInfoDataColumnInfo2 = (DeviceInfoDataColumnInfo) columnInfo2;
            deviceInfoDataColumnInfo2.idIndex = deviceInfoDataColumnInfo.idIndex;
            deviceInfoDataColumnInfo2.activationIndex = deviceInfoDataColumnInfo.activationIndex;
            deviceInfoDataColumnInfo2.androidIdIndex = deviceInfoDataColumnInfo.androidIdIndex;
            deviceInfoDataColumnInfo2.deviceIdIndex = deviceInfoDataColumnInfo.deviceIdIndex;
        }
    }

    public static String getTableName() {
        return "class_DeviceInfoData";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("activation");
        arrayList.add("androidId");
        arrayList.add("deviceId");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    DeviceInfoDataRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (DeviceInfoDataColumnInfo) realmObjectContext.getColumnInfo();
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
        if (this.proxyState.isUnderConstruction() == null) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    public final String realmGet$activation() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.activationIndex);
    }

    public final void realmSet$activation(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.activationIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.activationIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.activationIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.activationIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$androidId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.androidIdIndex);
    }

    public final void realmSet$androidId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.androidIdIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.androidIdIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.androidIdIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.androidIdIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$deviceId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.deviceIdIndex);
    }

    public final void realmSet$deviceId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.deviceIdIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.deviceIdIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.deviceIdIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.deviceIdIndex, row$realm.getIndex(), str);
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("DeviceInfoData")) {
            return realmSchema.get("DeviceInfoData");
        }
        realmSchema = realmSchema.create("DeviceInfoData");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("id", RealmFieldType.INTEGER, true, true, true);
        realmSchema2.add("activation", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("androidId", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("deviceId", RealmFieldType.STRING, false, false, false);
        return realmSchema;
    }

    public static DeviceInfoDataColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_DeviceInfoData")) {
            Table table = sharedRealm.getTable("class_DeviceInfoData");
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
            DeviceInfoDataColumnInfo deviceInfoDataColumnInfo = new DeviceInfoDataColumnInfo(table);
            if (!table.hasPrimaryKey()) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Primary key not defined for field 'id' in existing Realm file. @PrimaryKey was added.");
            } else if (table.getPrimaryKey() != deviceInfoDataColumnInfo.idIndex) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key annotation definition was changed, from field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" to field id");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'long' for field 'id' in existing Realm file.");
            } else if (table.isColumnNullable(deviceInfoDataColumnInfo.idIndex) && table.findFirstNull(deviceInfoDataColumnInfo.idIndex) != -1) {
                throw new IllegalStateException("Cannot migrate an object with null value in field 'id'. Either maintain the same type for primary key field 'id', or remove the object with null value before migration.");
            } else if (!table.hasSearchIndex(table.getColumnIndex("id"))) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Index not defined for field 'id' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            } else if (!z.containsKey("activation")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'activation' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("activation") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'activation' in existing Realm file.");
            } else if (!table.isColumnNullable(deviceInfoDataColumnInfo.activationIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'activation' is required. Either set @Required to field 'activation' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("androidId")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'androidId' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("androidId") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'androidId' in existing Realm file.");
            } else if (!table.isColumnNullable(deviceInfoDataColumnInfo.androidIdIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'androidId' is required. Either set @Required to field 'androidId' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("deviceId")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'deviceId' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("deviceId") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'deviceId' in existing Realm file.");
            } else if (table.isColumnNullable(deviceInfoDataColumnInfo.deviceIdIndex)) {
                return deviceInfoDataColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'deviceId' is required. Either set @Required to field 'deviceId' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'DeviceInfoData' class is missing from the schema for this Realm.");
    }

    public static DeviceInfoData copyOrUpdate(Realm realm, DeviceInfoData deviceInfoData, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z2 = deviceInfoData instanceof RealmObjectProxy;
        if (z2) {
            realmObjectProxy = (RealmObjectProxy) deviceInfoData;
            if (!(realmObjectProxy.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z2) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) deviceInfoData;
            if (realmObjectProxy2.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy2.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return deviceInfoData;
            }
        }
        RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(deviceInfoData);
        if (realmObjectProxy != null) {
            return (DeviceInfoData) realmObjectProxy;
        }
        DeviceInfoData deviceInfoData2 = null;
        if (z) {
            Table table = realm.getTable(DeviceInfoData.class);
            long findFirstLong = table.findFirstLong(table.getPrimaryKey(), deviceInfoData.realmGet$id());
            if (findFirstLong != -1) {
                try {
                    realmObjectContext.set(realm, table.getUncheckedRow(findFirstLong), realm.schema.getColumnInfo(DeviceInfoData.class), false, Collections.emptyList());
                    deviceInfoData2 = new DeviceInfoDataRealmProxy();
                    map.put(deviceInfoData, (RealmObjectProxy) deviceInfoData2);
                } finally {
                    realmObjectContext.clear();
                }
            } else {
                z = false;
            }
        }
        if (z) {
            DeviceInfoDataRealmProxyInterface deviceInfoDataRealmProxyInterface = deviceInfoData2;
            DeviceInfoDataRealmProxyInterface deviceInfoDataRealmProxyInterface2 = deviceInfoData;
            deviceInfoDataRealmProxyInterface.realmSet$activation(deviceInfoDataRealmProxyInterface2.realmGet$activation());
            deviceInfoDataRealmProxyInterface.realmSet$androidId(deviceInfoDataRealmProxyInterface2.realmGet$androidId());
            deviceInfoDataRealmProxyInterface.realmSet$deviceId(deviceInfoDataRealmProxyInterface2.realmGet$deviceId());
            return deviceInfoData2;
        }
        RealmObjectProxy realmObjectProxy3 = (RealmObjectProxy) map.get(deviceInfoData);
        if (realmObjectProxy3 != null) {
            return (DeviceInfoData) realmObjectProxy3;
        }
        DeviceInfoDataRealmProxyInterface deviceInfoDataRealmProxyInterface3 = deviceInfoData;
        DeviceInfoData deviceInfoData3 = (DeviceInfoData) realm.createObjectInternal$1e283631(DeviceInfoData.class, Long.valueOf(deviceInfoDataRealmProxyInterface3.realmGet$id()), Collections.emptyList());
        map.put(deviceInfoData, (RealmObjectProxy) deviceInfoData3);
        deviceInfoDataRealmProxyInterface2 = deviceInfoData3;
        deviceInfoDataRealmProxyInterface2.realmSet$activation(deviceInfoDataRealmProxyInterface3.realmGet$activation());
        deviceInfoDataRealmProxyInterface2.realmSet$androidId(deviceInfoDataRealmProxyInterface3.realmGet$androidId());
        deviceInfoDataRealmProxyInterface2.realmSet$deviceId(deviceInfoDataRealmProxyInterface3.realmGet$deviceId());
        return deviceInfoData3;
    }

    public static DeviceInfoData createDetachedCopy$1732f5ca(DeviceInfoData deviceInfoData, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i >= 0) {
            if (deviceInfoData != null) {
                CacheData cacheData = (CacheData) map.get(deviceInfoData);
                if (cacheData == null) {
                    i = new DeviceInfoData();
                    map.put(deviceInfoData, new CacheData(0, i));
                } else if (cacheData.minDepth <= null) {
                    return cacheData.object;
                } else {
                    DeviceInfoData deviceInfoData2 = (DeviceInfoData) cacheData.object;
                    cacheData.minDepth = 0;
                    i = deviceInfoData2;
                }
                DeviceInfoDataRealmProxyInterface deviceInfoDataRealmProxyInterface = (DeviceInfoDataRealmProxyInterface) i;
                DeviceInfoDataRealmProxyInterface deviceInfoDataRealmProxyInterface2 = deviceInfoData;
                deviceInfoDataRealmProxyInterface.realmSet$id(deviceInfoDataRealmProxyInterface2.realmGet$id());
                deviceInfoDataRealmProxyInterface.realmSet$activation(deviceInfoDataRealmProxyInterface2.realmGet$activation());
                deviceInfoDataRealmProxyInterface.realmSet$androidId(deviceInfoDataRealmProxyInterface2.realmGet$androidId());
                deviceInfoDataRealmProxyInterface.realmSet$deviceId(deviceInfoDataRealmProxyInterface2.realmGet$deviceId());
                return i;
            }
        }
        return null;
    }

    public final String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        String string;
        StringBuilder stringBuilder = new StringBuilder("DeviceInfoData = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{activation:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.activationIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.activationIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{androidId:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.androidIdIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.androidIdIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{deviceId:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.deviceIdIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.deviceIdIndex);
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
        r7 = (io.realm.DeviceInfoDataRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.DeviceInfoDataRealmProxy.equals(java.lang.Object):boolean");
    }
}
