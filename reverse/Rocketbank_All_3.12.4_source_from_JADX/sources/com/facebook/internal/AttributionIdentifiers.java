package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.facebook.FacebookException;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

public class AttributionIdentifiers {
    private static final String ANDROID_ID_COLUMN_NAME = "androidid";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final String ATTRIBUTION_ID_CONTENT_PROVIDER = "com.facebook.katana.provider.AttributionIdProvider";
    private static final String ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI = "com.facebook.wakizashi.provider.AttributionIdProvider";
    private static final int CONNECTION_RESULT_SUCCESS = 0;
    private static final long IDENTIFIER_REFRESH_INTERVAL_MILLIS = 3600000;
    private static final String LIMIT_TRACKING_COLUMN_NAME = "limit_tracking";
    private static final String TAG = AttributionIdentifiers.class.getCanonicalName();
    private static AttributionIdentifiers recentlyFetchedIdentifiers;
    private String androidAdvertiserId;
    private String androidInstallerPackage;
    private String attributionId;
    private long fetchTime;
    private boolean limitTracking;

    private static final class GoogleAdInfo implements IInterface {
        private static final int FIRST_TRANSACTION_CODE = 1;
        private static final int SECOND_TRANSACTION_CODE = 2;
        private IBinder binder;

        GoogleAdInfo(IBinder iBinder) {
            this.binder = iBinder;
        }

        public final IBinder asBinder() {
            return this.binder;
        }

