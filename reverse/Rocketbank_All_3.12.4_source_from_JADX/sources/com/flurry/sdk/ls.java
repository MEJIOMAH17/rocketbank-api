package com.flurry.sdk;

import android.content.Context;

public class ls {
    /* renamed from: a */
    private static final String f427a = "ls";
    /* renamed from: b */
    private static String f428b = "com.google.android.gms.common.GoogleApiAvailability";
    /* renamed from: c */
    private static String f429c = "com.google.android.gms.common.GooglePlayServicesUtil";
    /* renamed from: d */
    private static String f430d = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    /* renamed from: a */
    public static boolean m321a(android.content.Context r3) {
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
        r0 = f428b;	 Catch:{ Exception -> 0x0007 }
        r0 = m322a(r3, r0);	 Catch:{ Exception -> 0x0007 }
        return r0;
    L_0x0007:
        r0 = f429c;	 Catch:{ Exception -> 0x000e }
        r3 = m322a(r3, r0);	 Catch:{ Exception -> 0x000e }
        return r3;
    L_0x000e:
        r3 = move-exception;
        r0 = f427a;
        r1 = new java.lang.StringBuilder;
        r2 = "GOOGLE PLAY SERVICES EXCEPTION: ";
        r1.<init>(r2);
        r3 = r3.getMessage();
        r1.append(r3);
        r3 = r1.toString();
        com.flurry.sdk.kf.m183b(r0, r3);
        r3 = f427a;
        r0 = "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.";
        com.flurry.sdk.kf.m183b(r3, r0);
        r3 = 0;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.ls.a(android.content.Context):boolean");
    }

    /* renamed from: a */
    private static boolean m322a(Context context, String str) throws Exception {
        context = lu.m331a(null, "isGooglePlayServicesAvailable").m332a(Class.forName(str)).m333a(Context.class, context).m334a();
        return (context == null || ((Integer) context).intValue() != null) ? null : true;
    }

    /* renamed from: b */
    public static jo m323b(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object a = lu.m331a(null, "getAdvertisingIdInfo").m332a(Class.forName(f430d)).m333a(Context.class, context).m334a();
            return new jo(m320a(a), m324b(a));
        } catch (Context context2) {
            String str = f427a;
            StringBuilder stringBuilder = new StringBuilder("GOOGLE PLAY SERVICES ERROR: ");
            stringBuilder.append(context2.getMessage());
            kf.m183b(str, stringBuilder.toString());
            kf.m183b(f427a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        }
    }

    /* renamed from: a */
    private static String m320a(Object obj) {
        try {
            return (String) lu.m331a(obj, "getId").m334a();
        } catch (Object obj2) {
            String str = f427a;
            StringBuilder stringBuilder = new StringBuilder("GOOGLE PLAY SERVICES ERROR: ");
            stringBuilder.append(obj2.getMessage());
            kf.m183b(str, stringBuilder.toString());
            kf.m183b(f427a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return null;
        }
    }

    /* renamed from: b */
    private static boolean m324b(Object obj) {
        try {
            Boolean bool = (Boolean) lu.m331a(obj, "isLimitAdTrackingEnabled").m334a();
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        } catch (Object obj2) {
            String str = f427a;
            StringBuilder stringBuilder = new StringBuilder("GOOGLE PLAY SERVICES ERROR: ");
            stringBuilder.append(obj2.getMessage());
            kf.m183b(str, stringBuilder.toString());
            kf.m183b(f427a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
            return false;
        }
    }
}
