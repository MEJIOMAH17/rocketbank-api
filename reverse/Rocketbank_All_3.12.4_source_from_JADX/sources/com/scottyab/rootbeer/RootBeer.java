package com.scottyab.rootbeer;

import android.content.Context;
import android.os.Build;
import com.facebook.appevents.AppEventsConstants;
import com.scottyab.rootbeer.util.QLog;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;

public final class RootBeer {
    private boolean loggingEnabled = true;
    private final Context mContext;

    public RootBeer(Context context) {
        this.mContext = context;
    }

    private static boolean checkForBinary(String str) {
        String[] strArr = Const.suPaths;
        int i = 0;
        boolean z = false;
        while (i < 11) {
            String str2 = strArr[i];
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str2);
            stringBuilder.append(str);
            str2 = stringBuilder.toString();
            if (new File(str2).exists()) {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(str2);
                stringBuilder2.append(" binary detected!");
                QLog.m355v(stringBuilder2.toString());
                z = true;
            }
            i++;
        }
        return z;
    }

    private static String[] propsReader() {
        InputStream inputStream;
        String next;
        try {
            inputStream = Runtime.getRuntime().exec("getprop").getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
            inputStream = null;
        }
        String str = "";
        try {
            next = new Scanner(inputStream).useDelimiter("\\A").next();
        } catch (Throwable e2) {
            StringBuilder stringBuilder = new StringBuilder("Error getprop, NoSuchElementException: ");
            stringBuilder.append(e2.getMessage());
            QLog.m354e(stringBuilder.toString(), e2);
            next = str;
        }
        return next.split("\n");
    }

    private static String[] mountReader() {
        InputStream inputStream;
        try {
            inputStream = Runtime.getRuntime().exec("mount").getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
            inputStream = null;
        }
        if (inputStream == null) {
            return null;
        }
        String str = "";
        try {
            str = new Scanner(inputStream).useDelimiter("\\A").next();
        } catch (NoSuchElementException e2) {
            e2.printStackTrace();
        }
        return str.split("\n");
    }

    private boolean isAnyPackageFromListInstalled(java.util.List<java.lang.String> r6) {
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
        r5 = this;
        r0 = r5.mContext;
        r0 = r0.getPackageManager();
        r6 = r6.iterator();
        r1 = 0;
        r2 = r1;
    L_0x000c:
        r3 = r6.hasNext();
        if (r3 == 0) goto L_0x0031;
    L_0x0012:
        r3 = r6.next();
        r3 = (java.lang.String) r3;
        r0.getPackageInfo(r3, r1);	 Catch:{ NameNotFoundException -> 0x000c }
        r4 = new java.lang.StringBuilder;	 Catch:{ NameNotFoundException -> 0x000c }
        r4.<init>();	 Catch:{ NameNotFoundException -> 0x000c }
        r4.append(r3);	 Catch:{ NameNotFoundException -> 0x000c }
        r3 = " ROOT management app detected!";	 Catch:{ NameNotFoundException -> 0x000c }
        r4.append(r3);	 Catch:{ NameNotFoundException -> 0x000c }
        r3 = r4.toString();	 Catch:{ NameNotFoundException -> 0x000c }
        com.scottyab.rootbeer.util.QLog.m353e(r3);	 Catch:{ NameNotFoundException -> 0x000c }
        r2 = 1;
        goto L_0x000c;
    L_0x0031:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scottyab.rootbeer.RootBeer.isAnyPackageFromListInstalled(java.util.List):boolean");
    }

    private static boolean checkForDangerousProps() {
        Map hashMap = new HashMap();
        hashMap.put("ro.debuggable", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        hashMap.put("ro.secure", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        String[] propsReader = propsReader();
        int i = 0;
        int length = propsReader.length;
        boolean z = false;
        while (i < length) {
            String str = propsReader[i];
            for (String str2 : hashMap.keySet()) {
                if (str.contains(str2)) {
                    String str3 = (String) hashMap.get(str2);
                    StringBuilder stringBuilder = new StringBuilder("[");
                    stringBuilder.append(str3);
                    stringBuilder.append("]");
                    Object stringBuilder2 = stringBuilder.toString();
                    if (str.contains(stringBuilder2)) {
                        StringBuilder stringBuilder3 = new StringBuilder();
                        stringBuilder3.append(str2);
                        stringBuilder3.append(" = ");
                        stringBuilder3.append(stringBuilder2);
                        stringBuilder3.append(" detected!");
                        QLog.m355v(stringBuilder3.toString());
                        z = true;
                    }
                }
            }
            i++;
        }
        return z;
    }

    private static boolean checkForRWPaths() {
        boolean z = false;
        for (String str : mountReader()) {
            String[] split = str.split(" ");
            if (split.length < 4) {
                QLog.m353e("Error formatting mount line: ".concat(String.valueOf(str)));
            } else {
                String str2 = split[1];
                String str3 = split[3];
                String[] strArr = Const.pathsThatShouldNotBeWrtiable;
                boolean z2 = z;
                for (int i = 0; i < 7; i++) {
                    String str4 = strArr[i];
                    if (str2.equalsIgnoreCase(str4)) {
                        for (String equalsIgnoreCase : str3.split(",")) {
                            if (equalsIgnoreCase.equalsIgnoreCase("rw")) {
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append(str4);
                                stringBuilder.append(" path is mounted with rw permissions! ");
                                stringBuilder.append(str);
                                QLog.m355v(stringBuilder.toString());
                                z2 = true;
                                break;
                            }
                        }
                    }
                }
                z = z2;
            }
        }
        return z;
    }

    private static boolean checkSuExists() {
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
        r1 = 0;
        r2 = java.lang.Runtime.getRuntime();	 Catch:{ Throwable -> 0x003d, all -> 0x0036 }
        r3 = 2;	 Catch:{ Throwable -> 0x003d, all -> 0x0036 }
        r3 = new java.lang.String[r3];	 Catch:{ Throwable -> 0x003d, all -> 0x0036 }
        r4 = "which";	 Catch:{ Throwable -> 0x003d, all -> 0x0036 }
        r3[r0] = r4;	 Catch:{ Throwable -> 0x003d, all -> 0x0036 }
        r4 = "su";	 Catch:{ Throwable -> 0x003d, all -> 0x0036 }
        r5 = 1;	 Catch:{ Throwable -> 0x003d, all -> 0x0036 }
        r3[r5] = r4;	 Catch:{ Throwable -> 0x003d, all -> 0x0036 }
        r2 = r2.exec(r3);	 Catch:{ Throwable -> 0x003d, all -> 0x0036 }
        r1 = new java.io.BufferedReader;	 Catch:{ Throwable -> 0x0034, all -> 0x0031 }
        r3 = new java.io.InputStreamReader;	 Catch:{ Throwable -> 0x0034, all -> 0x0031 }
        r4 = r2.getInputStream();	 Catch:{ Throwable -> 0x0034, all -> 0x0031 }
        r3.<init>(r4);	 Catch:{ Throwable -> 0x0034, all -> 0x0031 }
        r1.<init>(r3);	 Catch:{ Throwable -> 0x0034, all -> 0x0031 }
        r1 = r1.readLine();	 Catch:{ Throwable -> 0x0034, all -> 0x0031 }
        if (r1 == 0) goto L_0x002b;
    L_0x002a:
        r0 = r5;
    L_0x002b:
        if (r2 == 0) goto L_0x0030;
    L_0x002d:
        r2.destroy();
    L_0x0030:
        return r0;
    L_0x0031:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0037;
    L_0x0034:
        r1 = r2;
        goto L_0x003d;
    L_0x0036:
        r0 = move-exception;
    L_0x0037:
        if (r1 == 0) goto L_0x003c;
    L_0x0039:
        r1.destroy();
    L_0x003c:
        throw r0;
    L_0x003d:
        if (r1 == 0) goto L_0x0042;
    L_0x003f:
        r1.destroy();
    L_0x0042:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scottyab.rootbeer.RootBeer.checkSuExists():boolean");
    }

    public final boolean isRootedWithoutBusyBoxCheck() {
        List arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(Const.knownRootAppsPackages));
        if (!isAnyPackageFromListInstalled(arrayList)) {
            arrayList = new ArrayList();
            arrayList.addAll(Arrays.asList(Const.knownDangerousAppsPackages));
            if (!(isAnyPackageFromListInstalled(arrayList) || checkForBinary("su") || checkForDangerousProps() || checkForRWPaths())) {
                String str = Build.TAGS;
                boolean z = str != null && str.contains("test-keys");
                if (!(z || checkSuExists())) {
                    if (!checkForRootNative()) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private boolean checkForRootNative() {
        RootBeerNative rootBeerNative = new RootBeerNative();
        if (RootBeerNative.wasNativeLibraryLoaded()) {
            String str = "su";
            String[] strArr = Const.suPaths;
            String[] strArr2 = new String[11];
            for (int i = 0; i < 11; i++) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(Const.suPaths[i]);
                stringBuilder.append(str);
                strArr2[i] = stringBuilder.toString();
            }
            rootBeerNative = new RootBeerNative();
            rootBeerNative.setLogDebugMessages(this.loggingEnabled);
            if (rootBeerNative.checkForRoot(strArr2) > 0) {
                return true;
            }
            return false;
        }
        QLog.m353e("We could not load the native library to test for root");
        return false;
    }
}
