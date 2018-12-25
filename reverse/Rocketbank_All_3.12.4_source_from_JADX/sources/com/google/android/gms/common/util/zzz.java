package com.google.android.gms.common.util;

import android.content.Context;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.internal.zzadg;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class zzz {
    private static final Method zzaIq = zzzs();
    private static final Method zzaIr = zzzt();
    private static final Method zzaIs = zzzu();
    private static final Method zzaIt = zzzv();
    private static final Method zzaIu = zzzw();

    public static android.os.WorkSource zzG(android.content.Context r3, java.lang.String r4) {
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
        r0 = 0;
        if (r3 == 0) goto L_0x0053;
    L_0x0003:
        r1 = r3.getPackageManager();
        if (r1 != 0) goto L_0x000a;
    L_0x0009:
        return r0;
    L_0x000a:
        r3 = com.google.android.gms.internal.zzadg.zzbi(r3);	 Catch:{ NameNotFoundException -> 0x0038 }
        r1 = 0;	 Catch:{ NameNotFoundException -> 0x0038 }
        r3 = r3.getApplicationInfo(r4, r1);	 Catch:{ NameNotFoundException -> 0x0038 }
        if (r3 != 0) goto L_0x0031;
    L_0x0015:
        r3 = "WorkSourceUtil";
        r1 = "Could not get applicationInfo from package: ";
        r4 = java.lang.String.valueOf(r4);
        r2 = r4.length();
        if (r2 == 0) goto L_0x0028;
    L_0x0023:
        r4 = r1.concat(r4);
        goto L_0x002d;
    L_0x0028:
        r4 = new java.lang.String;
        r4.<init>(r1);
    L_0x002d:
        android.util.Log.e(r3, r4);
        return r0;
    L_0x0031:
        r3 = r3.uid;
        r3 = zzf(r3, r4);
        return r3;
    L_0x0038:
        r3 = "WorkSourceUtil";
        r1 = "Could not find package: ";
        r4 = java.lang.String.valueOf(r4);
        r2 = r4.length();
        if (r2 == 0) goto L_0x004b;
    L_0x0046:
        r4 = r1.concat(r4);
        goto L_0x0050;
    L_0x004b:
        r4 = new java.lang.String;
        r4.<init>(r1);
    L_0x0050:
        android.util.Log.e(r3, r4);
    L_0x0053:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.zzz.zzG(android.content.Context, java.lang.String):android.os.WorkSource");
    }

    public static int zza(WorkSource workSource) {
        if (zzaIs != null) {
            try {
                return ((Integer) zzaIs.invoke(workSource, new Object[0])).intValue();
            } catch (Throwable e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return 0;
    }

    public static String zza(WorkSource workSource, int i) {
        if (zzaIu != null) {
            try {
                return (String) zzaIu.invoke(workSource, new Object[]{Integer.valueOf(i)});
            } catch (Throwable e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return null;
    }

    public static void zza(WorkSource workSource, int i, String str) {
        if (zzaIr != null) {
            if (str == null) {
                str = "";
            }
            try {
                zzaIr.invoke(workSource, new Object[]{Integer.valueOf(i), str});
                return;
            } catch (Throwable e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        if (zzaIq != null) {
            try {
                zzaIq.invoke(workSource, new Object[]{Integer.valueOf(i)});
            } catch (Throwable e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
    }

    public static List<String> zzb(WorkSource workSource) {
        int i = 0;
        int zza = workSource == null ? 0 : zza(workSource);
        if (zza == 0) {
            return Collections.EMPTY_LIST;
        }
        List<String> arrayList = new ArrayList();
        while (i < zza) {
            String zza2 = zza(workSource, i);
            if (!zzw.zzdz(zza2)) {
                arrayList.add(zza2);
            }
            i++;
        }
        return arrayList;
    }

    public static boolean zzbf(Context context) {
        return (context == null || context.getPackageManager() == null || zzadg.zzbi(context).checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    public static WorkSource zzf(int i, String str) {
        WorkSource workSource = new WorkSource();
        zza(workSource, i, str);
        return workSource;
    }

    private static java.lang.reflect.Method zzzs() {
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
        r0 = android.os.WorkSource.class;	 Catch:{ Exception -> 0x0011 }
        r1 = "add";	 Catch:{ Exception -> 0x0011 }
        r2 = 1;	 Catch:{ Exception -> 0x0011 }
        r2 = new java.lang.Class[r2];	 Catch:{ Exception -> 0x0011 }
        r3 = 0;	 Catch:{ Exception -> 0x0011 }
        r4 = java.lang.Integer.TYPE;	 Catch:{ Exception -> 0x0011 }
        r2[r3] = r4;	 Catch:{ Exception -> 0x0011 }
        r0 = r0.getMethod(r1, r2);	 Catch:{ Exception -> 0x0011 }
        return r0;
    L_0x0011:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.zzz.zzzs():java.lang.reflect.Method");
    }

    private static java.lang.reflect.Method zzzt() {
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
        r0 = com.google.android.gms.common.util.zzt.zzzk();
        if (r0 == 0) goto L_0x001c;
    L_0x0006:
        r0 = android.os.WorkSource.class;	 Catch:{ Exception -> 0x001c }
        r1 = "add";	 Catch:{ Exception -> 0x001c }
        r2 = 2;	 Catch:{ Exception -> 0x001c }
        r2 = new java.lang.Class[r2];	 Catch:{ Exception -> 0x001c }
        r3 = 0;	 Catch:{ Exception -> 0x001c }
        r4 = java.lang.Integer.TYPE;	 Catch:{ Exception -> 0x001c }
        r2[r3] = r4;	 Catch:{ Exception -> 0x001c }
        r3 = 1;	 Catch:{ Exception -> 0x001c }
        r4 = java.lang.String.class;	 Catch:{ Exception -> 0x001c }
        r2[r3] = r4;	 Catch:{ Exception -> 0x001c }
        r0 = r0.getMethod(r1, r2);	 Catch:{ Exception -> 0x001c }
        return r0;
    L_0x001c:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.zzz.zzzt():java.lang.reflect.Method");
    }

    private static java.lang.reflect.Method zzzu() {
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
        r0 = android.os.WorkSource.class;	 Catch:{ Exception -> 0x000c }
        r1 = "size";	 Catch:{ Exception -> 0x000c }
        r2 = 0;	 Catch:{ Exception -> 0x000c }
        r2 = new java.lang.Class[r2];	 Catch:{ Exception -> 0x000c }
        r0 = r0.getMethod(r1, r2);	 Catch:{ Exception -> 0x000c }
        return r0;
    L_0x000c:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.zzz.zzzu():java.lang.reflect.Method");
    }

    private static java.lang.reflect.Method zzzv() {
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
        r0 = android.os.WorkSource.class;	 Catch:{ Exception -> 0x0011 }
        r1 = "get";	 Catch:{ Exception -> 0x0011 }
        r2 = 1;	 Catch:{ Exception -> 0x0011 }
        r2 = new java.lang.Class[r2];	 Catch:{ Exception -> 0x0011 }
        r3 = 0;	 Catch:{ Exception -> 0x0011 }
        r4 = java.lang.Integer.TYPE;	 Catch:{ Exception -> 0x0011 }
        r2[r3] = r4;	 Catch:{ Exception -> 0x0011 }
        r0 = r0.getMethod(r1, r2);	 Catch:{ Exception -> 0x0011 }
        return r0;
    L_0x0011:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.zzz.zzzv():java.lang.reflect.Method");
    }

    private static java.lang.reflect.Method zzzw() {
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
        r0 = com.google.android.gms.common.util.zzt.zzzk();
        if (r0 == 0) goto L_0x0017;
    L_0x0006:
        r0 = android.os.WorkSource.class;	 Catch:{ Exception -> 0x0017 }
        r1 = "getName";	 Catch:{ Exception -> 0x0017 }
        r2 = 1;	 Catch:{ Exception -> 0x0017 }
        r2 = new java.lang.Class[r2];	 Catch:{ Exception -> 0x0017 }
        r3 = 0;	 Catch:{ Exception -> 0x0017 }
        r4 = java.lang.Integer.TYPE;	 Catch:{ Exception -> 0x0017 }
        r2[r3] = r4;	 Catch:{ Exception -> 0x0017 }
        r0 = r0.getMethod(r1, r2);	 Catch:{ Exception -> 0x0017 }
        return r0;
    L_0x0017:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.zzz.zzzw():java.lang.reflect.Method");
    }
}
