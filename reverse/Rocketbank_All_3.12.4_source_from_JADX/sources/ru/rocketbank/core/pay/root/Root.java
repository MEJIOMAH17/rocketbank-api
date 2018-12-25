package ru.rocketbank.core.pay.root;

import android.content.Context;
import com.scottyab.rootbeer.RootBeer;
import io.fabric.sdk.android.services.common.CommonUtils;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.pay.google.RootCheckException;

/* compiled from: Root.kt */
public final class Root {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(Root.class), "rootChecker", "getRootChecker()Lcom/scottyab/rootbeer/RootBeer;"))};
    public static final Root INSTANCE = new Root();
    private static final Lazy rootChecker$delegate = ExceptionsKt__ExceptionsKt.lazy(Root$rootChecker$2.INSTANCE);

    private Root() {
    }

    private static boolean canExecuteCommand(java.lang.String r1) {
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
        r0 = java.lang.Runtime.getRuntime();	 Catch:{ Exception -> 0x0009 }
        r0.exec(r1);	 Catch:{ Exception -> 0x0009 }
        r1 = 1;
        goto L_0x000a;
    L_0x0009:
        r1 = 0;
    L_0x000a:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.pay.root.Root.canExecuteCommand(java.lang.String):boolean");
    }

    public static boolean hasRoot(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        try {
            return ((RootBeer) rootChecker$delegate.getValue()).isRootedWithoutBusyBoxCheck();
        } catch (Throwable th) {
            AnalyticsManager.logException(new RootCheckException(th));
            if (CommonUtils.isRooted(context) != null) {
                return true;
            }
            if (canExecuteCommand("/system/xbin/which su") == null && canExecuteCommand("/system/bin/which su") == null) {
                if (canExecuteCommand("which su") == null) {
                    context = null;
                    return context == null;
                }
            }
            context = 1;
            if (context == null) {
            }
        }
    }
}
