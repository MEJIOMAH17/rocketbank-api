package io.realm;

import io.realm.internal.Table;
import java.util.Map;
import java.util.Set;

class OsRealmSchema extends RealmSchema {
    private final Map<String, RealmObjectSchema> dynamicClassToSchema;
    private long nativePtr;

    static native void nativeClose(long j);

    static native long nativeCreateFromList(long[] jArr);

    public final void close() {
    }

    public final Set<RealmObjectSchema> getAll() {
        throw new UnsupportedOperationException();
    }

    public final boolean contains(String str) {
        return this.dynamicClassToSchema.containsKey(str);
    }

    final Table getTable(Class<? extends RealmModel> cls) {
        throw new UnsupportedOperationException();
    }

    final Table getTable(String str) {
        throw new UnsupportedOperationException();
    }

    public final RealmObjectSchema get(String str) {
        if (!str.isEmpty()) {
            return !this.dynamicClassToSchema.containsKey(str) ? null : (RealmObjectSchema) this.dynamicClassToSchema.get(str);
        } else {
            throw new IllegalArgumentException("Null or empty class names are not allowed");
        }
    }

    public final RealmObjectSchema create(String str) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Null or empty class names are not allowed");
        }
        RealmObjectSchema osRealmObjectSchema = new OsRealmObjectSchema((RealmSchema) this, str);
        this.dynamicClassToSchema.put(str, osRealmObjectSchema);
        return osRealmObjectSchema;
    }

    final /* bridge */ /* synthetic */ RealmObjectSchema getSchemaForClass(Class cls) {
        throw new UnsupportedOperationException();
    }

    static /* synthetic */ void access$000(String str) {
        if (str != null) {
            if (str.isEmpty() == null) {
                return;
            }
        }
        throw new IllegalArgumentException("Null or empty class names are not allowed");
    }
}
