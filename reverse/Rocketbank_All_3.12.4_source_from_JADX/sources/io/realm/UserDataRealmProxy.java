package io.realm;

import com.google.firebase.analytics.FirebaseAnalytics.Event;
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
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.realm.WidgetData;

public final class UserDataRealmProxy extends UserData implements UserDataRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private UserDataColumnInfo columnInfo;
    private ProxyState<UserData> proxyState;

    static final class UserDataColumnInfo extends ColumnInfo {
        long activationIndex;
        long avatarIndex;
        long balanceIndex;
        long cobrandNameIndex;
        long coverIndex;
        long deviceIdIndex;
        long firstNameIndex;
        long genederIndex;
        long idIndex;
        long lastNameIndex;
        long loginIndex;
        long milesIndex;
        long providersHashIndex;
        long statusIndex;
        long tokenIndex;
        long widgetDataIndex;
        long widgetTokenIndex;

        UserDataColumnInfo(Table table) {
            super(17);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.INTEGER);
            this.avatarIndex = addColumnDetails(table, "avatar", RealmFieldType.STRING);
            this.coverIndex = addColumnDetails(table, "cover", RealmFieldType.STRING);
            this.loginIndex = addColumnDetails(table, Event.LOGIN, RealmFieldType.STRING);
            this.statusIndex = addColumnDetails(table, "status", RealmFieldType.STRING);
            this.firstNameIndex = addColumnDetails(table, "firstName", RealmFieldType.STRING);
            this.lastNameIndex = addColumnDetails(table, "lastName", RealmFieldType.STRING);
            this.balanceIndex = addColumnDetails(table, "balance", RealmFieldType.DOUBLE);
            this.milesIndex = addColumnDetails(table, "miles", RealmFieldType.DOUBLE);
            this.widgetTokenIndex = addColumnDetails(table, "widgetToken", RealmFieldType.STRING);
            this.genederIndex = addColumnDetails(table, "geneder", RealmFieldType.STRING);
            this.cobrandNameIndex = addColumnDetails(table, "cobrandName", RealmFieldType.STRING);
            this.tokenIndex = addColumnDetails(table, "token", RealmFieldType.STRING);
            this.activationIndex = addColumnDetails(table, "activation", RealmFieldType.STRING);
            this.providersHashIndex = addColumnDetails(table, "providersHash", RealmFieldType.INTEGER);
            this.deviceIdIndex = addColumnDetails(table, "deviceId", RealmFieldType.STRING);
            this.widgetDataIndex = addColumnDetails(table, "widgetData", RealmFieldType.OBJECT);
        }

        private UserDataColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new UserDataColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            UserDataColumnInfo userDataColumnInfo = (UserDataColumnInfo) columnInfo;
            UserDataColumnInfo userDataColumnInfo2 = (UserDataColumnInfo) columnInfo2;
            userDataColumnInfo2.idIndex = userDataColumnInfo.idIndex;
            userDataColumnInfo2.avatarIndex = userDataColumnInfo.avatarIndex;
            userDataColumnInfo2.coverIndex = userDataColumnInfo.coverIndex;
            userDataColumnInfo2.loginIndex = userDataColumnInfo.loginIndex;
            userDataColumnInfo2.statusIndex = userDataColumnInfo.statusIndex;
            userDataColumnInfo2.firstNameIndex = userDataColumnInfo.firstNameIndex;
            userDataColumnInfo2.lastNameIndex = userDataColumnInfo.lastNameIndex;
            userDataColumnInfo2.balanceIndex = userDataColumnInfo.balanceIndex;
            userDataColumnInfo2.milesIndex = userDataColumnInfo.milesIndex;
            userDataColumnInfo2.widgetTokenIndex = userDataColumnInfo.widgetTokenIndex;
            userDataColumnInfo2.genederIndex = userDataColumnInfo.genederIndex;
            userDataColumnInfo2.cobrandNameIndex = userDataColumnInfo.cobrandNameIndex;
            userDataColumnInfo2.tokenIndex = userDataColumnInfo.tokenIndex;
            userDataColumnInfo2.activationIndex = userDataColumnInfo.activationIndex;
            userDataColumnInfo2.providersHashIndex = userDataColumnInfo.providersHashIndex;
            userDataColumnInfo2.deviceIdIndex = userDataColumnInfo.deviceIdIndex;
            userDataColumnInfo2.widgetDataIndex = userDataColumnInfo.widgetDataIndex;
        }
    }

    public static String getTableName() {
        return "class_UserData";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("avatar");
        arrayList.add("cover");
        arrayList.add(Event.LOGIN);
        arrayList.add("status");
        arrayList.add("firstName");
        arrayList.add("lastName");
        arrayList.add("balance");
        arrayList.add("miles");
        arrayList.add("widgetToken");
        arrayList.add("geneder");
        arrayList.add("cobrandName");
        arrayList.add("token");
        arrayList.add("activation");
        arrayList.add("providersHash");
        arrayList.add("deviceId");
        arrayList.add("widgetData");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    UserDataRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (UserDataColumnInfo) realmObjectContext.getColumnInfo();
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

    public final String realmGet$avatar() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.avatarIndex);
    }

    public final void realmSet$avatar(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.avatarIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.avatarIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.avatarIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.avatarIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$cover() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.coverIndex);
    }

    public final void realmSet$cover(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.coverIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.coverIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.coverIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.coverIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$login() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.loginIndex);
    }

    public final void realmSet$login(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.loginIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.loginIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.loginIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.loginIndex, row$realm.getIndex(), str);
            }
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

    public final Double realmGet$balance() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.balanceIndex)) {
            return null;
        }
        return Double.valueOf(this.proxyState.getRow$realm().getDouble(this.columnInfo.balanceIndex));
    }

    public final void realmSet$balance(Double d) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (d == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.balanceIndex);
            } else {
                this.proxyState.getRow$realm().setDouble(this.columnInfo.balanceIndex, d.doubleValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (d == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.balanceIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setDouble$398d1435(this.columnInfo.balanceIndex, row$realm.getIndex(), d.doubleValue());
            }
        }
    }

    public final Double realmGet$miles() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.milesIndex)) {
            return null;
        }
        return Double.valueOf(this.proxyState.getRow$realm().getDouble(this.columnInfo.milesIndex));
    }

    public final void realmSet$miles(Double d) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (d == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.milesIndex);
            } else {
                this.proxyState.getRow$realm().setDouble(this.columnInfo.milesIndex, d.doubleValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (d == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.milesIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setDouble$398d1435(this.columnInfo.milesIndex, row$realm.getIndex(), d.doubleValue());
            }
        }
    }

    public final String realmGet$widgetToken() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.widgetTokenIndex);
    }

    public final void realmSet$widgetToken(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.widgetTokenIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.widgetTokenIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.widgetTokenIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.widgetTokenIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$geneder() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.genederIndex);
    }

    public final void realmSet$geneder(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.genederIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.genederIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.genederIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.genederIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$cobrandName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.cobrandNameIndex);
    }

    public final void realmSet$cobrandName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.cobrandNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.cobrandNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.cobrandNameIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.cobrandNameIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$token() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.tokenIndex);
    }

    public final void realmSet$token(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.tokenIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.tokenIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.tokenIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.tokenIndex, row$realm.getIndex(), str);
            }
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

    public final int realmGet$providersHash() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.providersHashIndex);
    }

    public final void realmSet$providersHash(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.providersHashIndex, (long) i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong$398a59fb(this.columnInfo.providersHashIndex, row$realm.getIndex(), (long) i);
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

    public final WidgetData realmGet$widgetData() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.widgetDataIndex)) {
            return null;
        }
        return (WidgetData) this.proxyState.getRealm$realm().get$1557dc49(WidgetData.class, this.proxyState.getRow$realm().getLink(this.columnInfo.widgetDataIndex), Collections.emptyList());
    }

    public final void realmSet$widgetData(WidgetData widgetData) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (widgetData == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.widgetDataIndex);
                return;
            }
            if (widgetData instanceof RealmObjectProxy) {
                if (RealmObject.isValid(widgetData)) {
                    realmObjectProxy = (RealmObjectProxy) widgetData;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.widgetDataIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("widgetData")) {
            if (!(widgetData == null || (widgetData instanceof RealmObjectProxy))) {
                widgetData = (WidgetData) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(widgetData);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (widgetData == null) {
                row$realm.nullifyLink(this.columnInfo.widgetDataIndex);
            } else if (RealmObject.isValid(widgetData)) {
                realmObjectProxy = (RealmObjectProxy) widgetData;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.widgetDataIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("UserData")) {
            return realmSchema.get("UserData");
        }
        RealmObjectSchema create = realmSchema.create("UserData");
        RealmObjectSchema realmObjectSchema = create;
        realmObjectSchema.add("id", RealmFieldType.INTEGER, true, true, true);
        realmObjectSchema.add("avatar", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("cover", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add(Event.LOGIN, RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("status", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("firstName", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("lastName", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("balance", RealmFieldType.DOUBLE, false, false, false);
        realmObjectSchema.add("miles", RealmFieldType.DOUBLE, false, false, false);
        realmObjectSchema.add("widgetToken", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("geneder", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("cobrandName", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("token", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("activation", RealmFieldType.STRING, false, false, false);
        realmObjectSchema.add("providersHash", RealmFieldType.INTEGER, false, false, true);
        realmObjectSchema.add("deviceId", RealmFieldType.STRING, false, false, false);
        if (!realmSchema.contains("WidgetData")) {
            WidgetDataRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("widgetData", RealmFieldType.OBJECT, realmSchema.get("WidgetData"));
        return create;
    }

    public static UserDataColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_UserData")) {
            Table table = sharedRealm.getTable("class_UserData");
            long columnCount = table.getColumnCount();
            if (columnCount != 17) {
                if (columnCount < 17) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 17 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 17 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 17 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            UserDataColumnInfo userDataColumnInfo = new UserDataColumnInfo(table);
            if (!table.hasPrimaryKey()) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Primary key not defined for field 'id' in existing Realm file. @PrimaryKey was added.");
            } else if (table.getPrimaryKey() != userDataColumnInfo.idIndex) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key annotation definition was changed, from field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" to field id");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'long' for field 'id' in existing Realm file.");
            } else if (table.isColumnNullable(userDataColumnInfo.idIndex) && table.findFirstNull(userDataColumnInfo.idIndex) != -1) {
                throw new IllegalStateException("Cannot migrate an object with null value in field 'id'. Either maintain the same type for primary key field 'id', or remove the object with null value before migration.");
            } else if (!table.hasSearchIndex(table.getColumnIndex("id"))) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Index not defined for field 'id' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            } else if (!z.containsKey("avatar")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'avatar' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("avatar") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'avatar' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.avatarIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'avatar' is required. Either set @Required to field 'avatar' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("cover")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'cover' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("cover") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'cover' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.coverIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'cover' is required. Either set @Required to field 'cover' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey(Event.LOGIN)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'login' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get(Event.LOGIN) != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'login' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.loginIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'login' is required. Either set @Required to field 'login' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("status")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'status' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("status") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'status' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.statusIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'status' is required. Either set @Required to field 'status' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("firstName")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'firstName' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("firstName") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'firstName' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.firstNameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'firstName' is required. Either set @Required to field 'firstName' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("lastName")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'lastName' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("lastName") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'lastName' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.lastNameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'lastName' is required. Either set @Required to field 'lastName' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("balance")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'balance' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("balance") != RealmFieldType.DOUBLE) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'Double' for field 'balance' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.balanceIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'balance' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field 'balance' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("miles")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'miles' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("miles") != RealmFieldType.DOUBLE) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'Double' for field 'miles' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.milesIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'miles' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field 'miles' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("widgetToken")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'widgetToken' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("widgetToken") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'widgetToken' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.widgetTokenIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'widgetToken' is required. Either set @Required to field 'widgetToken' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("geneder")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'geneder' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("geneder") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'geneder' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.genederIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'geneder' is required. Either set @Required to field 'geneder' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("cobrandName")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'cobrandName' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("cobrandName") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'cobrandName' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.cobrandNameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'cobrandName' is required. Either set @Required to field 'cobrandName' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("token")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'token' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("token") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'token' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.tokenIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'token' is required. Either set @Required to field 'token' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("activation")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'activation' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("activation") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'activation' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.activationIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'activation' is required. Either set @Required to field 'activation' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("providersHash")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'providersHash' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("providersHash") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'int' for field 'providersHash' in existing Realm file.");
            } else if (table.isColumnNullable(userDataColumnInfo.providersHashIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'providersHash' does support null values in the existing Realm file. Use corresponding boxed type for field 'providersHash' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("deviceId")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'deviceId' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("deviceId") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'deviceId' in existing Realm file.");
            } else if (!table.isColumnNullable(userDataColumnInfo.deviceIdIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'deviceId' is required. Either set @Required to field 'deviceId' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("widgetData")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'widgetData' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("widgetData") != RealmFieldType.OBJECT) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'WidgetData' for field 'widgetData'");
            } else if (sharedRealm.hasTable("class_WidgetData")) {
                z = sharedRealm.getTable("class_WidgetData");
                if (table.getLinkTarget(userDataColumnInfo.widgetDataIndex).hasSameSchema(z)) {
                    return userDataColumnInfo;
                }
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'widgetData': '");
                stringBuilder2.append(table.getLinkTarget(userDataColumnInfo.widgetDataIndex).getName());
                stringBuilder2.append("' expected - was '");
                stringBuilder2.append(z.getName());
                stringBuilder2.append("'");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_WidgetData' for field 'widgetData'");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'UserData' class is missing from the schema for this Realm.");
    }

    public static UserData copyOrUpdate(Realm realm, UserData userData, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        RealmObjectProxy realmObjectProxy2;
        boolean z2 = userData instanceof RealmObjectProxy;
        if (z2) {
            realmObjectProxy = (RealmObjectProxy) userData;
            if (!(realmObjectProxy.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z2) {
            realmObjectProxy2 = (RealmObjectProxy) userData;
            if (realmObjectProxy2.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy2.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return userData;
            }
        }
        RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(userData);
        if (realmObjectProxy != null) {
            return (UserData) realmObjectProxy;
        }
        UserData table;
        UserDataRealmProxyInterface userDataRealmProxyInterface;
        WidgetData realmGet$widgetData;
        WidgetData widgetData;
        UserDataRealmProxyInterface userDataRealmProxyInterface2;
        WidgetData widgetData2;
        if (z) {
            table = realm.getTable(UserData.class);
            long findFirstLong = table.findFirstLong(table.getPrimaryKey(), userData.realmGet$id());
            if (findFirstLong != -1) {
                try {
                    realmObjectContext.set(realm, table.getUncheckedRow(findFirstLong), realm.schema.getColumnInfo(UserData.class), false, Collections.emptyList());
                    table = new UserDataRealmProxy();
                    map.put(userData, (RealmObjectProxy) table);
                    z2 = z;
                    if (z2) {
                        realmObjectProxy2 = (RealmObjectProxy) map.get(userData);
                        if (realmObjectProxy2 != null) {
                            return (UserData) realmObjectProxy2;
                        }
                        UserDataRealmProxyInterface userDataRealmProxyInterface3 = userData;
                        UserData userData2 = (UserData) realm.createObjectInternal$1e283631(UserData.class, Long.valueOf(userDataRealmProxyInterface3.realmGet$id()), Collections.emptyList());
                        map.put(userData, (RealmObjectProxy) userData2);
                        userDataRealmProxyInterface = userData2;
                        userDataRealmProxyInterface.realmSet$avatar(userDataRealmProxyInterface3.realmGet$avatar());
                        userDataRealmProxyInterface.realmSet$cover(userDataRealmProxyInterface3.realmGet$cover());
                        userDataRealmProxyInterface.realmSet$login(userDataRealmProxyInterface3.realmGet$login());
                        userDataRealmProxyInterface.realmSet$status(userDataRealmProxyInterface3.realmGet$status());
                        userDataRealmProxyInterface.realmSet$firstName(userDataRealmProxyInterface3.realmGet$firstName());
                        userDataRealmProxyInterface.realmSet$lastName(userDataRealmProxyInterface3.realmGet$lastName());
                        userDataRealmProxyInterface.realmSet$balance(userDataRealmProxyInterface3.realmGet$balance());
                        userDataRealmProxyInterface.realmSet$miles(userDataRealmProxyInterface3.realmGet$miles());
                        userDataRealmProxyInterface.realmSet$widgetToken(userDataRealmProxyInterface3.realmGet$widgetToken());
                        userDataRealmProxyInterface.realmSet$geneder(userDataRealmProxyInterface3.realmGet$geneder());
                        userDataRealmProxyInterface.realmSet$cobrandName(userDataRealmProxyInterface3.realmGet$cobrandName());
                        userDataRealmProxyInterface.realmSet$token(userDataRealmProxyInterface3.realmGet$token());
                        userDataRealmProxyInterface.realmSet$activation(userDataRealmProxyInterface3.realmGet$activation());
                        userDataRealmProxyInterface.realmSet$providersHash(userDataRealmProxyInterface3.realmGet$providersHash());
                        userDataRealmProxyInterface.realmSet$deviceId(userDataRealmProxyInterface3.realmGet$deviceId());
                        realmGet$widgetData = userDataRealmProxyInterface3.realmGet$widgetData();
                        if (realmGet$widgetData == null) {
                            widgetData = (WidgetData) map.get(realmGet$widgetData);
                            if (widgetData == null) {
                                userDataRealmProxyInterface.realmSet$widgetData(widgetData);
                            } else {
                                userDataRealmProxyInterface.realmSet$widgetData(WidgetDataRealmProxy.copyOrUpdate(realm, realmGet$widgetData, z, map));
                            }
                        } else {
                            userDataRealmProxyInterface.realmSet$widgetData(null);
                        }
                        return userData2;
                    }
                    userDataRealmProxyInterface2 = table;
                    userDataRealmProxyInterface = userData;
                    userDataRealmProxyInterface2.realmSet$avatar(userDataRealmProxyInterface.realmGet$avatar());
                    userDataRealmProxyInterface2.realmSet$cover(userDataRealmProxyInterface.realmGet$cover());
                    userDataRealmProxyInterface2.realmSet$login(userDataRealmProxyInterface.realmGet$login());
                    userDataRealmProxyInterface2.realmSet$status(userDataRealmProxyInterface.realmGet$status());
                    userDataRealmProxyInterface2.realmSet$firstName(userDataRealmProxyInterface.realmGet$firstName());
                    userDataRealmProxyInterface2.realmSet$lastName(userDataRealmProxyInterface.realmGet$lastName());
                    userDataRealmProxyInterface2.realmSet$balance(userDataRealmProxyInterface.realmGet$balance());
                    userDataRealmProxyInterface2.realmSet$miles(userDataRealmProxyInterface.realmGet$miles());
                    userDataRealmProxyInterface2.realmSet$widgetToken(userDataRealmProxyInterface.realmGet$widgetToken());
                    userDataRealmProxyInterface2.realmSet$geneder(userDataRealmProxyInterface.realmGet$geneder());
                    userDataRealmProxyInterface2.realmSet$cobrandName(userDataRealmProxyInterface.realmGet$cobrandName());
                    userDataRealmProxyInterface2.realmSet$token(userDataRealmProxyInterface.realmGet$token());
                    userDataRealmProxyInterface2.realmSet$activation(userDataRealmProxyInterface.realmGet$activation());
                    userDataRealmProxyInterface2.realmSet$providersHash(userDataRealmProxyInterface.realmGet$providersHash());
                    userDataRealmProxyInterface2.realmSet$deviceId(userDataRealmProxyInterface.realmGet$deviceId());
                    userData = userDataRealmProxyInterface.realmGet$widgetData();
                    if (userData == null) {
                        widgetData2 = (WidgetData) map.get(userData);
                        if (widgetData2 == null) {
                            userDataRealmProxyInterface2.realmSet$widgetData(widgetData2);
                        } else {
                            userDataRealmProxyInterface2.realmSet$widgetData(WidgetDataRealmProxy.copyOrUpdate(realm, userData, true, map));
                        }
                    } else {
                        userDataRealmProxyInterface2.realmSet$widgetData(null);
                    }
                    return table;
                } finally {
                    realmObjectContext.clear();
                }
            } else {
                z2 = false;
            }
        } else {
            z2 = z;
        }
        table = null;
        if (z2) {
            realmObjectProxy2 = (RealmObjectProxy) map.get(userData);
            if (realmObjectProxy2 != null) {
                return (UserData) realmObjectProxy2;
            }
            UserDataRealmProxyInterface userDataRealmProxyInterface32 = userData;
            UserData userData22 = (UserData) realm.createObjectInternal$1e283631(UserData.class, Long.valueOf(userDataRealmProxyInterface32.realmGet$id()), Collections.emptyList());
            map.put(userData, (RealmObjectProxy) userData22);
            userDataRealmProxyInterface = userData22;
            userDataRealmProxyInterface.realmSet$avatar(userDataRealmProxyInterface32.realmGet$avatar());
            userDataRealmProxyInterface.realmSet$cover(userDataRealmProxyInterface32.realmGet$cover());
            userDataRealmProxyInterface.realmSet$login(userDataRealmProxyInterface32.realmGet$login());
            userDataRealmProxyInterface.realmSet$status(userDataRealmProxyInterface32.realmGet$status());
            userDataRealmProxyInterface.realmSet$firstName(userDataRealmProxyInterface32.realmGet$firstName());
            userDataRealmProxyInterface.realmSet$lastName(userDataRealmProxyInterface32.realmGet$lastName());
            userDataRealmProxyInterface.realmSet$balance(userDataRealmProxyInterface32.realmGet$balance());
            userDataRealmProxyInterface.realmSet$miles(userDataRealmProxyInterface32.realmGet$miles());
            userDataRealmProxyInterface.realmSet$widgetToken(userDataRealmProxyInterface32.realmGet$widgetToken());
            userDataRealmProxyInterface.realmSet$geneder(userDataRealmProxyInterface32.realmGet$geneder());
            userDataRealmProxyInterface.realmSet$cobrandName(userDataRealmProxyInterface32.realmGet$cobrandName());
            userDataRealmProxyInterface.realmSet$token(userDataRealmProxyInterface32.realmGet$token());
            userDataRealmProxyInterface.realmSet$activation(userDataRealmProxyInterface32.realmGet$activation());
            userDataRealmProxyInterface.realmSet$providersHash(userDataRealmProxyInterface32.realmGet$providersHash());
            userDataRealmProxyInterface.realmSet$deviceId(userDataRealmProxyInterface32.realmGet$deviceId());
            realmGet$widgetData = userDataRealmProxyInterface32.realmGet$widgetData();
            if (realmGet$widgetData == null) {
                userDataRealmProxyInterface.realmSet$widgetData(null);
            } else {
                widgetData = (WidgetData) map.get(realmGet$widgetData);
                if (widgetData == null) {
                    userDataRealmProxyInterface.realmSet$widgetData(WidgetDataRealmProxy.copyOrUpdate(realm, realmGet$widgetData, z, map));
                } else {
                    userDataRealmProxyInterface.realmSet$widgetData(widgetData);
                }
            }
            return userData22;
        }
        userDataRealmProxyInterface2 = table;
        userDataRealmProxyInterface = userData;
        userDataRealmProxyInterface2.realmSet$avatar(userDataRealmProxyInterface.realmGet$avatar());
        userDataRealmProxyInterface2.realmSet$cover(userDataRealmProxyInterface.realmGet$cover());
        userDataRealmProxyInterface2.realmSet$login(userDataRealmProxyInterface.realmGet$login());
        userDataRealmProxyInterface2.realmSet$status(userDataRealmProxyInterface.realmGet$status());
        userDataRealmProxyInterface2.realmSet$firstName(userDataRealmProxyInterface.realmGet$firstName());
        userDataRealmProxyInterface2.realmSet$lastName(userDataRealmProxyInterface.realmGet$lastName());
        userDataRealmProxyInterface2.realmSet$balance(userDataRealmProxyInterface.realmGet$balance());
        userDataRealmProxyInterface2.realmSet$miles(userDataRealmProxyInterface.realmGet$miles());
        userDataRealmProxyInterface2.realmSet$widgetToken(userDataRealmProxyInterface.realmGet$widgetToken());
        userDataRealmProxyInterface2.realmSet$geneder(userDataRealmProxyInterface.realmGet$geneder());
        userDataRealmProxyInterface2.realmSet$cobrandName(userDataRealmProxyInterface.realmGet$cobrandName());
        userDataRealmProxyInterface2.realmSet$token(userDataRealmProxyInterface.realmGet$token());
        userDataRealmProxyInterface2.realmSet$activation(userDataRealmProxyInterface.realmGet$activation());
        userDataRealmProxyInterface2.realmSet$providersHash(userDataRealmProxyInterface.realmGet$providersHash());
        userDataRealmProxyInterface2.realmSet$deviceId(userDataRealmProxyInterface.realmGet$deviceId());
        userData = userDataRealmProxyInterface.realmGet$widgetData();
        if (userData == null) {
            userDataRealmProxyInterface2.realmSet$widgetData(null);
        } else {
            widgetData2 = (WidgetData) map.get(userData);
            if (widgetData2 == null) {
                userDataRealmProxyInterface2.realmSet$widgetData(WidgetDataRealmProxy.copyOrUpdate(realm, userData, true, map));
            } else {
                userDataRealmProxyInterface2.realmSet$widgetData(widgetData2);
            }
        }
        return table;
    }

    public static UserData createDetachedCopy$6cf2b816(UserData userData, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i >= 0) {
            if (userData != null) {
                UserData userData2;
                CacheData cacheData = (CacheData) map.get(userData);
                if (cacheData == null) {
                    userData2 = new UserData();
                    map.put(userData, new CacheData(0, userData2));
                } else if (cacheData.minDepth <= 0) {
                    return cacheData.object;
                } else {
                    userData2 = (UserData) cacheData.object;
                    cacheData.minDepth = 0;
                }
                UserDataRealmProxyInterface userDataRealmProxyInterface = userData2;
                UserDataRealmProxyInterface userDataRealmProxyInterface2 = userData;
                userDataRealmProxyInterface.realmSet$id(userDataRealmProxyInterface2.realmGet$id());
                userDataRealmProxyInterface.realmSet$avatar(userDataRealmProxyInterface2.realmGet$avatar());
                userDataRealmProxyInterface.realmSet$cover(userDataRealmProxyInterface2.realmGet$cover());
                userDataRealmProxyInterface.realmSet$login(userDataRealmProxyInterface2.realmGet$login());
                userDataRealmProxyInterface.realmSet$status(userDataRealmProxyInterface2.realmGet$status());
                userDataRealmProxyInterface.realmSet$firstName(userDataRealmProxyInterface2.realmGet$firstName());
                userDataRealmProxyInterface.realmSet$lastName(userDataRealmProxyInterface2.realmGet$lastName());
                userDataRealmProxyInterface.realmSet$balance(userDataRealmProxyInterface2.realmGet$balance());
                userDataRealmProxyInterface.realmSet$miles(userDataRealmProxyInterface2.realmGet$miles());
                userDataRealmProxyInterface.realmSet$widgetToken(userDataRealmProxyInterface2.realmGet$widgetToken());
                userDataRealmProxyInterface.realmSet$geneder(userDataRealmProxyInterface2.realmGet$geneder());
                userDataRealmProxyInterface.realmSet$cobrandName(userDataRealmProxyInterface2.realmGet$cobrandName());
                userDataRealmProxyInterface.realmSet$token(userDataRealmProxyInterface2.realmGet$token());
                userDataRealmProxyInterface.realmSet$activation(userDataRealmProxyInterface2.realmGet$activation());
                userDataRealmProxyInterface.realmSet$providersHash(userDataRealmProxyInterface2.realmGet$providersHash());
                userDataRealmProxyInterface.realmSet$deviceId(userDataRealmProxyInterface2.realmGet$deviceId());
                userDataRealmProxyInterface.realmSet$widgetData(WidgetDataRealmProxy.createDetachedCopy(userDataRealmProxyInterface2.realmGet$widgetData(), 1, i, map));
                return userData2;
            }
        }
        return null;
    }

    public final String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        String string;
        StringBuilder stringBuilder = new StringBuilder("UserData = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{avatar:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.avatarIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.avatarIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{cover:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.coverIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.coverIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{login:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.loginIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.loginIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
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
        stringBuilder.append("{balance:");
        stringBuilder.append(realmGet$balance() != null ? realmGet$balance() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{miles:");
        stringBuilder.append(realmGet$miles() != null ? realmGet$miles() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{widgetToken:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.widgetTokenIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.widgetTokenIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{geneder:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.genederIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.genederIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{cobrandName:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.cobrandNameIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.cobrandNameIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
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
        stringBuilder.append("{providersHash:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append((int) this.proxyState.getRow$realm().getLong(this.columnInfo.providersHashIndex));
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
        stringBuilder.append(",");
        stringBuilder.append("{widgetData:");
        stringBuilder.append(realmGet$widgetData() != null ? "WidgetData" : "null");
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
        r7 = (io.realm.UserDataRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.UserDataRealmProxy.equals(java.lang.Object):boolean");
    }
}
