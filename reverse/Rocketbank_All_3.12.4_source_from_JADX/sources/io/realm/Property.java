package io.realm;

class Property {
    private long nativePtr;

    private static native void nativeClose(long j);

    private static native long nativeCreateProperty(String str, int i, String str2);

    private static native long nativeCreateProperty(String str, int i, boolean z, boolean z2, boolean z3);

    Property(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3) {
        this.nativePtr = nativeCreateProperty(str, realmFieldType.getNativeValue(), z, z2, z3 ^ 1);
    }

    Property(String str, RealmFieldType realmFieldType, RealmObjectSchema realmObjectSchema) {
        this.nativePtr = nativeCreateProperty(str, realmFieldType.getNativeValue(), realmObjectSchema.getClassName());
    }

    protected final long getNativePtr() {
        return this.nativePtr;
    }

    public final void close() {
        if (this.nativePtr != 0) {
            nativeClose(this.nativePtr);
            this.nativePtr = 0;
        }
    }
}
