package io.realm;

import com.facebook.internal.NativeProtocol;
import io.realm.BaseRealm.RealmObjectContext;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.LinkView;
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
import ru.rocketbank.core.realm.RealmOperation;
import ru.rocketbank.core.realm.RealmWidgetFriend;
import ru.rocketbank.core.realm.WidgetData;

public final class WidgetDataRealmProxy extends WidgetData implements WidgetDataRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private WidgetDataColumnInfo columnInfo;
    private RealmList<RealmWidgetFriend> friendsRealmList;
    private RealmList<RealmOperation> operationRealmList;
    private ProxyState<WidgetData> proxyState;

    static final class WidgetDataColumnInfo extends ColumnInfo {
        long balanceIndex;
        long friendsIndex;
        long idIndex;
        long limitIndex;
        long milesIndex;
        long numberIndex;
        long operationIndex;
        long operatorIndex;
        long unlimitedCashoutsIndex;
        long usedOperationIndex;

        WidgetDataColumnInfo(Table table) {
            super(10);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.INTEGER);
            this.balanceIndex = addColumnDetails(table, "balance", RealmFieldType.STRING);
            this.milesIndex = addColumnDetails(table, "miles", RealmFieldType.STRING);
            this.limitIndex = addColumnDetails(table, "limit", RealmFieldType.INTEGER);
            this.usedOperationIndex = addColumnDetails(table, "usedOperation", RealmFieldType.INTEGER);
            this.operatorIndex = addColumnDetails(table, "operator", RealmFieldType.STRING);
            this.numberIndex = addColumnDetails(table, "number", RealmFieldType.STRING);
            this.unlimitedCashoutsIndex = addColumnDetails(table, "unlimitedCashouts", RealmFieldType.BOOLEAN);
            this.friendsIndex = addColumnDetails(table, NativeProtocol.AUDIENCE_FRIENDS, RealmFieldType.LIST);
            this.operationIndex = addColumnDetails(table, "operation", RealmFieldType.LIST);
        }

        private WidgetDataColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new WidgetDataColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            WidgetDataColumnInfo widgetDataColumnInfo = (WidgetDataColumnInfo) columnInfo;
            WidgetDataColumnInfo widgetDataColumnInfo2 = (WidgetDataColumnInfo) columnInfo2;
            widgetDataColumnInfo2.idIndex = widgetDataColumnInfo.idIndex;
            widgetDataColumnInfo2.balanceIndex = widgetDataColumnInfo.balanceIndex;
            widgetDataColumnInfo2.milesIndex = widgetDataColumnInfo.milesIndex;
            widgetDataColumnInfo2.limitIndex = widgetDataColumnInfo.limitIndex;
            widgetDataColumnInfo2.usedOperationIndex = widgetDataColumnInfo.usedOperationIndex;
            widgetDataColumnInfo2.operatorIndex = widgetDataColumnInfo.operatorIndex;
            widgetDataColumnInfo2.numberIndex = widgetDataColumnInfo.numberIndex;
            widgetDataColumnInfo2.unlimitedCashoutsIndex = widgetDataColumnInfo.unlimitedCashoutsIndex;
            widgetDataColumnInfo2.friendsIndex = widgetDataColumnInfo.friendsIndex;
            widgetDataColumnInfo2.operationIndex = widgetDataColumnInfo.operationIndex;
        }
    }

    public static String getTableName() {
        return "class_WidgetData";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("balance");
        arrayList.add("miles");
        arrayList.add("limit");
        arrayList.add("usedOperation");
        arrayList.add("operator");
        arrayList.add("number");
        arrayList.add("unlimitedCashouts");
        arrayList.add(NativeProtocol.AUDIENCE_FRIENDS);
        arrayList.add("operation");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    WidgetDataRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (WidgetDataColumnInfo) realmObjectContext.getColumnInfo();
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

    public final String realmGet$balance() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.balanceIndex);
    }

    public final void realmSet$balance(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.balanceIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.balanceIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.balanceIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.balanceIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$miles() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.milesIndex);
    }

    public final void realmSet$miles(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.milesIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.milesIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.milesIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.milesIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final int realmGet$limit() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.limitIndex);
    }

    public final void realmSet$limit(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.limitIndex, (long) i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong$398a59fb(this.columnInfo.limitIndex, row$realm.getIndex(), (long) i);
        }
    }

    public final int realmGet$usedOperation() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.usedOperationIndex);
    }

    public final void realmSet$usedOperation(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.usedOperationIndex, (long) i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong$398a59fb(this.columnInfo.usedOperationIndex, row$realm.getIndex(), (long) i);
        }
    }

    public final String realmGet$operator() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.operatorIndex);
    }

    public final void realmSet$operator(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.operatorIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.operatorIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.operatorIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.operatorIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    public final void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.numberIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.numberIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.numberIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.numberIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final boolean realmGet$unlimitedCashouts() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.unlimitedCashoutsIndex);
    }

    public final void realmSet$unlimitedCashouts(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.unlimitedCashoutsIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean$3983140b(this.columnInfo.unlimitedCashoutsIndex, row$realm.getIndex(), z);
        }
    }

    public final RealmList<RealmWidgetFriend> realmGet$friends() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.friendsRealmList != null) {
            return this.friendsRealmList;
        }
        this.friendsRealmList = new RealmList(RealmWidgetFriend.class, this.proxyState.getRow$realm().getLinkList(this.columnInfo.friendsIndex), this.proxyState.getRealm$realm());
        return this.friendsRealmList;
    }

    public final void realmSet$friends(RealmList<RealmWidgetFriend> realmList) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains(NativeProtocol.AUDIENCE_FRIENDS)) {
                return;
            }
            if (!(realmList == null || realmList.isManaged())) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                RealmList<RealmWidgetFriend> realmList2 = new RealmList();
                realmList = realmList.iterator();
                while (realmList.hasNext()) {
                    RealmModel realmModel = (RealmWidgetFriend) realmList.next();
                    if (realmModel != null) {
                        if (!(realmModel instanceof RealmObjectProxy)) {
                            realmList2.add(realm.copyToRealm(realmModel));
                        }
                    }
                    realmList2.add(realmModel);
                }
                realmList = realmList2;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        LinkView linkList = this.proxyState.getRow$realm().getLinkList(this.columnInfo.friendsIndex);
        linkList.clear();
        if (realmList != null) {
            realmList = realmList.iterator();
            while (realmList.hasNext()) {
                RealmModel realmModel2 = (RealmModel) realmList.next();
                if (realmModel2 instanceof RealmObjectProxy) {
                    if (RealmObject.isValid(realmModel2)) {
                        RealmObjectProxy realmObjectProxy = (RealmObjectProxy) realmModel2;
                        if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                            throw new IllegalArgumentException("Each element of 'value' must belong to the same Realm.");
                        }
                        linkList.add(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    }
                }
                throw new IllegalArgumentException("Each element of 'value' must be a valid managed object.");
            }
        }
    }

    public final RealmList<RealmOperation> realmGet$operation() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.operationRealmList != null) {
            return this.operationRealmList;
        }
        this.operationRealmList = new RealmList(RealmOperation.class, this.proxyState.getRow$realm().getLinkList(this.columnInfo.operationIndex), this.proxyState.getRealm$realm());
        return this.operationRealmList;
    }

    public final void realmSet$operation(RealmList<RealmOperation> realmList) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains("operation")) {
                return;
            }
            if (!(realmList == null || realmList.isManaged())) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                RealmList<RealmOperation> realmList2 = new RealmList();
                realmList = realmList.iterator();
                while (realmList.hasNext()) {
                    RealmModel realmModel = (RealmOperation) realmList.next();
                    if (realmModel != null) {
                        if (!(realmModel instanceof RealmObjectProxy)) {
                            realmList2.add(realm.copyToRealm(realmModel));
                        }
                    }
                    realmList2.add(realmModel);
                }
                realmList = realmList2;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        LinkView linkList = this.proxyState.getRow$realm().getLinkList(this.columnInfo.operationIndex);
        linkList.clear();
        if (realmList != null) {
            realmList = realmList.iterator();
            while (realmList.hasNext()) {
                RealmModel realmModel2 = (RealmModel) realmList.next();
                if (realmModel2 instanceof RealmObjectProxy) {
                    if (RealmObject.isValid(realmModel2)) {
                        RealmObjectProxy realmObjectProxy = (RealmObjectProxy) realmModel2;
                        if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                            throw new IllegalArgumentException("Each element of 'value' must belong to the same Realm.");
                        }
                        linkList.add(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    }
                }
                throw new IllegalArgumentException("Each element of 'value' must be a valid managed object.");
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("WidgetData")) {
            return realmSchema.get("WidgetData");
        }
        RealmObjectSchema create = realmSchema.create("WidgetData");
        RealmObjectSchema realmObjectSchema = create;
        realmObjectSchema.add("id", RealmFieldType.INTEGER, true, true, true);
        realmObjectSchema.add("balance", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("miles", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("limit", RealmFieldType.INTEGER, false, false, true);
        realmObjectSchema.add("usedOperation", RealmFieldType.INTEGER, false, false, true);
        realmObjectSchema.add("operator", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("number", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("unlimitedCashouts", RealmFieldType.BOOLEAN, false, false, true);
        if (!realmSchema.contains("RealmWidgetFriend")) {
            RealmWidgetFriendRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add(NativeProtocol.AUDIENCE_FRIENDS, RealmFieldType.LIST, realmSchema.get("RealmWidgetFriend"));
        if (!realmSchema.contains("RealmOperation")) {
            RealmOperationRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("operation", RealmFieldType.LIST, realmSchema.get("RealmOperation"));
        return create;
    }

    public static WidgetDataColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_WidgetData")) {
            Table table = sharedRealm.getTable("class_WidgetData");
            long columnCount = table.getColumnCount();
            if (columnCount != 10) {
                if (columnCount < 10) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 10 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 10 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 10 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            WidgetDataColumnInfo widgetDataColumnInfo = new WidgetDataColumnInfo(table);
            if (!table.hasPrimaryKey()) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Primary key not defined for field 'id' in existing Realm file. @PrimaryKey was added.");
            } else if (table.getPrimaryKey() != widgetDataColumnInfo.idIndex) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key annotation definition was changed, from field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" to field id");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'long' for field 'id' in existing Realm file.");
            } else if (table.isColumnNullable(widgetDataColumnInfo.idIndex) && table.findFirstNull(widgetDataColumnInfo.idIndex) != -1) {
                throw new IllegalStateException("Cannot migrate an object with null value in field 'id'. Either maintain the same type for primary key field 'id', or remove the object with null value before migration.");
            } else if (!table.hasSearchIndex(table.getColumnIndex("id"))) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Index not defined for field 'id' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            } else if (!z.containsKey("balance")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'balance' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("balance") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'balance' in existing Realm file.");
            } else if (!table.isColumnNullable(widgetDataColumnInfo.balanceIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'balance' is required. Either set @Required to field 'balance' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("miles")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'miles' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("miles") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'miles' in existing Realm file.");
            } else if (!table.isColumnNullable(widgetDataColumnInfo.milesIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'miles' is required. Either set @Required to field 'miles' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("limit")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'limit' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("limit") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'int' for field 'limit' in existing Realm file.");
            } else if (table.isColumnNullable(widgetDataColumnInfo.limitIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'limit' does support null values in the existing Realm file. Use corresponding boxed type for field 'limit' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("usedOperation")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'usedOperation' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("usedOperation") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'int' for field 'usedOperation' in existing Realm file.");
            } else if (table.isColumnNullable(widgetDataColumnInfo.usedOperationIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'usedOperation' does support null values in the existing Realm file. Use corresponding boxed type for field 'usedOperation' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("operator")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'operator' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("operator") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'operator' in existing Realm file.");
            } else if (!table.isColumnNullable(widgetDataColumnInfo.operatorIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'operator' is required. Either set @Required to field 'operator' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("number")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'number' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("number") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'number' in existing Realm file.");
            } else if (!table.isColumnNullable(widgetDataColumnInfo.numberIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'number' is required. Either set @Required to field 'number' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("unlimitedCashouts")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'unlimitedCashouts' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("unlimitedCashouts") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'boolean' for field 'unlimitedCashouts' in existing Realm file.");
            } else if (table.isColumnNullable(widgetDataColumnInfo.unlimitedCashoutsIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'unlimitedCashouts' does support null values in the existing Realm file. Use corresponding boxed type for field 'unlimitedCashouts' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey(NativeProtocol.AUDIENCE_FRIENDS)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'friends'");
            } else if (z.get(NativeProtocol.AUDIENCE_FRIENDS) != RealmFieldType.LIST) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmWidgetFriend' for field 'friends'");
            } else if (sharedRealm.hasTable("class_RealmWidgetFriend")) {
                Table table2 = sharedRealm.getTable("class_RealmWidgetFriend");
                StringBuilder stringBuilder2;
                if (!table.getLinkTarget(widgetDataColumnInfo.friendsIndex).hasSameSchema(table2)) {
                    sharedRealm = sharedRealm.getPath();
                    stringBuilder2 = new StringBuilder("Invalid RealmList type for field 'friends': '");
                    stringBuilder2.append(table.getLinkTarget(widgetDataColumnInfo.friendsIndex).getName());
                    stringBuilder2.append("' expected - was '");
                    stringBuilder2.append(table2.getName());
                    stringBuilder2.append("'");
                    throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                } else if (!z.containsKey("operation")) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'operation'");
                } else if (z.get("operation") != RealmFieldType.LIST) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmOperation' for field 'operation'");
                } else if (sharedRealm.hasTable("class_RealmOperation")) {
                    z = sharedRealm.getTable("class_RealmOperation");
                    if (table.getLinkTarget(widgetDataColumnInfo.operationIndex).hasSameSchema(z)) {
                        return widgetDataColumnInfo;
                    }
                    sharedRealm = sharedRealm.getPath();
                    stringBuilder2 = new StringBuilder("Invalid RealmList type for field 'operation': '");
                    stringBuilder2.append(table.getLinkTarget(widgetDataColumnInfo.operationIndex).getName());
                    stringBuilder2.append("' expected - was '");
                    stringBuilder2.append(z.getName());
                    stringBuilder2.append("'");
                    throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmOperation' for field 'operation'");
                }
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmWidgetFriend' for field 'friends'");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'WidgetData' class is missing from the schema for this Realm.");
    }

    public static WidgetData copyOrUpdate(Realm realm, WidgetData widgetData, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z2 = widgetData instanceof RealmObjectProxy;
        if (z2) {
            realmObjectProxy = (RealmObjectProxy) widgetData;
            if (!(realmObjectProxy.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z2) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) widgetData;
            if (realmObjectProxy2.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy2.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return widgetData;
            }
        }
        RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(widgetData);
        if (realmObjectProxy != null) {
            return (WidgetData) realmObjectProxy;
        }
        WidgetData widgetData2 = null;
        if (z) {
            Table table = realm.getTable(WidgetData.class);
            long findFirstLong = table.findFirstLong(table.getPrimaryKey(), widgetData.realmGet$id());
            if (findFirstLong != -1) {
                try {
                    realmObjectContext.set(realm, table.getUncheckedRow(findFirstLong), realm.schema.getColumnInfo(WidgetData.class), false, Collections.emptyList());
                    widgetData2 = new WidgetDataRealmProxy();
                    map.put(widgetData, (RealmObjectProxy) widgetData2);
                } finally {
                    realmObjectContext.clear();
                }
            } else {
                z = false;
            }
        }
        if (z) {
            return update(realm, widgetData2, widgetData, map);
        }
        return copy$4006c7d1(realm, widgetData, map);
    }

    private static WidgetData copy$4006c7d1(Realm realm, WidgetData widgetData, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy = (RealmObjectProxy) map.get(widgetData);
        if (realmObjectProxy != null) {
            return (WidgetData) realmObjectProxy;
        }
        WidgetDataRealmProxyInterface widgetDataRealmProxyInterface = widgetData;
        WidgetData widgetData2 = (WidgetData) realm.createObjectInternal$1e283631(WidgetData.class, Long.valueOf(widgetDataRealmProxyInterface.realmGet$id()), Collections.emptyList());
        map.put(widgetData, (RealmObjectProxy) widgetData2);
        WidgetDataRealmProxyInterface widgetDataRealmProxyInterface2 = widgetData2;
        widgetDataRealmProxyInterface2.realmSet$balance(widgetDataRealmProxyInterface.realmGet$balance());
        widgetDataRealmProxyInterface2.realmSet$miles(widgetDataRealmProxyInterface.realmGet$miles());
        widgetDataRealmProxyInterface2.realmSet$limit(widgetDataRealmProxyInterface.realmGet$limit());
        widgetDataRealmProxyInterface2.realmSet$usedOperation(widgetDataRealmProxyInterface.realmGet$usedOperation());
        widgetDataRealmProxyInterface2.realmSet$operator(widgetDataRealmProxyInterface.realmGet$operator());
        widgetDataRealmProxyInterface2.realmSet$number(widgetDataRealmProxyInterface.realmGet$number());
        widgetDataRealmProxyInterface2.realmSet$unlimitedCashouts(widgetDataRealmProxyInterface.realmGet$unlimitedCashouts());
        RealmList realmGet$friends = widgetDataRealmProxyInterface.realmGet$friends();
        int i = 0;
        if (realmGet$friends != null) {
            RealmList realmGet$friends2 = widgetDataRealmProxyInterface2.realmGet$friends();
            for (int i2 = 0; i2 < realmGet$friends.size(); i2++) {
                RealmModel realmModel = (RealmWidgetFriend) map.get((RealmWidgetFriend) realmGet$friends.get(i2));
                if (realmModel != null) {
                    realmGet$friends2.add(realmModel);
                } else {
                    realmGet$friends2.add(RealmWidgetFriendRealmProxy.copyOrUpdate$31980307(realm, (RealmWidgetFriend) realmGet$friends.get(i2), map));
                }
            }
        }
        RealmList realmGet$operation = widgetDataRealmProxyInterface.realmGet$operation();
        if (realmGet$operation != null) {
            widgetData = widgetDataRealmProxyInterface2.realmGet$operation();
            while (i < realmGet$operation.size()) {
                RealmModel realmModel2 = (RealmOperation) map.get((RealmOperation) realmGet$operation.get(i));
                if (realmModel2 != null) {
                    widgetData.add(realmModel2);
                } else {
                    widgetData.add(RealmOperationRealmProxy.copyOrUpdate$1048dc1b(realm, (RealmOperation) realmGet$operation.get(i), map));
                }
                i++;
            }
        }
        return widgetData2;
    }

    public static WidgetData createDetachedCopy(WidgetData widgetData, int i, int i2, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i <= i2) {
            if (widgetData != null) {
                WidgetData widgetData2;
                CacheData cacheData = (CacheData) map.get(widgetData);
                if (cacheData == null) {
                    widgetData2 = new WidgetData();
                    map.put(widgetData, new CacheData(i, widgetData2));
                } else if (i >= cacheData.minDepth) {
                    return cacheData.object;
                } else {
                    widgetData2 = (WidgetData) cacheData.object;
                    cacheData.minDepth = i;
                }
                WidgetDataRealmProxyInterface widgetDataRealmProxyInterface = widgetData2;
                WidgetDataRealmProxyInterface widgetDataRealmProxyInterface2 = widgetData;
                widgetDataRealmProxyInterface.realmSet$id(widgetDataRealmProxyInterface2.realmGet$id());
                widgetDataRealmProxyInterface.realmSet$balance(widgetDataRealmProxyInterface2.realmGet$balance());
                widgetDataRealmProxyInterface.realmSet$miles(widgetDataRealmProxyInterface2.realmGet$miles());
                widgetDataRealmProxyInterface.realmSet$limit(widgetDataRealmProxyInterface2.realmGet$limit());
                widgetDataRealmProxyInterface.realmSet$usedOperation(widgetDataRealmProxyInterface2.realmGet$usedOperation());
                widgetDataRealmProxyInterface.realmSet$operator(widgetDataRealmProxyInterface2.realmGet$operator());
                widgetDataRealmProxyInterface.realmSet$number(widgetDataRealmProxyInterface2.realmGet$number());
                widgetDataRealmProxyInterface.realmSet$unlimitedCashouts(widgetDataRealmProxyInterface2.realmGet$unlimitedCashouts());
                int i3 = 0;
                if (i == i2) {
                    widgetDataRealmProxyInterface.realmSet$friends(null);
                } else {
                    RealmList realmGet$friends = widgetDataRealmProxyInterface2.realmGet$friends();
                    RealmList realmList = new RealmList();
                    widgetDataRealmProxyInterface.realmSet$friends(realmList);
                    int i4 = i + 1;
                    int size = realmGet$friends.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        realmList.add(RealmWidgetFriendRealmProxy.createDetachedCopy((RealmWidgetFriend) realmGet$friends.get(i5), i4, i2, map));
                    }
                }
                if (i == i2) {
                    widgetDataRealmProxyInterface.realmSet$operation(null);
                } else {
                    widgetData = widgetDataRealmProxyInterface2.realmGet$operation();
                    RealmList realmList2 = new RealmList();
                    widgetDataRealmProxyInterface.realmSet$operation(realmList2);
                    i++;
                    int size2 = widgetData.size();
                    while (i3 < size2) {
                        realmList2.add(RealmOperationRealmProxy.createDetachedCopy((RealmOperation) widgetData.get(i3), i, i2, map));
                        i3++;
                    }
                }
                return widgetData2;
            }
        }
        return null;
    }

    private static WidgetData update(Realm realm, WidgetData widgetData, WidgetData widgetData2, Map<RealmModel, RealmObjectProxy> map) {
        WidgetDataRealmProxyInterface widgetDataRealmProxyInterface = widgetData;
        WidgetDataRealmProxyInterface widgetDataRealmProxyInterface2 = widgetData2;
        widgetDataRealmProxyInterface.realmSet$balance(widgetDataRealmProxyInterface2.realmGet$balance());
        widgetDataRealmProxyInterface.realmSet$miles(widgetDataRealmProxyInterface2.realmGet$miles());
        widgetDataRealmProxyInterface.realmSet$limit(widgetDataRealmProxyInterface2.realmGet$limit());
        widgetDataRealmProxyInterface.realmSet$usedOperation(widgetDataRealmProxyInterface2.realmGet$usedOperation());
        widgetDataRealmProxyInterface.realmSet$operator(widgetDataRealmProxyInterface2.realmGet$operator());
        widgetDataRealmProxyInterface.realmSet$number(widgetDataRealmProxyInterface2.realmGet$number());
        widgetDataRealmProxyInterface.realmSet$unlimitedCashouts(widgetDataRealmProxyInterface2.realmGet$unlimitedCashouts());
        RealmList realmGet$friends = widgetDataRealmProxyInterface2.realmGet$friends();
        RealmList realmGet$friends2 = widgetDataRealmProxyInterface.realmGet$friends();
        realmGet$friends2.clear();
        int i = 0;
        if (realmGet$friends != null) {
            for (int i2 = 0; i2 < realmGet$friends.size(); i2++) {
                RealmModel realmModel = (RealmWidgetFriend) map.get((RealmWidgetFriend) realmGet$friends.get(i2));
                if (realmModel != null) {
                    realmGet$friends2.add(realmModel);
                } else {
                    realmGet$friends2.add(RealmWidgetFriendRealmProxy.copyOrUpdate$31980307(realm, (RealmWidgetFriend) realmGet$friends.get(i2), map));
                }
            }
        }
        widgetData2 = widgetDataRealmProxyInterface2.realmGet$operation();
        RealmList realmGet$operation = widgetDataRealmProxyInterface.realmGet$operation();
        realmGet$operation.clear();
        if (widgetData2 != null) {
            while (i < widgetData2.size()) {
                RealmModel realmModel2 = (RealmOperation) map.get((RealmOperation) widgetData2.get(i));
                if (realmModel2 != null) {
                    realmGet$operation.add(realmModel2);
                } else {
                    realmGet$operation.add(RealmOperationRealmProxy.copyOrUpdate$1048dc1b(realm, (RealmOperation) widgetData2.get(i), map));
                }
                i++;
            }
        }
        return widgetData;
    }

    public final String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        String string;
        StringBuilder stringBuilder = new StringBuilder("WidgetData = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{balance:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.balanceIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.balanceIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{miles:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.milesIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.milesIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{limit:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append((int) this.proxyState.getRow$realm().getLong(this.columnInfo.limitIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{usedOperation:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append((int) this.proxyState.getRow$realm().getLong(this.columnInfo.usedOperationIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{operator:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.operatorIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.operatorIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{number:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{unlimitedCashouts:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getBoolean(this.columnInfo.unlimitedCashoutsIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{friends:");
        stringBuilder.append("RealmList<RealmWidgetFriend>[");
        stringBuilder.append(realmGet$friends().size());
        stringBuilder.append("]");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{operation:");
        stringBuilder.append("RealmList<RealmOperation>[");
        stringBuilder.append(realmGet$operation().size());
        stringBuilder.append("]");
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
        r7 = (io.realm.WidgetDataRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.WidgetDataRealmProxy.equals(java.lang.Object):boolean");
    }
}
