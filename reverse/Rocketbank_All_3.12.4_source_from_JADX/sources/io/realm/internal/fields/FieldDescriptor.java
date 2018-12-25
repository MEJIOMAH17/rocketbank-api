package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.ColumnInfo;
import io.realm.internal.Table;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public abstract class FieldDescriptor {
    public static final Set<RealmFieldType> ALL_LINK_FIELD_TYPES;
    public static final Set<RealmFieldType> LIST_LINK_FIELD_TYPE;
    public static final Set<RealmFieldType> NO_LINK_FIELD_TYPE = Collections.emptySet();
    public static final Set<RealmFieldType> OBJECT_LINK_FIELD_TYPE;
    public static final Set<RealmFieldType> SIMPLE_LINK_FIELD_TYPES;
    private long[] columnIndices;
    private final List<String> fields;
    private String finalColumnName;
    private RealmFieldType finalColumnType;
    private long[] nativeTablePointers;
    private final Set<RealmFieldType> validFinalColumnTypes;
    private final Set<RealmFieldType> validInternalColumnTypes;

    public interface SchemaProxy {
        ColumnInfo getColumnInfo(String str);

        long getNativeTablePtr(String str);

        boolean hasCache();
    }

    protected abstract void compileFieldDescription(List<String> list);

    static {
        Set hashSet = new HashSet(3);
        hashSet.add(RealmFieldType.OBJECT);
        hashSet.add(RealmFieldType.LIST);
        hashSet.add(RealmFieldType.LINKING_OBJECTS);
        ALL_LINK_FIELD_TYPES = Collections.unmodifiableSet(hashSet);
        hashSet = new HashSet(2);
        hashSet.add(RealmFieldType.OBJECT);
        hashSet.add(RealmFieldType.LIST);
        SIMPLE_LINK_FIELD_TYPES = Collections.unmodifiableSet(hashSet);
        hashSet = new HashSet(1);
        hashSet.add(RealmFieldType.LIST);
        LIST_LINK_FIELD_TYPE = Collections.unmodifiableSet(hashSet);
        hashSet = new HashSet(1);
        hashSet.add(RealmFieldType.OBJECT);
        OBJECT_LINK_FIELD_TYPE = Collections.unmodifiableSet(hashSet);
    }

    public static FieldDescriptor createStandardFieldDescriptor(SchemaProxy schemaProxy, Table table, String str, RealmFieldType... realmFieldTypeArr) {
        Set hashSet = new HashSet(Arrays.asList(realmFieldTypeArr));
        if (schemaProxy.hasCache() == null) {
            return new DynamicFieldDescriptor(table, str, SIMPLE_LINK_FIELD_TYPES, hashSet);
        }
        return new CachedFieldDescriptor(schemaProxy, table.getClassName(), str, ALL_LINK_FIELD_TYPES, hashSet);
    }

    protected FieldDescriptor(String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        if (str != null) {
            if (!str.equals("")) {
                if (str.endsWith(".")) {
                    throw new IllegalArgumentException("Invalid query: field name must not end with a period ('.')");
                }
                this.fields = Arrays.asList(str.split("\\."));
                if (this.fields.size() <= null) {
                    throw new IllegalArgumentException("Invalid query: Empty field descriptor");
                }
                this.validInternalColumnTypes = set;
                this.validFinalColumnTypes = set2;
                return;
            }
        }
        throw new IllegalArgumentException("Invalid query: field name is empty");
    }

    protected final void verifyInternalColumnType(String str, String str2, RealmFieldType realmFieldType) {
        verifyColumnType(str, str2, realmFieldType, this.validInternalColumnTypes);
    }

    protected final void setCompilationResults(String str, String str2, RealmFieldType realmFieldType, long[] jArr, long[] jArr2) {
        if (this.validFinalColumnTypes != null && this.validFinalColumnTypes.size() > 0) {
            verifyColumnType(str, str2, realmFieldType, this.validFinalColumnTypes);
        }
        this.finalColumnName = str2;
        this.finalColumnType = realmFieldType;
        this.columnIndices = jArr;
        this.nativeTablePointers = jArr2;
    }

    private static void verifyColumnType(String str, String str2, RealmFieldType realmFieldType, Set<RealmFieldType> set) {
        if (set.contains(realmFieldType) == null) {
            throw new IllegalArgumentException(String.format("Invalid query: field '%s' in table '%s' is of invalid type '%s'.", new Object[]{str2, str, realmFieldType.toString()}));
        }
    }

    public final long[] getColumnIndices() {
        if (this.finalColumnType == null) {
            compileFieldDescription(this.fields);
        }
        return Arrays.copyOf(this.columnIndices, this.columnIndices.length);
    }

    public final long[] getNativeTablePointers() {
        if (this.finalColumnType == null) {
            compileFieldDescription(this.fields);
        }
        return Arrays.copyOf(this.nativeTablePointers, this.nativeTablePointers.length);
    }
}
