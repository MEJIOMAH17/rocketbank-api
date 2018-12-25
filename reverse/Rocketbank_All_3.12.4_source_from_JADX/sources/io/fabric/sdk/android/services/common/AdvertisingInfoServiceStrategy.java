package io.fabric.sdk.android.services.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import java.util.concurrent.LinkedBlockingQueue;

class AdvertisingInfoServiceStrategy implements AdvertisingInfoStrategy {
    public static final String GOOGLE_PLAY_SERVICES_INTENT = "com.google.android.gms.ads.identifier.service.START";
    public static final String GOOGLE_PLAY_SERVICES_INTENT_PACKAGE_NAME = "com.google.android.gms";
    private static final String GOOGLE_PLAY_SERVICE_PACKAGE_NAME = "com.android.vending";
    private final Context context;

    private static final class AdvertisingConnection implements ServiceConnection {
        private static final int QUEUE_TIMEOUT_IN_MS = 200;
        private final LinkedBlockingQueue<IBinder> queue;
        private boolean retrieved;

        private AdvertisingConnection() {
            this.retrieved = false;
            this.queue = new LinkedBlockingQueue(1);
        }

        public final void onServiceConnected(android.content.ComponentName r1, android.os.IBinder r2) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = this;
            r1 = r0.queue;	 Catch:{ InterruptedException -> 0x0006 }
            r1.put(r2);	 Catch:{ InterruptedException -> 0x0006 }
            return;
        L_0x0006:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.AdvertisingInfoServiceStrategy.AdvertisingConnection.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            this.queue.clear();
        }

