package io.realm.internal.async;

import java.io.File;
import java.io.FileFilter;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;

public final class RealmThreadPoolExecutor extends ThreadPoolExecutor {
    private static final int CORE_POOL_SIZE;
    private ReentrantLock pauseLock = new ReentrantLock();
    private Condition unpaused = this.pauseLock.newCondition();

    /* renamed from: io.realm.internal.async.RealmThreadPoolExecutor$1 */
    class C07531 implements FileFilter {
        final /* synthetic */ Pattern val$filePattern;

        C07531(Pattern pattern) {
            this.val$filePattern = pattern;
        }

        public final boolean accept(File file) {
            return this.val$filePattern.matcher(file.getName()).matches();
        }
    }

    public static RealmThreadPoolExecutor newDefaultExecutor() {
        int i = CORE_POOL_SIZE;
        return new RealmThreadPoolExecutor(i, i);
    }

    private static int countFilesInDir(java.lang.String r2, java.lang.String r3) {
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
        r3 = java.util.regex.Pattern.compile(r3);
        r0 = 0;
        r1 = new java.io.File;	 Catch:{ SecurityException -> 0x0018 }
        r1.<init>(r2);	 Catch:{ SecurityException -> 0x0018 }
        r2 = new io.realm.internal.async.RealmThreadPoolExecutor$1;	 Catch:{ SecurityException -> 0x0018 }
        r2.<init>(r3);	 Catch:{ SecurityException -> 0x0018 }
        r2 = r1.listFiles(r2);	 Catch:{ SecurityException -> 0x0018 }
        if (r2 != 0) goto L_0x0016;	 Catch:{ SecurityException -> 0x0018 }
    L_0x0015:
        return r0;	 Catch:{ SecurityException -> 0x0018 }
    L_0x0016:
        r2 = r2.length;	 Catch:{ SecurityException -> 0x0018 }
        return r2;
    L_0x0018:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.async.RealmThreadPoolExecutor.countFilesInDir(java.lang.String, java.lang.String):int");
    }

    private RealmThreadPoolExecutor(int i, int i2) {
        super(i, i2, 0, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(100));
    }

    protected final void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        this.pauseLock.lock();
        this.pauseLock.unlock();
    }

    static {
        int countFilesInDir = countFilesInDir("/sys/devices/system/cpu/", "cpu[0-9]+");
        if (countFilesInDir <= 0) {
            countFilesInDir = Runtime.getRuntime().availableProcessors();
        }
        int i = 1;
        if (countFilesInDir > 0) {
            i = 1 + (countFilesInDir << 1);
        }
        CORE_POOL_SIZE = i;
    }
}
