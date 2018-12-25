package io.realm;

import io.realm.BaseRealm.RealmObjectContext;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmObjectProxy.CacheData;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.log.RealmLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import ru.rocketbank.core.manager.security.storage.TouchIdObject;

public final class TouchIdObjectRealmProxy extends TouchIdObject implements TouchIdObjectRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private TouchIdObjectColumnInfo columnInfo;
    private ProxyState<TouchIdObject> proxyState;

    static final class TouchIdObjectColumnInfo extends ColumnInfo {
        long tokenIndex;

        TouchIdObjectColumnInfo(Table table) {
            super(1);
            this.tokenIndex = addColumnDetails(table, "token", RealmFieldType.STRING);
        }

        private TouchIdObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            this.tokenIndex = ((TouchIdObjectColumnInfo) columnInfo).tokenIndex;
        }

        protected final ColumnInfo copy(boolean z) {
            return new TouchIdObjectColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            ((TouchIdObjectColumnInfo) columnInfo2).tokenIndex = ((TouchIdObjectColumnInfo) columnInfo).tokenIndex;
        }
    }

    public static String getTableName() {
        return "class_TouchIdObject";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("token");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    TouchIdObjectRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (TouchIdObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final String realmGet$token() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.tokenIndex);
    }

    public final void realmSet$token(String str) {
        if (this.proxyState.isUnderConstruction() == null) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'token' cannot be changed after object was created.");
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("TouchIdObject")) {
            return realmSchema.get("TouchIdObject");
        }
        realmSchema = realmSchema.create("TouchIdObject");
        realmSchema.add("token", RealmFieldType.STRING, true, true, false);
        return realmSchema;
    }

    public static TouchIdObjectColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_TouchIdObject")) {
            Table table = sharedRealm.getTable("class_TouchIdObject");
            long columnCount = table.getColumnCount();
            if (columnCount != 1) {
                if (columnCount < 1) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 1 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 1 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 1 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            TouchIdObjectColumnInfo touchIdObjectColumnInfo = new TouchIdObjectColumnInfo(table);
            if (!table.hasPrimaryKey()) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Primary key not defined for field 'token' in existing Realm file. @PrimaryKey was added.");
            } else if (table.getPrimaryKey() != touchIdObjectColumnInfo.tokenIndex) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key annotation definition was changed, from field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" to field token");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("token")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'token' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("token") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'token' in existing Realm file.");
            } else if (!table.isColumnNullable(touchIdObjectColumnInfo.tokenIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "@PrimaryKey field 'token' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required.");
            } else if (table.hasSearchIndex(table.getColumnIndex("token"))) {
                return touchIdObjectColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Index not defined for field 'token' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'TouchIdObject' class is missing from the schema for this Realm.");
    }

    public static TouchIdObject copyOrUpdate(Realm realm, TouchIdObject touchIdObject, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z2 = touchIdObject instanceof RealmObjectProxy;
        if (z2) {
            realmObjectProxy = (RealmObjectProxy) touchIdObject;
            if (!(realmObjectProxy.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z2) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) touchIdObject;
            if (realmObjectProxy2.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy2.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return touchIdObject;
            }
        }
        RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(touchIdObject);
        if (realmObjectProxy != null) {
            return (TouchIdObject) realmObjectProxy;
        }
        TouchIdObject touchIdObject2 = null;
        if (z) {
            Table table = realm.getTable(TouchIdObject.class);
            long primaryKey = table.getPrimaryKey();
            String realmGet$token = touchIdObject.realmGet$token();
            if (realmGet$token == null) {
                primaryKey = table.findFirstNull(primaryKey);
            } else {
                primaryKey = table.findFirstString(primaryKey, realmGet$token);
            }
            if (primaryKey != -1) {
                try {
                    realmObjectContext.set(realm, table.getUncheckedRow(primaryKey), realm.schema.getColumnInfo(TouchIdObject.class), false, Collections.emptyList());
                    touchIdObject2 = new TouchIdObjectRealmProxy();
                    map.put(touchIdObject, (RealmObjectProxy) touchIdObject2);
                } finally {
                    realmObjectContext.clear();
                }
            } else {
                z = false;
            }
        }
        if (z) {
            return touchIdObject2;
        }
        RealmObjectProxy realmObjectProxy3 = (RealmObjectProxy) map.get(touchIdObject);
        if (realmObjectProxy3 != null) {
            return (TouchIdObject) realmObjectProxy3;
        }
        TouchIdObject touchIdObject3 = (TouchIdObject) realm.createObjectInternal$1e283631(TouchIdObject.class, touchIdObject.realmGet$token(), Collections.emptyList());
        map.put(touchIdObject, (RealmObjectProxy) touchIdObject3);
        return touchIdObject3;
    }

    public static TouchIdObject createDetachedCopy$1b41600a(TouchIdObject touchIdObject, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i >= 0) {
            if (touchIdObject != null) {
                CacheData cacheData = (CacheData) map.get(touchIdObject);
                if (cacheData == null) {
                    i = new TouchIdObject();
                    map.put(touchIdObject, new CacheData(0, i));
                } else if (cacheData.minDepth <= null) {
                    return cacheData.object;
                } else {
                    TouchIdObject touchIdObject2 = (TouchIdObject) cacheData.object;
                    cacheData.minDepth = 0;
                    i = touchIdObject2;
                }
                ((TouchIdObjectRealmProxyInterface) i).realmSet$token(touchIdObject.realmGet$token());
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
        StringBuilder stringBuilder = new StringBuilder("TouchIdObject = proxy[");
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
        r7 = (io.realm.TouchIdObjectRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.TouchIdObjectRealmProxy.equals(java.lang.Object):boolean");
    }
}
