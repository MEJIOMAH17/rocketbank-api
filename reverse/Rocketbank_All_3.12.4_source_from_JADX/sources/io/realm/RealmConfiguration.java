package io.realm;

import android.arch.lifecycle.GeneratedAdapter;
import android.content.Context;
import io.realm.Realm.Transaction;
import io.realm.annotations.RealmModule;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmFileException;
import io.realm.exceptions.RealmFileException.Kind;
import io.realm.internal.RealmCore;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.SharedRealm.Durability;
import io.realm.internal.modules.CompositeMediator;
import io.realm.internal.modules.FilterableMediator;
import io.realm.rx.RealmObservableFactory;
import io.realm.rx.RxObservableFactory;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public final class RealmConfiguration {
    private static final Object DEFAULT_MODULE;
    protected static final RealmProxyMediator DEFAULT_MODULE_MEDIATOR;
    private static Boolean rxJavaAvailable;
    private final String assetFilePath = null;
    private final String canonicalPath;
    private final boolean deleteRealmIfMigrationNeeded;
    private final Durability durability;
    private final Transaction initialDataTransaction;
    private final byte[] key;
    private final GeneratedAdapter migration$4e57d29f;
    private final boolean readOnly;
    private final File realmDirectory;
    private final String realmFileName;
    private final RxObservableFactory rxObservableFactory;
    private final RealmProxyMediator schemaMediator;
    private final long schemaVersion;

    public static class Builder {
        private HashSet<Class<? extends RealmModel>> debugSchema;
        private boolean deleteRealmIfMigrationNeeded;
        private File directory;
        private Durability durability;
        private String fileName;
        private byte[] key;
        private GeneratedAdapter migration$4e57d29f;
        private HashSet<Object> modules;
        private boolean readOnly;
        private RxObservableFactory rxFactory;
        private long schemaVersion;

        public Builder() {
            this(BaseRealm.applicationContext);
        }

        Builder(Context context) {
            this.modules = new HashSet();
            this.debugSchema = new HashSet();
            if (context == null) {
                throw new IllegalStateException("Call `Realm.init(Context)` before creating a RealmConfiguration");
            }
            RealmCore.loadLibrary(context);
            this.directory = context.getFilesDir();
            this.fileName = "default.realm";
            this.key = null;
            this.schemaVersion = 0;
            this.migration$4e57d29f = null;
            this.deleteRealmIfMigrationNeeded = false;
            this.durability = Durability.FULL;
            this.readOnly = false;
            if (RealmConfiguration.DEFAULT_MODULE != null) {
                this.modules.add(RealmConfiguration.DEFAULT_MODULE);
            }
        }

        public final Builder name(String str) {
            if (str != null) {
                if (!str.isEmpty()) {
                    this.fileName = str;
                    return this;
                }
            }
            throw new IllegalArgumentException("A non-empty filename must be provided");
        }

        public final Builder directory(File file) {
            StringBuilder stringBuilder;
            if (file.isFile()) {
                stringBuilder = new StringBuilder("'dir' is a file, not a directory: ");
                stringBuilder.append(file.getAbsolutePath());
                stringBuilder.append(".");
                throw new IllegalArgumentException(stringBuilder.toString());
            } else if (!file.exists() && !file.mkdirs()) {
                stringBuilder = new StringBuilder("Could not create the specified directory: ");
                stringBuilder.append(file.getAbsolutePath());
                stringBuilder.append(".");
                throw new IllegalArgumentException(stringBuilder.toString());
            } else if (file.canWrite()) {
                this.directory = file;
                return this;
            } else {
                stringBuilder = new StringBuilder("Realm directory is not writable: ");
                stringBuilder.append(file.getAbsolutePath());
                stringBuilder.append(".");
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }

        public final Builder encryptionKey(byte[] bArr) {
            if (bArr == null) {
                throw new IllegalArgumentException("A non-null key must be provided");
            } else if (bArr.length != 64) {
                throw new IllegalArgumentException(String.format("The provided key must be %s bytes. Yours was: %s", new Object[]{Integer.valueOf(64), Integer.valueOf(bArr.length)}));
            } else {
                this.key = Arrays.copyOf(bArr, bArr.length);
                return this;
            }
        }

        public final Builder schemaVersion(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("Realm schema version numbers must be 0 (zero) or higher. Yours was: ".concat(String.valueOf(j)));
            }
            this.schemaVersion = j;
            return this;
        }

        public final Builder deleteRealmIfMigrationNeeded() {
            this.deleteRealmIfMigrationNeeded = true;
            return this;
        }

        public final Builder modules(Object obj, Object... objArr) {
            this.modules.clear();
            checkModule(obj);
            this.modules.add(obj);
            for (Object obj2 : objArr) {
                if (obj2 != null) {
                    checkModule(obj2);
                    this.modules.add(obj2);
                }
            }
            return this;
        }

        public final RealmConfiguration build() {
            if (this.rxFactory == null && RealmConfiguration.isRxJavaAvailable()) {
                this.rxFactory = new RealmObservableFactory();
            }
            return new RealmConfiguration(this.directory, this.fileName, RealmConfiguration.getCanonicalPath(new File(this.directory, this.fileName)), this.key, this.schemaVersion, this.deleteRealmIfMigrationNeeded, this.durability, RealmConfiguration.createSchemaMediator(this.modules, this.debugSchema), this.rxFactory);
        }

        private static void checkModule(Object obj) {
            if (!obj.getClass().isAnnotationPresent(RealmModule.class)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(obj.getClass().getCanonicalName());
                stringBuilder.append(" is not a RealmModule. Add @RealmModule to the class definition.");
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }
    }

    static {
        Object defaultModule = Realm.getDefaultModule();
        DEFAULT_MODULE = defaultModule;
        if (defaultModule != null) {
            RealmProxyMediator moduleMediator = getModuleMediator(DEFAULT_MODULE.getClass().getCanonicalName());
            if (moduleMediator.transformerApplied()) {
                DEFAULT_MODULE_MEDIATOR = moduleMediator;
                return;
            }
            throw new ExceptionInInitializerError("RealmTransformer doesn't seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://realm.io/news/android-installation-change/");
        }
        DEFAULT_MODULE_MEDIATOR = null;
    }

    protected RealmConfiguration(File file, String str, String str2, byte[] bArr, long j, boolean z, Durability durability, RealmProxyMediator realmProxyMediator, RxObservableFactory rxObservableFactory) {
        this.realmDirectory = file;
        this.realmFileName = str;
        this.canonicalPath = str2;
        this.key = bArr;
        this.schemaVersion = j;
        this.migration$4e57d29f = null;
        this.deleteRealmIfMigrationNeeded = z;
        this.durability = durability;
        this.schemaMediator = realmProxyMediator;
        this.rxObservableFactory = rxObservableFactory;
        this.initialDataTransaction = null;
        this.readOnly = null;
    }

    public final File getRealmDirectory() {
        return this.realmDirectory;
    }

    public final String getRealmFileName() {
        return this.realmFileName;
    }

    public final byte[] getEncryptionKey() {
        return this.key == null ? null : Arrays.copyOf(this.key, this.key.length);
    }

    public final long getSchemaVersion() {
        return this.schemaVersion;
    }

    public final boolean shouldDeleteRealmIfMigrationNeeded() {
        return this.deleteRealmIfMigrationNeeded;
    }

    public final Durability getDurability() {
        return this.durability;
    }

    final RealmProxyMediator getSchemaMediator() {
        return this.schemaMediator;
    }

    public final String getPath() {
        return this.canonicalPath;
    }

    final boolean realmExists() {
        return new File(this.canonicalPath).exists();
    }

    public final RxObservableFactory getRxFactory() {
        if (this.rxObservableFactory != null) {
            return this.rxObservableFactory;
        }
        throw new UnsupportedOperationException("RxJava seems to be missing from the classpath. Remember to add it as a compile dependency. See https://realm.io/docs/java/latest/#rxjava for more details.");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(java.lang.Object r7) {
        /*
        r6 = this;
        if (r6 != r7) goto L_0x0004;
    L_0x0002:
        r7 = 1;
        return r7;
    L_0x0004:
        r0 = 0;
        if (r7 == 0) goto L_0x0078;
    L_0x0007:
        r1 = r6.getClass();
        r2 = r7.getClass();
        if (r1 == r2) goto L_0x0012;
    L_0x0011:
        goto L_0x0078;
    L_0x0012:
        r7 = (io.realm.RealmConfiguration) r7;
        r1 = r6.schemaVersion;
        r3 = r7.schemaVersion;
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r5 == 0) goto L_0x001d;
    L_0x001c:
        return r0;
    L_0x001d:
        r1 = r6.deleteRealmIfMigrationNeeded;
        r2 = r7.deleteRealmIfMigrationNeeded;
        if (r1 == r2) goto L_0x0024;
    L_0x0023:
        return r0;
    L_0x0024:
        r1 = r6.realmDirectory;
        r2 = r7.realmDirectory;
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x002f;
    L_0x002e:
        return r0;
    L_0x002f:
        r1 = r6.realmFileName;
        r2 = r7.realmFileName;
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x003a;
    L_0x0039:
        return r0;
    L_0x003a:
        r1 = r6.canonicalPath;
        r2 = r7.canonicalPath;
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x0045;
    L_0x0044:
        return r0;
    L_0x0045:
        r1 = r6.key;
        r2 = r7.key;
        r1 = java.util.Arrays.equals(r1, r2);
        if (r1 != 0) goto L_0x0050;
    L_0x004f:
        return r0;
    L_0x0050:
        r1 = r6.durability;
        r2 = r7.durability;
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x005b;
    L_0x005a:
        return r0;
    L_0x005b:
        r1 = r6.rxObservableFactory;
        if (r1 == 0) goto L_0x006a;
    L_0x005f:
        r1 = r6.rxObservableFactory;
        r2 = r7.rxObservableFactory;
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x006f;
    L_0x0069:
        goto L_0x006e;
    L_0x006a:
        r1 = r7.rxObservableFactory;
        if (r1 == 0) goto L_0x006f;
    L_0x006e:
        return r0;
    L_0x006f:
        r0 = r6.schemaMediator;
        r7 = r7.schemaMediator;
        r7 = r0.equals(r7);
        return r7;
    L_0x0078:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmConfiguration.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((((this.realmDirectory.hashCode() * 31) + this.realmFileName.hashCode()) * 31) + this.canonicalPath.hashCode()) * 31) + (this.key != null ? Arrays.hashCode(this.key) : 0)) * 31) + ((int) this.schemaVersion)) * 31) * 31) + this.deleteRealmIfMigrationNeeded) * 31) + this.schemaMediator.hashCode()) * 31) + this.durability.hashCode()) * 31;
        if (this.rxObservableFactory != null) {
            i = this.rxObservableFactory.hashCode();
        }
        return ((hashCode + i) * 31) * 31;
    }

    protected static RealmProxyMediator createSchemaMediator(Set<Object> set, Set<Class<? extends RealmModel>> set2) {
        if (set2.size() > 0) {
            return new FilterableMediator(DEFAULT_MODULE_MEDIATOR, set2);
        }
        if (set.size() == 1) {
            return getModuleMediator(set.iterator().next().getClass().getCanonicalName());
        }
        set2 = new RealmProxyMediator[set.size()];
        int i = 0;
        for (Object obj : set) {
            set2[i] = getModuleMediator(obj.getClass().getCanonicalName());
            i++;
        }
        return new CompositeMediator(set2);
    }

    private static RealmProxyMediator getModuleMediator(String str) {
        str = str.split("\\.");
        str = str[str.length - 1];
        str = String.format("io.realm.%s%s", new Object[]{str, "Mediator"});
        try {
            Constructor constructor = Class.forName(str).getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return (RealmProxyMediator) constructor.newInstance(new Object[0]);
        } catch (Throwable e) {
            throw new RealmException("Could not find ".concat(String.valueOf(str)), e);
        } catch (Throwable e2) {
            throw new RealmException("Could not create an instance of ".concat(String.valueOf(str)), e2);
        } catch (Throwable e22) {
            throw new RealmException("Could not create an instance of ".concat(String.valueOf(str)), e22);
        } catch (Throwable e222) {
            throw new RealmException("Could not create an instance of ".concat(String.valueOf(str)), e222);
        }
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("realmDirectory: ");
        stringBuilder.append(this.realmDirectory.toString());
        stringBuilder.append("\n");
        stringBuilder.append("realmFileName : ");
        stringBuilder.append(this.realmFileName);
        stringBuilder.append("\n");
        stringBuilder.append("canonicalPath: ");
        stringBuilder.append(this.canonicalPath);
        stringBuilder.append("\n");
        stringBuilder.append("key: [length: ");
        stringBuilder.append(this.key == null ? 0 : 64);
        stringBuilder.append("]");
        stringBuilder.append("\n");
        stringBuilder.append("schemaVersion: ");
        stringBuilder.append(Long.toString(this.schemaVersion));
        stringBuilder.append("\n");
        stringBuilder.append("migration: ");
        stringBuilder.append(null);
        stringBuilder.append("\n");
        stringBuilder.append("deleteRealmIfMigrationNeeded: ");
        stringBuilder.append(this.deleteRealmIfMigrationNeeded);
        stringBuilder.append("\n");
        stringBuilder.append("durability: ");
        stringBuilder.append(this.durability);
        stringBuilder.append("\n");
        stringBuilder.append("schemaMediator: ");
        stringBuilder.append(this.schemaMediator);
        stringBuilder.append("\n");
        stringBuilder.append("readOnly: false");
        return stringBuilder.toString();
    }

    static synchronized boolean isRxJavaAvailable() {
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
        r0 = io.realm.RealmConfiguration.class;
        monitor-enter(r0);
        r1 = rxJavaAvailable;	 Catch:{ all -> 0x001d }
        if (r1 != 0) goto L_0x0015;
    L_0x0007:
        r1 = "rx.Observable";	 Catch:{ ClassNotFoundException -> 0x0011 }
        java.lang.Class.forName(r1);	 Catch:{ ClassNotFoundException -> 0x0011 }
        r1 = java.lang.Boolean.TRUE;	 Catch:{ ClassNotFoundException -> 0x0011 }
        rxJavaAvailable = r1;	 Catch:{ ClassNotFoundException -> 0x0011 }
        goto L_0x0015;
    L_0x0011:
        r1 = java.lang.Boolean.FALSE;	 Catch:{ all -> 0x001d }
        rxJavaAvailable = r1;	 Catch:{ all -> 0x001d }
    L_0x0015:
        r1 = rxJavaAvailable;	 Catch:{ all -> 0x001d }
        r1 = r1.booleanValue();	 Catch:{ all -> 0x001d }
        monitor-exit(r0);
        return r1;
    L_0x001d:
        r1 = move-exception;
        monitor-exit(r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmConfiguration.isRxJavaAvailable():boolean");
    }

    protected static String getCanonicalPath(File file) {
        try {
            return file.getCanonicalPath();
        } catch (Throwable e) {
            Kind kind = Kind.ACCESS_ERROR;
            StringBuilder stringBuilder = new StringBuilder("Could not resolve the canonical path to the Realm file: ");
            stringBuilder.append(file.getAbsolutePath());
            throw new RealmFileException(kind, stringBuilder.toString(), e);
        }
    }
}
