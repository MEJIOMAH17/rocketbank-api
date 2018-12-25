package io.fabric.sdk.android.services.settings;

import com.appsflyer.AdvertisingIdClient;
import io.fabric.sdk.android.Fabric;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public final class Settings {
    private boolean initialized;
    private SettingsController settingsController;
    private final AtomicReference<AdvertisingIdClient> settingsData;
    private final CountDownLatch settingsDataLatch;

    static class LazyHolder {
        private static final Settings INSTANCE = new Settings();
    }

    public static Settings getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Settings() {
        this.settingsData = new AtomicReference();
        this.settingsDataLatch = new CountDownLatch(1);
        this.initialized = false;
    }

    public final synchronized io.fabric.sdk.android.services.settings.Settings initialize(io.fabric.sdk.android.Kit r25, io.fabric.sdk.android.services.common.IdManager r26, io.fabric.sdk.android.services.network.HttpRequestFactory r27, java.lang.String r28, java.lang.String r29, java.lang.String r30) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.utils.BlockUtils.getBlockByInsn(BlockUtils.java:171)
	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMerge(EliminatePhiNodes.java:90)
	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMergeInstructions(EliminatePhiNodes.java:68)
	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.visit(EliminatePhiNodes.java:31)
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
        r24 = this;
        r1 = r24;
        r3 = r25;
        monitor-enter(r24);
        r2 = r1.initialized;	 Catch:{ all -> 0x00a1 }
        if (r2 == 0) goto L_0x000b;
    L_0x0009:
        monitor-exit(r24);
        return r1;
    L_0x000b:
        r2 = r1.settingsController;	 Catch:{ all -> 0x00a1 }
        r9 = 1;	 Catch:{ all -> 0x00a1 }
        if (r2 != 0) goto L_0x009d;	 Catch:{ all -> 0x00a1 }
    L_0x0010:
        r2 = r25.getContext();	 Catch:{ all -> 0x00a1 }
        r4 = r26.getAppIdentifier();	 Catch:{ all -> 0x00a1 }
        r5 = new io.fabric.sdk.android.services.common.ApiKey;	 Catch:{ all -> 0x00a1 }
        r5.<init>();	 Catch:{ all -> 0x00a1 }
        r11 = r5.getValue(r2);	 Catch:{ all -> 0x00a1 }
        r5 = r26.getInstallerPackageName();	 Catch:{ all -> 0x00a1 }
        r6 = new io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;	 Catch:{ all -> 0x00a1 }
        r6.<init>();	 Catch:{ all -> 0x00a1 }
        r7 = new io.fabric.sdk.android.services.settings.DefaultSettingsJsonTransform;	 Catch:{ all -> 0x00a1 }
        r7.<init>();	 Catch:{ all -> 0x00a1 }
        r8 = new io.fabric.sdk.android.services.settings.DefaultCachedSettingsIo;	 Catch:{ all -> 0x00a1 }
        r8.<init>(r3);	 Catch:{ all -> 0x00a1 }
        r22 = io.fabric.sdk.android.services.common.CommonUtils.getAppIconHashOrNull(r2);	 Catch:{ all -> 0x00a1 }
        r10 = java.util.Locale.US;	 Catch:{ all -> 0x00a1 }
        r12 = "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings";	 Catch:{ all -> 0x00a1 }
        r13 = new java.lang.Object[r9];	 Catch:{ all -> 0x00a1 }
        r14 = 0;	 Catch:{ all -> 0x00a1 }
        r13[r14] = r4;	 Catch:{ all -> 0x00a1 }
        r4 = java.lang.String.format(r10, r12, r13);	 Catch:{ all -> 0x00a1 }
        r15 = new io.fabric.sdk.android.services.settings.DefaultSettingsSpiCall;	 Catch:{ all -> 0x00a1 }
        r10 = r27;	 Catch:{ all -> 0x00a1 }
        r12 = r30;	 Catch:{ all -> 0x00a1 }
        r15.<init>(r3, r12, r4, r10);	 Catch:{ all -> 0x00a1 }
        r12 = r26.getModelName();	 Catch:{ all -> 0x00a1 }
        r13 = r26.getOsBuildVersionString();	 Catch:{ all -> 0x00a1 }
        r4 = r26.getOsDisplayVersionString();	 Catch:{ all -> 0x00a1 }
        r16 = r26.getAdvertisingId();	 Catch:{ all -> 0x00a1 }
        r17 = r26.getAppInstallIdentifier();	 Catch:{ all -> 0x00a1 }
        r18 = r26.getAndroidId();	 Catch:{ all -> 0x00a1 }
        r10 = new java.lang.String[r9];	 Catch:{ all -> 0x00a1 }
        r2 = io.fabric.sdk.android.services.common.CommonUtils.resolveBuildId(r2);	 Catch:{ all -> 0x00a1 }
        r10[r14] = r2;	 Catch:{ all -> 0x00a1 }
        r2 = io.fabric.sdk.android.services.common.CommonUtils.createInstanceIdFrom(r10);	 Catch:{ all -> 0x00a1 }
        r5 = io.fabric.sdk.android.services.common.DeliveryMechanism.determineFrom(r5);	 Catch:{ all -> 0x00a1 }
        r21 = r5.getId();	 Catch:{ all -> 0x00a1 }
        r5 = new com.bumptech.glide.load.resource.bitmap.TransformationUtils;	 Catch:{ all -> 0x00a1 }
        r10 = r5;	 Catch:{ all -> 0x00a1 }
        r14 = r4;	 Catch:{ all -> 0x00a1 }
        r23 = r15;	 Catch:{ all -> 0x00a1 }
        r15 = r16;	 Catch:{ all -> 0x00a1 }
        r16 = r17;	 Catch:{ all -> 0x00a1 }
        r17 = r18;	 Catch:{ all -> 0x00a1 }
        r18 = r2;	 Catch:{ all -> 0x00a1 }
        r19 = r29;	 Catch:{ all -> 0x00a1 }
        r20 = r28;	 Catch:{ all -> 0x00a1 }
        r10.<init>(r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22);	 Catch:{ all -> 0x00a1 }
        r10 = new io.fabric.sdk.android.services.settings.DefaultSettingsController;	 Catch:{ all -> 0x00a1 }
        r2 = r10;	 Catch:{ all -> 0x00a1 }
        r4 = r5;	 Catch:{ all -> 0x00a1 }
        r5 = r6;	 Catch:{ all -> 0x00a1 }
        r6 = r7;	 Catch:{ all -> 0x00a1 }
        r7 = r8;	 Catch:{ all -> 0x00a1 }
        r8 = r23;	 Catch:{ all -> 0x00a1 }
        r2.<init>(r3, r4, r5, r6, r7, r8);	 Catch:{ all -> 0x00a1 }
        r1.settingsController = r10;	 Catch:{ all -> 0x00a1 }
    L_0x009d:
        r1.initialized = r9;	 Catch:{ all -> 0x00a1 }
        monitor-exit(r24);
        return r1;
    L_0x00a1:
        r0 = move-exception;
        r2 = r0;
        monitor-exit(r24);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.settings.Settings.initialize(io.fabric.sdk.android.Kit, io.fabric.sdk.android.services.common.IdManager, io.fabric.sdk.android.services.network.HttpRequestFactory, java.lang.String, java.lang.String, java.lang.String):io.fabric.sdk.android.services.settings.Settings");
    }

    public final com.appsflyer.AdvertisingIdClient awaitSettingsData$694ccaae() {
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
        r3 = this;
        r0 = r3.settingsDataLatch;	 Catch:{ InterruptedException -> 0x000e }
        r0.await();	 Catch:{ InterruptedException -> 0x000e }
        r0 = r3.settingsData;	 Catch:{ InterruptedException -> 0x000e }
        r0 = r0.get();	 Catch:{ InterruptedException -> 0x000e }
        r0 = (com.appsflyer.AdvertisingIdClient) r0;	 Catch:{ InterruptedException -> 0x000e }
        return r0;
    L_0x000e:
        r0 = io.fabric.sdk.android.Fabric.getLogger();
        r1 = "Fabric";
        r2 = "Interrupted while waiting for settings data.";
        r0.mo770e(r1, r2);
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.settings.Settings.awaitSettingsData$694ccaae():com.appsflyer.AdvertisingIdClient");
    }

    public final synchronized boolean loadSettingsData() {
        AdvertisingIdClient loadSettingsData$694ccaae;
        loadSettingsData$694ccaae = this.settingsController.loadSettingsData$694ccaae();
        this.settingsData.set(loadSettingsData$694ccaae);
        this.settingsDataLatch.countDown();
        return loadSettingsData$694ccaae != null;
    }

    public final synchronized boolean loadSettingsSkippingCache() {
        boolean z;
        AdvertisingIdClient loadSettingsData$177dbb3b = this.settingsController.loadSettingsData$177dbb3b(SettingsCacheBehavior.SKIP_CACHE_LOOKUP);
        this.settingsData.set(loadSettingsData$177dbb3b);
        this.settingsDataLatch.countDown();
        if (loadSettingsData$177dbb3b == null) {
            Fabric.getLogger().mo771e("Fabric", "Failed to force reload of settings from Crashlytics.", null);
        }
        if (loadSettingsData$177dbb3b != null) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
