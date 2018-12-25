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
import ru.rocketbank.core.realm.RealmCartItem;
import ru.rocketbank.core.realm.RealmString;

public final class RealmCartItemRealmProxy extends RealmCartItem implements RealmCartItemRealmProxyInterface, RealmObjectProxy {
    private static final List<String> FIELD_NAMES;
    private RealmCartItemColumnInfo columnInfo;
    private ProxyState<RealmCartItem> proxyState;

    static final class RealmCartItemColumnInfo extends ColumnInfo {
        long colorIDIndex;
        long idIndex;
        long sizeIDIndex;
        long storeItemIdIndex;

        RealmCartItemColumnInfo(Table table) {
            super(4);
            this.idIndex = addColumnDetails(table, "id", RealmFieldType.INTEGER);
            this.storeItemIdIndex = addColumnDetails(table, "storeItemId", RealmFieldType.INTEGER);
            this.sizeIDIndex = addColumnDetails(table, "sizeID", RealmFieldType.OBJECT);
            this.colorIDIndex = addColumnDetails(table, "colorID", RealmFieldType.OBJECT);
        }

        private RealmCartItemColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        protected final ColumnInfo copy(boolean z) {
            return new RealmCartItemColumnInfo(this, z);
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RealmCartItemColumnInfo realmCartItemColumnInfo = (RealmCartItemColumnInfo) columnInfo;
            RealmCartItemColumnInfo realmCartItemColumnInfo2 = (RealmCartItemColumnInfo) columnInfo2;
            realmCartItemColumnInfo2.idIndex = realmCartItemColumnInfo.idIndex;
            realmCartItemColumnInfo2.storeItemIdIndex = realmCartItemColumnInfo.storeItemIdIndex;
            realmCartItemColumnInfo2.sizeIDIndex = realmCartItemColumnInfo.sizeIDIndex;
            realmCartItemColumnInfo2.colorIDIndex = realmCartItemColumnInfo.colorIDIndex;
        }
    }

    public static String getTableName() {
        return "class_RealmCartItem";
    }

    static {
        List arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add("storeItemId");
        arrayList.add("sizeID");
        arrayList.add("colorID");
        FIELD_NAMES = Collections.unmodifiableList(arrayList);
    }

    RealmCartItemRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public final void realm$injectObjectContext() {
        if (this.proxyState == null) {
            RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
            this.columnInfo = (RealmCartItemColumnInfo) realmObjectContext.getColumnInfo();
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

    public final long realmGet$storeItemId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.storeItemIdIndex);
    }

