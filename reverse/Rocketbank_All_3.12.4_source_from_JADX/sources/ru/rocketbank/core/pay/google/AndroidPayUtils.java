package ru.rocketbank.core.pay.google;

import android.content.Context;
import android.os.Build.VERSION;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.pay.root.Root;

/* compiled from: AndroidPayUtils.kt */
public final class AndroidPayUtils {
    public static final AndroidPayUtils INSTANCE = new AndroidPayUtils();

    private AndroidPayUtils() {
    }

    public static boolean checkPaySupport(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        if (VERSION.SDK_INT >= 19) {
            boolean z = context.getPackageManager().hasSystemFeature("android.hardware.nfc") && context.getPackageManager().hasSystemFeature("android.hardware.nfc.hce");
            if (z) {
                Root root = Root.INSTANCE;
                if (Root.hasRoot(context) == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void runCodeOrOpenGooglePlay(android.content.Context r2, kotlin.jvm.functions.Function0<kotlin.Unit> r3) {
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
        r0 = "context";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
        r0 = "func";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r0 = r2.getPackageManager();
        r1 = "com.google.android.apps.walletnfcrel";
        r0 = r0.getLaunchIntentForPackage(r1);
        if (r0 == 0) goto L_0x001a;
    L_0x0016:
        r3.invoke();
        return;
    L_0x001a:
        r3 = new android.content.Intent;	 Catch:{ ActivityNotFoundException -> 0x002b }
        r0 = "android.intent.action.VIEW";	 Catch:{ ActivityNotFoundException -> 0x002b }
        r1 = "market://details?id=com.google.android.apps.walletnfcrel";	 Catch:{ ActivityNotFoundException -> 0x002b }
        r1 = android.net.Uri.parse(r1);	 Catch:{ ActivityNotFoundException -> 0x002b }
        r3.<init>(r0, r1);	 Catch:{ ActivityNotFoundException -> 0x002b }
        r2.startActivity(r3);	 Catch:{ ActivityNotFoundException -> 0x002b }
        return;
    L_0x002b:
        r3 = new android.content.Intent;
        r0 = "android.intent.action.VIEW";
        r1 = "https://play.google.com/store/apps/details?id=com.google.android.apps.walletnfcrel";
        r1 = android.net.Uri.parse(r1);
        r3.<init>(r0, r1);
        r2.startActivity(r3);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.pay.google.AndroidPayUtils.runCodeOrOpenGooglePlay(android.content.Context, kotlin.jvm.functions.Function0):void");
    }
}
