package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.Table;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

final class StandardRealmObjectSchema extends RealmObjectSchema {
    private static final Map<Class<?>, FieldMetaData> SUPPORTED_LINKED_FIELDS;
    private static final Map<Class<?>, FieldMetaData> SUPPORTED_SIMPLE_FIELDS;
    private final ColumnInfo columnInfo;
    private final BaseRealm realm;
    private final Table table;

    static final class FieldMetaData {
        final boolean defaultNullable;
        final RealmFieldType realmType;

        FieldMetaData(RealmFieldType realmFieldType, boolean z) {
            this.realmType = realmFieldType;
            this.defaultNullable = z;
        }
    }

    static final class DynamicColumnIndices extends ColumnInfo {
        private final Table table;

        DynamicColumnIndices(Table table) {
            super(null, false);
            this.table = table;
        }

        public final long getColumnIndex(String str) {
            return this.table.getColumnIndex(str);
        }

        public final RealmFieldType getColumnType(String str) {
            throw new UnsupportedOperationException("DynamicColumnIndices do not support 'getColumnType'");
        }

        public final String getLinkedTable(String str) {
            throw new UnsupportedOperationException("DynamicColumnIndices do not support 'getLinkedTable'");
        }

        public final void copyFrom(ColumnInfo columnInfo) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot be copied");
        }

        protected final ColumnInfo copy(boolean z) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot be copied");
        }

        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot copy");
        }
    }

    static {
        Map hashMap = new HashMap();
        hashMap.put(String.class, new FieldMetaData(RealmFieldType.STRING, true));
        hashMap.put(Short.TYPE, new FieldMetaData(RealmFieldType.INTEGER, false));
        hashMap.put(Short.class, new FieldMetaData(RealmFieldType.INTEGER, true));
        hashMap.put(Integer.TYPE, new FieldMetaData(RealmFieldType.INTEGER, false));
        hashMap.put(Integer.class, new FieldMetaData(RealmFieldType.INTEGER, true));
        hashMap.put(Long.TYPE, new FieldMetaData(RealmFieldType.INTEGER, false));
        hashMap.put(Long.class, new FieldMetaData(RealmFieldType.INTEGER, true));
        hashMap.put(Float.TYPE, new FieldMetaData(RealmFieldType.FLOAT, false));
        hashMap.put(Float.class, new FieldMetaData(RealmFieldType.FLOAT, true));
        hashMap.put(Double.TYPE, new FieldMetaData(RealmFieldType.DOUBLE, false));
        hashMap.put(Double.class, new FieldMetaData(RealmFieldType.DOUBLE, true));
        hashMap.put(Boolean.TYPE, new FieldMetaData(RealmFieldType.BOOLEAN, false));
        hashMap.put(Boolean.class, new FieldMetaData(RealmFieldType.BOOLEAN, true));
        hashMap.put(Byte.TYPE, new FieldMetaData(RealmFieldType.INTEGER, false));
        hashMap.put(Byte.class, new FieldMetaData(RealmFieldType.INTEGER, true));
        hashMap.put(byte[].class, new FieldMetaData(RealmFieldType.BINARY, true));
        hashMap.put(Date.class, new FieldMetaData(RealmFieldType.DATE, true));
        SUPPORTED_SIMPLE_FIELDS = Collections.unmodifiableMap(hashMap);
        hashMap = new HashMap();
        hashMap.put(RealmObject.class, new FieldMetaData(RealmFieldType.OBJECT, false));
        hashMap.put(RealmList.class, new FieldMetaData(RealmFieldType.LIST, false));
        SUPPORTED_LINKED_FIELDS = Collections.unmodifiableMap(hashMap);
    }

    StandardRealmObjectSchema(BaseRealm baseRealm, StandardRealmSchema standardRealmSchema, Table table) {
        this(baseRealm, standardRealmSchema, table, new DynamicColumnIndices(table));
    }

    StandardRealmObjectSchema(BaseRealm baseRealm, StandardRealmSchema standardRealmSchema, Table table, ColumnInfo columnInfo) {
        super(standardRealmSchema);
        this.realm = baseRealm;
        this.table = table;
        this.columnInfo = columnInfo;
    }

    public final String getClassName() {
        return this.table.getClassName();
    }

    final Table getTable() {
        return this.table;
    }

    final long getAndCheckFieldIndex(String str) {
        long columnIndex = this.columnInfo.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        throw new IllegalArgumentException("Field does not exist: ".concat(String.valueOf(str)));
    }

    final /* bridge */ /* synthetic */ RealmObjectSchema add(String str, RealmFieldType realmFieldType, RealmObjectSchema realmObjectSchema) {
        this.table.addColumnLink(realmFieldType, str, this.realm.getSharedRealm().getTable(Table.getTableNameForClass(realmObjectSchema.getClassName())));
        return this;
    }

    final /* bridge */ /* synthetic */ RealmObjectSchema add(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3) {
        long addColumn = this.table.addColumn(realmFieldType, str, z3 ^ 1);
        if (z2) {
            this.table.addSearchIndex(addColumn);
        }
        if (z) {
            this.table.setPrimaryKey(str);
        }
        return this;
    }
}
