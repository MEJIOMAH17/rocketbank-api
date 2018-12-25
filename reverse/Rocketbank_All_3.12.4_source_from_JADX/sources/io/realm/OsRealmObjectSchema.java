package io.realm;

import io.realm.internal.Table;

class OsRealmObjectSchema extends RealmObjectSchema {
    private long nativePtr;

    static native void nativeAddProperty(long j, long j2);

    static native void nativeClose(long j);

    static native long nativeCreateRealmObjectSchema(String str);

    static native String nativeGetClassName(long j);

    OsRealmObjectSchema(RealmSchema realmSchema, String str) {
        this(realmSchema, nativeCreateRealmObjectSchema(str));
    }

    private OsRealmObjectSchema(RealmSchema realmSchema, long j) {
        super(realmSchema);
        this.nativePtr = j;
    }

    public final String getClassName() {
        return nativeGetClassName(this.nativePtr);
    }

    private OsRealmObjectSchema add(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3) {
        Property property = new Property(str, realmFieldType, z, z2, z3);
        try {
            nativeAddProperty(this.nativePtr, property.getNativePtr());
            return this;
        } finally {
            property.close();
        }
    }

    private OsRealmObjectSchema add(String str, RealmFieldType realmFieldType, RealmObjectSchema realmObjectSchema) {
        Property property = new Property(str, realmFieldType, realmObjectSchema);
        try {
            nativeAddProperty(this.nativePtr, property.getNativePtr());
            return this;
        } finally {
            property.close();
        }
    }

    final Table getTable() {
        throw new UnsupportedOperationException();
    }

    final long getAndCheckFieldIndex(String str) {
        throw new UnsupportedOperationException();
    }
}
