package io.realm;

import io.realm.internal.ColumnIndices;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.internal.Util;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

final class RealmCache {
    private static final List<WeakReference<RealmCache>> cachesList = new LinkedList();
    private static final Collection<RealmCache> leakedCaches = new ConcurrentLinkedQueue();
    private RealmConfiguration configuration;
    private final AtomicBoolean isLeaked = new AtomicBoolean(false);
    private final String realmPath;
    private final EnumMap<RealmCacheType, RefAndCount> refAndCountMap;
    private final ColumnIndices[] typedColumnIndicesArray = new ColumnIndices[4];

    interface Callback {
        void onResult(int i);
    }

    private enum RealmCacheType {
        TYPED_REALM,
        DYNAMIC_REALM;

        static RealmCacheType valueOf(Class<? extends BaseRealm> cls) {
            if (cls == Realm.class) {
                return TYPED_REALM;
            }
            if (cls == DynamicRealm.class) {
                return DYNAMIC_REALM;
            }
            throw new IllegalArgumentException("The type of Realm class must be Realm or DynamicRealm.");
        }
    }

    static class RefAndCount {
        private int globalCount;
        private final ThreadLocal<Integer> localCount;
        private final ThreadLocal<BaseRealm> localRealm;

        private RefAndCount() {
            this.localRealm = new ThreadLocal();
            this.localCount = new ThreadLocal();
            this.globalCount = 0;
        }
    }

    private RealmCache(String str) {
        this.realmPath = str;
        this.refAndCountMap = new EnumMap(RealmCacheType.class);
        for (Enum put : RealmCacheType.values()) {
            this.refAndCountMap.put(put, new RefAndCount());
        }
    }

    private static RealmCache getCache(String str, boolean z) {
        RealmCache realmCache;
        synchronized (cachesList) {
            Iterator it = cachesList.iterator();
            realmCache = null;
            while (it.hasNext()) {
                RealmCache realmCache2 = (RealmCache) ((WeakReference) it.next()).get();
                if (realmCache2 == null) {
                    it.remove();
                } else if (realmCache2.realmPath.equals(str)) {
                    realmCache = realmCache2;
                }
            }
            if (realmCache == null && z) {
                realmCache = new RealmCache(str);
                cachesList.add(new WeakReference(realmCache));
            }
        }
        return realmCache;
    }