    public final void realmSet$storeItemId(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.storeItemIdIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong$398a59fb(this.columnInfo.storeItemIdIndex, row$realm.getIndex(), j);
        }
    }

    public final RealmString realmGet$sizeID() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.sizeIDIndex)) {
            return null;
        }
        return (RealmString) this.proxyState.getRealm$realm().get$1557dc49(RealmString.class, this.proxyState.getRow$realm().getLink(this.columnInfo.sizeIDIndex), Collections.emptyList());
    }

    public final void realmSet$sizeID(RealmString realmString) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmString == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.sizeIDIndex);
                return;
            }
            if (realmString instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmString)) {
                    realmObjectProxy = (RealmObjectProxy) realmString;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.sizeIDIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("sizeID")) {
            if (!(realmString == null || (realmString instanceof RealmObjectProxy))) {
                realmString = (RealmString) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmString);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmString == null) {
                row$realm.nullifyLink(this.columnInfo.sizeIDIndex);
            } else if (RealmObject.isValid(realmString)) {
                realmObjectProxy = (RealmObjectProxy) realmString;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.sizeIDIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public final RealmString realmGet$colorID() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.colorIDIndex)) {
            return null;
        }
        return (RealmString) this.proxyState.getRealm$realm().get$1557dc49(RealmString.class, this.proxyState.getRow$realm().getLink(this.columnInfo.colorIDIndex), Collections.emptyList());
    }

    public final void realmSet$colorID(RealmString realmString) {
        RealmObjectProxy realmObjectProxy;
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (realmString == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.colorIDIndex);
                return;
            }
            if (realmString instanceof RealmObjectProxy) {
                if (RealmObject.isValid(realmString)) {
                    realmObjectProxy = (RealmObjectProxy) realmString;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    this.proxyState.getRow$realm().setLink(this.columnInfo.colorIDIndex, realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
                    return;
                }
            }
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("colorID")) {
            if (!(realmString == null || (realmString instanceof RealmObjectProxy))) {
                realmString = (RealmString) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(realmString);
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmString == null) {
                row$realm.nullifyLink(this.columnInfo.colorIDIndex);
            } else if (RealmObject.isValid(realmString)) {
                realmObjectProxy = (RealmObjectProxy) realmString;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                    throw new IllegalArgumentException("'value' belongs to a different Realm.");
                }
                row$realm.getTable().setLink$398a59fb(this.columnInfo.colorIDIndex, row$realm.getIndex(), realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex());
            } else {
                throw new IllegalArgumentException("'value' is not a valid managed object.");
            }
        }
    }

    public static RealmObjectSchema createRealmObjectSchema(RealmSchema realmSchema) {
        if (realmSchema.contains("RealmCartItem")) {
            return realmSchema.get("RealmCartItem");
        }
        RealmObjectSchema create = realmSchema.create("RealmCartItem");
        RealmObjectSchema realmObjectSchema = create;
        realmObjectSchema.add("id", RealmFieldType.INTEGER, true, true, true);
        realmObjectSchema.add("storeItemId", RealmFieldType.INTEGER, false, false, true);
        if (!realmSchema.contains("RealmString")) {
            RealmStringRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("sizeID", RealmFieldType.OBJECT, realmSchema.get("RealmString"));
        if (!realmSchema.contains("RealmString")) {
            RealmStringRealmProxy.createRealmObjectSchema(realmSchema);
        }
        create.add("colorID", RealmFieldType.OBJECT, realmSchema.get("RealmString"));
        return create;
    }

    public static RealmCartItemColumnInfo validateTable(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.hasTable("class_RealmCartItem")) {
            Table table = sharedRealm.getTable("class_RealmCartItem");
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
            RealmCartItemColumnInfo realmCartItemColumnInfo = new RealmCartItemColumnInfo(table);
            if (!table.hasPrimaryKey()) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Primary key not defined for field 'id' in existing Realm file. @PrimaryKey was added.");
            } else if (table.getPrimaryKey() != realmCartItemColumnInfo.idIndex) {
                sharedRealm = sharedRealm.getPath();
                StringBuilder stringBuilder = new StringBuilder("Primary Key annotation definition was changed, from field ");
                stringBuilder.append(table.getColumnName(table.getPrimaryKey()));
                stringBuilder.append(" to field id");
                throw new RealmMigrationNeededException(sharedRealm, stringBuilder.toString());
            } else if (!z.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'long' for field 'id' in existing Realm file.");
            } else if (table.isColumnNullable(realmCartItemColumnInfo.idIndex) && table.findFirstNull(realmCartItemColumnInfo.idIndex) != -1) {
                throw new IllegalStateException("Cannot migrate an object with null value in field 'id'. Either maintain the same type for primary key field 'id', or remove the object with null value before migration.");
            } else if (!table.hasSearchIndex(table.getColumnIndex("id"))) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Index not defined for field 'id' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            } else if (!z.containsKey("storeItemId")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'storeItemId' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("storeItemId") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'long' for field 'storeItemId' in existing Realm file.");
            } else if (table.isColumnNullable(realmCartItemColumnInfo.storeItemIdIndex)) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Field 'storeItemId' does support null values in the existing Realm file. Use corresponding boxed type for field 'storeItemId' or migrate using RealmObjectSchema.setNullable().");
            } else if (!z.containsKey("sizeID")) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'sizeID' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            } else if (z.get("sizeID") != RealmFieldType.OBJECT) {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmString' for field 'sizeID'");
            } else if (sharedRealm.hasTable("class_RealmString")) {
                Table table2 = sharedRealm.getTable("class_RealmString");
                StringBuilder stringBuilder2;
                if (!table.getLinkTarget(realmCartItemColumnInfo.sizeIDIndex).hasSameSchema(table2)) {
                    sharedRealm = sharedRealm.getPath();
                    stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'sizeID': '");
                    stringBuilder2.append(table.getLinkTarget(realmCartItemColumnInfo.sizeIDIndex).getName());
                    stringBuilder2.append("' expected - was '");
                    stringBuilder2.append(table2.getName());
                    stringBuilder2.append("'");
                    throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                } else if (!z.containsKey("colorID")) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing field 'colorID' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
                } else if (z.get("colorID") != RealmFieldType.OBJECT) {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Invalid type 'RealmString' for field 'colorID'");
                } else if (sharedRealm.hasTable("class_RealmString")) {
                    z = sharedRealm.getTable("class_RealmString");
                    if (table.getLinkTarget(realmCartItemColumnInfo.colorIDIndex).hasSameSchema(z)) {
                        return realmCartItemColumnInfo;
                    }
                    sharedRealm = sharedRealm.getPath();
                    stringBuilder2 = new StringBuilder("Invalid RealmObject for field 'colorID': '");
                    stringBuilder2.append(table.getLinkTarget(realmCartItemColumnInfo.colorIDIndex).getName());
                    stringBuilder2.append("' expected - was '");
                    stringBuilder2.append(z.getName());
                    stringBuilder2.append("'");
                    throw new RealmMigrationNeededException(sharedRealm, stringBuilder2.toString());
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmString' for field 'colorID'");
                }
            } else {
                throw new RealmMigrationNeededException(sharedRealm.getPath(), "Missing class 'class_RealmString' for field 'sizeID'");
            }
        }
        throw new RealmMigrationNeededException(sharedRealm.getPath(), "The 'RealmCartItem' class is missing from the schema for this Realm.");
    }

    public static RealmCartItem copyOrUpdate(Realm realm, RealmCartItem realmCartItem, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        RealmObjectProxy realmObjectProxy;
        boolean z2 = realmCartItem instanceof RealmObjectProxy;
        if (z2) {
            realmObjectProxy = (RealmObjectProxy) realmCartItem;
            if (!(realmObjectProxy.realmGet$proxyState().getRealm$realm() == null || realmObjectProxy.realmGet$proxyState().getRealm$realm().threadId == realm.threadId)) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
        }
        if (z2) {
            RealmObjectProxy realmObjectProxy2 = (RealmObjectProxy) realmCartItem;
            if (realmObjectProxy2.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy2.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmCartItem;
            }
        }
        RealmObjectContext realmObjectContext = (RealmObjectContext) BaseRealm.objectContext.get();
        realmObjectProxy = (RealmObjectProxy) map.get(realmCartItem);
        if (realmObjectProxy != null) {
            return (RealmCartItem) realmObjectProxy;
        }
        RealmCartItem table;
        RealmObjectProxy realmObjectProxy3;
        RealmCartItemRealmProxyInterface realmCartItemRealmProxyInterface;
        RealmString realmGet$sizeID;
        RealmString realmString;
        RealmString realmGet$colorID;
        RealmCartItemRealmProxyInterface realmCartItemRealmProxyInterface2;
        if (z) {
            table = realm.getTable(RealmCartItem.class);
            long findFirstLong = table.findFirstLong(table.getPrimaryKey(), realmCartItem.realmGet$id());
            if (findFirstLong != -1) {
                try {
                    realmObjectContext.set(realm, table.getUncheckedRow(findFirstLong), realm.schema.getColumnInfo(RealmCartItem.class), false, Collections.emptyList());
                    table = new RealmCartItemRealmProxy();
                    map.put(realmCartItem, (RealmObjectProxy) table);
                    if (z) {
                        realmObjectProxy3 = (RealmObjectProxy) map.get(realmCartItem);
                        if (realmObjectProxy3 != null) {
                            return (RealmCartItem) realmObjectProxy3;
                        }
                        RealmCartItemRealmProxyInterface realmCartItemRealmProxyInterface3 = realmCartItem;
                        RealmCartItem realmCartItem2 = (RealmCartItem) realm.createObjectInternal$1e283631(RealmCartItem.class, Long.valueOf(realmCartItemRealmProxyInterface3.realmGet$id()), Collections.emptyList());
                        map.put(realmCartItem, (RealmObjectProxy) realmCartItem2);
                        realmCartItemRealmProxyInterface = realmCartItem2;
                        realmCartItemRealmProxyInterface.realmSet$storeItemId(realmCartItemRealmProxyInterface3.realmGet$storeItemId());
                        realmGet$sizeID = realmCartItemRealmProxyInterface3.realmGet$sizeID();
                        if (realmGet$sizeID == null) {
                            realmString = (RealmString) map.get(realmGet$sizeID);
                            if (realmString == null) {
                                realmCartItemRealmProxyInterface.realmSet$sizeID(realmString);
                            } else {
                                realmCartItemRealmProxyInterface.realmSet$sizeID(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, realmGet$sizeID, map));
                            }
                        } else {
                            realmCartItemRealmProxyInterface.realmSet$sizeID(null);
                        }
                        realmGet$colorID = realmCartItemRealmProxyInterface3.realmGet$colorID();
                        if (realmGet$colorID == null) {
                            realmGet$sizeID = (RealmString) map.get(realmGet$colorID);
                            if (realmGet$sizeID == null) {
                                realmCartItemRealmProxyInterface.realmSet$colorID(realmGet$sizeID);
                            } else {
                                realmCartItemRealmProxyInterface.realmSet$colorID(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, realmGet$colorID, map));
                            }
                        } else {
                            realmCartItemRealmProxyInterface.realmSet$colorID(null);
                        }
                        return realmCartItem2;
                    }
                    realmCartItemRealmProxyInterface2 = table;
                    realmCartItemRealmProxyInterface = realmCartItem;
                    realmCartItemRealmProxyInterface2.realmSet$storeItemId(realmCartItemRealmProxyInterface.realmGet$storeItemId());
                    realmGet$colorID = realmCartItemRealmProxyInterface.realmGet$sizeID();
                    if (realmGet$colorID == null) {
                        realmString = (RealmString) map.get(realmGet$colorID);
                        if (realmString == null) {
                            realmCartItemRealmProxyInterface2.realmSet$sizeID(realmString);
                        } else {
                            realmCartItemRealmProxyInterface2.realmSet$sizeID(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, realmGet$colorID, map));
                        }
                    } else {
                        realmCartItemRealmProxyInterface2.realmSet$sizeID(null);
                    }
                    realmCartItem = realmCartItemRealmProxyInterface.realmGet$colorID();
                    if (realmCartItem == null) {
                        realmGet$colorID = (RealmString) map.get(realmCartItem);
                        if (realmGet$colorID == null) {
                            realmCartItemRealmProxyInterface2.realmSet$colorID(realmGet$colorID);
                        } else {
                            realmCartItemRealmProxyInterface2.realmSet$colorID(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, realmCartItem, map));
                        }
                    } else {
                        realmCartItemRealmProxyInterface2.realmSet$colorID(null);
                    }
                    return table;
                } finally {
                    realmObjectContext.clear();
                }
            } else {
                z = false;
            }
        }
        table = null;
        if (z) {
            realmObjectProxy3 = (RealmObjectProxy) map.get(realmCartItem);
            if (realmObjectProxy3 != null) {
                return (RealmCartItem) realmObjectProxy3;
            }
            RealmCartItemRealmProxyInterface realmCartItemRealmProxyInterface32 = realmCartItem;
            RealmCartItem realmCartItem22 = (RealmCartItem) realm.createObjectInternal$1e283631(RealmCartItem.class, Long.valueOf(realmCartItemRealmProxyInterface32.realmGet$id()), Collections.emptyList());
            map.put(realmCartItem, (RealmObjectProxy) realmCartItem22);
            realmCartItemRealmProxyInterface = realmCartItem22;
            realmCartItemRealmProxyInterface.realmSet$storeItemId(realmCartItemRealmProxyInterface32.realmGet$storeItemId());
            realmGet$sizeID = realmCartItemRealmProxyInterface32.realmGet$sizeID();
            if (realmGet$sizeID == null) {
                realmCartItemRealmProxyInterface.realmSet$sizeID(null);
            } else {
                realmString = (RealmString) map.get(realmGet$sizeID);
                if (realmString == null) {
                    realmCartItemRealmProxyInterface.realmSet$sizeID(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, realmGet$sizeID, map));
                } else {
                    realmCartItemRealmProxyInterface.realmSet$sizeID(realmString);
                }
            }
            realmGet$colorID = realmCartItemRealmProxyInterface32.realmGet$colorID();
            if (realmGet$colorID == null) {
                realmCartItemRealmProxyInterface.realmSet$colorID(null);
            } else {
                realmGet$sizeID = (RealmString) map.get(realmGet$colorID);
                if (realmGet$sizeID == null) {
                    realmCartItemRealmProxyInterface.realmSet$colorID(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, realmGet$colorID, map));
                } else {
                    realmCartItemRealmProxyInterface.realmSet$colorID(realmGet$sizeID);
                }
            }
            return realmCartItem22;
        }
        realmCartItemRealmProxyInterface2 = table;
        realmCartItemRealmProxyInterface = realmCartItem;
        realmCartItemRealmProxyInterface2.realmSet$storeItemId(realmCartItemRealmProxyInterface.realmGet$storeItemId());
        realmGet$colorID = realmCartItemRealmProxyInterface.realmGet$sizeID();
        if (realmGet$colorID == null) {
            realmCartItemRealmProxyInterface2.realmSet$sizeID(null);
        } else {
            realmString = (RealmString) map.get(realmGet$colorID);
            if (realmString == null) {
                realmCartItemRealmProxyInterface2.realmSet$sizeID(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, realmGet$colorID, map));
            } else {
                realmCartItemRealmProxyInterface2.realmSet$sizeID(realmString);
            }
        }
        realmCartItem = realmCartItemRealmProxyInterface.realmGet$colorID();
        if (realmCartItem == null) {
            realmCartItemRealmProxyInterface2.realmSet$colorID(null);
        } else {
            realmGet$colorID = (RealmString) map.get(realmCartItem);
            if (realmGet$colorID == null) {
                realmCartItemRealmProxyInterface2.realmSet$colorID(RealmStringRealmProxy.copyOrUpdate$444f2c27(realm, realmCartItem, map));
            } else {
                realmCartItemRealmProxyInterface2.realmSet$colorID(realmGet$colorID);
            }
        }
        return table;
    }

    public static RealmCartItem createDetachedCopy$1ce98c26(RealmCartItem realmCartItem, int i, Map<RealmModel, CacheData<RealmModel>> map) {
        if (i >= 0) {
            if (realmCartItem != null) {
                RealmCartItem realmCartItem2;
                CacheData cacheData = (CacheData) map.get(realmCartItem);
                if (cacheData == null) {
                    realmCartItem2 = new RealmCartItem();
                    map.put(realmCartItem, new CacheData(0, realmCartItem2));
                } else if (cacheData.minDepth <= 0) {
                    return cacheData.object;
                } else {
                    realmCartItem2 = (RealmCartItem) cacheData.object;
                    cacheData.minDepth = 0;
                }
                RealmCartItemRealmProxyInterface realmCartItemRealmProxyInterface = realmCartItem2;
                RealmCartItemRealmProxyInterface realmCartItemRealmProxyInterface2 = realmCartItem;
                realmCartItemRealmProxyInterface.realmSet$id(realmCartItemRealmProxyInterface2.realmGet$id());
                realmCartItemRealmProxyInterface.realmSet$storeItemId(realmCartItemRealmProxyInterface2.realmGet$storeItemId());
                realmCartItemRealmProxyInterface.realmSet$sizeID(RealmStringRealmProxy.createDetachedCopy(realmCartItemRealmProxyInterface2.realmGet$sizeID(), 1, i, map));
                realmCartItemRealmProxyInterface.realmSet$colorID(RealmStringRealmProxy.createDetachedCopy(realmCartItemRealmProxyInterface2.realmGet$colorID(), 1, i, map));
                return realmCartItem2;
            }
        }
        return null;
    }

    public final String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("RealmCartItem = proxy[");
        stringBuilder.append("{id:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{storeItemId:");
        this.proxyState.getRealm$realm().checkIfValid();
        stringBuilder.append(this.proxyState.getRow$realm().getLong(this.columnInfo.storeItemIdIndex));
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{sizeID:");
        stringBuilder.append(realmGet$sizeID() != null ? "RealmString" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{colorID:");
        stringBuilder.append(realmGet$colorID() != null ? "RealmString" : "null");
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
        r7 = (io.realm.RealmCartItemRealmProxy) r7;
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmCartItemRealmProxy.equals(java.lang.Object):boolean");
    }
}
