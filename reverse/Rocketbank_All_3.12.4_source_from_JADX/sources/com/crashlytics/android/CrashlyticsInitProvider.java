package com.crashlytics.android;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

public class CrashlyticsInitProvider extends ContentProvider {

    interface EnabledCheckStrategy {
        boolean isCrashlyticsEnabled(Context context);
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public boolean onCreate() {
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
        r0 = r5.getContext();
        r1 = new io.fabric.sdk.android.services.common.FirebaseInfo;
        r1.<init>();
        r2 = new com.crashlytics.android.ManifestEnabledCheckStrategy;
        r2.<init>();
        r1 = r1.isFirebaseCrashlyticsEnabled(r0);
        r3 = 0;
        r4 = 1;
        if (r1 == 0) goto L_0x001e;
    L_0x0016:
        r1 = r2.isCrashlyticsEnabled(r0);
        if (r1 == 0) goto L_0x001e;
    L_0x001c:
        r1 = r4;
        goto L_0x001f;
    L_0x001e:
        r1 = r3;
    L_0x001f:
        if (r1 == 0) goto L_0x0045;
    L_0x0021:
        r1 = new io.fabric.sdk.android.Kit[r4];	 Catch:{ IllegalStateException -> 0x0039 }
        r2 = new com.crashlytics.android.Crashlytics;	 Catch:{ IllegalStateException -> 0x0039 }
        r2.<init>();	 Catch:{ IllegalStateException -> 0x0039 }
        r1[r3] = r2;	 Catch:{ IllegalStateException -> 0x0039 }
        io.fabric.sdk.android.Fabric.with(r0, r1);	 Catch:{ IllegalStateException -> 0x0039 }
        r0 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ IllegalStateException -> 0x0039 }
        r1 = "CrashlyticsInitProvider";	 Catch:{ IllegalStateException -> 0x0039 }
        r2 = "CrashlyticsInitProvider initialization successful";	 Catch:{ IllegalStateException -> 0x0039 }
        r0.mo772i(r1, r2);	 Catch:{ IllegalStateException -> 0x0039 }
        goto L_0x0045;
    L_0x0039:
        r0 = io.fabric.sdk.android.Fabric.getLogger();
        r1 = "CrashlyticsInitProvider";
        r2 = "CrashlyticsInitProvider initialization unsuccessful";
        r0.mo772i(r1, r2);
        return r3;
    L_0x0045:
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.CrashlyticsInitProvider.onCreate():boolean");
    }
}
