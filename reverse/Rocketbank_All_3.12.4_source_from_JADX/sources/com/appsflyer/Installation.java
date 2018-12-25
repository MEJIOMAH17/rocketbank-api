package com.appsflyer;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build.VERSION;
import java.io.File;
import java.util.Random;
import java.util.UUID;

public final class Installation {
    private static String sID;

    public static synchronized String id(Context context) {
        synchronized (Installation.class) {
            if (sID == null) {
                String string = context.getSharedPreferences("appsflyer-data", 0).getString("AF_INSTALLATION", null);
                if (string != null) {
                    sID = string;
                } else {
                    File file = new File(context.getFilesDir(), "AF_INSTALLATION");
                    try {
                        if (file.exists()) {
                            sID = readInstallationFile(file);
                            file.delete();
                        } else {
                            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                            if (VERSION.SDK_INT >= 9) {
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append(packageInfo.firstInstallTime);
                                stringBuilder.append("-");
                                stringBuilder.append(Math.abs(new Random().nextLong()));
                                string = stringBuilder.toString();
                            } else {
                                string = UUID.randomUUID().toString();
                            }
                            sID = string;
                        }
                        string = sID;
                        context = context.getSharedPreferences("appsflyer-data", 0).edit();
                        context.putString("AF_INSTALLATION", string);
                        if (VERSION.SDK_INT >= 9) {
                            context.apply();
                        } else {
                            context.commit();
                        }
                    } catch (Context context2) {
                        throw new RuntimeException(context2);
                    }
                }
            }
            context2 = sID;
        }
        return context2;
    }

    private static java.lang.String readInstallationFile(java.io.File r4) {
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
        r1 = new java.io.RandomAccessFile;	 Catch:{ IOException -> 0x0025, all -> 0x001d }
        r2 = "r";	 Catch:{ IOException -> 0x0025, all -> 0x001d }
        r1.<init>(r4, r2);	 Catch:{ IOException -> 0x0025, all -> 0x001d }
        r2 = r1.length();	 Catch:{ IOException -> 0x001b, all -> 0x0019 }
        r4 = (int) r2;	 Catch:{ IOException -> 0x001b, all -> 0x0019 }
        r4 = new byte[r4];	 Catch:{ IOException -> 0x001b, all -> 0x0019 }
        r1.readFully(r4);	 Catch:{ IOException -> 0x0027, all -> 0x0019 }
        r1.close();	 Catch:{ IOException -> 0x0027, all -> 0x0019 }
    L_0x0015:
        r1.close();	 Catch:{ IOException -> 0x002a }
        goto L_0x002a;
    L_0x0019:
        r4 = move-exception;
        goto L_0x001f;
    L_0x001b:
        r4 = r0;
        goto L_0x0027;
    L_0x001d:
        r4 = move-exception;
        r1 = r0;
    L_0x001f:
        if (r1 == 0) goto L_0x0024;
    L_0x0021:
        r1.close();	 Catch:{ IOException -> 0x0024 }
    L_0x0024:
        throw r4;
    L_0x0025:
        r4 = r0;
        r1 = r4;
    L_0x0027:
        if (r1 == 0) goto L_0x002a;
    L_0x0029:
        goto L_0x0015;
    L_0x002a:
        r0 = new java.lang.String;
        if (r4 == 0) goto L_0x002f;
    L_0x002e:
        goto L_0x0032;
    L_0x002f:
        r4 = 0;
        r4 = new byte[r4];
    L_0x0032:
        r0.<init>(r4);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.Installation.readInstallationFile(java.io.File):java.lang.String");
    }
}
