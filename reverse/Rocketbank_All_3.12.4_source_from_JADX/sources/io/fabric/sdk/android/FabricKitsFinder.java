package io.fabric.sdk.android;

import android.os.SystemClock;
import android.support.v7.cardview.C0943R.dimen;
import android.text.TextUtils;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

final class FabricKitsFinder implements Callable<Map<String, dimen>> {
    final String apkFileName;

    FabricKitsFinder(String str) {
        this.apkFileName = str;
    }

    private static java.util.Map<java.lang.String, android.support.v7.cardview.C0943R.dimen> findImplicitKits() {
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
        r0 = new java.util.HashMap;
        r0.<init>();
        r1 = "com.google.android.gms.ads.AdView";	 Catch:{ Exception -> 0x0027 }
        java.lang.Class.forName(r1);	 Catch:{ Exception -> 0x0027 }
        r1 = new android.support.v7.cardview.R$dimen;	 Catch:{ Exception -> 0x0027 }
        r2 = "com.google.firebase.firebase-ads";	 Catch:{ Exception -> 0x0027 }
        r3 = "0.0.0";	 Catch:{ Exception -> 0x0027 }
        r4 = "binary";	 Catch:{ Exception -> 0x0027 }
        r1.<init>(r2, r3, r4);	 Catch:{ Exception -> 0x0027 }
        r2 = r1.getIdentifier();	 Catch:{ Exception -> 0x0027 }
        r0.put(r2, r1);	 Catch:{ Exception -> 0x0027 }
        r1 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Exception -> 0x0027 }
        r2 = "Fabric";	 Catch:{ Exception -> 0x0027 }
        r3 = "Found kit: com.google.firebase.firebase-ads";	 Catch:{ Exception -> 0x0027 }
        r1.mo775v(r2, r3);	 Catch:{ Exception -> 0x0027 }
    L_0x0027:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.FabricKitsFinder.findImplicitKits():java.util.Map<java.lang.String, android.support.v7.cardview.R$dimen>");
    }

    private java.util.Map<java.lang.String, android.support.v7.cardview.C0943R.dimen> findRegisteredKits() throws java.lang.Exception {
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
        r10 = this;
        r0 = new java.util.HashMap;
        r0.<init>();
        r1 = new java.util.zip.ZipFile;
        r2 = r10.apkFileName;
        r1.<init>(r2);
        r2 = r1.entries();
    L_0x0010:
        r3 = r2.hasMoreElements();
        if (r3 == 0) goto L_0x0061;
    L_0x0016:
        r3 = r2.nextElement();
        r3 = (java.util.zip.ZipEntry) r3;
        r4 = r3.getName();
        r5 = "fabric/";
        r4 = r4.startsWith(r5);
        if (r4 == 0) goto L_0x0010;
    L_0x0028:
        r4 = r3.getName();
        r4 = r4.length();
        r5 = 7;
        if (r4 <= r5) goto L_0x0010;
    L_0x0033:
        r3 = loadKitInfo$46ddd4d0(r3, r1);
        if (r3 == 0) goto L_0x0010;
    L_0x0039:
        r4 = r3.getIdentifier();
        r0.put(r4, r3);
        r4 = io.fabric.sdk.android.Fabric.getLogger();
        r5 = "Fabric";
        r6 = "Found kit:[%s] version:[%s]";
        r7 = 2;
        r7 = new java.lang.Object[r7];
        r8 = 0;
        r9 = r3.getIdentifier();
        r7[r8] = r9;
        r8 = 1;
        r3 = r3.getVersion();
        r7[r8] = r3;
        r3 = java.lang.String.format(r6, r7);
        r4.mo775v(r5, r3);
        goto L_0x0010;
    L_0x0061:
        r1.close();	 Catch:{ IOException -> 0x0064 }
    L_0x0064:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.FabricKitsFinder.findRegisteredKits():java.util.Map<java.lang.String, android.support.v7.cardview.R$dimen>");
    }

    private static dimen loadKitInfo$46ddd4d0(ZipEntry zipEntry, ZipFile zipFile) {
        Throwable e;
        StringBuilder stringBuilder;
        try {
            zipFile = zipFile.getInputStream(zipEntry);
            try {
                Properties properties = new Properties();
                properties.load(zipFile);
                Object property = properties.getProperty("fabric-identifier");
                Object property2 = properties.getProperty("fabric-version");
                String property3 = properties.getProperty("fabric-build-type");
                if (!TextUtils.isEmpty(property)) {
                    if (!TextUtils.isEmpty(property2)) {
                        dimen dimen = new dimen(property, property2, property3);
                        CommonUtils.closeQuietly(zipFile);
                        return dimen;
                    }
                }
                StringBuilder stringBuilder2 = new StringBuilder("Invalid format of fabric file,");
                stringBuilder2.append(zipEntry.getName());
                throw new IllegalStateException(stringBuilder2.toString());
            } catch (IOException e2) {
                e = e2;
                try {
                    stringBuilder = new StringBuilder("Error when parsing fabric properties ");
                    stringBuilder.append(zipEntry.getName());
                    Fabric.getLogger().mo771e("Fabric", stringBuilder.toString(), e);
                    CommonUtils.closeQuietly(zipFile);
                    return null;
                } catch (Throwable th) {
                    zipEntry = th;
                    CommonUtils.closeQuietly(zipFile);
                    throw zipEntry;
                }
            }
        } catch (IOException e3) {
            e = e3;
            zipFile = null;
            stringBuilder = new StringBuilder("Error when parsing fabric properties ");
            stringBuilder.append(zipEntry.getName());
            Fabric.getLogger().mo771e("Fabric", stringBuilder.toString(), e);
            CommonUtils.closeQuietly(zipFile);
            return null;
        } catch (Throwable th2) {
            zipEntry = th2;
            zipFile = null;
            CommonUtils.closeQuietly(zipFile);
            throw zipEntry;
        }
    }

    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        Map hashMap = new HashMap();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        hashMap.putAll(findImplicitKits());
        hashMap.putAll(findRegisteredKits());
        StringBuilder stringBuilder = new StringBuilder("finish scanning in ");
        stringBuilder.append(SystemClock.elapsedRealtime() - elapsedRealtime);
        Fabric.getLogger().mo775v("Fabric", stringBuilder.toString());
        return hashMap;
    }
}
