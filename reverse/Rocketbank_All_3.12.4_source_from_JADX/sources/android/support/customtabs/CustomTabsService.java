package android.support.customtabs;

import android.app.Service;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.support.customtabs.ICustomTabsService.Stub;
import android.support.v4.util.ArrayMap;
import java.util.Map;

public abstract class CustomTabsService extends Service {
    private Stub mBinder = new C13491();
    private final Map<IBinder, DeathRecipient> mDeathRecipientMap = new ArrayMap();

    /* renamed from: android.support.customtabs.CustomTabsService$1 */
    class C13491 extends Stub {
        C13491() {
        }

        public final boolean warmup$1349f3() {
            return CustomTabsService.this.warmup$1349f3();
        }

        public final boolean newSession(android.support.customtabs.ICustomTabsCallback r5) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r4 = this;
            r0 = new android.support.customtabs.CustomTabsSessionToken;
            r0.<init>(r5);
            r1 = 0;
            r2 = new android.support.customtabs.CustomTabsService$1$1;	 Catch:{ RemoteException -> 0x0031 }
            r2.<init>(r0);	 Catch:{ RemoteException -> 0x0031 }
            r0 = android.support.customtabs.CustomTabsService.this;	 Catch:{ RemoteException -> 0x0031 }
            r0 = r0.mDeathRecipientMap;	 Catch:{ RemoteException -> 0x0031 }
            monitor-enter(r0);	 Catch:{ RemoteException -> 0x0031 }
            r3 = r5.asBinder();	 Catch:{ all -> 0x002e }
            r3.linkToDeath(r2, r1);	 Catch:{ all -> 0x002e }
            r3 = android.support.customtabs.CustomTabsService.this;	 Catch:{ all -> 0x002e }
            r3 = r3.mDeathRecipientMap;	 Catch:{ all -> 0x002e }
            r5 = r5.asBinder();	 Catch:{ all -> 0x002e }
            r3.put(r5, r2);	 Catch:{ all -> 0x002e }
            monitor-exit(r0);	 Catch:{ all -> 0x002e }
            r5 = android.support.customtabs.CustomTabsService.this;	 Catch:{ RemoteException -> 0x0031 }
            r5 = r5.newSession$26d819e();	 Catch:{ RemoteException -> 0x0031 }
            return r5;
        L_0x002e:
            r5 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x002e }
            throw r5;	 Catch:{ RemoteException -> 0x0031 }
        L_0x0031:
            return r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.customtabs.CustomTabsService.1.newSession(android.support.customtabs.ICustomTabsCallback):boolean");
        }

        public final boolean mayLaunchUrl$779fd849(ICustomTabsCallback iCustomTabsCallback) {
            CustomTabsService customTabsService = CustomTabsService.this;
            CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(iCustomTabsCallback);
            return customTabsService.mayLaunchUrl$28898044();
        }

        public final Bundle extraCommand$5f15a07() {
            return CustomTabsService.this.extraCommand$5f15a07();
        }

        public final boolean updateVisuals$154e26d1(ICustomTabsCallback iCustomTabsCallback) {
            CustomTabsService customTabsService = CustomTabsService.this;
            CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(iCustomTabsCallback);
            return customTabsService.updateVisuals$7708c702();
        }
    }

    protected abstract Bundle extraCommand$5f15a07();

    protected abstract boolean mayLaunchUrl$28898044();

    protected abstract boolean newSession$26d819e();

    protected abstract boolean updateVisuals$7708c702();

    protected abstract boolean warmup$1349f3();

    protected final boolean cleanUpSession(android.support.customtabs.CustomTabsSessionToken r4) {
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
        r0 = 0;
        r1 = r3.mDeathRecipientMap;	 Catch:{ NoSuchElementException -> 0x001e }
        monitor-enter(r1);	 Catch:{ NoSuchElementException -> 0x001e }
        r4 = r4.getCallbackBinder();	 Catch:{ all -> 0x001b }
        r2 = r3.mDeathRecipientMap;	 Catch:{ all -> 0x001b }
        r2 = r2.get(r4);	 Catch:{ all -> 0x001b }
        r2 = (android.os.IBinder.DeathRecipient) r2;	 Catch:{ all -> 0x001b }
        r4.unlinkToDeath(r2, r0);	 Catch:{ all -> 0x001b }
        r2 = r3.mDeathRecipientMap;	 Catch:{ all -> 0x001b }
        r2.remove(r4);	 Catch:{ all -> 0x001b }
        monitor-exit(r1);	 Catch:{ all -> 0x001b }
        r4 = 1;	 Catch:{ all -> 0x001b }
        return r4;	 Catch:{ all -> 0x001b }
    L_0x001b:
        r4 = move-exception;	 Catch:{ all -> 0x001b }
        monitor-exit(r1);	 Catch:{ all -> 0x001b }
        throw r4;	 Catch:{ NoSuchElementException -> 0x001e }
    L_0x001e:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.customtabs.CustomTabsService.cleanUpSession(android.support.customtabs.CustomTabsSessionToken):boolean");
    }
}
