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
import ru.rocketbank.core.realm.RealmWidgetFriend;

public final class RealmWidgetFriendRealmProxy extends RealmWidgetFriend implements RealmWidgetFriendRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmWidgetFriendColumnInfo columnInfo;
    private ProxyState<RealmWidgetFriend> proxyState;

    static final class RealmWidgetFriendColumnInfo extends ColumnInfo {
        long firstNameIndex;
        long idIndex;
        long lastNameIndex;
        long userpicUrlIndex;

        RealmWidgetFriendColumnInfo(Table table) {
            super(4);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.INTEGER);
            this.firstNameIndex = addColumnDetails(table, "firstName", RealmFieldType.STRING);
            this.lastNameIndex = addColumnDetails(table, "lastName", RealmFieldType.STRING);
            this.userpicUrlIndex = addColumnDetails(table, "userpicUrl", RealmFieldType.STRING);
        }

        private RealmWidgetFriendColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmWidgetFriendColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmWidgetFriendColumnInfo realmWidgetFriendColumnInfo = (RealmWidgetFriendColumnInfo) columnInfo;
            RealmWidgetFriendColumnInfo realmWidgetFriendColumnInfo2 = (RealmWidgetFriendColumnInfo) columnInfo2;
            realmWidgetFriendColumnInfo2.idIndex = realmWidgetFriendColumnInfo.idIndex;
            realmWidgetFriendColumnInfo2.firstNameIndex = realmWidgetFriendColumnInfo.firstNameIndex;
            realmWidgetFriendColumnInfo2.lastNameIndex = realmWidgetFriendColumnInfo.lastNameIndex;
            realmWidgetFriendColumnInfo2.userpicUrlIndex = realmWidgetFriendColumnInfo.userpicUrlIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmWidgetFriend";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("firstName");
        arrayList.add("lastName");
        arrayList.add("userpicUrl");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmWidgetFriendRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmWidgetFriendColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    public final int realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    public final void realmSet$id(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.idIndex, (long) i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong$398a59fb(this.columnInfo.idIndex, row$realm.getIndex(), (long) i);
        }
    }

    public final String realmGet$firstName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.firstNameIndex);
    }

    public final void realmSet$firstName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.firstNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.firstNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.firstNameIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.firstNameIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$lastName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.lastNameIndex);
    }

    public final void realmSet$lastName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.lastNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.lastNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.lastNameIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.lastNameIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$userpicUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.userpicUrlIndex);
    }

    public final void realmSet$userpicUrl(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.userpicUrlIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.userpicUrlIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.userpicUrlIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.userpicUrlIndex, row$realm.getIndex(), str);
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmWidgetFriend")) {
            return realmSchema.get("RealmWidgetFriend");
        }
        realmSchema = realmSchema.create("RealmWidgetFriend");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("id", RealmFieldType.INTEGER, false, false, true);
        realmSchema2.add("firstName", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("lastName", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("userpicUrl", RealmFieldType.STRING, false, false, false);
        return realmSchema;
    }

    public static RealmWidgetFriendColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmWidgetFriend")) {
            Table table = sharedRealm.getTable("class_RealmWidgetFriend");
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
            RealmWidgetFriendColumnInfo realmWidgetFriendColumnInfo = new RealmWidgetFriendColumnInfo(table);
            if (table.hasPrimaryKey()) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key defined for field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" was removed.");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'int' for field 'id' in existing Realm file.");
            } else if (table.isColumnNullable(realmWidgetFriendColumnInfo.idIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'id' does support null values in the existing Realm file. Use corresponding boxed type for field 'id' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("firstName")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'firstName' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("firstName") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'firstName' in existing Realm file.");
            } else if (!table.isColumnNullable(realmWidgetFriendColumnInfo.firstNameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'firstName' is required. Either set @Required to field 'firstName' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("lastName")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'lastName' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("lastName") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'lastName' in existing Realm file.");
            } else if (!table.isColumnNullable(realmWidgetFriendColumnInfo.lastNameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'lastName' is required. Either set @Required to field 'lastName' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("userpicUrl")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'userpicUrl' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("userpicUrl") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'userpicUrl' in existing Realm file.");
            } else if (table.isColumnNullable(realmWidgetFriendColumnInfo.userpicUrlIndex)) {
                return realmWidgetFriendColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'userpicUrl' is required. Either set @Required to field 'userpicUrl' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmWidgetFriend' class is missing from the schema for this Realm.");
    }

    public static RealmWidgetFriend copyOrUpdate$31980307(Realm realm, RealmWidgetFriend realmWidgetFriend, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmWidgetFriend instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmWidgetFriend;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmWidgetFriend;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmWidgetFriend;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmWidgetFriend);
        if (realmObjectProxy != null) {
            return (RealmWidgetFriend) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmWidgetFriend);
        if (realmObjectProxy != null) {
            return (RealmWidgetFriend) realmObjectProxy;
        }
        RealmWidgetFriend realmWidgetFriend2 = (RealmWidgetFriend) realm.createObjectInternal$6d9349d5(RealmWidgetFriend.class, Collections.emptyList());
        map.put(realmWidgetFriend, (RealmObjectProxy) realmWidgetFriend2);
        RealmWidgetFriendRealmProxyInterface realmWidgetFriendRealmProxyInterface = realmWidgetFriend2;
        RealmWidgetFriendRealmProxyInterface realmWidgetFriendRealmProxyInterface2 = realmWidgetFriend;
        realmWidgetFriendRealmProxyInterface.realmSet$id(realmWidgetFriendRealmProxyInterface2.realmGet$id());
        realmWidgetFriendRealmProxyInterface.realmSet$firstName(realmWidgetFriendRealmProxyInterface2.realmGet$firstName());
        realmWidgetFriendRealmProxyInterface.realmSet$lastName(realmWidgetFriendRealmProxyInterface2.realmGet$lastName());
        realmWidgetFriendRealmProxyInterface.realmSet$userpicUrl(realmWidgetFriendRealmProxyInterface2.realmGet$userpicUrl());
        return realmWidgetFriend2;
    }

    public static RealmWidgetFriend createDetachedCopy(RealmWidgetFriend realmWidgetFriend, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmWidgetFriend != null) {
                CacheData cacheData = (CacheData) map.get(realmWidgetFriend);
                if (cacheData == null) {
                    i2 = new RealmWidgetFriend();
                    map.put(realmWidgetFriend, new CacheData(i, i2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    RealmWidgetFriend realmWidgetFriend2 = (RealmWidgetFriend) cacheData.object;
                    cacheData.minDepth = i;
                    i2 = realmWidgetFriend2;
                }
                RealmWidgetFriendRealmProxyInterface realmWidgetFriendRealmProxyInterface = (RealmWidgetFriendRealmProxyInterface) i2;
                RealmWidgetFriendRealmProxyInterface realmWidgetFriendRealmProxyInterface2 = realmWidgetFriend;
                realmWidgetFriendRealmProxyInterface.realmSet$id(realmWidgetFriendRealmProxyInterface2.realmGet$id());
                realmWidgetFriendRealmProxyInterface.realmSet$firstName(realmWidgetFriendRealmProxyInterface2.realmGet$firstName());
                realmWidgetFriendRealmProxyInterface.realmSet$lastName(realmWidgetFriendRealmProxyInterface2.realmGet$lastName());
                realmWidgetFriendRealmProxyInterface.realmSet$userpicUrl(realmWidgetFriendRealmProxyInterface2.realmGet$userpicUrl());
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
        StringBuilder stringBuilder = new StringBuilder("RealmWidgetFriend = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append((int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{firstName:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.firstNameIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.firstNameIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{lastName:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.lastNameIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.lastNameIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{userpicUrl:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.userpicUrlIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.userpicUrlIndex);
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
        r7 = (io.realm.RealmWidgetFriendRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmWidgetFriendRealmProxy.equals(java.lang.Object):boolean");
    }
}
