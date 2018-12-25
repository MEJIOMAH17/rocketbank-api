package io.realm.internal;

public final class ObjectServerFacade {
    private static final ObjectServerFacade nonSyncFacade = new ObjectServerFacade();
    private static ObjectServerFacade syncFacade;

    static {
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
        r0 = new io.realm.internal.ObjectServerFacade;
        r0.<init>();
        nonSyncFacade = r0;
        r0 = "io.realm.internal.SyncObjectServerFacade";	 Catch:{ ClassNotFoundException -> 0x0047, InstantiationException -> 0x003e, IllegalAccessException -> 0x0035, NoSuchMethodException -> 0x002c, InvocationTargetException -> 0x001f }
        r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0047, InstantiationException -> 0x003e, IllegalAccessException -> 0x0035, NoSuchMethodException -> 0x002c, InvocationTargetException -> 0x001f }
        r1 = 0;	 Catch:{ ClassNotFoundException -> 0x0047, InstantiationException -> 0x003e, IllegalAccessException -> 0x0035, NoSuchMethodException -> 0x002c, InvocationTargetException -> 0x001f }
        r2 = new java.lang.Class[r1];	 Catch:{ ClassNotFoundException -> 0x0047, InstantiationException -> 0x003e, IllegalAccessException -> 0x0035, NoSuchMethodException -> 0x002c, InvocationTargetException -> 0x001f }
        r0 = r0.getDeclaredConstructor(r2);	 Catch:{ ClassNotFoundException -> 0x0047, InstantiationException -> 0x003e, IllegalAccessException -> 0x0035, NoSuchMethodException -> 0x002c, InvocationTargetException -> 0x001f }
        r1 = new java.lang.Object[r1];	 Catch:{ ClassNotFoundException -> 0x0047, InstantiationException -> 0x003e, IllegalAccessException -> 0x0035, NoSuchMethodException -> 0x002c, InvocationTargetException -> 0x001f }
        r0 = r0.newInstance(r1);	 Catch:{ ClassNotFoundException -> 0x0047, InstantiationException -> 0x003e, IllegalAccessException -> 0x0035, NoSuchMethodException -> 0x002c, InvocationTargetException -> 0x001f }
        r0 = (io.realm.internal.ObjectServerFacade) r0;	 Catch:{ ClassNotFoundException -> 0x0047, InstantiationException -> 0x003e, IllegalAccessException -> 0x0035, NoSuchMethodException -> 0x002c, InvocationTargetException -> 0x001f }
        syncFacade = r0;	 Catch:{ ClassNotFoundException -> 0x0047, InstantiationException -> 0x003e, IllegalAccessException -> 0x0035, NoSuchMethodException -> 0x002c, InvocationTargetException -> 0x001f }
        return;
    L_0x001f:
        r0 = move-exception;
        r1 = new io.realm.exceptions.RealmException;
        r2 = "Failed to init SyncObjectServerFacade";
        r0 = r0.getTargetException();
        r1.<init>(r2, r0);
        throw r1;
    L_0x002c:
        r0 = move-exception;
        r1 = new io.realm.exceptions.RealmException;
        r2 = "Failed to init SyncObjectServerFacade";
        r1.<init>(r2, r0);
        throw r1;
    L_0x0035:
        r0 = move-exception;
        r1 = new io.realm.exceptions.RealmException;
        r2 = "Failed to init SyncObjectServerFacade";
        r1.<init>(r2, r0);
        throw r1;
    L_0x003e:
        r0 = move-exception;
        r1 = new io.realm.exceptions.RealmException;
        r2 = "Failed to init SyncObjectServerFacade";
        r1.<init>(r2, r0);
        throw r1;
    L_0x0047:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.ObjectServerFacade.<clinit>():void");
    }

    public static Object[] getUserAndServerUrl$4cdbe33d() {
        return new Object[6];
    }

    public static ObjectServerFacade getFacade$227a051f() {
        return nonSyncFacade;
    }

    public static ObjectServerFacade getSyncFacadeIfPossible() {
        if (syncFacade != null) {
            return syncFacade;
        }
        return nonSyncFacade;
    }
}