        public final android.os.IBinder getBinder() {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r4 = this;
            r0 = r4.retrieved;
            if (r0 == 0) goto L_0x000f;
        L_0x0004:
            r0 = io.fabric.sdk.android.Fabric.getLogger();
            r1 = "Fabric";
            r2 = "getBinder already called";
            r0.mo770e(r1, r2);
        L_0x000f:
            r0 = 1;
            r4.retrieved = r0;
            r0 = r4.queue;	 Catch:{ InterruptedException -> 0x001f }
            r1 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;	 Catch:{ InterruptedException -> 0x001f }
            r3 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ InterruptedException -> 0x001f }
            r0 = r0.poll(r1, r3);	 Catch:{ InterruptedException -> 0x001f }
            r0 = (android.os.IBinder) r0;	 Catch:{ InterruptedException -> 0x001f }
            return r0;
        L_0x001f:
            r0 = 0;
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.AdvertisingInfoServiceStrategy.AdvertisingConnection.getBinder():android.os.IBinder");
        }
    }

    private static final class AdvertisingInterface implements IInterface {
        public static final String ADVERTISING_ID_SERVICE_INTERFACE_TOKEN = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";
        private static final int AD_TRANSACTION_CODE_ID = 1;
        private static final int AD_TRANSACTION_CODE_LIMIT_AD_TRACKING = 2;
        private static final int FLAGS_NONE = 0;
        private final IBinder binder;

        public AdvertisingInterface(IBinder iBinder) {
            this.binder = iBinder;
        }

        public final IBinder asBinder() {
            return this.binder;
        }

        public final java.lang.String getId() throws android.os.RemoteException {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r5 = this;
            r0 = android.os.Parcel.obtain();
            r1 = android.os.Parcel.obtain();
            r2 = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";	 Catch:{ Exception -> 0x0024 }
            r0.writeInterfaceToken(r2);	 Catch:{ Exception -> 0x0024 }
            r2 = r5.binder;	 Catch:{ Exception -> 0x0024 }
            r3 = 1;	 Catch:{ Exception -> 0x0024 }
            r4 = 0;	 Catch:{ Exception -> 0x0024 }
            r2.transact(r3, r0, r1, r4);	 Catch:{ Exception -> 0x0024 }
            r1.readException();	 Catch:{ Exception -> 0x0024 }
            r2 = r1.readString();	 Catch:{ Exception -> 0x0024 }
            r1.recycle();
            r0.recycle();
            goto L_0x0036;
        L_0x0022:
            r2 = move-exception;
            goto L_0x0037;
        L_0x0024:
            r2 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ all -> 0x0022 }
            r3 = "Fabric";	 Catch:{ all -> 0x0022 }
            r4 = "Could not get parcel from Google Play Service to capture AdvertisingId";	 Catch:{ all -> 0x0022 }
            r2.mo768d(r3, r4);	 Catch:{ all -> 0x0022 }
            r1.recycle();
            r0.recycle();
            r2 = 0;
        L_0x0036:
            return r2;
        L_0x0037:
            r1.recycle();
            r0.recycle();
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.AdvertisingInfoServiceStrategy.AdvertisingInterface.getId():java.lang.String");
        }

        public final boolean isLimitAdTrackingEnabled() throws android.os.RemoteException {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r6 = this;
            r0 = android.os.Parcel.obtain();
            r1 = android.os.Parcel.obtain();
            r2 = 0;
            r3 = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";	 Catch:{ Exception -> 0x0025 }
            r0.writeInterfaceToken(r3);	 Catch:{ Exception -> 0x0025 }
            r3 = 1;	 Catch:{ Exception -> 0x0025 }
            r0.writeInt(r3);	 Catch:{ Exception -> 0x0025 }
            r4 = r6.binder;	 Catch:{ Exception -> 0x0025 }
            r5 = 2;	 Catch:{ Exception -> 0x0025 }
            r4.transact(r5, r0, r1, r2);	 Catch:{ Exception -> 0x0025 }
            r1.readException();	 Catch:{ Exception -> 0x0025 }
            r4 = r1.readInt();	 Catch:{ Exception -> 0x0025 }
            if (r4 == 0) goto L_0x0030;
        L_0x0021:
            r2 = r3;
            goto L_0x0030;
        L_0x0023:
            r2 = move-exception;
            goto L_0x0037;
        L_0x0025:
            r3 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ all -> 0x0023 }
            r4 = "Fabric";	 Catch:{ all -> 0x0023 }
            r5 = "Could not get parcel from Google Play Service to capture Advertising limitAdTracking";	 Catch:{ all -> 0x0023 }
            r3.mo768d(r4, r5);	 Catch:{ all -> 0x0023 }
        L_0x0030:
            r1.recycle();
            r0.recycle();
            return r2;
        L_0x0037:
            r1.recycle();
            r0.recycle();
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.AdvertisingInfoServiceStrategy.AdvertisingInterface.isLimitAdTrackingEnabled():boolean");
        }
    }

    public AdvertisingInfoServiceStrategy(Context context) {
        this.context = context.getApplicationContext();
    }

    public io.fabric.sdk.android.services.common.AdvertisingInfo getAdvertisingInfo() {
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
        r6 = this;
        r0 = android.os.Looper.myLooper();
        r1 = android.os.Looper.getMainLooper();
        r2 = 0;
        if (r0 != r1) goto L_0x0017;
    L_0x000b:
        r0 = io.fabric.sdk.android.Fabric.getLogger();
        r1 = "Fabric";
        r3 = "AdvertisingInfoServiceStrategy cannot be called on the main thread";
        r0.mo768d(r1, r3);
        return r2;
    L_0x0017:
        r0 = r6.context;	 Catch:{ NameNotFoundException -> 0x0099, Exception -> 0x008c }
        r0 = r0.getPackageManager();	 Catch:{ NameNotFoundException -> 0x0099, Exception -> 0x008c }
        r1 = "com.android.vending";	 Catch:{ NameNotFoundException -> 0x0099, Exception -> 0x008c }
        r3 = 0;	 Catch:{ NameNotFoundException -> 0x0099, Exception -> 0x008c }
        r0.getPackageInfo(r1, r3);	 Catch:{ NameNotFoundException -> 0x0099, Exception -> 0x008c }
        r0 = new io.fabric.sdk.android.services.common.AdvertisingInfoServiceStrategy$AdvertisingConnection;
        r0.<init>();
        r1 = new android.content.Intent;
        r3 = "com.google.android.gms.ads.identifier.service.START";
        r1.<init>(r3);
        r3 = "com.google.android.gms";
        r1.setPackage(r3);
        r3 = r6.context;	 Catch:{ Throwable -> 0x007f }
        r4 = 1;	 Catch:{ Throwable -> 0x007f }
        r1 = r3.bindService(r1, r0, r4);	 Catch:{ Throwable -> 0x007f }
        if (r1 == 0) goto L_0x0073;
    L_0x003d:
        r1 = new io.fabric.sdk.android.services.common.AdvertisingInfoServiceStrategy$AdvertisingInterface;	 Catch:{ Exception -> 0x005b }
        r3 = r0.getBinder();	 Catch:{ Exception -> 0x005b }
        r1.<init>(r3);	 Catch:{ Exception -> 0x005b }
        r3 = new io.fabric.sdk.android.services.common.AdvertisingInfo;	 Catch:{ Exception -> 0x005b }
        r4 = r1.getId();	 Catch:{ Exception -> 0x005b }
        r1 = r1.isLimitAdTrackingEnabled();	 Catch:{ Exception -> 0x005b }
        r3.<init>(r4, r1);	 Catch:{ Exception -> 0x005b }
        r1 = r6.context;	 Catch:{ Throwable -> 0x007f }
        r1.unbindService(r0);	 Catch:{ Throwable -> 0x007f }
        return r3;
    L_0x0059:
        r1 = move-exception;
        goto L_0x006d;
    L_0x005b:
        r1 = move-exception;
        r3 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ all -> 0x0059 }
        r4 = "Fabric";	 Catch:{ all -> 0x0059 }
        r5 = "Exception in binding to Google Play Service to capture AdvertisingId";	 Catch:{ all -> 0x0059 }
        r3.mo777w(r4, r5, r1);	 Catch:{ all -> 0x0059 }
        r1 = r6.context;	 Catch:{ Throwable -> 0x007f }
        r1.unbindService(r0);	 Catch:{ Throwable -> 0x007f }
        goto L_0x008b;	 Catch:{ Throwable -> 0x007f }
    L_0x006d:
        r3 = r6.context;	 Catch:{ Throwable -> 0x007f }
        r3.unbindService(r0);	 Catch:{ Throwable -> 0x007f }
        throw r1;	 Catch:{ Throwable -> 0x007f }
    L_0x0073:
        r0 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Throwable -> 0x007f }
        r1 = "Fabric";	 Catch:{ Throwable -> 0x007f }
        r3 = "Could not bind to Google Play Service to capture AdvertisingId";	 Catch:{ Throwable -> 0x007f }
        r0.mo768d(r1, r3);	 Catch:{ Throwable -> 0x007f }
        goto L_0x008b;
    L_0x007f:
        r0 = move-exception;
        r1 = io.fabric.sdk.android.Fabric.getLogger();
        r3 = "Fabric";
        r4 = "Could not bind to Google Play Service to capture AdvertisingId";
        r1.mo769d(r3, r4, r0);
    L_0x008b:
        return r2;
    L_0x008c:
        r0 = move-exception;
        r1 = io.fabric.sdk.android.Fabric.getLogger();
        r3 = "Fabric";
        r4 = "Unable to determine if Google Play Services is available";
        r1.mo769d(r3, r4, r0);
        return r2;
    L_0x0099:
        r0 = io.fabric.sdk.android.Fabric.getLogger();
        r1 = "Fabric";
        r3 = "Unable to find Google Play Services package name";
        r0.mo768d(r1, r3);
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.AdvertisingInfoServiceStrategy.getAdvertisingInfo():io.fabric.sdk.android.services.common.AdvertisingInfo");
    }
}
