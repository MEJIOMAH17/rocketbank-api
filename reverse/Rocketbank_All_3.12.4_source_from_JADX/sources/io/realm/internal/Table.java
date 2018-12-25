package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmPrimaryKeyConstraintException;

public class Table implements NativeObject {
    private static final String TABLE_PREFIX = Util.getTablePrefix();
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private long cachedPrimaryKeyColumnIndex;
    private final NativeContext context;
    private final long nativePtr;
    private final SharedRealm sharedRealm;

    /* renamed from: io.realm.internal.Table$1 */
    static /* synthetic */ class C07521 {
        static final /* synthetic */ int[] $SwitchMap$io$realm$RealmFieldType = new int[RealmFieldType.values().length];

        static {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = io.realm.RealmFieldType.values();
            r0 = r0.length;
            r0 = new int[r0];
            $SwitchMap$io$realm$RealmFieldType = r0;
            r0 = $SwitchMap$io$realm$RealmFieldType;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = io.realm.RealmFieldType.BOOLEAN;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = 1;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r0 = $SwitchMap$io$realm$RealmFieldType;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = io.realm.RealmFieldType.INTEGER;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x001f }
            r2 = 2;	 Catch:{ NoSuchFieldError -> 0x001f }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            r0 = $SwitchMap$io$realm$RealmFieldType;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = io.realm.RealmFieldType.FLOAT;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x002a }
            r2 = 3;	 Catch:{ NoSuchFieldError -> 0x002a }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            r0 = $SwitchMap$io$realm$RealmFieldType;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r1 = io.realm.RealmFieldType.DOUBLE;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0035 }
            r2 = 4;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0035 }
        L_0x0035:
            r0 = $SwitchMap$io$realm$RealmFieldType;	 Catch:{ NoSuchFieldError -> 0x0040 }
            r1 = io.realm.RealmFieldType.STRING;	 Catch:{ NoSuchFieldError -> 0x0040 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0040 }
            r2 = 5;	 Catch:{ NoSuchFieldError -> 0x0040 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0040 }
        L_0x0040:
            r0 = $SwitchMap$io$realm$RealmFieldType;	 Catch:{ NoSuchFieldError -> 0x004b }
            r1 = io.realm.RealmFieldType.DATE;	 Catch:{ NoSuchFieldError -> 0x004b }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x004b }
            r2 = 6;	 Catch:{ NoSuchFieldError -> 0x004b }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x004b }
        L_0x004b:
            r0 = $SwitchMap$io$realm$RealmFieldType;	 Catch:{ NoSuchFieldError -> 0x0056 }
            r1 = io.realm.RealmFieldType.BINARY;	 Catch:{ NoSuchFieldError -> 0x0056 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0056 }
            r2 = 7;	 Catch:{ NoSuchFieldError -> 0x0056 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0056 }
        L_0x0056:
            r0 = $SwitchMap$io$realm$RealmFieldType;	 Catch:{ NoSuchFieldError -> 0x0062 }
            r1 = io.realm.RealmFieldType.UNSUPPORTED_MIXED;	 Catch:{ NoSuchFieldError -> 0x0062 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0062 }
            r2 = 8;	 Catch:{ NoSuchFieldError -> 0x0062 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0062 }
        L_0x0062:
            r0 = $SwitchMap$io$realm$RealmFieldType;	 Catch:{ NoSuchFieldError -> 0x006e }
            r1 = io.realm.RealmFieldType.UNSUPPORTED_TABLE;	 Catch:{ NoSuchFieldError -> 0x006e }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x006e }
            r2 = 9;	 Catch:{ NoSuchFieldError -> 0x006e }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x006e }
        L_0x006e:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.Table.1.<clinit>():void");
        }
    }

    enum PivotType {
        COUNT(0),
        SUM(1),
        AVG(2),
        MIN(3),
        MAX(4);
        
        final int value;

        private PivotType(int i) {
            this.value = i;
        }
    }

    private native long nativeAddColumn(long j, int i, String str, boolean z);

    private native long nativeAddColumnLink(long j, int i, String str, long j2);

    public static native long nativeAddEmptyRow(long j, long j2);

    private native void nativeAddSearchIndex(long j, long j2);

    private native void nativeClear(long j);

    private native void nativeConvertColumnToNotNullable(long j, long j2);

    private native void nativeConvertColumnToNullable(long j, long j2);

    private native long nativeCountDouble(long j, long j2, double d);

    private native long nativeCountFloat(long j, long j2, float f);

    private native long nativeCountLong(long j, long j2, long j3);

    private native long nativeCountString(long j, long j2, String str);

    private native long nativeFindFirstBool(long j, long j2, boolean z);

    private native long nativeFindFirstDouble(long j, long j2, double d);

    private native long nativeFindFirstFloat(long j, long j2, float f);

    public static native long nativeFindFirstInt(long j, long j2, long j3);

    public static native long nativeFindFirstNull(long j, long j2);

    public static native long nativeFindFirstString(long j, long j2, String str);

    private native long nativeFindFirstTimestamp(long j, long j2, long j3);

    private native boolean nativeGetBoolean(long j, long j2, long j3);

    private native byte[] nativeGetByteArray(long j, long j2, long j3);

    private native long nativeGetColumnCount(long j);

    private native long nativeGetColumnIndex(long j, String str);

    private native String nativeGetColumnName(long j, long j2);

    private native int nativeGetColumnType(long j, long j2);

    private native double nativeGetDouble(long j, long j2, long j3);

    private static native long nativeGetFinalizerPtr();

    private native float nativeGetFloat(long j, long j2, long j3);

    private native long nativeGetLink(long j, long j2, long j3);

    private native long nativeGetLinkTarget(long j, long j2);

    public static native long nativeGetLinkView(long j, long j2, long j3);

    private native long nativeGetLong(long j, long j2, long j3);

    private native String nativeGetName(long j);

    private native long nativeGetSortedViewMulti(long j, long[] jArr, boolean[] zArr);

    private native String nativeGetString(long j, long j2, long j3);

    private native long nativeGetTimestamp(long j, long j2, long j3);

    private native boolean nativeHasSameSchema(long j, long j2);

    private native boolean nativeHasSearchIndex(long j, long j2);

    private native boolean nativeIsColumnNullable(long j, long j2);

    private native boolean nativeIsNull(long j, long j2, long j3);

    private native boolean nativeIsNullLink(long j, long j2, long j3);

    private native boolean nativeIsValid(long j);

    private native long nativeLowerBoundInt(long j, long j2, long j3);

    private static native boolean nativeMigratePrimaryKeyTableIfNeeded(long j, long j2);

    private native void nativeMoveLastOver(long j, long j2);

    public static native void nativeNullifyLink(long j, long j2, long j3);

    private native void nativePivot(long j, long j2, long j3, int i, long j4);

    private static native boolean nativePrimaryKeyTableNeedsMigration(long j);

    private native void nativeRemoveColumn(long j, long j2);

    private native void nativeRemoveSearchIndex(long j, long j2);

    private native void nativeRenameColumn(long j, long j2, String str);

    public static native void nativeSetBoolean(long j, long j2, long j3, boolean z, boolean z2);

    public static native void nativeSetByteArray(long j, long j2, long j3, byte[] bArr, boolean z);

    public static native void nativeSetDouble(long j, long j2, long j3, double d, boolean z);

    public static native void nativeSetFloat(long j, long j2, long j3, float f, boolean z);

    public static native void nativeSetLink(long j, long j2, long j3, long j4, boolean z);

    public static native void nativeSetLong(long j, long j2, long j3, long j4, boolean z);

    public static native void nativeSetLongUnique(long j, long j2, long j3, long j4);

    public static native void nativeSetNull(long j, long j2, long j3, boolean z);

    public static native void nativeSetNullUnique(long j, long j2, long j3);

    private native long nativeSetPrimaryKey(long j, long j2, String str);

    public static native void nativeSetString(long j, long j2, long j3, String str, boolean z);

    public static native void nativeSetStringUnique(long j, long j2, long j3, String str);

    public static native void nativeSetTimestamp(long j, long j2, long j3, long j4, boolean z);

    private native long nativeSize(long j);

    private native String nativeToJson(long j);

    private native long nativeUpperBoundInt(long j, long j2, long j3);

    private native long nativeVersion(long j);

    private native long nativeWhere(long j);

    protected native long createNative();

    native long nativeGetRowPtr(long j, long j2);

    public Table() {
        this.cachedPrimaryKeyColumnIndex = -1;
        this.context = new NativeContext();
        this.nativePtr = createNative();
        if (this.nativePtr == 0) {
            throw new OutOfMemoryError("Out of native memory.");
        }
        this.sharedRealm = null;
        this.context.addReference(this);
    }

    Table(Table table, long j) {
        this(table.sharedRealm, j);
    }

    Table(SharedRealm sharedRealm, long j) {
        this.cachedPrimaryKeyColumnIndex = -1;
        this.context = sharedRealm.context;
        this.sharedRealm = sharedRealm;
        this.nativePtr = j;
        this.context.addReference(this);
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public final boolean isColumnNullable(long j) {
        return nativeIsColumnNullable(this.nativePtr, j);
    }

    public final long getColumnCount() {
        return nativeGetColumnCount(this.nativePtr);
    }

    public final String getColumnName(long j) {
        return nativeGetColumnName(this.nativePtr, j);
    }

    public final long getColumnIndex(String str) {
        if (str != null) {
            return nativeGetColumnIndex(this.nativePtr, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    public final RealmFieldType getColumnType(long j) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.nativePtr, j));
    }

    public final long getPrimaryKey() {
        if (this.cachedPrimaryKeyColumnIndex < 0) {
            if (this.cachedPrimaryKeyColumnIndex != -2) {
                Table primaryKeyTable = getPrimaryKeyTable();
                if (primaryKeyTable == null) {
                    return -2;
                }
                String nativeGetName = nativeGetName(this.nativePtr);
                if (nativeGetName == null) {
                    nativeGetName = null;
                } else if (nativeGetName.startsWith(TABLE_PREFIX)) {
                    nativeGetName = nativeGetName.substring(TABLE_PREFIX.length());
                }
                if (nativeGetName == null) {
                    throw new IllegalArgumentException("null is not supported");
                }
                long nativeFindFirstString = nativeFindFirstString(primaryKeyTable.nativePtr, 0, nativeGetName);
                if (nativeFindFirstString != -1) {
                    String string = UncheckedRow.getByRowIndex(primaryKeyTable.context, primaryKeyTable, nativeFindFirstString).getString(1);
                    if (string == null) {
                        throw new IllegalArgumentException("Column name can not be null.");
                    }
                    this.cachedPrimaryKeyColumnIndex = nativeGetColumnIndex(this.nativePtr, string);
                } else {
                    this.cachedPrimaryKeyColumnIndex = -2;
                }
                return this.cachedPrimaryKeyColumnIndex;
            }
        }
        return this.cachedPrimaryKeyColumnIndex;
    }

    public final boolean hasPrimaryKey() {
        return getPrimaryKey() >= 0;
    }

    public final Table getLinkTarget(long j) {
        return new Table(this.sharedRealm, nativeGetLinkTarget(this.nativePtr, j));
    }

    public final UncheckedRow getUncheckedRow(long j) {
        return UncheckedRow.getByRowIndex(this.context, this, j);
    }

    public final UncheckedRow getUncheckedRowByPointer(long j) {
        return UncheckedRow.getByRowPointer(this.context, this, j);
    }

    public final void setPrimaryKey(String str) {
        Table primaryKeyTable = getPrimaryKeyTable();
        if (primaryKeyTable == null) {
            throw new RealmException("Primary keys are only supported if Table is part of a Group");
        }
        this.cachedPrimaryKeyColumnIndex = nativeSetPrimaryKey(primaryKeyTable.nativePtr, this.nativePtr, str);
    }

    private Table getPrimaryKeyTable() {
        if (this.sharedRealm == null) {
            return null;
        }
        if (!this.sharedRealm.hasTable("pk")) {
            this.sharedRealm.createTable("pk");
        }
        Table table = this.sharedRealm.getTable("pk");
        if (table.nativeGetColumnCount(table.nativePtr) == 0) {
            boolean z = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? false : true;
            if (z) {
                throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
            }
            table.addSearchIndex(table.addColumn(RealmFieldType.STRING, "pk_table", false));
            table.addColumn(RealmFieldType.STRING, "pk_property", false);
        }
        return table;
    }

    public static boolean migratePrimaryKeyTableIfNeeded(SharedRealm sharedRealm) {
        if (sharedRealm != null) {
            if (sharedRealm.isInTransaction()) {
                if (!sharedRealm.hasTable("pk")) {
                    return null;
                }
                return nativeMigratePrimaryKeyTableIfNeeded(sharedRealm.getGroupNative(), sharedRealm.getTable("pk").nativePtr);
            }
        }
        throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
    }

    public static boolean primaryKeyTableNeedsMigration(SharedRealm sharedRealm) {
        if (sharedRealm.hasTable("pk")) {
            return nativePrimaryKeyTableNeedsMigration(sharedRealm.getTable("pk").nativePtr);
        }
        return null;
    }

    public final boolean hasSearchIndex(long j) {
        return nativeHasSearchIndex(this.nativePtr, j);
    }

    final boolean isImmutable() {
        return (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? false : true;
    }

    public final TableQuery where() {
        return new TableQuery(this.context, this, nativeWhere(this.nativePtr));
    }

    public final long findFirstLong(long j, long j2) {
        return nativeFindFirstInt(this.nativePtr, j, j2);
    }

    public final long findFirstString(long j, String str) {
        if (str != null) {
            return nativeFindFirstString(this.nativePtr, j, str);
        }
        throw new IllegalArgumentException("null is not supported");
    }

    public final long findFirstNull(long j) {
        return nativeFindFirstNull(this.nativePtr, j);
    }

    public final String getName() {
        return nativeGetName(this.nativePtr);
    }

    public final boolean hasSameSchema(Table table) {
        if (table != null) {
            return nativeHasSameSchema(this.nativePtr, table.nativePtr);
        }
        throw new IllegalArgumentException("The argument cannot be null");
    }

    public static boolean isModelTable(String str) {
        return str.startsWith(TABLE_PREFIX);
    }

    public static String getClassNameForTable(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith(TABLE_PREFIX)) {
            return str.substring(TABLE_PREFIX.length());
        }
        return str;
    }

    public static String getTableNameForClass(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith(TABLE_PREFIX)) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(TABLE_PREFIX);
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public final long addColumn(RealmFieldType realmFieldType, String str, boolean z) {
        if (str.length() <= 63) {
            return nativeAddColumn(this.nativePtr, realmFieldType.getNativeValue(), str, z);
        }
        throw new IllegalArgumentException("Column names are currently limited to max 63 characters.");
    }

    public final long addColumnLink(RealmFieldType realmFieldType, String str, Table table) {
        if (str.length() > 63) {
            throw new IllegalArgumentException("Column names are currently limited to max 63 characters.");
        }
        return nativeAddColumnLink(this.nativePtr, realmFieldType.getNativeValue(), str, table.nativePtr);
    }

    public final void clear() {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
        nativeClear(this.nativePtr);
    }

    final void checkStringValueIsLegal(long j, long j2, String str) {
        Object obj = (j < 0 || j != getPrimaryKey()) ? null : 1;
        if (obj == null) {
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException("null is not supported");
        }
        j = nativeFindFirstString(this.nativePtr, j, str);
        if (j != j2 && j != -1) {
            throw new RealmPrimaryKeyConstraintException("Value already exists: ".concat(String.valueOf(str)));
        }
    }

    final void checkIntValueIsLegal(long j, long j2, long j3) {
        if ((j == getPrimaryKey() ? 1 : null) != null) {
            j = nativeFindFirstInt(this.nativePtr, j, j3);
            if (j != j2 && j != -1) {
                throw new RealmPrimaryKeyConstraintException("Value already exists: ".concat(String.valueOf(Long.valueOf(j3))));
            }
        }
    }

    final void checkDuplicatedNullForPrimaryKeyValue(long j, long j2) {
        if ((j == getPrimaryKey() ? 1 : null) != null) {
            int i = C07521.$SwitchMap$io$realm$RealmFieldType[RealmFieldType.fromNativeValue(nativeGetColumnType(this.nativePtr, j)).ordinal()];
            if (i == 2 || i == 5) {
                j = nativeFindFirstNull(this.nativePtr, j);
                if (j != j2 && j != -1) {
                    throw new RealmPrimaryKeyConstraintException("Value already exists: ".concat(String.valueOf("null")));
                }
            }
        }
    }

    public final void setLong$398a59fb(long j, long j2, long j3) {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
        checkIntValueIsLegal(j, j2, j3);
        nativeSetLong(this.nativePtr, j, j2, j3, true);
    }

    public final void setBoolean$3983140b(long j, long j2, boolean z) {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
        nativeSetBoolean(this.nativePtr, j, j2, z, true);
    }

    public final void setFloat$398c2b77(long j, long j2, float f) {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
        nativeSetFloat(this.nativePtr, j, j2, f, true);
    }

    public final void setDouble$398d1435(long j, long j2, double d) {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
        nativeSetDouble(this.nativePtr, j, j2, d, true);
    }

    public final void setString$5ffaa975(long j, long j2, String str) {
        Object obj = (this.sharedRealm == null || r0.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        } else if (str == null) {
            checkDuplicatedNullForPrimaryKeyValue(j, j2);
            nativeSetNull(r0.nativePtr, j, j2, true);
        } else {
            checkStringValueIsLegal(j, j2, str);
            nativeSetString(r0.nativePtr, j, j2, str, true);
        }
    }

    public final void setBinaryByteArray$9247418(long j, long j2, byte[] bArr) {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
        nativeSetByteArray(this.nativePtr, j, j2, bArr, true);
    }

    public final void setLink$398a59fb(long j, long j2, long j3) {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
        nativeSetLink(this.nativePtr, j, j2, j3, true);
    }

    public final void setNull$48779ebf(long j, long j2) {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
        checkDuplicatedNullForPrimaryKeyValue(j, j2);
        nativeSetNull(this.nativePtr, j, j2, true);
    }

    public final void addSearchIndex(long j) {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
        nativeAddSearchIndex(this.nativePtr, j);
    }

    final void checkImmutable() {
        Object obj = (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? null : 1;
        if (obj != null) {
            throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
        }
    }

    public final String getClassName() {
        String nativeGetName = nativeGetName(this.nativePtr);
        if (nativeGetName == null) {
            return null;
        }
        if (nativeGetName.startsWith(TABLE_PREFIX)) {
            return nativeGetName.substring(TABLE_PREFIX.length());
        }
        return nativeGetName;
    }

    public String toString() {
        long nativeGetColumnCount = nativeGetColumnCount(this.nativePtr);
        String nativeGetName = nativeGetName(this.nativePtr);
        StringBuilder stringBuilder = new StringBuilder("The Table ");
        if (!(nativeGetName == null || nativeGetName.isEmpty())) {
            stringBuilder.append(nativeGetName(this.nativePtr));
            stringBuilder.append(" ");
        }
        int i = 0;
        if ((getPrimaryKey() >= 0 ? 1 : 0) != 0) {
            nativeGetName = nativeGetColumnName(this.nativePtr, getPrimaryKey());
            stringBuilder.append("has '");
            stringBuilder.append(nativeGetName);
            stringBuilder.append("' field as a PrimaryKey, and ");
        }
        stringBuilder.append("contains ");
        stringBuilder.append(nativeGetColumnCount);
        stringBuilder.append(" columns: ");
        while (true) {
            long j = (long) i;
            if (j < nativeGetColumnCount) {
                if (i != 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(nativeGetColumnName(this.nativePtr, j));
                i++;
            } else {
                stringBuilder.append(".");
                stringBuilder.append(" And ");
                stringBuilder.append(nativeSize(this.nativePtr));
                stringBuilder.append(" rows.");
                return stringBuilder.toString();
            }
        }
    }
}
