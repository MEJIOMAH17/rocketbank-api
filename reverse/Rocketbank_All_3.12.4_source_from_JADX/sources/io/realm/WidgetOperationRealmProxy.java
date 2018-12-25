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
import ru.rocketbank.core.realm.WidgetOperation;

public final class WidgetOperationRealmProxy extends WidgetOperation implements WidgetOperationRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private WidgetOperationColumnInfo columnInfo;
    private ProxyState<WidgetOperation> proxyState;

    static final class WidgetOperationColumnInfo extends ColumnInfo {
        long amountTextIndex;
        long bitmapIndex;
        long iconUrlIndex;
        long nameIndex;

        WidgetOperationColumnInfo(Table table) {
            super(4);
            this.iconUrlIndex = addColumnDetails(table, "iconUrl", RealmFieldType.STRING);
            this.nameIndex = addColumnDetails(table, "name", RealmFieldType.STRING);
            this.amountTextIndex = addColumnDetails(table, "amountText", RealmFieldType.STRING);
            this.bitmapIndex = addColumnDetails(table, "bitmap", RealmFieldType.BINARY);
        }

        private WidgetOperationColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new WidgetOperationColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            WidgetOperationColumnInfo widgetOperationColumnInfo = (WidgetOperationColumnInfo) columnInfo;
            WidgetOperationColumnInfo widgetOperationColumnInfo2 = (WidgetOperationColumnInfo) columnInfo2;
            widgetOperationColumnInfo2.iconUrlIndex = widgetOperationColumnInfo.iconUrlIndex;
            widgetOperationColumnInfo2.nameIndex = widgetOperationColumnInfo.nameIndex;
            widgetOperationColumnInfo2.amountTextIndex = widgetOperationColumnInfo.amountTextIndex;
            widgetOperationColumnInfo2.bitmapIndex = widgetOperationColumnInfo.bitmapIndex;
        }
    }

    public static String getTableName() {
        return "class_WidgetOperation";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("iconUrl");
        arrayList.add("name");
        arrayList.add("amountText");
        arrayList.add("bitmap");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    WidgetOperationRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (WidgetOperationColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final String realmGet$iconUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.iconUrlIndex);
    }

    public final void realmSet$iconUrl(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.iconUrlIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.iconUrlIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.iconUrlIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.iconUrlIndex, row$realm.getIndex(), str);
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

    public final String realmGet$amountText() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.amountTextIndex);
    }

    public final void realmSet$amountText(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.amountTextIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.amountTextIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.amountTextIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.amountTextIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final byte[] realmGet$bitmap() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBinaryByteArray(this.columnInfo.bitmapIndex);
    }

    public final void realmSet$bitmap(byte[] bArr) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (bArr == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.bitmapIndex);
            } else {
                this.proxyState.getRow$realm().setBinaryByteArray(this.columnInfo.bitmapIndex, bArr);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (bArr == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.bitmapIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setBinaryByteArray$9247418(this.columnInfo.bitmapIndex, row$realm.getIndex(), bArr);
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("WidgetOperation")) {
            return realmSchema.get("WidgetOperation");
        }
        realmSchema = realmSchema.create("WidgetOperation");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("iconUrl", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("name", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("amountText", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("bitmap", RealmFieldType.BINARY, false, false, false);
        return realmSchema;
    }

    public static WidgetOperationColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_WidgetOperation")) {
            Table table = sharedRealm.getTable("class_WidgetOperation");
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
            WidgetOperationColumnInfo widgetOperationColumnInfo = new WidgetOperationColumnInfo(table);
            if (table.hasPrimaryKey()) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key defined for field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" was removed.");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("iconUrl")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'iconUrl' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("iconUrl") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'iconUrl' in existing Realm file.");
            } else if (!table.isColumnNullable(widgetOperationColumnInfo.iconUrlIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'iconUrl' is required. Either set @Required to field 'iconUrl' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("name")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'name' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("name") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'name' in existing Realm file.");
            } else if (!table.isColumnNullable(widgetOperationColumnInfo.nameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'name' is required. Either set @Required to field 'name' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("amountText")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'amountText' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("amountText") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'amountText' in existing Realm file.");
            } else if (!table.isColumnNullable(widgetOperationColumnInfo.amountTextIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'amountText' is required. Either set @Required to field 'amountText' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("bitmap")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'bitmap' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("bitmap") != RealmFieldType.BINARY) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'byte[]' for field 'bitmap' in existing Realm file.");
            } else if (table.isColumnNullable(widgetOperationColumnInfo.bitmapIndex)) {
                return widgetOperationColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'bitmap' is required. Either set @Required to field 'bitmap' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'WidgetOperation' class is missing from the schema for this Realm.");
    }

    public static WidgetOperation copyOrUpdate$567ab907(Realm realm, WidgetOperation widgetOperation, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = widgetOperation instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) widgetOperation;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) widgetOperation;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return widgetOperation;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(widgetOperation);
        if (realmObjectProxy != null) {
            return (WidgetOperation) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(widgetOperation);
        if (realmObjectProxy != null) {
            return (WidgetOperation) realmObjectProxy;
        }
        WidgetOperation widgetOperation2 = (WidgetOperation) realm.createObjectInternal$6d9349d5(WidgetOperation.class, Collections.emptyList());
        map.put(widgetOperation, (RealmObjectProxy) widgetOperation2);
        WidgetOperationRealmProxyInterface widgetOperationRealmProxyInterface = widgetOperation2;
        WidgetOperationRealmProxyInterface widgetOperationRealmProxyInterface2 = widgetOperation;
        widgetOperationRealmProxyInterface.realmSet$iconUrl(widgetOperationRealmProxyInterface2.realmGet$iconUrl());
        widgetOperationRealmProxyInterface.realmSet$name(widgetOperationRealmProxyInterface2.realmGet$name());
        widgetOperationRealmProxyInterface.realmSet$amountText(widgetOperationRealmProxyInterface2.realmGet$amountText());
        widgetOperationRealmProxyInterface.realmSet$bitmap(widgetOperationRealmProxyInterface2.realmGet$bitmap());
        return widgetOperation2;
    }

    public static WidgetOperation createDetachedCopy$170b45e8(WidgetOperation widgetOperation, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i >= 0) {
            if (widgetOperation != null) {
                CacheData cacheData = (CacheData) map.get(widgetOperation);
                if (cacheData == null) {
                    i = new WidgetOperation();
                    map.put(widgetOperation, new CacheData(0, i));
                } else if (cacheData.minDepth <= null) {
                    return cacheData.object;
                } else {
                    WidgetOperation widgetOperation2 = (WidgetOperation) cacheData.object;
                    cacheData.minDepth = 0;
                    i = widgetOperation2;
                }
                WidgetOperationRealmProxyInterface widgetOperationRealmProxyInterface = (WidgetOperationRealmProxyInterface) i;
                WidgetOperationRealmProxyInterface widgetOperationRealmProxyInterface2 = widgetOperation;
                widgetOperationRealmProxyInterface.realmSet$iconUrl(widgetOperationRealmProxyInterface2.realmGet$iconUrl());
                widgetOperationRealmProxyInterface.realmSet$name(widgetOperationRealmProxyInterface2.realmGet$name());
                widgetOperationRealmProxyInterface.realmSet$amountText(widgetOperationRealmProxyInterface2.realmGet$amountText());
                widgetOperationRealmProxyInterface.realmSet$bitmap(widgetOperationRealmProxyInterface2.realmGet$bitmap());
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
        StringBuilder stringBuilder = new StringBuilder("WidgetOperation = proxy[");
        stringBuilder.append("{iconUrl:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.iconUrlIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.iconUrlIndex);
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
        stringBuilder.append("{amountText:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.amountTextIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.amountTextIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{bitmap:");
        stringBuilder.append(realmGet$bitmap() != null ? realmGet$bitmap() : "null");
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
        r7 = (io.realm.WidgetOperationRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.WidgetOperationRealmProxy.equals(java.lang.Object):boolean");
    }
}
