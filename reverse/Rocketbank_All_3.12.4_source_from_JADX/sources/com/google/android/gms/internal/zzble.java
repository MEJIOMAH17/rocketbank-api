package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

public class zzble {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri zzbVQ = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern zzbVR = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern zzbVS = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean zzbVT = new AtomicBoolean();
    static HashMap<String, String> zzbVU;
    private static Object zzbVV;
    private static boolean zzbVW;
    static String[] zzbVX = new String[0];

    /* renamed from: com.google.android.gms.internal.zzble$1 */
    class C06181 extends ContentObserver {
        C06181(Handler handler) {
            super(handler);
        }

        public final void onChange(boolean z) {
            zzble.zzbVT.set(true);
        }
    }

    public static long getLong(android.content.ContentResolver r0, java.lang.String r1, long r2) {
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
        r0 = getString(r0, r1);
        if (r0 == 0) goto L_0x000b;
    L_0x0006:
        r0 = java.lang.Long.parseLong(r0);	 Catch:{ NumberFormatException -> 0x000b }
        r2 = r0;
    L_0x000b:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzble.getLong(android.content.ContentResolver, java.lang.String, long):long");
    }

    @Deprecated
    public static String getString(ContentResolver contentResolver, String str) {
        return zza(contentResolver, str, null);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String zza(android.content.ContentResolver r9, java.lang.String r10, java.lang.String r11) {
        /*
        r0 = com.google.android.gms.internal.zzble.class;
        monitor-enter(r0);
        zza(r9);	 Catch:{ all -> 0x009e }
        r1 = zzbVV;	 Catch:{ all -> 0x009e }
        r2 = zzbVU;	 Catch:{ all -> 0x009e }
        r2 = r2.containsKey(r10);	 Catch:{ all -> 0x009e }
        if (r2 == 0) goto L_0x001e;
    L_0x0010:
        r9 = zzbVU;	 Catch:{ all -> 0x009e }
        r9 = r9.get(r10);	 Catch:{ all -> 0x009e }
        r9 = (java.lang.String) r9;	 Catch:{ all -> 0x009e }
        if (r9 == 0) goto L_0x001b;
    L_0x001a:
        goto L_0x001c;
    L_0x001b:
        r9 = r11;
    L_0x001c:
        monitor-exit(r0);	 Catch:{ all -> 0x009e }
        return r9;
    L_0x001e:
        r2 = zzbVX;	 Catch:{ all -> 0x009e }
        r3 = r2.length;	 Catch:{ all -> 0x009e }
        r4 = 0;
        r5 = r4;
    L_0x0023:
        if (r5 >= r3) goto L_0x0059;
    L_0x0025:
        r6 = r2[r5];	 Catch:{ all -> 0x009e }
        r6 = r10.startsWith(r6);	 Catch:{ all -> 0x009e }
        if (r6 == 0) goto L_0x0056;
    L_0x002d:
        r1 = zzbVW;	 Catch:{ all -> 0x009e }
        if (r1 == 0) goto L_0x0039;
    L_0x0031:
        r1 = zzbVU;	 Catch:{ all -> 0x009e }
        r1 = r1.isEmpty();	 Catch:{ all -> 0x009e }
        if (r1 == 0) goto L_0x0054;
    L_0x0039:
        r1 = zzbVX;	 Catch:{ all -> 0x009e }
        zzc(r9, r1);	 Catch:{ all -> 0x009e }
        r9 = zzbVU;	 Catch:{ all -> 0x009e }
        r9 = r9.containsKey(r10);	 Catch:{ all -> 0x009e }
        if (r9 == 0) goto L_0x0054;
    L_0x0046:
        r9 = zzbVU;	 Catch:{ all -> 0x009e }
        r9 = r9.get(r10);	 Catch:{ all -> 0x009e }
        r9 = (java.lang.String) r9;	 Catch:{ all -> 0x009e }
        if (r9 == 0) goto L_0x0051;
    L_0x0050:
        goto L_0x0052;
    L_0x0051:
        r9 = r11;
    L_0x0052:
        monitor-exit(r0);	 Catch:{ all -> 0x009e }
        return r9;
    L_0x0054:
        monitor-exit(r0);	 Catch:{ all -> 0x009e }
        return r11;
    L_0x0056:
        r5 = r5 + 1;
        goto L_0x0023;
    L_0x0059:
        monitor-exit(r0);	 Catch:{ all -> 0x009e }
        r3 = CONTENT_URI;
        r0 = 0;
        r5 = 0;
        r8 = 1;
        r6 = new java.lang.String[r8];
        r6[r4] = r10;
        r7 = 0;
        r2 = r9;
        r4 = r0;
        r9 = r2.query(r3, r4, r5, r6, r7);
        if (r9 == 0) goto L_0x008e;
    L_0x006c:
        r0 = r9.moveToFirst();	 Catch:{ all -> 0x008c }
        if (r0 != 0) goto L_0x0073;
    L_0x0072:
        goto L_0x008e;
    L_0x0073:
        r0 = r9.getString(r8);	 Catch:{ all -> 0x008c }
        if (r0 == 0) goto L_0x0080;
    L_0x0079:
        r2 = r0.equals(r11);	 Catch:{ all -> 0x008c }
        if (r2 == 0) goto L_0x0080;
    L_0x007f:
        r0 = r11;
    L_0x0080:
        zza(r1, r10, r0);	 Catch:{ all -> 0x008c }
        if (r0 == 0) goto L_0x0086;
    L_0x0085:
        r11 = r0;
    L_0x0086:
        if (r9 == 0) goto L_0x008b;
    L_0x0088:
        r9.close();
    L_0x008b:
        return r11;
    L_0x008c:
        r10 = move-exception;
        goto L_0x0098;
    L_0x008e:
        r0 = 0;
        zza(r1, r10, r0);	 Catch:{ all -> 0x008c }
        if (r9 == 0) goto L_0x0097;
    L_0x0094:
        r9.close();
    L_0x0097:
        return r11;
    L_0x0098:
        if (r9 == 0) goto L_0x009d;
    L_0x009a:
        r9.close();
    L_0x009d:
        throw r10;
    L_0x009e:
        r9 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x009e }
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzble.zza(android.content.ContentResolver, java.lang.String, java.lang.String):java.lang.String");
    }

    public static Map<String, String> zza(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(zzbVQ, null, null, strArr, null);
        Map<String, String> treeMap = new TreeMap();
        if (query == null) {
            return treeMap;
        }
        while (query.moveToNext()) {
            try {
                treeMap.put(query.getString(0), query.getString(1));
            } finally {
                query.close();
            }
        }
        return treeMap;
    }

    private static void zza(ContentResolver contentResolver) {
        if (zzbVU == null) {
            zzbVT.set(false);
            zzbVU = new HashMap();
            zzbVV = new Object();
            zzbVW = false;
            contentResolver.registerContentObserver(CONTENT_URI, true, new C06181(null));
            return;
        }
        if (zzbVT.getAndSet(false)) {
            zzbVU.clear();
            zzbVV = new Object();
            zzbVW = false;
        }
    }

    private static void zza(Object obj, String str, String str2) {
        synchronized (zzble.class) {
            if (obj == zzbVV) {
                zzbVU.put(str, str2);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void zzb(android.content.ContentResolver r2, java.lang.String... r3) {
        /*
        r0 = r3.length;
        if (r0 != 0) goto L_0x0004;
    L_0x0003:
        return;
    L_0x0004:
        r0 = com.google.android.gms.internal.zzble.class;
        monitor-enter(r0);
        zza(r2);	 Catch:{ all -> 0x0027 }
        r3 = zzk(r3);	 Catch:{ all -> 0x0027 }
        r1 = zzbVW;	 Catch:{ all -> 0x0027 }
        if (r1 == 0) goto L_0x0022;
    L_0x0012:
        r1 = zzbVU;	 Catch:{ all -> 0x0027 }
        r1 = r1.isEmpty();	 Catch:{ all -> 0x0027 }
        if (r1 == 0) goto L_0x001b;
    L_0x001a:
        goto L_0x0022;
    L_0x001b:
        r1 = r3.length;	 Catch:{ all -> 0x0027 }
        if (r1 == 0) goto L_0x0025;
    L_0x001e:
        zzc(r2, r3);	 Catch:{ all -> 0x0027 }
        goto L_0x0025;
    L_0x0022:
        r3 = zzbVX;	 Catch:{ all -> 0x0027 }
        goto L_0x001e;
    L_0x0025:
        monitor-exit(r0);	 Catch:{ all -> 0x0027 }
        return;
    L_0x0027:
        r2 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0027 }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzble.zzb(android.content.ContentResolver, java.lang.String[]):void");
    }

    private static void zzc(ContentResolver contentResolver, String[] strArr) {
        zzbVU.putAll(zza(contentResolver, strArr));
        zzbVW = true;
    }

    private static String[] zzk(String[] strArr) {
        HashSet hashSet = new HashSet((((zzbVX.length + strArr.length) << 2) / 3) + 1);
        hashSet.addAll(Arrays.asList(zzbVX));
        ArrayList arrayList = new ArrayList();
        for (Object obj : strArr) {
            if (hashSet.add(obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return new String[0];
        }
        zzbVX = (String[]) hashSet.toArray(new String[hashSet.size()]);
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
