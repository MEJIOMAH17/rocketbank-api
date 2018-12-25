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
import ru.rocketbank.core.realm.RealmFriend;

public final class RealmFriendRealmProxy extends RealmFriend implements RealmFriendRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmFriendColumnInfo columnInfo;
    private ProxyState<RealmFriend> proxyState;

    static final class RealmFriendColumnInfo extends ColumnInfo {
        long emailIndex;
        long firstNameIndex;
        long idIndex;
        long lastNameIndex;
        long mobilePhoneIndex;
        long userpicUrlIndex;

        RealmFriendColumnInfo(Table table) {
            super(6);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.INTEGER);
            this.userpicUrlIndex = addColumnDetails(table, "userpicUrl", RealmFieldType.STRING);
            this.firstNameIndex = addColumnDetails(table, "firstName", RealmFieldType.STRING);
            this.lastNameIndex = addColumnDetails(table, "lastName", RealmFieldType.STRING);
            this.mobilePhoneIndex = addColumnDetails(table, "mobilePhone", RealmFieldType.STRING);
            this.emailIndex = addColumnDetails(table, "email", RealmFieldType.STRING);
        }

        private RealmFriendColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmFriendColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmFriendColumnInfo realmFriendColumnInfo = (RealmFriendColumnInfo) columnInfo;
            RealmFriendColumnInfo realmFriendColumnInfo2 = (RealmFriendColumnInfo) columnInfo2;
            realmFriendColumnInfo2.idIndex = realmFriendColumnInfo.idIndex;
            realmFriendColumnInfo2.userpicUrlIndex = realmFriendColumnInfo.userpicUrlIndex;
            realmFriendColumnInfo2.firstNameIndex = realmFriendColumnInfo.firstNameIndex;
            realmFriendColumnInfo2.lastNameIndex = realmFriendColumnInfo.lastNameIndex;
            realmFriendColumnInfo2.mobilePhoneIndex = realmFriendColumnInfo.mobilePhoneIndex;
            realmFriendColumnInfo2.emailIndex = realmFriendColumnInfo.emailIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmFriend";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("userpicUrl");
        arrayList.add("firstName");
        arrayList.add("lastName");
        arrayList.add("mobilePhone");
        arrayList.add("email");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmFriendRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmFriendColumnInfo) realmObjectContext.getColumnInfo();
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

    public final String realmGet$mobilePhone() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.mobilePhoneIndex);
    }

    public final void realmSet$mobilePhone(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.mobilePhoneIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.mobilePhoneIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.mobilePhoneIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.mobilePhoneIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$email() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.emailIndex);
    }

    public final void realmSet$email(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.emailIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.emailIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.emailIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.emailIndex, row$realm.getIndex(), str);
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmFriend")) {
            return realmSchema.get("RealmFriend");
        }
        realmSchema = realmSchema.create("RealmFriend");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("id", RealmFieldType.INTEGER, false, false, true);
        realmSchema2.add("userpicUrl", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("firstName", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("lastName", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("mobilePhone", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("email", RealmFieldType.STRING, false, false, false);
        return realmSchema;
    }

    public static RealmFriendColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmFriend")) {
            Table table = sharedRealm.getTable("class_RealmFriend");
            long columnCount = table.getColumnCount();
            if (columnCount != 6) {
                if (columnCount < 6) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 6 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 6 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 6 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            RealmFriendColumnInfo realmFriendColumnInfo = new RealmFriendColumnInfo(table);
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
            } else if (table.isColumnNullable(realmFriendColumnInfo.idIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'id' does support null values in the existing Realm file. Use corresponding boxed type for field 'id' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("userpicUrl")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'userpicUrl' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("userpicUrl") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'userpicUrl' in existing Realm file.");
            } else if (!table.isColumnNullable(realmFriendColumnInfo.userpicUrlIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'userpicUrl' is required. Either set @Required to field 'userpicUrl' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("firstName")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'firstName' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("firstName") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'firstName' in existing Realm file.");
            } else if (!table.isColumnNullable(realmFriendColumnInfo.firstNameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'firstName' is required. Either set @Required to field 'firstName' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("lastName")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'lastName' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("lastName") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'lastName' in existing Realm file.");
            } else if (!table.isColumnNullable(realmFriendColumnInfo.lastNameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'lastName' is required. Either set @Required to field 'lastName' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("mobilePhone")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'mobilePhone' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("mobilePhone") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'mobilePhone' in existing Realm file.");
            } else if (!table.isColumnNullable(realmFriendColumnInfo.mobilePhoneIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'mobilePhone' is required. Either set @Required to field 'mobilePhone' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("email")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'email' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("email") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'email' in existing Realm file.");
            } else if (table.isColumnNullable(realmFriendColumnInfo.emailIndex)) {
                return realmFriendColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'email' is required. Either set @Required to field 'email' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmFriend' class is missing from the schema for this Realm.");
    }

    public static RealmFriend copyOrUpdate$55188d39(Realm realm, RealmFriend realmFriend, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z = realmFriend instanceof RealmObjectProxy;
        if (z) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmFriend;
            if (!(realmObjectProxy2.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy2.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z) {
            realmObjectProxy = (RealmObjectProxy) realmFriend;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmFriend;
            }
        }
        BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmFriend);
        if (realmObjectProxy != null) {
            return (RealmFriend) realmObjectProxy;
        }
        realmObjectProxy = (RealmObjectProxy) map.get(realmFriend);
        if (realmObjectProxy != null) {
            return (RealmFriend) realmObjectProxy;
        }
        RealmFriend realmFriend2 = (RealmFriend) realm.createObjectInternal$6d9349d5(RealmFriend.class, Collections.emptyList());
        map.put(realmFriend, (RealmObjectProxy) realmFriend2);
        RealmFriendRealmProxyInterface realmFriendRealmProxyInterface = realmFriend2;
        RealmFriendRealmProxyInterface realmFriendRealmProxyInterface2 = realmFriend;
        realmFriendRealmProxyInterface.realmSet$id(realmFriendRealmProxyInterface2.realmGet$id());
        realmFriendRealmProxyInterface.realmSet$userpicUrl(realmFriendRealmProxyInterface2.realmGet$userpicUrl());
        realmFriendRealmProxyInterface.realmSet$firstName(realmFriendRealmProxyInterface2.realmGet$firstName());
        realmFriendRealmProxyInterface.realmSet$lastName(realmFriendRealmProxyInterface2.realmGet$lastName());
        realmFriendRealmProxyInterface.realmSet$mobilePhone(realmFriendRealmProxyInterface2.realmGet$mobilePhone());
        realmFriendRealmProxyInterface.realmSet$email(realmFriendRealmProxyInterface2.realmGet$email());
        return realmFriend2;
    }

    public static RealmFriend createDetachedCopy(RealmFriend realmFriend, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (realmFriend != null) {
                CacheData cacheData = (CacheData) map.get(realmFriend);
                if (cacheData == null) {
                    i2 = new RealmFriend();
                    map.put(realmFriend, new CacheData(i, i2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    RealmFriend realmFriend2 = (RealmFriend) cacheData.object;
                    cacheData.minDepth = i;
                    i2 = realmFriend2;
                }
                RealmFriendRealmProxyInterface realmFriendRealmProxyInterface = (RealmFriendRealmProxyInterface) i2;
                RealmFriendRealmProxyInterface realmFriendRealmProxyInterface2 = realmFriend;
                realmFriendRealmProxyInterface.realmSet$id(realmFriendRealmProxyInterface2.realmGet$id());
                realmFriendRealmProxyInterface.realmSet$userpicUrl(realmFriendRealmProxyInterface2.realmGet$userpicUrl());
                realmFriendRealmProxyInterface.realmSet$firstName(realmFriendRealmProxyInterface2.realmGet$firstName());
                realmFriendRealmProxyInterface.realmSet$lastName(realmFriendRealmProxyInterface2.realmGet$lastName());
                realmFriendRealmProxyInterface.realmSet$mobilePhone(realmFriendRealmProxyInterface2.realmGet$mobilePhone());
                realmFriendRealmProxyInterface.realmSet$email(realmFriendRealmProxyInterface2.realmGet$email());
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
        StringBuilder stringBuilder = new StringBuilder("RealmFriend = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex));
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
        stringBuilder.append("{mobilePhone:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.mobilePhoneIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.mobilePhoneIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{email:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.emailIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.emailIndex);
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
        r7 = (io.realm.RealmFriendRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmFriendRealmProxy.equals(java.lang.Object):boolean");
    }
}
