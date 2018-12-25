package io.realm;

import android.content.Context;
import io.realm.internal.ColumnInfo;
import io.realm.internal.InvalidRow;
import io.realm.internal.Row;
import io.realm.internal.SharedRealm;
import io.realm.internal.SharedRealm.SchemaVersionListener;
import io.realm.internal.UncheckedRow;
import io.realm.internal.Util;
import io.realm.internal.async.RealmThreadPoolExecutor;
import io.realm.log.RealmLog;
import java.io.Closeable;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class BaseRealm implements Closeable {
    static volatile Context applicationContext;
    static final RealmThreadPoolExecutor asyncTaskExecutor = RealmThreadPoolExecutor.newDefaultExecutor();
    public static final ThreadLocalRealmObjectContext objectContext = new ThreadLocalRealmObjectContext();
    protected final RealmConfiguration configuration;
    private RealmCache realmCache;
    protected final RealmSchema schema;
    protected SharedRealm sharedRealm;
    final long threadId;

    public static final class RealmObjectContext {
        private boolean acceptDefaultValue;
        private ColumnInfo columnInfo;
        private List<String> excludeFields;
        private BaseRealm realm;
        private Row row;

        public final void set(BaseRealm baseRealm, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
            this.realm = baseRealm;
            this.row = row;
            this.columnInfo = columnInfo;
            this.acceptDefaultValue = z;
            this.excludeFields = list;
        }

        final BaseRealm getRealm() {
            return this.realm;
        }

        public final Row getRow() {
            return this.row;
        }

        public final ColumnInfo getColumnInfo() {
            return this.columnInfo;
        }

        public final boolean getAcceptDefaultValue() {
            return this.acceptDefaultValue;
        }

        public final List<String> getExcludeFields() {
            return this.excludeFields;
        }

        public final void clear() {
            this.realm = null;
            this.row = null;
            this.columnInfo = null;
            this.acceptDefaultValue = false;
            this.excludeFields = null;
        }
    }

    static final class ThreadLocalRealmObjectContext extends ThreadLocal<RealmObjectContext> {
        ThreadLocalRealmObjectContext() {
        }

        protected final /* bridge */ /* synthetic */ Object initialValue() {
            return new RealmObjectContext();
        }
    }

    /* renamed from: io.realm.BaseRealm$1 */
    class C12861 implements SchemaVersionListener {
        C12861() {
        }

        public final void onSchemaVersionChanged$1349ef() {
            if (BaseRealm.this.realmCache != null) {
                BaseRealm.this.realmCache.updateSchemaCache((Realm) BaseRealm.this);
            }
        }
    }

    /* renamed from: io.realm.BaseRealm$3 */
    class C12873 implements Callback {
        final /* synthetic */ RealmConfiguration val$configuration;
        final /* synthetic */ AtomicBoolean val$realmDeleted;

        C12873(RealmConfiguration realmConfiguration, AtomicBoolean atomicBoolean) {
            this.val$configuration = realmConfiguration;
            this.val$realmDeleted = atomicBoolean;
        }

        public final void onResult(int i) {
            if (i != 0) {
                StringBuilder stringBuilder = new StringBuilder("It's not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: ");
                stringBuilder.append(this.val$configuration.getPath());
                throw new IllegalStateException(stringBuilder.toString());
            }
            this.val$realmDeleted.set(Util.deleteRealm(this.val$configuration.getPath(), this.val$configuration.getRealmDirectory(), this.val$configuration.getRealmFileName()));
        }
    }

    BaseRealm(RealmCache realmCache) {
        this(realmCache.getConfiguration());
        this.realmCache = realmCache;
    }

    private BaseRealm(RealmConfiguration realmConfiguration) {
        this.threadId = Thread.currentThread().getId();
        this.configuration = realmConfiguration;
        SchemaVersionListener schemaVersionListener = null;
        this.realmCache = null;
        if (this instanceof Realm) {
            schemaVersionListener = new C12861();
        }
        this.sharedRealm = SharedRealm.getInstance(realmConfiguration, schemaVersionListener, true);
        this.schema = new StandardRealmSchema(this);
    }

    public boolean isInTransaction() {
        checkIfValid();
        return this.sharedRealm.isInTransaction();
    }

    final void beginTransaction$1385ff() {
        checkIfValid();
        this.sharedRealm.beginTransaction$1385ff();
    }

    public void commitTransaction() {
        checkIfValid();
        this.sharedRealm.commitTransaction();
    }

    public void cancelTransaction() {
        checkIfValid();
        this.sharedRealm.cancelTransaction();
    }

    protected final void checkIfValid() {
        if (this.sharedRealm != null) {
            if (!this.sharedRealm.isClosed()) {
                if (this.threadId != Thread.currentThread().getId()) {
                    throw new IllegalStateException("Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.");
                }
                return;
            }
        }
        throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
    }

    public String getPath() {
        return this.configuration.getPath();
    }

    public RealmConfiguration getConfiguration() {
        return this.configuration;
    }

    public long getVersion() {
        return this.sharedRealm.getSchemaVersion();
    }

    public void close() {
        if (this.threadId != Thread.currentThread().getId()) {
            throw new IllegalStateException("Realm access from incorrect thread. Realm instance can only be closed on the thread it was created.");
        } else if (this.realmCache != null) {
            this.realmCache.release(this);
        } else {
            this.realmCache = null;
            if (this.sharedRealm != null) {
                this.sharedRealm.close();
                this.sharedRealm = null;
            }
            this.schema.close();
        }
    }

    final void doClose() {
        this.realmCache = null;
        if (this.sharedRealm != null) {
            this.sharedRealm.close();
            this.sharedRealm = null;
        }
        this.schema.close();
    }

    public boolean isEmpty() {
        checkIfValid();
        return this.sharedRealm.isEmpty();
    }

    final void setVersion(long j) {
        this.sharedRealm.setSchemaVersion(j);
    }

    public RealmSchema getSchema() {
        return this.schema;
    }

    final <E extends RealmModel> E get$2592edba(Class<E> cls, UncheckedRow uncheckedRow) {
        return this.configuration.getSchemaMediator().newInstance(cls, this, uncheckedRow, this.schema.getColumnInfo((Class) cls), false, Collections.emptyList());
    }

    final <E extends RealmModel> E get$1557dc49(Class<E> cls, long j, List<String> list) {
        return this.configuration.getSchemaMediator().newInstance(cls, this, this.schema.getTable((Class) cls).getUncheckedRow(j), this.schema.getColumnInfo((Class) cls), false, list);
    }

    final <E extends RealmModel> E get$5a829220(Class<E> cls, long j) {
        return this.configuration.getSchemaMediator().newInstance(cls, this, j != -1 ? this.schema.getTable((Class) cls).getUncheckedRow(j) : InvalidRow.INSTANCE, this.schema.getColumnInfo((Class) cls), false, Collections.emptyList());
    }

    public void deleteAll() {
        checkIfValid();
        for (RealmObjectSchema className : this.schema.getAll()) {
            this.schema.getTable(className.getClassName()).clear();
        }
    }

    protected void finalize() throws Throwable {
        if (!(this.sharedRealm == null || this.sharedRealm.isClosed())) {
            RealmLog.warn("Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory.", this.configuration.getPath());
            if (this.realmCache != null) {
                this.realmCache.leak();
            }
        }
        super.finalize();
    }

    final SharedRealm getSharedRealm() {
        return this.sharedRealm;
    }

    public void beginTransaction() {
        checkIfValid();
        this.sharedRealm.beginTransaction$1385ff();
    }
}
