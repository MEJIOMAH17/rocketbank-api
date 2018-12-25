package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.common.util.zzj;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.common.util.zzy;
import java.util.concurrent.atomic.AtomicBoolean;

public class zzg {
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 10260000;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    private static boolean zzayA = false;
    static final AtomicBoolean zzayB = new AtomicBoolean();
    private static final AtomicBoolean zzayC = new AtomicBoolean();
    public static boolean zzayx = false;
    public static boolean zzayy = false;
    static boolean zzayz = false;

    zzg() {
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return zze.zzuY().getErrorResolutionPendingIntent(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.getStatusString(i);
    }

    @java.lang.Deprecated
    public static java.lang.String getOpenSourceSoftwareLicenseInfo(android.content.Context r3) {
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
        r0 = new android.net.Uri$Builder;
        r0.<init>();
        r1 = "android.resource";
        r0 = r0.scheme(r1);
        r1 = "com.google.android.gms";
        r0 = r0.authority(r1);
        r1 = "raw";
        r0 = r0.appendPath(r1);
        r1 = "oss_notice";
        r0 = r0.appendPath(r1);
        r0 = r0.build();
        r1 = 0;
        r3 = r3.getContentResolver();	 Catch:{ Exception -> 0x004b }
        r3 = r3.openInputStream(r0);	 Catch:{ Exception -> 0x004b }
        r0 = new java.util.Scanner;	 Catch:{ NoSuchElementException -> 0x0046, all -> 0x003f }
        r0.<init>(r3);	 Catch:{ NoSuchElementException -> 0x0046, all -> 0x003f }
        r2 = "\\A";	 Catch:{ NoSuchElementException -> 0x0046, all -> 0x003f }
        r0 = r0.useDelimiter(r2);	 Catch:{ NoSuchElementException -> 0x0046, all -> 0x003f }
        r0 = r0.next();	 Catch:{ NoSuchElementException -> 0x0046, all -> 0x003f }
        if (r3 == 0) goto L_0x003e;
    L_0x003b:
        r3.close();	 Catch:{ Exception -> 0x004b }
    L_0x003e:
        return r0;	 Catch:{ Exception -> 0x004b }
    L_0x003f:
        r0 = move-exception;	 Catch:{ Exception -> 0x004b }
        if (r3 == 0) goto L_0x0045;	 Catch:{ Exception -> 0x004b }
    L_0x0042:
        r3.close();	 Catch:{ Exception -> 0x004b }
    L_0x0045:
        throw r0;	 Catch:{ Exception -> 0x004b }
    L_0x0046:
        if (r3 == 0) goto L_0x004b;	 Catch:{ Exception -> 0x004b }
    L_0x0048:
        r3.close();	 Catch:{ Exception -> 0x004b }
    L_0x004b:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzg.getOpenSourceSoftwareLicenseInfo(android.content.Context):java.lang.String");
    }

    public static android.content.Context getRemoteContext(android.content.Context r2) {
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
        r0 = "com.google.android.gms";	 Catch:{ NameNotFoundException -> 0x0008 }
        r1 = 3;	 Catch:{ NameNotFoundException -> 0x0008 }
        r2 = r2.createPackageContext(r0, r1);	 Catch:{ NameNotFoundException -> 0x0008 }
        return r2;
    L_0x0008:
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzg.getRemoteContext(android.content.Context):android.content.Context");
    }

    public static android.content.res.Resources getRemoteResource(android.content.Context r1) {
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
        r1 = r1.getPackageManager();	 Catch:{ NameNotFoundException -> 0x000b }
        r0 = "com.google.android.gms";	 Catch:{ NameNotFoundException -> 0x000b }
        r1 = r1.getResourcesForApplication(r0);	 Catch:{ NameNotFoundException -> 0x000b }
        return r1;
    L_0x000b:
        r1 = 0;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzg.getRemoteResource(android.content.Context):android.content.res.Resources");
    }

    @java.lang.Deprecated
    public static int isGooglePlayServicesAvailable(android.content.Context r8) {
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
        r0 = r8.getPackageManager();
        r1 = r8.getResources();	 Catch:{ Throwable -> 0x000e }
        r2 = com.google.android.gms.C0537R.string.common_google_play_services_unknown_issue;	 Catch:{ Throwable -> 0x000e }
        r1.getString(r2);	 Catch:{ Throwable -> 0x000e }
        goto L_0x0015;
    L_0x000e:
        r1 = "GooglePlayServicesUtil";
        r2 = "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.";
        android.util.Log.e(r1, r2);
    L_0x0015:
        r1 = "com.google.android.gms";
        r2 = r8.getPackageName();
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x0024;
    L_0x0021:
        zzaH(r8);
    L_0x0024:
        r1 = com.google.android.gms.common.util.zzj.zzba(r8);
        r2 = 0;
        r3 = 1;
        if (r1 != 0) goto L_0x0034;
    L_0x002c:
        r1 = com.google.android.gms.common.util.zzj.zzbc(r8);
        if (r1 != 0) goto L_0x0034;
    L_0x0032:
        r1 = r3;
        goto L_0x0035;
    L_0x0034:
        r1 = r2;
    L_0x0035:
        r4 = 0;
        r5 = 9;
        if (r1 == 0) goto L_0x004b;
    L_0x003a:
        r4 = "com.android.vending";	 Catch:{ NameNotFoundException -> 0x0043 }
        r6 = 8256; // 0x2040 float:1.1569E-41 double:4.079E-320;	 Catch:{ NameNotFoundException -> 0x0043 }
        r4 = r0.getPackageInfo(r4, r6);	 Catch:{ NameNotFoundException -> 0x0043 }
        goto L_0x004b;
    L_0x0043:
        r8 = "GooglePlayServicesUtil";
        r0 = "Google Play Store is missing.";
    L_0x0047:
        android.util.Log.w(r8, r0);
        return r5;
    L_0x004b:
        r6 = "com.google.android.gms";	 Catch:{ NameNotFoundException -> 0x00cd }
        r7 = 64;	 Catch:{ NameNotFoundException -> 0x00cd }
        r6 = r0.getPackageInfo(r6, r7);	 Catch:{ NameNotFoundException -> 0x00cd }
        r8 = com.google.android.gms.common.zzh.zzaN(r8);
        if (r1 == 0) goto L_0x0075;
    L_0x0059:
        r1 = com.google.android.gms.common.zzf.zzd.zzayw;
        r1 = r8.zza(r4, r1);
        if (r1 != 0) goto L_0x0066;
    L_0x0061:
        r8 = "GooglePlayServicesUtil";
        r0 = "Google Play Store signature invalid.";
        goto L_0x0047;
    L_0x0066:
        r4 = new com.google.android.gms.common.zzf.zza[r3];
        r4[r2] = r1;
        r8 = r8.zza(r6, r4);
        if (r8 != 0) goto L_0x007e;
    L_0x0070:
        r8 = "GooglePlayServicesUtil";
        r0 = "Google Play services signature invalid.";
        goto L_0x0047;
    L_0x0075:
        r1 = com.google.android.gms.common.zzf.zzd.zzayw;
        r8 = r8.zza(r6, r1);
        if (r8 != 0) goto L_0x007e;
    L_0x007d:
        goto L_0x0070;
    L_0x007e:
        r8 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        r8 = com.google.android.gms.common.util.zzm.zzdp(r8);
        r1 = r6.versionCode;
        r1 = com.google.android.gms.common.util.zzm.zzdp(r1);
        if (r1 >= r8) goto L_0x00b2;
    L_0x008c:
        r8 = "GooglePlayServicesUtil";
        r0 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        r1 = r6.versionCode;
        r2 = 77;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "Google Play services out of date.  Requires ";
        r3.append(r2);
        r3.append(r0);
        r0 = " but found ";
        r3.append(r0);
        r3.append(r1);
        r0 = r3.toString();
        android.util.Log.w(r8, r0);
        r8 = 2;
        return r8;
    L_0x00b2:
        r8 = r6.applicationInfo;
        if (r8 != 0) goto L_0x00c6;
    L_0x00b6:
        r8 = "com.google.android.gms";	 Catch:{ NameNotFoundException -> 0x00bd }
        r8 = r0.getApplicationInfo(r8, r2);	 Catch:{ NameNotFoundException -> 0x00bd }
        goto L_0x00c6;
    L_0x00bd:
        r8 = move-exception;
        r0 = "GooglePlayServicesUtil";
        r1 = "Google Play services missing when getting application info.";
        android.util.Log.wtf(r0, r1, r8);
        return r3;
    L_0x00c6:
        r8 = r8.enabled;
        if (r8 != 0) goto L_0x00cc;
    L_0x00ca:
        r8 = 3;
        return r8;
    L_0x00cc:
        return r2;
    L_0x00cd:
        r8 = "GooglePlayServicesUtil";
        r0 = "Google Play services is missing.";
        android.util.Log.w(r8, r0);
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzg.isGooglePlayServicesAvailable(android.content.Context):int");
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        if (i != 9) {
            switch (i) {
                case 1:
                case 2:
                case 3:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    @android.annotation.TargetApi(21)
    static boolean zzA(android.content.Context r5, java.lang.String r6) {
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
        r0 = "com.google.android.gms";
        r0 = r6.equals(r0);
        r1 = com.google.android.gms.common.util.zzt.zzzo();
        r2 = 1;
        if (r1 == 0) goto L_0x0034;
    L_0x000d:
        r1 = r5.getPackageManager();
        r1 = r1.getPackageInstaller();
        r1 = r1.getAllSessions();
        r1 = r1.iterator();
    L_0x001d:
        r3 = r1.hasNext();
        if (r3 == 0) goto L_0x0034;
    L_0x0023:
        r3 = r1.next();
        r3 = (android.content.pm.PackageInstaller.SessionInfo) r3;
        r3 = r3.getAppPackageName();
        r3 = r6.equals(r3);
        if (r3 == 0) goto L_0x001d;
    L_0x0033:
        return r2;
    L_0x0034:
        r1 = r5.getPackageManager();
        r3 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r4 = 0;
        r6 = r1.getApplicationInfo(r6, r3);	 Catch:{ NameNotFoundException -> 0x004f }
        if (r0 == 0) goto L_0x0044;	 Catch:{ NameNotFoundException -> 0x004f }
    L_0x0041:
        r5 = r6.enabled;	 Catch:{ NameNotFoundException -> 0x004f }
        return r5;	 Catch:{ NameNotFoundException -> 0x004f }
    L_0x0044:
        r6 = r6.enabled;	 Catch:{ NameNotFoundException -> 0x004f }
        if (r6 == 0) goto L_0x004f;	 Catch:{ NameNotFoundException -> 0x004f }
    L_0x0048:
        r5 = zzaK(r5);	 Catch:{ NameNotFoundException -> 0x004f }
        if (r5 != 0) goto L_0x004f;
    L_0x004e:
        return r2;
    L_0x004f:
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzg.zzA(android.content.Context, java.lang.String):boolean");
    }

    @java.lang.Deprecated
    public static int zzaC(android.content.Context r2) {
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
        r0 = 0;
        r2 = r2.getPackageManager();	 Catch:{ NameNotFoundException -> 0x000e }
        r1 = "com.google.android.gms";	 Catch:{ NameNotFoundException -> 0x000e }
        r2 = r2.getPackageInfo(r1, r0);	 Catch:{ NameNotFoundException -> 0x000e }
        r2 = r2.versionCode;
        return r2;
    L_0x000e:
        r2 = "GooglePlayServicesUtil";
        r1 = "Google Play services is missing.";
        android.util.Log.w(r2, r1);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzg.zzaC(android.content.Context):int");
    }

    @java.lang.Deprecated
    public static void zzaF(android.content.Context r2) {
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
        r0 = zzayB;
        r1 = 1;
        r0 = r0.getAndSet(r1);
        if (r0 == 0) goto L_0x000a;
    L_0x0009:
        return;
    L_0x000a:
        r0 = "notification";	 Catch:{ SecurityException -> 0x0019 }
        r2 = r2.getSystemService(r0);	 Catch:{ SecurityException -> 0x0019 }
        r2 = (android.app.NotificationManager) r2;	 Catch:{ SecurityException -> 0x0019 }
        if (r2 == 0) goto L_0x0019;	 Catch:{ SecurityException -> 0x0019 }
    L_0x0014:
        r0 = 10436; // 0x28c4 float:1.4624E-41 double:5.156E-320;	 Catch:{ SecurityException -> 0x0019 }
        r2.cancel(r0);	 Catch:{ SecurityException -> 0x0019 }
    L_0x0019:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzg.zzaF(android.content.Context):void");
    }

    private static void zzaH(Context context) {
        if (!zzayC.get()) {
            int zzaW = zzz.zzaW(context);
            if (zzaW == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            } else if (zzaW != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                int i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                String valueOf = String.valueOf("com.google.android.gms.version");
                StringBuilder stringBuilder = new StringBuilder(290 + String.valueOf(valueOf).length());
                stringBuilder.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ");
                stringBuilder.append(i);
                stringBuilder.append(" but found ");
                stringBuilder.append(zzaW);
                stringBuilder.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"");
                stringBuilder.append(valueOf);
                stringBuilder.append("\" android:value=\"@integer/google_play_services_version\" />");
                throw new IllegalStateException(stringBuilder.toString());
            }
        }
    }

    public static boolean zzaI(Context context) {
        zzaL(context);
        return zzayz;
    }

    public static boolean zzaJ(Context context) {
        if (!zzaI(context)) {
            if (zzvd()) {
                return false;
            }
        }
        return true;
    }

    @TargetApi(18)
    public static boolean zzaK(Context context) {
        if (zzt.zzzk()) {
            Bundle applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName());
            if (applicationRestrictions != null && ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(applicationRestrictions.getString("restricted_profile"))) {
                return true;
            }
        }
        return false;
    }

    private static void zzaL(Context context) {
        if (!zzayA) {
            zzaM(context);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void zzaM(android.content.Context r5) {
        /*
        r0 = 1;
        r1 = com.google.android.gms.internal.zzadg.zzbi(r5);	 Catch:{ NameNotFoundException -> 0x002c }
        r2 = "com.google.android.gms";
        r3 = 64;
        r1 = r1.getPackageInfo(r2, r3);	 Catch:{ NameNotFoundException -> 0x002c }
        r2 = 0;
        if (r1 == 0) goto L_0x0025;
    L_0x0010:
        r5 = com.google.android.gms.common.zzh.zzaN(r5);	 Catch:{ NameNotFoundException -> 0x002c }
        r3 = new com.google.android.gms.common.zzf.zza[r0];	 Catch:{ NameNotFoundException -> 0x002c }
        r4 = com.google.android.gms.common.zzf.zzd.zzayw;	 Catch:{ NameNotFoundException -> 0x002c }
        r4 = r4[r0];	 Catch:{ NameNotFoundException -> 0x002c }
        r3[r2] = r4;	 Catch:{ NameNotFoundException -> 0x002c }
        r5 = r5.zza(r1, r3);	 Catch:{ NameNotFoundException -> 0x002c }
        if (r5 == 0) goto L_0x0025;
    L_0x0022:
        zzayz = r0;	 Catch:{ NameNotFoundException -> 0x002c }
        goto L_0x0027;
    L_0x0025:
        zzayz = r2;	 Catch:{ NameNotFoundException -> 0x002c }
    L_0x0027:
        zzayA = r0;
        return;
    L_0x002a:
        r5 = move-exception;
        goto L_0x0037;
    L_0x002c:
        r5 = move-exception;
        r1 = "GooglePlayServicesUtil";
        r2 = "Cannot find Google Play services package name.";
        android.util.Log.w(r1, r2, r5);	 Catch:{ all -> 0x002a }
        zzayA = r0;
        return;
    L_0x0037:
        zzayA = r0;
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzg.zzaM(android.content.Context):void");
    }

    @Deprecated
    public static void zzaq(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int isGooglePlayServicesAvailable = zze.zzuY().isGooglePlayServicesAvailable(context);
        if (isGooglePlayServicesAvailable != 0) {
            Intent zzb = zze.zzuY().zzb(context, isGooglePlayServicesAvailable, "e");
            StringBuilder stringBuilder = new StringBuilder(57);
            stringBuilder.append("GooglePlayServices not available due to error ");
            stringBuilder.append(isGooglePlayServicesAvailable);
            Log.e("GooglePlayServicesUtil", stringBuilder.toString());
            if (zzb == null) {
                throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
            }
            throw new GooglePlayServicesRepairableException(isGooglePlayServicesAvailable, "Google Play Services not available", zzb);
        }
    }

    @TargetApi(19)
    @Deprecated
    public static boolean zzc(Context context, int i, String str) {
        return zzy.zzc(context, i, str);
    }

    @Deprecated
    public static boolean zzd(Context context, int i) {
        return i == 18 ? true : i == 1 ? zzA(context, "com.google.android.gms") : false;
    }

    @Deprecated
    public static boolean zze(Context context, int i) {
        return i == 9 ? zzA(context, "com.android.vending") : false;
    }

    @Deprecated
    public static boolean zzf(Context context, int i) {
        return zzy.zzf(context, i);
    }

    @Deprecated
    public static boolean zzvd() {
        return zzj.zzzd();
    }
}
