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
import ru.rocketbank.core.realm.RealmImage;

public final class RealmImageRealmProxy extends RealmImage implements RealmImageRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmImageColumnInfo columnInfo;
    private ProxyState<RealmImage> proxyState;

    static final class RealmImageColumnInfo extends ColumnInfo {
        long colorIndex;
        long heightIndex;
        long idIndex;
        long urlIndex;
        long widthIndex;

        RealmImageColumnInfo(Table table) {
            super(5);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.STRING);
            this.urlIndex = addColumnDetails(table, "url", RealmFieldType.STRING);
            this.widthIndex = addColumnDetails(table, "width", RealmFieldType.INTEGER);
            this.heightIndex = addColumnDetails(table, "height", RealmFieldType.INTEGER);
            this.colorIndex = addColumnDetails(table, "color", RealmFieldType.STRING);
        }

        private RealmImageColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmImageColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmImageColumnInfo realmImageColumnInfo = (RealmImageColumnInfo) columnInfo;
            RealmImageColumnInfo realmImageColumnInfo2 = (RealmImageColumnInfo) columnInfo2;
            realmImageColumnInfo2.idIndex = realmImageColumnInfo.idIndex;
            realmImageColumnInfo2.urlIndex = realmImageColumnInfo.urlIndex;
            realmImageColumnInfo2.widthIndex = realmImageColumnInfo.widthIndex;
            realmImageColumnInfo2.heightIndex = realmImageColumnInfo.heightIndex;
            realmImageColumnInfo2.colorIndex = realmImageColumnInfo.colorIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmImage";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("url");
        arrayList.add("width");
        arrayList.add("height");
        arrayList.add("color");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmImageRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmImageColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    public final void realmSet$id(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.idIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.idIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.idIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.idIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$url() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.urlIndex);
    }

    public final void realmSet$url(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.urlIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.urlIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.urlIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.urlIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final int realmGet$width() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.widthIndex);
    }

    public final void realmSet$width(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.widthIndex, (long) i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong$398a59fb(this.columnInfo.widthIndex, row$realm.getIndex(), (long) i);
        }
    }

    public final int realmGet$height() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.heightIndex);
    }

    public final void realmSet$height(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.heightIndex, (long) i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong$398a59fb(this.columnInfo.heightIndex, row$realm.getIndex(), (long) i);
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
        if (realmSchema.contains("RealmImage")) {
            return realmSchema.get("RealmImage");
        }
        realmSchema = realmSchema.create("RealmImage");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("id", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("url", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("width", RealmFieldType.INTEGER, false, false, true);
        realmSchema2.add("height", RealmFieldType.INTEGER, false, false, true);
        realmSchema2.add("color", RealmFieldType.STRING, false, false, false);
        return realmSchema;
    }

    public static RealmImageColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmImage")) {
            Table table = sharedRealm.getTable("class_RealmImage");
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
            RealmImageColumnInfo realmImageColumnInfo = new RealmImageColumnInfo(table);
            if (table.hasPrimaryKey()) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key defined for field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" was removed.");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("id") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'id' in existing Realm file.");
            } else if (!table.isColumnNullable(realmImageColumnInfo.idIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'id' is required. Either set @Required to field 'id' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("url")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'url' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("url") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'url' in existing Realm file.");
            } else if (!table.isColumnNullable(realmImageColumnInfo.urlIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'url' is required. Either set @Required to field 'url' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("width")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'width' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("width") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'int' for field 'width' in existing Realm file.");
            } else if (table.isColumnNullable(realmImageColumnInfo.widthIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'width' does support null values in the existing Realm file. Use corresponding boxed type for field 'width' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("height")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'height' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("height") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'int' for field 'height' in existing Realm file.");
            } else if (table.isColumnNullable(realmImageColumnInfo.heightIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'height' does support null values in the existing Realm file. Use corresponding boxed type for field 'height' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("color")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'color' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("color") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'color' in existing Realm file.");
            } else if (table.isColumnNullable(realmImageColumnInfo.colorIndex)) {
                return realmImageColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'color' is required. Either set @Required to field 'color' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmImage' class is missing from the schema for this Realm.");
    }

    public static RealmImage copyOrUpdate$2833b5cd(Realm realm, RealmImage realmImage, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmImage instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmImage;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmImage;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmImage;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmImage);
        if (realmObjectProxy != null) {
            return (RealmImage) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmImage);
        if (realmObjectProxy != null) {
            return (RealmImage) realmObjectProxy;
        }
        RealmImage realmImage2 = (RealmImage) realm.createObjectInternal$6d9349d5(RealmImage.class, Collections.emptyList());
        map.put(realmImage, (RealmObjectProxy) realmImage2);
        RealmImageRealmProxyInterface realmImageRealmProxyInterface = realmImage2;
        RealmImageRealmProxyInterface realmImageRealmProxyInterface2 = realmImage;
        realmImageRealmProxyInterface.realmSet$id(realmImageRealmProxyInterface2.realmGet$id());
        realmImageRealmProxyInterface.realmSet$url(realmImageRealmProxyInterface2.realmGet$url());
        realmImageRealmProxyInterface.realmSet$width(realmImageRealmProxyInterface2.realmGet$width());
        realmImageRealmProxyInterface.realmSet$height(realmImageRealmProxyInterface2.realmGet$height());
        realmImageRealmProxyInterface.realmSet$color(realmImageRealmProxyInterface2.realmGet$color());
        return realmImage2;
    }

    public static RealmImage createDetachedCopy(RealmImage realmImage, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmImage != null) {
                CacheData cacheData = (CacheData) map.get(realmImage);
                if (cacheData == null) {
                    i2 = new RealmImage();
                    map.put(realmImage, new CacheData(i, i2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    RealmImage realmImage2 = (RealmImage) cacheData.object;
                    cacheData.minDepth = i;
                    i2 = realmImage2;
                }
                RealmImageRealmProxyInterface realmImageRealmProxyInterface = (RealmImageRealmProxyInterface) i2;
                RealmImageRealmProxyInterface realmImageRealmProxyInterface2 = realmImage;
                realmImageRealmProxyInterface.realmSet$id(realmImageRealmProxyInterface2.realmGet$id());
                realmImageRealmProxyInterface.realmSet$url(realmImageRealmProxyInterface2.realmGet$url());
                realmImageRealmProxyInterface.realmSet$width(realmImageRealmProxyInterface2.realmGet$width());
                realmImageRealmProxyInterface.realmSet$height(realmImageRealmProxyInterface2.realmGet$height());
                realmImageRealmProxyInterface.realmSet$color(realmImageRealmProxyInterface2.realmGet$color());
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
        StringBuilder stringBuilder = new StringBuilder("RealmImage = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.idIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{url:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.urlIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.urlIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{width:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append((int) this.proxyState.getRow$realm().getLong(this.columnInfo.widthIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{height:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append((int) this.proxyState.getRow$realm().getLong(this.columnInfo.heightIndex));
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
        r7 = (io.realm.RealmImageRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmImageRealmProxy.equals(java.lang.Object):boolean");
    }
}
