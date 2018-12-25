package io.fabric.sdk.android.services.common;

import android.content.Context;

class AdvertisingInfoReflectionStrategy implements AdvertisingInfoStrategy {
    private static final String CLASS_NAME_ADVERTISING_ID_CLIENT = "com.google.android.gms.ads.identifier.AdvertisingIdClient";
    private static final String CLASS_NAME_ADVERTISING_ID_CLIENT_INFO = "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info";
    private static final String CLASS_NAME_GOOGLE_PLAY_SERVICES_UTILS = "com.google.android.gms.common.GooglePlayServicesUtil";
    private static final int GOOGLE_PLAY_SERVICES_SUCCESS_CODE = 0;
    private static final String METHOD_NAME_GET_ADVERTISING_ID_INFO = "getAdvertisingIdInfo";
    private static final String METHOD_NAME_GET_ID = "getId";
    private static final String METHOD_NAME_IS_GOOGLE_PLAY_SERVICES_AVAILABLE = "isGooglePlayServicesAvailable";
    private static final String METHOD_NAME_IS_LIMITED_AD_TRACKING_ENABLED = "isLimitAdTrackingEnabled";
    private final Context context;

    public AdvertisingInfoReflectionStrategy(Context context) {
        this.context = context.getApplicationContext();
    }

    boolean isGooglePlayServiceAvailable(android.content.Context r7) {
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
        r6 = this;
        r0 = 0;
        r1 = "com.google.android.gms.common.GooglePlayServicesUtil";	 Catch:{ Exception -> 0x0027 }
        r1 = java.lang.Class.forName(r1);	 Catch:{ Exception -> 0x0027 }
        r2 = "isGooglePlayServicesAvailable";	 Catch:{ Exception -> 0x0027 }
        r3 = 1;	 Catch:{ Exception -> 0x0027 }
        r4 = new java.lang.Class[r3];	 Catch:{ Exception -> 0x0027 }
        r5 = android.content.Context.class;	 Catch:{ Exception -> 0x0027 }
        r4[r0] = r5;	 Catch:{ Exception -> 0x0027 }
        r1 = r1.getMethod(r2, r4);	 Catch:{ Exception -> 0x0027 }
        r2 = 0;	 Catch:{ Exception -> 0x0027 }
        r4 = new java.lang.Object[r3];	 Catch:{ Exception -> 0x0027 }
        r4[r0] = r7;	 Catch:{ Exception -> 0x0027 }
        r7 = r1.invoke(r2, r4);	 Catch:{ Exception -> 0x0027 }
        r7 = (java.lang.Integer) r7;	 Catch:{ Exception -> 0x0027 }
        r7 = r7.intValue();	 Catch:{ Exception -> 0x0027 }
        if (r7 != 0) goto L_0x0026;
    L_0x0025:
        return r3;
    L_0x0026:
        return r0;
    L_0x0027:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.AdvertisingInfoReflectionStrategy.isGooglePlayServiceAvailable(android.content.Context):boolean");
    }

    public AdvertisingInfo getAdvertisingInfo() {
        return isGooglePlayServiceAvailable(this.context) ? new AdvertisingInfo(getAdvertisingId(), isLimitAdTrackingEnabled()) : null;
    }

    private java.lang.String getAdvertisingId() {
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
        r4 = this;
        r0 = "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info";	 Catch:{ Exception -> 0x001c }
        r0 = java.lang.Class.forName(r0);	 Catch:{ Exception -> 0x001c }
        r1 = "getId";	 Catch:{ Exception -> 0x001c }
        r2 = 0;	 Catch:{ Exception -> 0x001c }
        r3 = new java.lang.Class[r2];	 Catch:{ Exception -> 0x001c }
        r0 = r0.getMethod(r1, r3);	 Catch:{ Exception -> 0x001c }
        r1 = r4.getInfo();	 Catch:{ Exception -> 0x001c }
        r2 = new java.lang.Object[r2];	 Catch:{ Exception -> 0x001c }
        r0 = r0.invoke(r1, r2);	 Catch:{ Exception -> 0x001c }
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x001c }
        return r0;
    L_0x001c:
        r0 = io.fabric.sdk.android.Fabric.getLogger();
        r1 = "Fabric";
        r2 = "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info";
        r0.mo776w(r1, r2);
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.AdvertisingInfoReflectionStrategy.getAdvertisingId():java.lang.String");
    }

    private boolean isLimitAdTrackingEnabled() {
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
        r4 = this;
        r0 = 0;
        r1 = "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info";	 Catch:{ Exception -> 0x0020 }
        r1 = java.lang.Class.forName(r1);	 Catch:{ Exception -> 0x0020 }
        r2 = "isLimitAdTrackingEnabled";	 Catch:{ Exception -> 0x0020 }
        r3 = new java.lang.Class[r0];	 Catch:{ Exception -> 0x0020 }
        r1 = r1.getMethod(r2, r3);	 Catch:{ Exception -> 0x0020 }
        r2 = r4.getInfo();	 Catch:{ Exception -> 0x0020 }
        r3 = new java.lang.Object[r0];	 Catch:{ Exception -> 0x0020 }
        r1 = r1.invoke(r2, r3);	 Catch:{ Exception -> 0x0020 }
        r1 = (java.lang.Boolean) r1;	 Catch:{ Exception -> 0x0020 }
        r1 = r1.booleanValue();	 Catch:{ Exception -> 0x0020 }
        return r1;
    L_0x0020:
        r1 = io.fabric.sdk.android.Fabric.getLogger();
        r2 = "Fabric";
        r3 = "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info";
        r1.mo776w(r2, r3);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.AdvertisingInfoReflectionStrategy.isLimitAdTrackingEnabled():boolean");
    }

    private java.lang.Object getInfo() {
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
        r7 = this;
        r0 = 0;
        r1 = "com.google.android.gms.ads.identifier.AdvertisingIdClient";	 Catch:{ Exception -> 0x0020 }
        r1 = java.lang.Class.forName(r1);	 Catch:{ Exception -> 0x0020 }
        r2 = "getAdvertisingIdInfo";	 Catch:{ Exception -> 0x0020 }
        r3 = 1;	 Catch:{ Exception -> 0x0020 }
        r4 = new java.lang.Class[r3];	 Catch:{ Exception -> 0x0020 }
        r5 = android.content.Context.class;	 Catch:{ Exception -> 0x0020 }
        r6 = 0;	 Catch:{ Exception -> 0x0020 }
        r4[r6] = r5;	 Catch:{ Exception -> 0x0020 }
        r1 = r1.getMethod(r2, r4);	 Catch:{ Exception -> 0x0020 }
        r2 = new java.lang.Object[r3];	 Catch:{ Exception -> 0x0020 }
        r3 = r7.context;	 Catch:{ Exception -> 0x0020 }
        r2[r6] = r3;	 Catch:{ Exception -> 0x0020 }
        r1 = r1.invoke(r0, r2);	 Catch:{ Exception -> 0x0020 }
        return r1;
    L_0x0020:
        r1 = io.fabric.sdk.android.Fabric.getLogger();
        r2 = "Fabric";
        r3 = "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient";
        r1.mo776w(r2, r3);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.AdvertisingInfoReflectionStrategy.getInfo():java.lang.Object");
    }
}
