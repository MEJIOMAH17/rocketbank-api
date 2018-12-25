package io.realm;

import io.realm.BaseRealm.C12873;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.ColumnIndices;
import io.realm.internal.OsObject;
import io.realm.internal.Table;
import io.realm.internal.util.Pair;
import io.realm.log.RealmLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class Realm extends BaseRealm {
    private static RealmConfiguration defaultConfiguration;

    public interface Transaction {
        void execute(Realm realm);
    }

    public final /* bridge */ /* synthetic */ void beginTransaction() {
        super.beginTransaction();
    }

    public final /* bridge */ /* synthetic */ void cancelTransaction() {
        super.cancelTransaction();
    }

    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    public final /* bridge */ /* synthetic */ void commitTransaction() {
        super.commitTransaction();
    }

    public final /* bridge */ /* synthetic */ void deleteAll() {
        super.deleteAll();
    }

    public final /* bridge */ /* synthetic */ RealmConfiguration getConfiguration() {
        return super.getConfiguration();
    }

    public final /* bridge */ /* synthetic */ String getPath() {
        return super.getPath();
    }

    public final /* bridge */ /* synthetic */ RealmSchema getSchema() {
        return super.getSchema();
    }

    public final /* bridge */ /* synthetic */ long getVersion() {
        return super.getVersion();
    }

    public final /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    public final /* bridge */ /* synthetic */ boolean isInTransaction() {
        return super.isInTransaction();
    }

    private Realm(RealmCache realmCache) {
        super(realmCache);
    }

    public static synchronized void init(android.content.Context r9) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = io.realm.Realm.class;
        monitor-enter(r0);
        r1 = io.realm.BaseRealm.applicationContext;	 Catch:{ all -> 0x00a3 }
        if (r1 != 0) goto L_0x00a1;	 Catch:{ all -> 0x00a3 }
    L_0x0007:
        r1 = r9.getFilesDir();	 Catch:{ all -> 0x00a3 }
        if (r1 == 0) goto L_0x0016;	 Catch:{ all -> 0x00a3 }
    L_0x000d:
        r2 = r1.exists();	 Catch:{ all -> 0x00a3 }
        if (r2 != 0) goto L_0x005c;
    L_0x0013:
        r1.mkdirs();	 Catch:{ SecurityException -> 0x0016 }
    L_0x0016:
        if (r1 == 0) goto L_0x001e;
    L_0x0018:
        r1 = r1.exists();	 Catch:{ all -> 0x00a3 }
        if (r1 != 0) goto L_0x004b;	 Catch:{ all -> 0x00a3 }
    L_0x001e:
        r1 = 5;	 Catch:{ all -> 0x00a3 }
        r1 = new long[r1];	 Catch:{ all -> 0x00a3 }
        r1 = {1, 2, 5, 10, 16};	 Catch:{ all -> 0x00a3 }
        r2 = 0;	 Catch:{ all -> 0x00a3 }
        r4 = -1;	 Catch:{ all -> 0x00a3 }
    L_0x0027:
        r5 = r9.getFilesDir();	 Catch:{ all -> 0x00a3 }
        if (r5 == 0) goto L_0x0037;	 Catch:{ all -> 0x00a3 }
    L_0x002d:
        r5 = r9.getFilesDir();	 Catch:{ all -> 0x00a3 }
        r5 = r5.exists();	 Catch:{ all -> 0x00a3 }
        if (r5 != 0) goto L_0x004b;	 Catch:{ all -> 0x00a3 }
    L_0x0037:
        r4 = r4 + 1;	 Catch:{ all -> 0x00a3 }
        r5 = 4;	 Catch:{ all -> 0x00a3 }
        r5 = java.lang.Math.min(r4, r5);	 Catch:{ all -> 0x00a3 }
        r5 = r1[r5];	 Catch:{ all -> 0x00a3 }
        android.os.SystemClock.sleep(r5);	 Catch:{ all -> 0x00a3 }
        r7 = r2 + r5;	 Catch:{ all -> 0x00a3 }
        r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;	 Catch:{ all -> 0x00a3 }
        r5 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1));	 Catch:{ all -> 0x00a3 }
        if (r5 <= 0) goto L_0x009f;	 Catch:{ all -> 0x00a3 }
    L_0x004b:
        r1 = r9.getFilesDir();	 Catch:{ all -> 0x00a3 }
        if (r1 == 0) goto L_0x0082;	 Catch:{ all -> 0x00a3 }
    L_0x0051:
        r1 = r9.getFilesDir();	 Catch:{ all -> 0x00a3 }
        r1 = r1.exists();	 Catch:{ all -> 0x00a3 }
        if (r1 != 0) goto L_0x005c;	 Catch:{ all -> 0x00a3 }
    L_0x005b:
        goto L_0x0082;	 Catch:{ all -> 0x00a3 }
    L_0x005c:
        io.realm.internal.RealmCore.loadLibrary(r9);	 Catch:{ all -> 0x00a3 }
        r1 = new io.realm.RealmConfiguration$Builder;	 Catch:{ all -> 0x00a3 }
        r1.<init>(r9);	 Catch:{ all -> 0x00a3 }
        r1 = r1.build();	 Catch:{ all -> 0x00a3 }
        defaultConfiguration = r1;	 Catch:{ all -> 0x00a3 }
        io.realm.internal.ObjectServerFacade.getSyncFacadeIfPossible();	 Catch:{ all -> 0x00a3 }
        r1 = r9.getApplicationContext();	 Catch:{ all -> 0x00a3 }
        io.realm.BaseRealm.applicationContext = r1;	 Catch:{ all -> 0x00a3 }
        r1 = new java.io.File;	 Catch:{ all -> 0x00a3 }
        r9 = r9.getFilesDir();	 Catch:{ all -> 0x00a3 }
        r2 = ".realm.temp";	 Catch:{ all -> 0x00a3 }
        r1.<init>(r9, r2);	 Catch:{ all -> 0x00a3 }
        io.realm.internal.SharedRealm.initialize(r1);	 Catch:{ all -> 0x00a3 }
        goto L_0x00a1;	 Catch:{ all -> 0x00a3 }
    L_0x0082:
        r1 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x00a3 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a3 }
        r3 = "Context.getFilesDir() returns ";	 Catch:{ all -> 0x00a3 }
        r2.<init>(r3);	 Catch:{ all -> 0x00a3 }
        r9 = r9.getFilesDir();	 Catch:{ all -> 0x00a3 }
        r2.append(r9);	 Catch:{ all -> 0x00a3 }
        r9 = " which is not an existing directory. See https://issuetracker.google.com/issues/36918154";	 Catch:{ all -> 0x00a3 }
        r2.append(r9);	 Catch:{ all -> 0x00a3 }
        r9 = r2.toString();	 Catch:{ all -> 0x00a3 }
        r1.<init>(r9);	 Catch:{ all -> 0x00a3 }
        throw r1;	 Catch:{ all -> 0x00a3 }
    L_0x009f:
        r2 = r7;
        goto L_0x0027;
    L_0x00a1:
        monitor-exit(r0);
        return;
    L_0x00a3:
        r9 = move-exception;
        monitor-exit(r0);
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.Realm.init(android.content.Context):void");
    }

    public static Realm getDefaultInstance() {
        if (defaultConfiguration != null) {
            return (Realm) RealmCache.createRealmOrGetFromCache(defaultConfiguration, Realm.class);
        }
        throw new IllegalStateException("Call `Realm.init(Context)` before calling this method.");
    }

    public static Realm getInstance(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            return (Realm) RealmCache.createRealmOrGetFromCache(realmConfiguration, Realm.class);
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }

    public static void setDefaultConfiguration(RealmConfiguration realmConfiguration) {
        if (realmConfiguration == null) {
            throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
        }
        defaultConfiguration = realmConfiguration;
    }

    static io.realm.Realm createInstance(io.realm.RealmCache r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = r3.getConfiguration();
        r1 = createAndValidateFromCache(r3);	 Catch:{ RealmMigrationNeededException -> 0x0009 }
        return r1;
    L_0x0009:
        r1 = r0.shouldDeleteRealmIfMigrationNeeded();
        if (r1 == 0) goto L_0x0020;
    L_0x000f:
        r1 = new java.util.concurrent.atomic.AtomicBoolean;
        r2 = 1;
        r1.<init>(r2);
        r2 = new io.realm.BaseRealm$3;
        r2.<init>(r0, r1);
        io.realm.RealmCache.invokeWithGlobalRefCount(r0, r2);
        r1.get();
    L_0x0020:
        r3 = createAndValidateFromCache(r3);
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.Realm.createInstance(io.realm.RealmCache):io.realm.Realm");
    }

    private static Realm createAndValidateFromCache(RealmCache realmCache) {
        BaseRealm realm = new Realm(realmCache);
        RealmConfiguration realmConfiguration = realm.configuration;
        long version = super.getVersion();
        long schemaVersion = realmConfiguration.getSchemaVersion();
        realmCache = RealmCache.findColumnIndices(realmCache.getTypedColumnIndicesArray(), schemaVersion);
        if (realmCache != null) {
            realm.schema.setInitialColumnIndices(realmCache);
        } else {
            if (version != -1) {
                if (version < schemaVersion) {
                    realm.doClose();
                    throw new RealmMigrationNeededException(realmConfiguration.getPath(), String.format("Realm on disk need to migrate from v%s to v%s", new Object[]{Long.valueOf(version), Long.valueOf(schemaVersion)}));
                } else if (schemaVersion < version) {
                    realm.doClose();
                    throw new IllegalArgumentException(String.format("Realm on disk is newer than the one specified: v%s vs. v%s", new Object[]{Long.valueOf(version), Long.valueOf(schemaVersion)}));
                }
            }
            try {
                initializeRealm(realm);
            } catch (RealmCache realmCache2) {
                realm.doClose();
                throw realmCache2;
            }
        }
        return realm;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void initializeRealm(io.realm.Realm r11) {
        /*
        r0 = 0;
        r11.beginTransaction$1385ff();	 Catch:{ Exception -> 0x0092 }
        r1 = super.getVersion();	 Catch:{ Exception -> 0x0092 }
        r3 = -1;
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r5 != 0) goto L_0x0010;
    L_0x000e:
        r3 = 1;
        goto L_0x0011;
    L_0x0010:
        r3 = r0;
    L_0x0011:
        r4 = super.getConfiguration();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r5 = r4.getSchemaMediator();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r6 = r5.getModelClasses();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        if (r3 == 0) goto L_0x003e;
    L_0x001f:
        r7 = r4.getSchemaVersion();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r11.setVersion(r7);	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r7 = r6.iterator();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
    L_0x002a:
        r8 = r7.hasNext();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        if (r8 == 0) goto L_0x003e;
    L_0x0030:
        r8 = r7.next();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r8 = (java.lang.Class) r8;	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r9 = super.getSchema();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r5.createRealmObjectSchema(r8, r9);	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        goto L_0x002a;
    L_0x003e:
        r7 = new java.util.HashMap;	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r8 = r6.size();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r7.<init>(r8);	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r6 = r6.iterator();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
    L_0x004b:
        r8 = r6.hasNext();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        if (r8 == 0) goto L_0x006e;
    L_0x0051:
        r8 = r6.next();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r8 = (java.lang.Class) r8;	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r9 = r5.getTableName(r8);	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r9 = io.realm.internal.Table.getClassNameForTable(r9);	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r10 = new io.realm.internal.util.Pair;	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r10.<init>(r8, r9);	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r9 = r11.sharedRealm;	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r8 = r5.validateTable(r8, r9, r0);	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        r7.put(r10, r8);	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        goto L_0x004b;
    L_0x006e:
        r5 = super.getSchema();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        if (r3 == 0) goto L_0x0078;
    L_0x0074:
        r1 = r4.getSchemaVersion();	 Catch:{ Exception -> 0x0092, all -> 0x008c }
    L_0x0078:
        r5.setInitialColumnIndices(r1, r7);	 Catch:{ Exception -> 0x0092, all -> 0x008c }
        if (r3 == 0) goto L_0x0081;
    L_0x007d:
        super.commitTransaction();
        return;
    L_0x0081:
        r0 = super.isInTransaction();
        if (r0 == 0) goto L_0x008b;
    L_0x0087:
        super.cancelTransaction();
        return;
    L_0x008b:
        return;
    L_0x008c:
        r0 = move-exception;
        goto L_0x0094;
    L_0x008e:
        r1 = move-exception;
        r3 = r0;
        r0 = r1;
        goto L_0x0094;
    L_0x0092:
        r1 = move-exception;
        throw r1;	 Catch:{ all -> 0x008e }
    L_0x0094:
        if (r3 == 0) goto L_0x009a;
    L_0x0096:
        super.commitTransaction();
        goto L_0x00a3;
    L_0x009a:
        r1 = super.isInTransaction();
        if (r1 == 0) goto L_0x00a3;
    L_0x00a0:
        super.cancelTransaction();
    L_0x00a3:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.Realm.initializeRealm(io.realm.Realm):void");
    }

    final <E extends RealmModel> E createObjectInternal$6d9349d5(Class<E> cls, List<String> list) {
        Table table = this.schema.getTable((Class) cls);
        if (!table.hasPrimaryKey()) {
            return this.configuration.getSchemaMediator().newInstance(cls, this, OsObject.create(this.sharedRealm, table), this.schema.getColumnInfo((Class) cls), false, list);
        }
        throw new RealmException(String.format("'%s' has a primary key, use 'createObject(Class<E>, Object)' instead.", new Object[]{table.getClassName()}));
    }

    final <E extends RealmModel> E createObjectInternal$1e283631(Class<E> cls, Object obj, List<String> list) {
        return this.configuration.getSchemaMediator().newInstance(cls, this, OsObject.createWithPrimaryKey(this.sharedRealm, this.schema.getTable((Class) cls), obj), this.schema.getColumnInfo((Class) cls), false, list);
    }

    public final <E extends RealmModel> RealmQuery<E> where(Class<E> cls) {
        checkIfValid();
        return RealmQuery.createQuery(this, cls);
    }

    public final void delete(Class<? extends RealmModel> cls) {
        checkIfValid();
        this.schema.getTable((Class) cls).clear();
    }

    private static <E extends RealmModel> void checkValidObjectForDetach(E e) {
        if (e == null) {
            throw new IllegalArgumentException("Null objects cannot be copied from Realm.");
        }
        if (RealmObject.isManaged(e)) {
            if (RealmObject.isValid(e)) {
                if ((e instanceof DynamicRealmObject) != null) {
                    throw new IllegalArgumentException("DynamicRealmObject cannot be copied from Realm.");
                }
                return;
            }
        }
        throw new IllegalArgumentException("Only valid managed objects can be copied from Realm.");
    }

    final Table getTable(Class<? extends RealmModel> cls) {
        return this.schema.getTable((Class) cls);
    }

    final ColumnIndices updateSchemaCache(ColumnIndices[] columnIndicesArr) {
        long schemaVersion = this.sharedRealm.getSchemaVersion();
        ColumnIndices columnIndices = null;
        if (schemaVersion == this.schema.getSchemaVersion()) {
            return null;
        }
        columnIndicesArr = RealmCache.findColumnIndices(columnIndicesArr, schemaVersion);
        if (columnIndicesArr == null) {
            columnIndicesArr = super.getConfiguration().getSchemaMediator();
            Set<Class> modelClasses = columnIndicesArr.getModelClasses();
            Map hashMap = new HashMap(modelClasses.size());
            try {
                for (Class cls : modelClasses) {
                    hashMap.put(new Pair(cls, Table.getClassNameForTable(columnIndicesArr.getTableName(cls))), columnIndicesArr.validateTable(cls, this.sharedRealm, true));
                }
                columnIndices = new ColumnIndices(schemaVersion, hashMap);
                columnIndicesArr = columnIndices;
            } catch (ColumnIndices[] columnIndicesArr2) {
                throw columnIndicesArr2;
            }
        }
        this.schema.updateColumnIndices(columnIndicesArr2);
        return columnIndices;
    }

    public static java.lang.Object getDefaultModule() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = "io.realm.DefaultRealmModule";
        r1 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x004b, InvocationTargetException -> 0x003a, InstantiationException -> 0x0029, IllegalAccessException -> 0x0018 }
        r1 = r1.getDeclaredConstructors();	 Catch:{ ClassNotFoundException -> 0x004b, InvocationTargetException -> 0x003a, InstantiationException -> 0x0029, IllegalAccessException -> 0x0018 }
        r2 = 0;	 Catch:{ ClassNotFoundException -> 0x004b, InvocationTargetException -> 0x003a, InstantiationException -> 0x0029, IllegalAccessException -> 0x0018 }
        r1 = r1[r2];	 Catch:{ ClassNotFoundException -> 0x004b, InvocationTargetException -> 0x003a, InstantiationException -> 0x0029, IllegalAccessException -> 0x0018 }
        r3 = 1;	 Catch:{ ClassNotFoundException -> 0x004b, InvocationTargetException -> 0x003a, InstantiationException -> 0x0029, IllegalAccessException -> 0x0018 }
        r1.setAccessible(r3);	 Catch:{ ClassNotFoundException -> 0x004b, InvocationTargetException -> 0x003a, InstantiationException -> 0x0029, IllegalAccessException -> 0x0018 }
        r2 = new java.lang.Object[r2];	 Catch:{ ClassNotFoundException -> 0x004b, InvocationTargetException -> 0x003a, InstantiationException -> 0x0029, IllegalAccessException -> 0x0018 }
        r1 = r1.newInstance(r2);	 Catch:{ ClassNotFoundException -> 0x004b, InvocationTargetException -> 0x003a, InstantiationException -> 0x0029, IllegalAccessException -> 0x0018 }
        return r1;
    L_0x0018:
        r1 = move-exception;
        r2 = new io.realm.exceptions.RealmException;
        r3 = "Could not create an instance of ";
        r0 = java.lang.String.valueOf(r0);
        r0 = r3.concat(r0);
        r2.<init>(r0, r1);
        throw r2;
    L_0x0029:
        r1 = move-exception;
        r2 = new io.realm.exceptions.RealmException;
        r3 = "Could not create an instance of ";
        r0 = java.lang.String.valueOf(r0);
        r0 = r3.concat(r0);
        r2.<init>(r0, r1);
        throw r2;
    L_0x003a:
        r1 = move-exception;
        r2 = new io.realm.exceptions.RealmException;
        r3 = "Could not create an instance of ";
        r0 = java.lang.String.valueOf(r0);
        r0 = r3.concat(r0);
        r2.<init>(r0, r1);
        throw r2;
    L_0x004b:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.Realm.getDefaultModule():java.lang.Object");
    }

    public final <E extends RealmModel> E copyToRealm(E e) {
        if (e == null) {
            throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
        }
        Map hashMap = new HashMap();
        checkIfValid();
        return this.configuration.getSchemaMediator().copyOrUpdate(this, e, false, hashMap);
    }

    public final <E extends RealmModel> E copyToRealmOrUpdate(E e) {
        if (e == null) {
            throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
        }
        Class cls = e.getClass();
        if (this.schema.getTable(cls).hasPrimaryKey()) {
            Map hashMap = new HashMap();
            checkIfValid();
            return this.configuration.getSchemaMediator().copyOrUpdate(this, e, true, hashMap);
        }
        StringBuilder stringBuilder = new StringBuilder("A RealmObject with no @PrimaryKey cannot be updated: ");
        stringBuilder.append(cls.toString());
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public final <E extends RealmModel> List<E> copyFromRealm(Iterable<E> iterable) {
        if (iterable == null) {
            return new ArrayList(0);
        }
        List arrayList = new ArrayList();
        Map hashMap = new HashMap();
        for (E e : iterable) {
            checkValidObjectForDetach(e);
            checkIfValid();
            arrayList.add(this.configuration.getSchemaMediator().createDetachedCopy(e, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, hashMap));
        }
        return arrayList;
    }

    public final <E extends RealmModel> E copyFromRealm(E e) {
        checkValidObjectForDetach(e);
        Map hashMap = new HashMap();
        checkIfValid();
        return this.configuration.getSchemaMediator().createDetachedCopy(e, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, hashMap);
    }

    public final void executeTransaction(Transaction transaction) {
        super.beginTransaction();
        try {
            transaction.execute(this);
            super.commitTransaction();
        } catch (Throwable th) {
            if (super.isInTransaction()) {
                super.cancelTransaction();
            } else {
                RealmLog.warn("Could not cancel transaction, not currently in a transaction.", new Object[0]);
            }
        }
    }

    public static boolean deleteRealm(RealmConfiguration realmConfiguration) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        RealmCache.invokeWithGlobalRefCount(realmConfiguration, new C12873(realmConfiguration, atomicBoolean));
        return atomicBoolean.get();
    }
}
