package com.crashlytics.android;

final class ManifestEnabledCheckStrategy implements EnabledCheckStrategy {
    ManifestEnabledCheckStrategy() {
    }

    public final boolean isCrashlyticsEnabled(android.content.Context r4) {
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
        r0 = 1;
        r1 = r4.getPackageName();	 Catch:{ NameNotFoundException -> 0x001f }
        r4 = r4.getPackageManager();	 Catch:{ NameNotFoundException -> 0x001f }
        r2 = 128; // 0x80 float:1.794E-43 double:6.32E-322;	 Catch:{ NameNotFoundException -> 0x001f }
        r4 = r4.getApplicationInfo(r1, r2);	 Catch:{ NameNotFoundException -> 0x001f }
        r4 = r4.metaData;	 Catch:{ NameNotFoundException -> 0x001f }
        if (r4 == 0) goto L_0x001e;	 Catch:{ NameNotFoundException -> 0x001f }
    L_0x0013:
        r1 = "firebase_crashlytics_collection_enabled";	 Catch:{ NameNotFoundException -> 0x001f }
        r4 = r4.getBoolean(r1, r0);	 Catch:{ NameNotFoundException -> 0x001f }
        if (r4 == 0) goto L_0x001c;
    L_0x001b:
        goto L_0x001e;
    L_0x001c:
        r4 = 0;
        return r4;
    L_0x001e:
        return r0;
    L_0x001f:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.ManifestEnabledCheckStrategy.isCrashlyticsEnabled(android.content.Context):boolean");
    }
}
