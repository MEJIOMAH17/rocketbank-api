package io.realm.internal;

import com.github.barteksc.pdfviewer.C1156R;
import io.realm.RealmConfiguration;
import io.realm.internal.Collection.Iterator;
import io.realm.internal.android.AndroidRealmNotifier;
import java.io.Closeable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class SharedRealm implements NativeObject, Closeable {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private static volatile File temporaryDirectory;
    public final Capabilities capabilities;
    public final List<WeakReference<Collection>> collections = new CopyOnWriteArrayList();
    private final RealmConfiguration configuration;
    final NativeContext context;
    public final List<WeakReference<Iterator>> iterators = new ArrayList();
    private long lastSchemaVersion;
    private final long nativePtr;
    private final List<WeakReference<PendingRow>> pendingRows = new CopyOnWriteArrayList();
    public final RealmNotifier realmNotifier;
    private final SchemaVersionListener schemaChangeListener;

    public enum Durability {
        FULL(0),
        MEM_ONLY(1);
        
        final int value;

        private Durability(int i) {
            this.value = i;
        }
    }

    public enum SchemaMode {
        SCHEMA_MODE_AUTOMATIC((byte) 0),
        SCHEMA_MODE_READONLY((byte) 1),
        SCHEMA_MODE_RESET_FILE((byte) 2),
        SCHEMA_MODE_ADDITIVE((byte) 3),
        SCHEMA_MODE_MANUAL((byte) 4);
        
        final byte value;

        private SchemaMode(byte b) {
            this.value = b;
        }

        public final byte getNativeValue() {
            return this.value;
        }
    }

    public interface SchemaVersionListener {
        void onSchemaVersionChanged$1349ef();
    }

    private static native void nativeBeginTransaction(long j);

    private static native void nativeCancelTransaction(long j);

    private static native void nativeCloseConfig(long j);

    private static native void nativeCloseSharedRealm(long j);

    private static native void nativeCommitTransaction(long j);

    private static native boolean nativeCompact(long j);

    private static native long nativeCreateConfig(String str, byte[] bArr, byte b, boolean z, boolean z2, long j, boolean z3, boolean z4, String str2, String str3, String str4, String str5, boolean z5, String str6);

    private static native long nativeCreateTable(long j, String str);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetSharedRealm(long j, RealmNotifier realmNotifier);

    private static native long nativeGetTable(long j, String str);

    private static native String nativeGetTableName(long j, int i);

    private static native long nativeGetVersion(long j);

    private static native long[] nativeGetVersionID(long j);

    private static native boolean nativeHasTable(long j, String str);

    private static native void nativeInit(String str);

    private static native boolean nativeIsAutoRefresh(long j);

    private static native boolean nativeIsClosed(long j);

    private static native boolean nativeIsEmpty(long j);

    private static native boolean nativeIsInTransaction(long j);

    private static native long nativeReadGroup(long j);

    private static native void nativeRefresh(long j);

    private static native void nativeRemoveTable(long j, String str);

    private static native void nativeRenameTable(long j, String str, String str2);

    private static native boolean nativeRequiresMigration(long j, long j2);

    private static native void nativeSetAutoRefresh(long j, boolean z);

    private static native void nativeSetVersion(long j, long j2);

    private static native long nativeSize(long j);

    private static native void nativeStopWaitForChange(long j);

    private static native void nativeUpdateSchema(long j, long j2, long j3);

    private static native boolean nativeWaitForChange(long j);

    private static native void nativeWriteCopy(long j, String str, byte[] bArr);

    public static void initialize(File file) {
        if (temporaryDirectory == null) {
            String absolutePath = file.getAbsolutePath();
            if (file.isDirectory() || file.mkdirs() || file.isDirectory()) {
                if (!absolutePath.endsWith("/")) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(absolutePath);
                    stringBuilder.append("/");
                    absolutePath = stringBuilder.toString();
                }
                nativeInit(absolutePath);
                temporaryDirectory = file;
                return;
            }
            throw new IOException("failed to create temporary directory: ".concat(String.valueOf(absolutePath)));
        }
    }

    private SharedRealm(long j, RealmConfiguration realmConfiguration, SchemaVersionListener schemaVersionListener) {
        Capabilities c1156r = new C1156R();
        RealmNotifier androidRealmNotifier = new AndroidRealmNotifier(this, c1156r);
        this.nativePtr = nativeGetSharedRealm(j, androidRealmNotifier);
        this.configuration = realmConfiguration;
        this.capabilities = c1156r;
        this.realmNotifier = androidRealmNotifier;
        this.schemaChangeListener = schemaVersionListener;
        this.context = new NativeContext();
        this.context.addReference(this);
        if (schemaVersionListener == null) {
            j = -1;
        } else {
            j = nativeGetVersion(this.nativePtr);
        }
        this.lastSchemaVersion = j;
        nativeSetAutoRefresh(this.nativePtr, c1156r.canDeliverNotification());
    }

    public static SharedRealm getInstance(RealmConfiguration realmConfiguration) {
        return getInstance(realmConfiguration, null, false);
    }

    public static SharedRealm getInstance(RealmConfiguration realmConfiguration, SchemaVersionListener schemaVersionListener, boolean z) {
        ObjectServerFacade.getSyncFacadeIfPossible();
        Object[] userAndServerUrl$4cdbe33d = ObjectServerFacade.getUserAndServerUrl$4cdbe33d();
        String str = (String) userAndServerUrl$4cdbe33d[1];
        long nativeCreateConfig = nativeCreateConfig(realmConfiguration.getPath(), realmConfiguration.getEncryptionKey(), (str != null ? SchemaMode.SCHEMA_MODE_ADDITIVE : SchemaMode.SCHEMA_MODE_MANUAL).getNativeValue(), realmConfiguration.getDurability() == Durability.MEM_ONLY, false, realmConfiguration.getSchemaVersion(), true, z, str, (String) userAndServerUrl$4cdbe33d[2], (String) userAndServerUrl$4cdbe33d[0], (String) userAndServerUrl$4cdbe33d[3], Boolean.TRUE.equals(userAndServerUrl$4cdbe33d[4]), (String) userAndServerUrl$4cdbe33d[5]);
        try {
            ObjectServerFacade.getSyncFacadeIfPossible();
            SharedRealm sharedRealm = new SharedRealm(nativeCreateConfig, realmConfiguration, schemaVersionListener);
            nativeCloseConfig(nativeCreateConfig);
            return sharedRealm;
        } catch (Throwable th) {
            Throwable th2 = th;
            nativeCloseConfig(nativeCreateConfig);
        }
    }

    public final void commitTransaction() {
        nativeCommitTransaction(this.nativePtr);
    }

    public final void cancelTransaction() {
        nativeCancelTransaction(this.nativePtr);
    }

    public final boolean isInTransaction() {
        return nativeIsInTransaction(this.nativePtr);
    }

    public final void setSchemaVersion(long j) {
        nativeSetVersion(this.nativePtr, j);
    }

    public final long getSchemaVersion() {
        return nativeGetVersion(this.nativePtr);
    }

    final long getGroupNative() {
        return nativeReadGroup(this.nativePtr);
    }

    public final boolean hasTable(String str) {
        return nativeHasTable(this.nativePtr, str);
    }

    public final Table getTable(String str) {
        return new Table(this, nativeGetTable(this.nativePtr, str));
    }

    public final Table createTable(String str) {
        return new Table(this, nativeCreateTable(this.nativePtr, str));
    }

    public final String getTableName(int i) {
        return nativeGetTableName(this.nativePtr, i);
    }

    public final long size() {
        return nativeSize(this.nativePtr);
    }

    public final String getPath() {
        return this.configuration.getPath();
    }

    public final boolean isEmpty() {
        return nativeIsEmpty(this.nativePtr);
    }

    public final boolean isClosed() {
        return nativeIsClosed(this.nativePtr);
    }

    public final void close() {
        this.realmNotifier.close();
        synchronized (this.context) {
            nativeCloseSharedRealm(this.nativePtr);
        }
    }

    public final long getNativePtr() {
        return this.nativePtr;
    }

    public final long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public final void beginTransaction$1385ff() {
        for (WeakReference weakReference : this.iterators) {
            Iterator iterator = (Iterator) weakReference.get();
            if (iterator != null) {
                iterator.iteratorCollection = iterator.iteratorCollection.createSnapshot();
            }
        }
        this.iterators.clear();
        for (WeakReference weakReference2 : this.pendingRows) {
            if (((PendingRow) weakReference2.get()) != null) {
                throw new IllegalStateException("The query has been executed. This 'PendingRow' is not valid anymore.");
            }
        }
        this.pendingRows.clear();
        nativeBeginTransaction(this.nativePtr);
        if (this.schemaChangeListener != null) {
            long j = this.lastSchemaVersion;
            long nativeGetVersion = nativeGetVersion(this.nativePtr);
            if (nativeGetVersion != j) {
                this.lastSchemaVersion = nativeGetVersion;
                this.schemaChangeListener.onSchemaVersionChanged$1349ef();
            }
        }
    }
}