    static <E extends BaseRealm> E createRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls) {
        return getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCache(realmConfiguration, cls);
    }

    private synchronized <E extends BaseRealm> E doCreateRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls) {
        RefAndCount refAndCount;
        refAndCount = (RefAndCount) this.refAndCountMap.get(RealmCacheType.valueOf((Class) cls));
        if (getTotalGlobalRefCount() == 0) {
            Util.isEmptyString$552c4dfd();
            ObjectServerFacade.getFacade$227a051f();
            Util.isEmptyString$552c4dfd();
            boolean realmExists = realmConfiguration.realmExists();
            SharedRealm instance;
            try {
                instance = SharedRealm.getInstance(realmConfiguration);
                if (!realmExists) {
                    ObjectServerFacade.getSyncFacadeIfPossible();
                }
                if (Table.primaryKeyTableNeedsMigration(instance)) {
                    instance.beginTransaction$1385ff();
                    if (Table.migratePrimaryKeyTableIfNeeded(instance)) {
                        instance.commitTransaction();
                    } else {
                        instance.cancelTransaction();
                    }
                }
                if (instance != null) {
                    instance.close();
                }
                this.configuration = realmConfiguration;
            } catch (Throwable th) {
                realmConfiguration = th;
                instance = null;
                if (instance != null) {
                    instance.close();
                }
                throw realmConfiguration;
            }
        } else if (!this.configuration.equals(realmConfiguration)) {
            if (Arrays.equals(this.configuration.getEncryptionKey(), realmConfiguration.getEncryptionKey()) == null) {
                throw new IllegalArgumentException("Wrong key used to decrypt Realm.");
            }
            StringBuilder stringBuilder = new StringBuilder("Configurations cannot be different if used to open the same file. \nCached configuration: \n");
            stringBuilder.append(this.configuration);
            stringBuilder.append("\n\nNew configuration: \n");
            stringBuilder.append(realmConfiguration);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        if (refAndCount.localRealm.get() == null) {
            if (cls == Realm.class) {
                realmConfiguration = Realm.createInstance(this);
            } else if (cls == DynamicRealm.class) {
                realmConfiguration = DynamicRealm.createInstance(this);
            } else {
                throw new IllegalArgumentException("The type of Realm class must be Realm or DynamicRealm.");
            }
            refAndCount.localRealm.set(realmConfiguration);
            refAndCount.localCount.set(Integer.valueOf(0));
            if (cls == Realm.class && refAndCount.globalCount == null) {
                storeColumnIndices(this.typedColumnIndicesArray, realmConfiguration.schema.getImmutableColumnIndicies());
            }
            refAndCount.globalCount = refAndCount.globalCount + 1;
        }
        refAndCount.localCount.set(Integer.valueOf(((Integer) refAndCount.localCount.get()).intValue() + 1));
        return (BaseRealm) refAndCount.localRealm.get();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    final synchronized void release(io.realm.BaseRealm r7) {
        /*
        r6 = this;
        monitor-enter(r6);
        r0 = r7.getPath();	 Catch:{ all -> 0x00a3 }
        r1 = r6.refAndCountMap;	 Catch:{ all -> 0x00a3 }
        r2 = r7.getClass();	 Catch:{ all -> 0x00a3 }
        r2 = io.realm.RealmCache.RealmCacheType.valueOf(r2);	 Catch:{ all -> 0x00a3 }
        r1 = r1.get(r2);	 Catch:{ all -> 0x00a3 }
        r1 = (io.realm.RealmCache.RefAndCount) r1;	 Catch:{ all -> 0x00a3 }
        r2 = r1.localCount;	 Catch:{ all -> 0x00a3 }
        r2 = r2.get();	 Catch:{ all -> 0x00a3 }
        r2 = (java.lang.Integer) r2;	 Catch:{ all -> 0x00a3 }
        r3 = 0;
        if (r2 != 0) goto L_0x0026;
    L_0x0022:
        r2 = java.lang.Integer.valueOf(r3);	 Catch:{ all -> 0x00a3 }
    L_0x0026:
        r4 = r2.intValue();	 Catch:{ all -> 0x00a3 }
        r5 = 1;
        if (r4 > 0) goto L_0x003b;
    L_0x002d:
        r7 = "%s has been closed already. refCount is %s";
        r1 = 2;
        r1 = new java.lang.Object[r1];	 Catch:{ all -> 0x00a3 }
        r1[r3] = r0;	 Catch:{ all -> 0x00a3 }
        r1[r5] = r2;	 Catch:{ all -> 0x00a3 }
        io.realm.log.RealmLog.warn(r7, r1);	 Catch:{ all -> 0x00a3 }
        monitor-exit(r6);
        return;
    L_0x003b:
        r2 = r2.intValue();	 Catch:{ all -> 0x00a3 }
        r2 = r2 - r5;
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ all -> 0x00a3 }
        r3 = r2.intValue();	 Catch:{ all -> 0x00a3 }
        if (r3 != 0) goto L_0x009a;
    L_0x004a:
        r2 = r1.localCount;	 Catch:{ all -> 0x00a3 }
        r3 = 0;
        r2.set(r3);	 Catch:{ all -> 0x00a3 }
        r2 = r1.localRealm;	 Catch:{ all -> 0x00a3 }
        r2.set(r3);	 Catch:{ all -> 0x00a3 }
        r1.globalCount = r1.globalCount - 1;	 Catch:{ all -> 0x00a3 }
        r2 = r1.globalCount;	 Catch:{ all -> 0x00a3 }
        if (r2 >= 0) goto L_0x007b;
    L_0x0062:
        r7 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x00a3 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a3 }
        r2 = "Global reference counter of Realm";
        r1.<init>(r2);	 Catch:{ all -> 0x00a3 }
        r1.append(r0);	 Catch:{ all -> 0x00a3 }
        r0 = " got corrupted.";
        r1.append(r0);	 Catch:{ all -> 0x00a3 }
        r0 = r1.toString();	 Catch:{ all -> 0x00a3 }
        r7.<init>(r0);	 Catch:{ all -> 0x00a3 }
        throw r7;	 Catch:{ all -> 0x00a3 }
    L_0x007b:
        r0 = r7 instanceof io.realm.Realm;	 Catch:{ all -> 0x00a3 }
        if (r0 == 0) goto L_0x008a;
    L_0x007f:
        r0 = r1.globalCount;	 Catch:{ all -> 0x00a3 }
        if (r0 != 0) goto L_0x008a;
    L_0x0085:
        r0 = r6.typedColumnIndicesArray;	 Catch:{ all -> 0x00a3 }
        java.util.Arrays.fill(r0, r3);	 Catch:{ all -> 0x00a3 }
    L_0x008a:
        r7.doClose();	 Catch:{ all -> 0x00a3 }
        r7 = r6.getTotalGlobalRefCount();	 Catch:{ all -> 0x00a3 }
        if (r7 != 0) goto L_0x00a1;
    L_0x0093:
        r6.configuration = r3;	 Catch:{ all -> 0x00a3 }
        io.realm.internal.ObjectServerFacade.getFacade$227a051f();	 Catch:{ all -> 0x00a3 }
        monitor-exit(r6);
        return;
    L_0x009a:
        r7 = r1.localCount;	 Catch:{ all -> 0x00a3 }
        r7.set(r2);	 Catch:{ all -> 0x00a3 }
    L_0x00a1:
        monitor-exit(r6);
        return;
    L_0x00a3:
        r7 = move-exception;
        monitor-exit(r6);
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmCache.release(io.realm.BaseRealm):void");
    }

    static void invokeWithGlobalRefCount(RealmConfiguration realmConfiguration, Callback callback) {
        synchronized (cachesList) {
            realmConfiguration = getCache(realmConfiguration.getPath(), false);
            if (realmConfiguration == null) {
                callback.onResult(0);
                return;
            }
            realmConfiguration.doInvokeWithGlobalRefCount(callback);
        }
    }

    private synchronized void doInvokeWithGlobalRefCount(Callback callback) {
        callback.onResult(getTotalGlobalRefCount());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    final synchronized void updateSchemaCache(io.realm.Realm r3) {
        /*
        r2 = this;
        monitor-enter(r2);
        r0 = r2.refAndCountMap;	 Catch:{ all -> 0x0024 }
        r1 = io.realm.RealmCache.RealmCacheType.TYPED_REALM;	 Catch:{ all -> 0x0024 }
        r0 = r0.get(r1);	 Catch:{ all -> 0x0024 }
        r0 = (io.realm.RealmCache.RefAndCount) r0;	 Catch:{ all -> 0x0024 }
        r0 = r0.localRealm;	 Catch:{ all -> 0x0024 }
        r0 = r0.get();	 Catch:{ all -> 0x0024 }
        if (r0 != 0) goto L_0x0017;
    L_0x0015:
        monitor-exit(r2);
        return;
    L_0x0017:
        r0 = r2.typedColumnIndicesArray;	 Catch:{ all -> 0x0024 }
        r3 = r3.updateSchemaCache(r0);	 Catch:{ all -> 0x0024 }
        if (r3 == 0) goto L_0x0022;
    L_0x001f:
        storeColumnIndices(r0, r3);	 Catch:{ all -> 0x0024 }
    L_0x0022:
        monitor-exit(r2);
        return;
    L_0x0024:
        r3 = move-exception;
        monitor-exit(r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmCache.updateSchemaCache(io.realm.Realm):void");
    }

    static ColumnIndices findColumnIndices(ColumnIndices[] columnIndicesArr, long j) {
        for (int length = columnIndicesArr.length - 1; length >= 0; length--) {
            ColumnIndices columnIndices = columnIndicesArr[length];
            if (columnIndices != null && columnIndices.getSchemaVersion() == j) {
                return columnIndices;
            }
        }
        return null;
    }

    private static int storeColumnIndices(ColumnIndices[] columnIndicesArr, ColumnIndices columnIndices) {
        int i = -1;
        long j = Long.MAX_VALUE;
        for (int length = columnIndicesArr.length - 1; length >= 0; length--) {
            if (columnIndicesArr[length] == null) {
                columnIndicesArr[length] = columnIndices;
                return length;
            }
            ColumnIndices columnIndices2 = columnIndicesArr[length];
            if (columnIndices2.getSchemaVersion() <= j) {
                j = columnIndices2.getSchemaVersion();
                i = length;
            }
        }
        columnIndicesArr[i] = columnIndices;
        return i;
    }

    public final RealmConfiguration getConfiguration() {
        return this.configuration;
    }

    public final ColumnIndices[] getTypedColumnIndicesArray() {
        return this.typedColumnIndicesArray;
    }

    private int getTotalGlobalRefCount() {
        int i = 0;
        for (RefAndCount access$800 : this.refAndCountMap.values()) {
            i += access$800.globalCount;
        }
        return i;
    }

    final void leak() {
        if (!this.isLeaked.getAndSet(true)) {
            leakedCaches.add(this);
        }
    }
}
