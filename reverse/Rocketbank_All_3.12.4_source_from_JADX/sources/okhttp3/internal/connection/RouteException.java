package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.reflect.Method;

public final class RouteException extends RuntimeException {
    private static final Method addSuppressedExceptionMethod;
    private IOException lastException;

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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = java.lang.Throwable.class;	 Catch:{ Exception -> 0x0011 }
        r1 = "addSuppressed";	 Catch:{ Exception -> 0x0011 }
        r2 = 1;	 Catch:{ Exception -> 0x0011 }
        r2 = new java.lang.Class[r2];	 Catch:{ Exception -> 0x0011 }
        r3 = 0;	 Catch:{ Exception -> 0x0011 }
        r4 = java.lang.Throwable.class;	 Catch:{ Exception -> 0x0011 }
        r2[r3] = r4;	 Catch:{ Exception -> 0x0011 }
        r0 = r0.getDeclaredMethod(r1, r2);	 Catch:{ Exception -> 0x0011 }
        goto L_0x0012;
    L_0x0011:
        r0 = 0;
    L_0x0012:
        addSuppressedExceptionMethod = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RouteException.<clinit>():void");
    }

    public RouteException(IOException iOException) {
        super(iOException);
        this.lastException = iOException;
    }

    public final IOException getLastConnectException() {
        return this.lastException;
    }

    public final void addConnectException(IOException iOException) {
        addSuppressedIfPossible(iOException, this.lastException);
        this.lastException = iOException;
    }

    private void addSuppressedIfPossible(java.io.IOException r4, java.io.IOException r5) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = addSuppressedExceptionMethod;
        if (r0 == 0) goto L_0x0010;
    L_0x0004:
        r0 = addSuppressedExceptionMethod;	 Catch:{ InvocationTargetException -> 0x0010, InvocationTargetException -> 0x0010 }
        r1 = 1;	 Catch:{ InvocationTargetException -> 0x0010, InvocationTargetException -> 0x0010 }
        r1 = new java.lang.Object[r1];	 Catch:{ InvocationTargetException -> 0x0010, InvocationTargetException -> 0x0010 }
        r2 = 0;	 Catch:{ InvocationTargetException -> 0x0010, InvocationTargetException -> 0x0010 }
        r1[r2] = r5;	 Catch:{ InvocationTargetException -> 0x0010, InvocationTargetException -> 0x0010 }
        r0.invoke(r4, r1);	 Catch:{ InvocationTargetException -> 0x0010, InvocationTargetException -> 0x0010 }
        return;
    L_0x0010:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RouteException.addSuppressedIfPossible(java.io.IOException, java.io.IOException):void");
    }
}
