package io.realm.internal;

import android.support.v4.content.Loader.OnLoadCompleteListener;
import io.realm.RealmFieldType;
import io.realm.exceptions.RealmException;
import io.realm.internal.ObserverPairList.ObserverPair;

@KeepMember
public class OsObject implements NativeObject {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final long nativePtr;

    static class Callback implements io.realm.internal.ObserverPairList.Callback<Object> {
        private final String[] changedFields;

        Callback(String[] strArr) {
            this.changedFields = strArr;
        }

        public final /* bridge */ /* synthetic */ void onCalled(ObserverPair observerPair, Object obj) {
            observerPair = this.changedFields == null ? true : null;
            OsObjectChangeSet osObjectChangeSet = new OsObjectChangeSet(observerPair != null ? new String[0] : this.changedFields, observerPair);
        }
    }

    static class OsObjectChangeSet implements OnLoadCompleteListener {
        final String[] changedFields;
        final boolean deleted;

        OsObjectChangeSet(String[] strArr, boolean z) {
            this.changedFields = strArr;
            this.deleted = z;
        }
    }

    private static native long nativeCreate(long j, long j2);

    private static native long nativeCreateNewObject(long j, long j2);

    private static native long nativeCreateNewObjectWithLongPrimaryKey(long j, long j2, long j3, long j4, boolean z);

    private static native long nativeCreateNewObjectWithStringPrimaryKey(long j, long j2, long j3, String str);

    private static native long nativeCreateRow(long j, long j2);

    private static native long nativeCreateRowWithLongPrimaryKey(long j, long j2, long j3, long j4, boolean z);

    private static native long nativeCreateRowWithStringPrimaryKey(long j, long j2, long j3, String str);

    private static native long nativeGetFinalizerPtr();

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    public long getNativePtr() {
        return this.nativePtr;
    }

    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public static UncheckedRow create(SharedRealm sharedRealm, Table table) {
        return new UncheckedRow(sharedRealm.context, table, nativeCreateNewObject(sharedRealm.getNativePtr(), table.getNativePtr()));
    }

    @KeepMember
    private void notifyChangeListeners(String[] strArr) {
        io.realm.internal.ObserverPairList.Callback callback = new Callback(strArr);
        strArr = null;
        strArr.foreach(callback);
    }

    public static UncheckedRow createWithPrimaryKey(SharedRealm sharedRealm, Table table, Object obj) {
        long primaryKey = table.getPrimaryKey();
        if (primaryKey == -2) {
            obj = new StringBuilder();
            obj.append(table.getName());
            obj.append(" has no primary key defined.");
            throw new IllegalStateException(obj.toString());
        }
        RealmFieldType columnType = table.getColumnType(primaryKey);
        if (columnType == RealmFieldType.STRING) {
            if (obj == null || (obj instanceof String)) {
                return new UncheckedRow(sharedRealm.context, table, nativeCreateNewObjectWithStringPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), primaryKey, (String) obj));
            }
            throw new IllegalArgumentException("Primary key value is not a String: ".concat(String.valueOf(obj)));
        } else if (columnType == RealmFieldType.INTEGER) {
            long j;
            if (obj == null) {
                j = 0;
            } else {
                j = Long.parseLong(obj.toString());
            }
            return new UncheckedRow(sharedRealm.context, table, nativeCreateNewObjectWithLongPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), primaryKey, j, obj == null ? true : null));
        } else {
            throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: ".concat(String.valueOf(columnType)));
        }
    }
}
