package android.support.v4.util;

import android.content.Context;
import android.os.Build.VERSION;
import com.crashlytics.android.answers.EventLogger;
import java.lang.reflect.Method;
import java.util.Objects;

public final class ObjectsCompat implements EventLogger {
    private final Object logEventInstance;
    private final Method logEventMethod;

    public static boolean equals(Object obj, Object obj2) {
        if (VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        if (obj != obj2) {
            if (obj == null || obj.equals(obj2) == null) {
                return null;
            }
        }
        return true;
    }

    public static EventLogger getEventLogger(Context context) {
        Class cls = getClass(context);
        if (cls == null) {
            return null;
        }
        context = getInstance(context, cls);
        if (context == null) {
            return null;
        }
        Method logEventMethod$4633abec = getLogEventMethod$4633abec(cls);
        if (logEventMethod$4633abec == null) {
            return null;
        }
        return new ObjectsCompat(context, logEventMethod$4633abec);
    }

    private static java.lang.Class getClass(android.content.Context r1) {
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
        r1 = r1.getClassLoader();	 Catch:{ Exception -> 0x000b }
        r0 = "com.google.android.gms.measurement.AppMeasurement";	 Catch:{ Exception -> 0x000b }
        r1 = r1.loadClass(r0);	 Catch:{ Exception -> 0x000b }
        return r1;
    L_0x000b:
        r1 = 0;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.util.ObjectsCompat.getClass(android.content.Context):java.lang.Class");
    }

    private static java.lang.Object getInstance(android.content.Context r5, java.lang.Class r6) {
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
        r0 = "getInstance";	 Catch:{ Exception -> 0x0017 }
        r1 = 1;	 Catch:{ Exception -> 0x0017 }
        r2 = new java.lang.Class[r1];	 Catch:{ Exception -> 0x0017 }
        r3 = android.content.Context.class;	 Catch:{ Exception -> 0x0017 }
        r4 = 0;	 Catch:{ Exception -> 0x0017 }
        r2[r4] = r3;	 Catch:{ Exception -> 0x0017 }
        r0 = r6.getDeclaredMethod(r0, r2);	 Catch:{ Exception -> 0x0017 }
        r1 = new java.lang.Object[r1];	 Catch:{ Exception -> 0x0017 }
        r1[r4] = r5;	 Catch:{ Exception -> 0x0017 }
        r5 = r0.invoke(r6, r1);	 Catch:{ Exception -> 0x0017 }
        return r5;
    L_0x0017:
        r5 = 0;
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.util.ObjectsCompat.getInstance(android.content.Context, java.lang.Class):java.lang.Object");
    }

    private static java.lang.reflect.Method getLogEventMethod$4633abec(java.lang.Class r4) {
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
        r0 = "logEventInternal";	 Catch:{ Exception -> 0x0019 }
        r1 = 3;	 Catch:{ Exception -> 0x0019 }
        r1 = new java.lang.Class[r1];	 Catch:{ Exception -> 0x0019 }
        r2 = 0;	 Catch:{ Exception -> 0x0019 }
        r3 = java.lang.String.class;	 Catch:{ Exception -> 0x0019 }
        r1[r2] = r3;	 Catch:{ Exception -> 0x0019 }
        r2 = 1;	 Catch:{ Exception -> 0x0019 }
        r3 = java.lang.String.class;	 Catch:{ Exception -> 0x0019 }
        r1[r2] = r3;	 Catch:{ Exception -> 0x0019 }
        r2 = 2;	 Catch:{ Exception -> 0x0019 }
        r3 = android.os.Bundle.class;	 Catch:{ Exception -> 0x0019 }
        r1[r2] = r3;	 Catch:{ Exception -> 0x0019 }
        r4 = r4.getDeclaredMethod(r0, r1);	 Catch:{ Exception -> 0x0019 }
        return r4;
    L_0x0019:
        r4 = 0;
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.util.ObjectsCompat.getLogEventMethod$4633abec(java.lang.Class):java.lang.reflect.Method");
    }

    private ObjectsCompat(Object obj, Method method) {
        this.logEventInstance = obj;
        this.logEventMethod = method;
    }

    public final void logEvent(java.lang.String r6, android.os.Bundle r7) {
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
        r5 = this;
        r0 = "fab";
        r1 = r5.logEventMethod;	 Catch:{ Exception -> 0x0016 }
        r2 = r5.logEventInstance;	 Catch:{ Exception -> 0x0016 }
        r3 = 3;	 Catch:{ Exception -> 0x0016 }
        r3 = new java.lang.Object[r3];	 Catch:{ Exception -> 0x0016 }
        r4 = 0;	 Catch:{ Exception -> 0x0016 }
        r3[r4] = r0;	 Catch:{ Exception -> 0x0016 }
        r0 = 1;	 Catch:{ Exception -> 0x0016 }
        r3[r0] = r6;	 Catch:{ Exception -> 0x0016 }
        r6 = 2;	 Catch:{ Exception -> 0x0016 }
        r3[r6] = r7;	 Catch:{ Exception -> 0x0016 }
        r1.invoke(r2, r3);	 Catch:{ Exception -> 0x0016 }
        return;
    L_0x0016:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.util.ObjectsCompat.logEvent(java.lang.String, android.os.Bundle):void");
    }

    public final void logEvent(java.lang.String r5, java.lang.String r6, android.os.Bundle r7) {
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
        r4 = this;
        r0 = r4.logEventMethod;	 Catch:{ Exception -> 0x0014 }
        r1 = r4.logEventInstance;	 Catch:{ Exception -> 0x0014 }
        r2 = 3;	 Catch:{ Exception -> 0x0014 }
        r2 = new java.lang.Object[r2];	 Catch:{ Exception -> 0x0014 }
        r3 = 0;	 Catch:{ Exception -> 0x0014 }
        r2[r3] = r5;	 Catch:{ Exception -> 0x0014 }
        r5 = 1;	 Catch:{ Exception -> 0x0014 }
        r2[r5] = r6;	 Catch:{ Exception -> 0x0014 }
        r5 = 2;	 Catch:{ Exception -> 0x0014 }
        r2[r5] = r7;	 Catch:{ Exception -> 0x0014 }
        r0.invoke(r1, r2);	 Catch:{ Exception -> 0x0014 }
        return;
    L_0x0014:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.util.ObjectsCompat.logEvent(java.lang.String, java.lang.String, android.os.Bundle):void");
    }
}
