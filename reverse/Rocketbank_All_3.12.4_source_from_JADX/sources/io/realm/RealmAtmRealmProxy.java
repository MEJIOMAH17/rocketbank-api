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
import ru.rocketbank.core.realm.RealmAtm;

public final class RealmAtmRealmProxy extends RealmAtm implements RealmAtmRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmAtmColumnInfo columnInfo;
    private ProxyState<RealmAtm> proxyState;

    static final class RealmAtmColumnInfo extends ColumnInfo {
        long addressIndex;
        long hoursIndex;
        long idIndex;
        long isEurIndex;
        long isHiddenIndex;
        long isRurIndex;
        long isUsdIndex;
        long latIndex;
        long lonIndex;
        long nameIndex;
        long typeIndex;

        RealmAtmColumnInfo(Table table) {
            super(11);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.INTEGER);
            this.isEurIndex = addColumnDetails(table, "isEur", RealmFieldType.BOOLEAN);
            this.isHiddenIndex = addColumnDetails(table, RealmAtm.FIELD_HIDDEN, RealmFieldType.BOOLEAN);
            this.isRurIndex = addColumnDetails(table, "isRur", RealmFieldType.BOOLEAN);
            this.isUsdIndex = addColumnDetails(table, "isUsd", RealmFieldType.BOOLEAN);
            this.latIndex = addColumnDetails(table, "lat", RealmFieldType.FLOAT);
            this.lonIndex = addColumnDetails(table, "lon", RealmFieldType.FLOAT);
            this.addressIndex = addColumnDetails(table, "address", RealmFieldType.STRING);
            this.hoursIndex = addColumnDetails(table, "hours", RealmFieldType.STRING);
            this.nameIndex = addColumnDetails(table, "name", RealmFieldType.STRING);
            this.typeIndex = addColumnDetails(table, "type", RealmFieldType.STRING);
        }

        private RealmAtmColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmAtmColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmAtmColumnInfo realmAtmColumnInfo = (RealmAtmColumnInfo) columnInfo;
            RealmAtmColumnInfo realmAtmColumnInfo2 = (RealmAtmColumnInfo) columnInfo2;
            realmAtmColumnInfo2.idIndex = realmAtmColumnInfo.idIndex;
            realmAtmColumnInfo2.isEurIndex = realmAtmColumnInfo.isEurIndex;
            realmAtmColumnInfo2.isHiddenIndex = realmAtmColumnInfo.isHiddenIndex;
            realmAtmColumnInfo2.isRurIndex = realmAtmColumnInfo.isRurIndex;
            realmAtmColumnInfo2.isUsdIndex = realmAtmColumnInfo.isUsdIndex;
            realmAtmColumnInfo2.latIndex = realmAtmColumnInfo.latIndex;
            realmAtmColumnInfo2.lonIndex = realmAtmColumnInfo.lonIndex;
            realmAtmColumnInfo2.addressIndex = realmAtmColumnInfo.addressIndex;
            realmAtmColumnInfo2.hoursIndex = realmAtmColumnInfo.hoursIndex;
            realmAtmColumnInfo2.nameIndex = realmAtmColumnInfo.nameIndex;
            realmAtmColumnInfo2.typeIndex = realmAtmColumnInfo.typeIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmAtm";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("isEur");
        arrayList.add(RealmAtm.FIELD_HIDDEN);
        arrayList.add("isRur");
        arrayList.add("isUsd");
        arrayList.add("lat");
        arrayList.add("lon");
        arrayList.add("address");
        arrayList.add("hours");
        arrayList.add("name");
        arrayList.add("type");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmAtmRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmAtmColumnInfo) realmObjectContext.getColumnInfo();
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
        if (this.proxyState.isUnderConstruction() == 0) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    public final Boolean realmGet$isEur() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.isEurIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.isEurIndex));
    }

    public final void realmSet$isEur(Boolean bool) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (bool == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.isEurIndex);
            } else {
                this.proxyState.getRow$realm().setBoolean(this.columnInfo.isEurIndex, bool.booleanValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (bool == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.isEurIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setBoolean$3983140b(this.columnInfo.isEurIndex, row$realm.getIndex(), bool.booleanValue());
            }
        }
    }

    public final Boolean realmGet$isHidden() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.isHiddenIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.isHiddenIndex));
    }

    public final void realmSet$isHidden(Boolean bool) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (bool == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.isHiddenIndex);
            } else {
                this.proxyState.getRow$realm().setBoolean(this.columnInfo.isHiddenIndex, bool.booleanValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (bool == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.isHiddenIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setBoolean$3983140b(this.columnInfo.isHiddenIndex, row$realm.getIndex(), bool.booleanValue());
            }
        }
    }

    public final Boolean realmGet$isRur() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.isRurIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.isRurIndex));
    }

    public final void realmSet$isRur(Boolean bool) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (bool == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.isRurIndex);
            } else {
                this.proxyState.getRow$realm().setBoolean(this.columnInfo.isRurIndex, bool.booleanValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (bool == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.isRurIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setBoolean$3983140b(this.columnInfo.isRurIndex, row$realm.getIndex(), bool.booleanValue());
            }
        }
    }

    public final Boolean realmGet$isUsd() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.isUsdIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.isUsdIndex));
    }

    public final void realmSet$isUsd(Boolean bool) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (bool == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.isUsdIndex);
            } else {
                this.proxyState.getRow$realm().setBoolean(this.columnInfo.isUsdIndex, bool.booleanValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (bool == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.isUsdIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setBoolean$3983140b(this.columnInfo.isUsdIndex, row$realm.getIndex(), bool.booleanValue());
            }
        }
    }

    public final float realmGet$lat() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getFloat(this.columnInfo.latIndex);
    }

    public final void realmSet$lat(float f) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setFloat(this.columnInfo.latIndex, f);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setFloat$398c2b77(this.columnInfo.latIndex, row$realm.getIndex(), f);
        }
    }

    public final float realmGet$lon() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getFloat(this.columnInfo.lonIndex);
    }

    public final void realmSet$lon(float f) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setFloat(this.columnInfo.lonIndex, f);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setFloat$398c2b77(this.columnInfo.lonIndex, row$realm.getIndex(), f);
        }
    }

    public final String realmGet$address() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.addressIndex);
    }

    public final void realmSet$address(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.addressIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.addressIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.addressIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.addressIndex, row$realm.getIndex(), str);
            }
        }
    }

    public final String realmGet$hours() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.hoursIndex);
    }

    public final void realmSet$hours(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.hoursIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.hoursIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.hoursIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.hoursIndex, row$realm.getIndex(), str);
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

    public final String realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.typeIndex);
    }

    public final void realmSet$type(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.typeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.typeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull$48779ebf(this.columnInfo.typeIndex, row$realm.getIndex());
            } else {
                row$realm.getTable().setString$5ffaa975(this.columnInfo.typeIndex, row$realm.getIndex(), str);
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmAtm")) {
            return realmSchema.get("RealmAtm");
        }
        realmSchema = realmSchema.create("RealmAtm");
        RealmSchema realmSchema2 = realmSchema;
        realmSchema2.add("id", RealmFieldType.INTEGER, true, true, true);
        realmSchema2.add("isEur", RealmFieldType.BOOLEAN, false, false, false);
        realmSchema2.add(RealmAtm.FIELD_HIDDEN, RealmFieldType.BOOLEAN, false, true, false);
        realmSchema2.add("isRur", RealmFieldType.BOOLEAN, false, false, false);
        realmSchema2.add("isUsd", RealmFieldType.BOOLEAN, false, false, false);
        realmSchema2.add("lat", RealmFieldType.FLOAT, false, false, true);
        realmSchema2.add("lon", RealmFieldType.FLOAT, false, false, true);
        realmSchema2.add("address", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("hours", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("name", RealmFieldType.STRING, false, false, false);
        realmSchema2.add("type", RealmFieldType.STRING, false, false, false);
        return realmSchema;
    }

    public static RealmAtmColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmAtm")) {
            Table table = sharedRealm.getTable("class_RealmAtm");
            long columnCount = table.getColumnCount();
            if (columnCount != 11) {
                if (columnCount < 11) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is less than expected - expected 11 but was ".concat(String.valueOf(columnCount)));
                } else if (z) {
                    RealmLog.debug("Field count is more than expected - expected 11 but was %1$d", Long.valueOf(columnCount));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field count is more than expected - expected 11 but was ".concat(String.valueOf(columnCount)));
                }
            }
            z = new HashMap();
            for (long j = 0; j < columnCount; j++) {
                z.put(table.getColumnName(j), table.getColumnType(j));
            }
            RealmAtmColumnInfo realmAtmColumnInfo = new RealmAtmColumnInfo(table);
            if (!table.hasPrimaryKey()) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Primary key not defined for field 'id' in existing Realm file. @PrimaryKey was added.");
            } else if (table.getPrimaryKey() != realmAtmColumnInfo.idIndex) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key annotation definition was changed, from field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" to field id");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'int' for field 'id' in existing Realm file.");
            } else if (table.isColumnNullable(realmAtmColumnInfo.idIndex) && table.findFirstNull(realmAtmColumnInfo.idIndex) != -1) {
                throw new IllegalStateException("Cannot migrate an object with null value in field 'id'. Either maintain the same type for primary key field 'id', or remove the object with null value before migration.");
            } else if (!table.hasSearchIndex(table.getColumnIndex("id"))) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Index not defined for field 'id' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            } else if (!z.containsKey("isEur")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'isEur' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("isEur") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'Boolean' for field 'isEur' in existing Realm file.");
            } else if (!table.isColumnNullable(realmAtmColumnInfo.isEurIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'isEur' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field 'isEur' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey(RealmAtm.FIELD_HIDDEN)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'isHidden' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get(RealmAtm.FIELD_HIDDEN) != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'Boolean' for field 'isHidden' in existing Realm file.");
            } else if (!table.isColumnNullable(realmAtmColumnInfo.isHiddenIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'isHidden' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field 'isHidden' or migrate using RealmObjectSchema.setNullable().");
            } else if (!table.hasSearchIndex(table.getColumnIndex(RealmAtm.FIELD_HIDDEN))) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Index not defined for field 'isHidden' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            } else if (!z.containsKey("isRur")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'isRur' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("isRur") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'Boolean' for field 'isRur' in existing Realm file.");
            } else if (!table.isColumnNullable(realmAtmColumnInfo.isRurIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'isRur' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field 'isRur' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("isUsd")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'isUsd' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("isUsd") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'Boolean' for field 'isUsd' in existing Realm file.");
            } else if (!table.isColumnNullable(realmAtmColumnInfo.isUsdIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'isUsd' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field 'isUsd' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("lat")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'lat' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("lat") != RealmFieldType.FLOAT) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'float' for field 'lat' in existing Realm file.");
            } else if (table.isColumnNullable(realmAtmColumnInfo.latIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'lat' does support null values in the existing Realm file. Use corresponding boxed type for field 'lat' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("lon")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'lon' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("lon") != RealmFieldType.FLOAT) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'float' for field 'lon' in existing Realm file.");
            } else if (table.isColumnNullable(realmAtmColumnInfo.lonIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'lon' does support null values in the existing Realm file. Use corresponding boxed type for field 'lon' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("address")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'address' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("address") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'address' in existing Realm file.");
            } else if (!table.isColumnNullable(realmAtmColumnInfo.addressIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'address' is required. Either set @Required to field 'address' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("hours")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'hours' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("hours") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'hours' in existing Realm file.");
            } else if (!table.isColumnNullable(realmAtmColumnInfo.hoursIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'hours' is required. Either set @Required to field 'hours' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("name")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'name' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("name") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'name' in existing Realm file.");
            } else if (!table.isColumnNullable(realmAtmColumnInfo.nameIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'name' is required. Either set @Required to field 'name' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("type")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'type' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("type") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'String' for field 'type' in existing Realm file.");
            } else if (table.isColumnNullable(realmAtmColumnInfo.typeIndex)) {
                return realmAtmColumnInfo;
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'type' is required. Either set @Required to field 'type' or migrate using RealmObjectSchema.setNullable().");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmAtm' class is missing from the schema for this Realm.");
    }

    public static RealmAtm copyOrUpdate(Realm realm, RealmAtm realmAtm, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z2 = realmAtm instanceof RealmObjectProxy;
        if (z2) {
            realmObjectProxy = (RealmObjectProxy) realmAtm;
            if (!(realmObjectProxy.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z2) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmAtm;
            if (realmObjectProxy2.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy2.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmAtm;
            }
        }
        RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmAtm);
        if (realmObjectProxy != null) {
            return (RealmAtm) realmObjectProxy;
        }
        RealmAtm realmAtm2 = null;
        if (z) {
            Table table = realm.getTable(RealmAtm.class);
            long findFirstLong = table.findFirstLong(table.getPrimaryKey(), (long) realmAtm.realmGet$id());
            if (findFirstLong != -1) {
                try {
                    realmObjectContext.set(realm, table.getUncheckedRow(findFirstLong), realm.schema.getColumnInfo(RealmAtm.class), false, Collections.emptyList());
                    realmAtm2 = new RealmAtmRealmProxy();
                    map.put(realmAtm, (RealmObjectProxy) realmAtm2);
                } finally {
                    realmObjectContext.clear();
                }
            } else {
                z = false;
            }
        }
        if (z) {
            RealmAtmRealmProxyInterface realmAtmRealmProxyInterface = realmAtm2;
            RealmAtmRealmProxyInterface realmAtmRealmProxyInterface2 = realmAtm;
            realmAtmRealmProxyInterface.realmSet$isEur(realmAtmRealmProxyInterface2.realmGet$isEur());
            realmAtmRealmProxyInterface.realmSet$isHidden(realmAtmRealmProxyInterface2.realmGet$isHidden());
            realmAtmRealmProxyInterface.realmSet$isRur(realmAtmRealmProxyInterface2.realmGet$isRur());
            realmAtmRealmProxyInterface.realmSet$isUsd(realmAtmRealmProxyInterface2.realmGet$isUsd());
            realmAtmRealmProxyInterface.realmSet$lat(realmAtmRealmProxyInterface2.realmGet$lat());
            realmAtmRealmProxyInterface.realmSet$lon(realmAtmRealmProxyInterface2.realmGet$lon());
            realmAtmRealmProxyInterface.realmSet$address(realmAtmRealmProxyInterface2.realmGet$address());
            realmAtmRealmProxyInterface.realmSet$hours(realmAtmRealmProxyInterface2.realmGet$hours());
            realmAtmRealmProxyInterface.realmSet$name(realmAtmRealmProxyInterface2.realmGet$name());
            realmAtmRealmProxyInterface.realmSet$type(realmAtmRealmProxyInterface2.realmGet$type());
            return realmAtm2;
        }
        RealmObjectProxy realmObjectProxy3 = (RealmObjectProxy) map.get(realmAtm);
        if (realmObjectProxy3 != null) {
            return (RealmAtm) realmObjectProxy3;
        }
        RealmAtmRealmProxyInterface realmAtmRealmProxyInterface3 = realmAtm;
        RealmAtm realmAtm3 = (RealmAtm) realm.createObjectInternal$1e283631(RealmAtm.class, Integer.valueOf(realmAtmRealmProxyInterface3.realmGet$id()), Collections.emptyList());
        map.put(realmAtm, (RealmObjectProxy) realmAtm3);
        realmAtmRealmProxyInterface2 = realmAtm3;
        realmAtmRealmProxyInterface2.realmSet$isEur(realmAtmRealmProxyInterface3.realmGet$isEur());
        realmAtmRealmProxyInterface2.realmSet$isHidden(realmAtmRealmProxyInterface3.realmGet$isHidden());
        realmAtmRealmProxyInterface2.realmSet$isRur(realmAtmRealmProxyInterface3.realmGet$isRur());
        realmAtmRealmProxyInterface2.realmSet$isUsd(realmAtmRealmProxyInterface3.realmGet$isUsd());
        realmAtmRealmProxyInterface2.realmSet$lat(realmAtmRealmProxyInterface3.realmGet$lat());
        realmAtmRealmProxyInterface2.realmSet$lon(realmAtmRealmProxyInterface3.realmGet$lon());
        realmAtmRealmProxyInterface2.realmSet$address(realmAtmRealmProxyInterface3.realmGet$address());
        realmAtmRealmProxyInterface2.realmSet$hours(realmAtmRealmProxyInterface3.realmGet$hours());
        realmAtmRealmProxyInterface2.realmSet$name(realmAtmRealmProxyInterface3.realmGet$name());
        realmAtmRealmProxyInterface2.realmSet$type(realmAtmRealmProxyInterface3.realmGet$type());
        return realmAtm3;
    }

    public static RealmAtm createDetachedCopy$4fc3bdd6(RealmAtm realmAtm, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i >= 0) {
            if (realmAtm != null) {
                CacheData cacheData = (CacheData) map.get(realmAtm);
                if (cacheData == null) {
                    i = new RealmAtm();
                    map.put(realmAtm, new CacheData(0, i));
                } else if (cacheData.minDepth <= null) {
                    return cacheData.object;
                } else {
                    RealmAtm realmAtm2 = (RealmAtm) cacheData.object;
                    cacheData.minDepth = 0;
                    i = realmAtm2;
                }
                RealmAtmRealmProxyInterface realmAtmRealmProxyInterface = (RealmAtmRealmProxyInterface) i;
                RealmAtmRealmProxyInterface realmAtmRealmProxyInterface2 = realmAtm;
                realmAtmRealmProxyInterface.realmSet$id(realmAtmRealmProxyInterface2.realmGet$id());
                realmAtmRealmProxyInterface.realmSet$isEur(realmAtmRealmProxyInterface2.realmGet$isEur());
                realmAtmRealmProxyInterface.realmSet$isHidden(realmAtmRealmProxyInterface2.realmGet$isHidden());
                realmAtmRealmProxyInterface.realmSet$isRur(realmAtmRealmProxyInterface2.realmGet$isRur());
                realmAtmRealmProxyInterface.realmSet$isUsd(realmAtmRealmProxyInterface2.realmGet$isUsd());
                realmAtmRealmProxyInterface.realmSet$lat(realmAtmRealmProxyInterface2.realmGet$lat());
                realmAtmRealmProxyInterface.realmSet$lon(realmAtmRealmProxyInterface2.realmGet$lon());
                realmAtmRealmProxyInterface.realmSet$address(realmAtmRealmProxyInterface2.realmGet$address());
                realmAtmRealmProxyInterface.realmSet$hours(realmAtmRealmProxyInterface2.realmGet$hours());
                realmAtmRealmProxyInterface.realmSet$name(realmAtmRealmProxyInterface2.realmGet$name());
                realmAtmRealmProxyInterface.realmSet$type(realmAtmRealmProxyInterface2.realmGet$type());
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
        StringBuilder stringBuilder = new StringBuilder("RealmAtm = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append((int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{isEur:");
        stringBuilder.append(realmGet$isEur() != null ? realmGet$isEur() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{isHidden:");
        stringBuilder.append(realmGet$isHidden() != null ? realmGet$isHidden() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{isRur:");
        stringBuilder.append(realmGet$isRur() != null ? realmGet$isRur() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{isUsd:");
        stringBuilder.append(realmGet$isUsd() != null ? realmGet$isUsd() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{lat:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getFloat(this.columnInfo.latIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{lon:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getFloat(this.columnInfo.lonIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{address:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.addressIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.addressIndex);
        } else {
            string = "null";
        }
        stringBuilder.append(string);
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{hours:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.hoursIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.hoursIndex);
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
        stringBuilder.append("{type:");
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().getString(this.columnInfo.typeIndex) != null) {
            this.proxyState.getRealm$realm().checkIfValid();
            string = this.proxyState.getRow$realm().getString(this.columnInfo.typeIndex);
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
        r7 = (io.realm.RealmAtmRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmAtmRealmProxy.equals(java.lang.Object):boolean");
    }
}