        public final String getAdvertiserId() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(AdvertisingInterface.ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                this.binder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                return readString;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public final boolean isTrackingLimited() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(AdvertisingInterface.ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                boolean z = true;
                obtain.writeInt(1);
                this.binder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    private static final class GoogleAdServiceConnection implements ServiceConnection {
        private AtomicBoolean consumed;
        private final BlockingQueue<IBinder> queue;

        public final void onServiceDisconnected(ComponentName componentName) {
        }

        private GoogleAdServiceConnection() {
            this.consumed = new AtomicBoolean(false);
            this.queue = new LinkedBlockingDeque();
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
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.AttributionIdentifiers.GoogleAdServiceConnection.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
        }

        public final IBinder getBinder() throws InterruptedException {
            if (!this.consumed.compareAndSet(true, true)) {
                return (IBinder) this.queue.take();
            }
            throw new IllegalStateException("Binder already consumed");
        }
    }

    private static AttributionIdentifiers getAndroidId(Context context) {
        AttributionIdentifiers androidIdViaReflection = getAndroidIdViaReflection(context);
        if (androidIdViaReflection != null) {
            return androidIdViaReflection;
        }
        androidIdViaReflection = getAndroidIdViaService(context);
        return androidIdViaReflection == null ? new AttributionIdentifiers() : androidIdViaReflection;
    }

    private static AttributionIdentifiers getAndroidIdViaReflection(Context context) {
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new FacebookException("getAndroidId cannot be called on the main thread.");
            }
            Method methodQuietly = Utility.getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
            if (methodQuietly == null) {
                return null;
            }
            Object invokeMethodQuietly = Utility.invokeMethodQuietly(null, methodQuietly, context);
            if (invokeMethodQuietly instanceof Integer) {
                if (((Integer) invokeMethodQuietly).intValue() == 0) {
                    methodQuietly = Utility.getMethodQuietly("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class);
                    if (methodQuietly == null) {
                        return null;
                    }
                    context = Utility.invokeMethodQuietly(null, methodQuietly, context);
                    if (context == null) {
                        return null;
                    }
                    methodQuietly = Utility.getMethodQuietly(context.getClass(), "getId", new Class[0]);
                    Method methodQuietly2 = Utility.getMethodQuietly(context.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
                    if (methodQuietly != null) {
                        if (methodQuietly2 != null) {
                            AttributionIdentifiers attributionIdentifiers = new AttributionIdentifiers();
                            attributionIdentifiers.androidAdvertiserId = (String) Utility.invokeMethodQuietly(context, methodQuietly, new Object[0]);
                            attributionIdentifiers.limitTracking = ((Boolean) Utility.invokeMethodQuietly(context, methodQuietly2, new Object[0])).booleanValue();
                            return attributionIdentifiers;
                        }
                    }
                    return null;
                }
            }
            return null;
        } catch (Exception e) {
            Utility.logd("android_id", e);
            return null;
        }
    }

    private static AttributionIdentifiers getAndroidIdViaService(Context context) {
        ServiceConnection googleAdServiceConnection = new GoogleAdServiceConnection();
        Intent intent = new Intent(AdvertisingInfoServiceStrategy.GOOGLE_PLAY_SERVICES_INTENT);
        intent.setPackage("com.google.android.gms");
        AttributionIdentifiers attributionIdentifiers = true;
        if (context.bindService(intent, googleAdServiceConnection, 1)) {
            try {
                GoogleAdInfo googleAdInfo = new GoogleAdInfo(googleAdServiceConnection.getBinder());
                attributionIdentifiers = new AttributionIdentifiers();
                attributionIdentifiers.androidAdvertiserId = googleAdInfo.getAdvertiserId();
                attributionIdentifiers.limitTracking = googleAdInfo.isTrackingLimited();
                return attributionIdentifiers;
            } catch (Exception e) {
                attributionIdentifiers = "android_id";
                Utility.logd((String) attributionIdentifiers, e);
            } finally {
                context.unbindService(googleAdServiceConnection);
            }
        }
        return null;
    }

    public static AttributionIdentifiers getAttributionIdentifiers(Context context) {
        String installerPackageName;
        Cursor cursor;
        StringBuilder stringBuilder;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.e(TAG, "getAttributionIdentifiers should not be called from the main thread");
        }
        if (recentlyFetchedIdentifiers != null && System.currentTimeMillis() - recentlyFetchedIdentifiers.fetchTime < IDENTIFIER_REFRESH_INTERVAL_MILLIS) {
            return recentlyFetchedIdentifiers;
        }
        AttributionIdentifiers androidId = getAndroidId(context);
        Cursor cursor2 = null;
        try {
            Uri parse;
            Uri uri;
            int columnIndex;
            int columnIndex2;
            int columnIndex3;
            String[] strArr = new String[]{ATTRIBUTION_ID_COLUMN_NAME, ANDROID_ID_COLUMN_NAME, LIMIT_TRACKING_COLUMN_NAME};
            if (context.getPackageManager().resolveContentProvider(ATTRIBUTION_ID_CONTENT_PROVIDER, 0) != null) {
                parse = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
            } else if (context.getPackageManager().resolveContentProvider(ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI, 0) != null) {
                parse = Uri.parse("content://com.facebook.wakizashi.provider.AttributionIdProvider");
            } else {
                uri = null;
                installerPackageName = getInstallerPackageName(context);
                if (installerPackageName != null) {
                    androidId.androidInstallerPackage = installerPackageName;
                }
                if (uri == null) {
                    return cacheAndReturnIdentifiers(androidId);
                }
                context = context.getContentResolver().query(uri, strArr, null, null, null);
                if (context != null) {
                    try {
                        if (!context.moveToFirst()) {
                            columnIndex = context.getColumnIndex(ATTRIBUTION_ID_COLUMN_NAME);
                            columnIndex2 = context.getColumnIndex(ANDROID_ID_COLUMN_NAME);
                            columnIndex3 = context.getColumnIndex(LIMIT_TRACKING_COLUMN_NAME);
                            androidId.attributionId = context.getString(columnIndex);
                            if (columnIndex2 > 0 && columnIndex3 > 0 && androidId.getAndroidAdvertiserId() == null) {
                                androidId.androidAdvertiserId = context.getString(columnIndex2);
                                androidId.limitTracking = Boolean.parseBoolean(context.getString(columnIndex3));
                            }
                            if (context != null) {
                                context.close();
                            }
                            return cacheAndReturnIdentifiers(androidId);
                        }
                    } catch (Exception e) {
                        Exception exception = e;
                        cursor = context;
                        context = exception;
                        try {
                            installerPackageName = TAG;
                            stringBuilder = new StringBuilder("Caught unexpected exception in getAttributionId(): ");
                            stringBuilder.append(context.toString());
                            Log.d(installerPackageName, stringBuilder.toString());
                            if (cursor != null) {
                                cursor.close();
                            }
                            return null;
                        } catch (Throwable th) {
                            context = th;
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw context;
                        }
                    } catch (Throwable th2) {
                        cursor2 = context;
                        context = th2;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        throw context;
                    }
                }
                androidId = cacheAndReturnIdentifiers(androidId);
                if (context != null) {
                    context.close();
                }
                return androidId;
            }
            uri = parse;
            installerPackageName = getInstallerPackageName(context);
            if (installerPackageName != null) {
                androidId.androidInstallerPackage = installerPackageName;
            }
            if (uri == null) {
                return cacheAndReturnIdentifiers(androidId);
            }
            context = context.getContentResolver().query(uri, strArr, null, null, null);
            if (context != null) {
                if (!context.moveToFirst()) {
                    columnIndex = context.getColumnIndex(ATTRIBUTION_ID_COLUMN_NAME);
                    columnIndex2 = context.getColumnIndex(ANDROID_ID_COLUMN_NAME);
                    columnIndex3 = context.getColumnIndex(LIMIT_TRACKING_COLUMN_NAME);
                    androidId.attributionId = context.getString(columnIndex);
                    androidId.androidAdvertiserId = context.getString(columnIndex2);
                    androidId.limitTracking = Boolean.parseBoolean(context.getString(columnIndex3));
                    if (context != null) {
                        context.close();
                    }
                    return cacheAndReturnIdentifiers(androidId);
                }
            }
            androidId = cacheAndReturnIdentifiers(androidId);
            if (context != null) {
                context.close();
            }
            return androidId;
        } catch (Exception e2) {
            context = e2;
            cursor = null;
            installerPackageName = TAG;
            stringBuilder = new StringBuilder("Caught unexpected exception in getAttributionId(): ");
            stringBuilder.append(context.toString());
            Log.d(installerPackageName, stringBuilder.toString());
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th3) {
            context = th3;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw context;
        }
    }

    private static AttributionIdentifiers cacheAndReturnIdentifiers(AttributionIdentifiers attributionIdentifiers) {
        attributionIdentifiers.fetchTime = System.currentTimeMillis();
        recentlyFetchedIdentifiers = attributionIdentifiers;
        return attributionIdentifiers;
    }

    public String getAttributionId() {
        return this.attributionId;
    }

    public String getAndroidAdvertiserId() {
        return this.androidAdvertiserId;
    }

    public String getAndroidInstallerPackage() {
        return this.androidInstallerPackage;
    }

    public boolean isTrackingLimited() {
        return this.limitTracking;
    }

    private static String getInstallerPackageName(Context context) {
        PackageManager packageManager = context.getPackageManager();
        return packageManager != null ? packageManager.getInstallerPackageName(context.getPackageName()) : null;
    }
}
