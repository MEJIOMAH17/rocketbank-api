package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.arch.lifecycle.GeneratedAdapter;
import android.arch.lifecycle.MethodCallsLogger;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Process;
import com.appsflyer.DebugLogQueue.Item;
import com.appsflyer.Foreground.Listener;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

public final class AppsFlyerLib {
    public static final String APPS_TRACKING_URL;
    public static final String EVENTS_TRACKING_URL;
    private static final List<String> IGNORABLE_KEYS = Arrays.asList(new String[]{"is_cache"});
    public static final String LOG_TAG;
    private static final String REGISTER_URL;
    public static final String SDK_BUILD_NUMBER = "4.5.0".substring("4.5.0".indexOf(".") + 1);
    public static final String SERVER_BUILD_NUMBER = "4.5.0".substring(0, "4.5.0".indexOf("."));
    private static ScheduledExecutorService cacheScheduler = null;
    private static AnimatorListener conversionDataListener$6d80f09e = null;
    private static AppsFlyerLib instance = new AppsFlyerLib();
    private static boolean isDuringCheckCache = false;
    private static long lastCacheCheck;
    private static long timeInApp;
    private static String userCustomAndroidId;
    private static GeneratedAdapter validatorListener$7986cae1;
    private Listener listener;
    private long testModeStartTime;

    abstract class AttributionIdFetcher implements Runnable {
        private String appsFlyerDevKey;
        protected WeakReference<Context> ctxReference = null;
        private AtomicInteger currentRequestsCounter = new AtomicInteger(0);
        private ScheduledExecutorService executorService;

        protected abstract void attributionCallback(Map<String, String> map);

        protected abstract void attributionCallbackFailure$505cff1c(int i);

        public abstract String getUrl();

        public AttributionIdFetcher(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
            this.ctxReference = new WeakReference(context);
            this.appsFlyerDevKey = str;
            this.executorService = scheduledExecutorService;
        }

        public void run() {
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
            r10 = this;
            r0 = r10.appsFlyerDevKey;
            if (r0 == 0) goto L_0x01f6;
        L_0x0004:
            r0 = r10.appsFlyerDevKey;
            r0 = r0.length();
            if (r0 != 0) goto L_0x000e;
        L_0x000c:
            goto L_0x01f6;
        L_0x000e:
            r0 = r10.currentRequestsCounter;
            r0.incrementAndGet();
            r0 = 0;
            r1 = r10.ctxReference;	 Catch:{ Throwable -> 0x01c6 }
            r1 = r1.get();	 Catch:{ Throwable -> 0x01c6 }
            r1 = (android.content.Context) r1;	 Catch:{ Throwable -> 0x01c6 }
            if (r1 != 0) goto L_0x0024;
        L_0x001e:
            r0 = r10.currentRequestsCounter;
            r0.decrementAndGet();
            return;
        L_0x0024:
            r2 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x01c6 }
            r4 = com.appsflyer.AppsFlyerLib.access$1100$49a85076(r1);	 Catch:{ Throwable -> 0x01c6 }
            r4 = com.appsflyer.AppsFlyerLib.getCachedChannel(r1, r4);	 Catch:{ Throwable -> 0x01c6 }
            r5 = "";	 Catch:{ Throwable -> 0x01c6 }
            if (r4 == 0) goto L_0x003e;	 Catch:{ Throwable -> 0x01c6 }
        L_0x0034:
            r5 = "-";	 Catch:{ Throwable -> 0x01c6 }
            r4 = java.lang.String.valueOf(r4);	 Catch:{ Throwable -> 0x01c6 }
            r5 = r5.concat(r4);	 Catch:{ Throwable -> 0x01c6 }
        L_0x003e:
            r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01c6 }
            r4.<init>();	 Catch:{ Throwable -> 0x01c6 }
            r6 = r10.getUrl();	 Catch:{ Throwable -> 0x01c6 }
            r4.append(r6);	 Catch:{ Throwable -> 0x01c6 }
            r6 = r1.getPackageName();	 Catch:{ Throwable -> 0x01c6 }
            r4.append(r6);	 Catch:{ Throwable -> 0x01c6 }
            r4.append(r5);	 Catch:{ Throwable -> 0x01c6 }
            r5 = "?devkey=";	 Catch:{ Throwable -> 0x01c6 }
            r4.append(r5);	 Catch:{ Throwable -> 0x01c6 }
            r5 = r10.appsFlyerDevKey;	 Catch:{ Throwable -> 0x01c6 }
            r4.append(r5);	 Catch:{ Throwable -> 0x01c6 }
            r5 = "&device_id=";	 Catch:{ Throwable -> 0x01c6 }
            r4.append(r5);	 Catch:{ Throwable -> 0x01c6 }
            r5 = com.appsflyer.AppsFlyerLib.getAppsFlyerUID(r1);	 Catch:{ Throwable -> 0x01c6 }
            r4.append(r5);	 Catch:{ Throwable -> 0x01c6 }
            r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01c6 }
            r6 = "Calling server for attribution url: ";	 Catch:{ Throwable -> 0x01c6 }
            r5.<init>(r6);	 Catch:{ Throwable -> 0x01c6 }
            r6 = r4.toString();	 Catch:{ Throwable -> 0x01c6 }
            r5.append(r6);	 Catch:{ Throwable -> 0x01c6 }
            r5 = r5.toString();	 Catch:{ Throwable -> 0x01c6 }
            android.arch.lifecycle.MethodCallsLogger.logMessageMaskKey(r5);	 Catch:{ Throwable -> 0x01c6 }
            r5 = new java.net.URL;	 Catch:{ Throwable -> 0x01c6 }
            r6 = r4.toString();	 Catch:{ Throwable -> 0x01c6 }
            r5.<init>(r6);	 Catch:{ Throwable -> 0x01c6 }
            r5 = r5.openConnection();	 Catch:{ Throwable -> 0x01c6 }
            r5 = (java.net.HttpURLConnection) r5;	 Catch:{ Throwable -> 0x01c6 }
            r6 = "GET";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r5.setRequestMethod(r6);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r6 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r5.setConnectTimeout(r6);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r6 = "Connection";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r7 = "close";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r5.setRequestProperty(r6, r7);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r5.connect();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r6 = r5.getResponseCode();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r7 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            if (r6 != r7) goto L_0x017b;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x00aa:
            r6 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r4 = "appsflyerGetConversionDataTiming";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r8 = r6 - r2;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r8 = r8 / r2;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            com.appsflyer.AppsFlyerLib.saveLongToSharedPreferences(r1, r4, r8);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2.<init>();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3 = new java.io.InputStreamReader;	 Catch:{ all -> 0x016e }
            r4 = r5.getInputStream();	 Catch:{ all -> 0x016e }
            r3.<init>(r4);	 Catch:{ all -> 0x016e }
            r4 = new java.io.BufferedReader;	 Catch:{ all -> 0x016c }
            r4.<init>(r3);	 Catch:{ all -> 0x016c }
        L_0x00cb:
            r0 = r4.readLine();	 Catch:{ all -> 0x0168 }
            if (r0 == 0) goto L_0x00da;	 Catch:{ all -> 0x0168 }
        L_0x00d1:
            r2.append(r0);	 Catch:{ all -> 0x0168 }
            r0 = 10;	 Catch:{ all -> 0x0168 }
            r2.append(r0);	 Catch:{ all -> 0x0168 }
            goto L_0x00cb;
        L_0x00da:
            r4.close();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3.close();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3 = "Attribution data: ";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0.<init>(r3);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3 = r2.toString();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0.append(r3);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0 = r0.toString();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            android.arch.lifecycle.MethodCallsLogger.logMessageMaskKey(r0);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0 = r2.length();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            if (r0 <= 0) goto L_0x01b3;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x00fb:
            if (r1 == 0) goto L_0x01b3;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x00fd:
            r0 = r2.toString();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0 = com.appsflyer.AppsFlyerLib.attributionStringToMap(r0);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3 = "iscache";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3 = r0.get(r3);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3 = (java.lang.String) r3;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            if (r3 == 0) goto L_0x0120;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x010f:
            r4 = "false";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r4 = r4.equals(r3);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            if (r4 == 0) goto L_0x0120;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0117:
            r4 = "appsflyerConversionDataCacheExpiration";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r6 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            com.appsflyer.AppsFlyerLib.saveLongToSharedPreferences(r1, r4, r6);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0120:
            r4 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r4.<init>(r0);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r4 = r4.toString();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            if (r4 == 0) goto L_0x0131;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x012b:
            r2 = "attributionId";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            com.appsflyer.AppsFlyerLib.saveDataToSharedPreferences(r1, r2, r4);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            goto L_0x013a;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0131:
            r4 = "attributionId";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2 = r2.toString();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            com.appsflyer.AppsFlyerLib.saveDataToSharedPreferences(r1, r4, r2);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x013a:
            r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r4 = "iscache=";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2.<init>(r4);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2.append(r3);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3 = " caching conversion data";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2.append(r3);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2 = r2.toString();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            com.appsflyer.AFLogger.afDebugLog(r2);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2 = com.appsflyer.AppsFlyerLib.conversionDataListener$6d80f09e;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            if (r2 == 0) goto L_0x01b3;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0156:
            r2 = r10.currentRequestsCounter;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r2 = r2.intValue();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3 = 1;
            if (r2 > r3) goto L_0x01b3;
        L_0x015f:
            r1 = com.appsflyer.AppsFlyerLib.getConversionData(r1);	 Catch:{ AttributionIDNotReady -> 0x0164 }
            r0 = r1;
        L_0x0164:
            r10.attributionCallback(r0);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            goto L_0x01b3;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0168:
            r0 = move-exception;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r1 = r0;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0 = r4;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            goto L_0x0170;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x016c:
            r1 = move-exception;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            goto L_0x0170;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x016e:
            r1 = move-exception;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r3 = r0;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0170:
            if (r0 == 0) goto L_0x0175;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0172:
            r0.close();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0175:
            if (r3 == 0) goto L_0x017a;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0177:
            r3.close();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x017a:
            throw r1;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x017b:
            r0 = com.appsflyer.AppsFlyerLib.conversionDataListener$6d80f09e;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            if (r0 == 0) goto L_0x0196;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0181:
            r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r1 = "Error connection to server: ";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0.<init>(r1);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r1 = r5.getResponseCode();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0.append(r1);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0 = r5.getResponseCode();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r10.attributionCallbackFailure$505cff1c(r0);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x0196:
            r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r1 = "AttributionIdFetcher response code: ";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0.<init>(r1);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r1 = r5.getResponseCode();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0.append(r1);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r1 = "  url: ";	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0.append(r1);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0.append(r4);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            r0 = r0.toString();	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
            android.arch.lifecycle.MethodCallsLogger.logMessageMaskKey(r0);	 Catch:{ Throwable -> 0x01c0, all -> 0x01be }
        L_0x01b3:
            r0 = r10.currentRequestsCounter;
            r0.decrementAndGet();
            if (r5 == 0) goto L_0x01e5;
        L_0x01ba:
            r5.disconnect();
            goto L_0x01e5;
        L_0x01be:
            r1 = move-exception;
            goto L_0x01eb;
        L_0x01c0:
            r1 = move-exception;
            r0 = r5;
            goto L_0x01c7;
        L_0x01c3:
            r1 = move-exception;
            r5 = r0;
            goto L_0x01eb;
        L_0x01c6:
            r1 = move-exception;
        L_0x01c7:
            r2 = com.appsflyer.AppsFlyerLib.conversionDataListener$6d80f09e;	 Catch:{ all -> 0x01c3 }
            if (r2 == 0) goto L_0x01d4;	 Catch:{ all -> 0x01c3 }
        L_0x01cd:
            r1.getMessage();	 Catch:{ all -> 0x01c3 }
            r2 = 0;	 Catch:{ all -> 0x01c3 }
            r10.attributionCallbackFailure$505cff1c(r2);	 Catch:{ all -> 0x01c3 }
        L_0x01d4:
            r2 = r1.getMessage();	 Catch:{ all -> 0x01c3 }
            com.appsflyer.AFLogger.afLogE(r2, r1);	 Catch:{ all -> 0x01c3 }
            r1 = r10.currentRequestsCounter;
            r1.decrementAndGet();
            if (r0 == 0) goto L_0x01e5;
        L_0x01e2:
            r0.disconnect();
        L_0x01e5:
            r0 = r10.executorService;
            r0.shutdown();
            return;
        L_0x01eb:
            r0 = r10.currentRequestsCounter;
            r0.decrementAndGet();
            if (r5 == 0) goto L_0x01f5;
        L_0x01f2:
            r5.disconnect();
        L_0x01f5:
            throw r1;
        L_0x01f6:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.AttributionIdFetcher.run():void");
        }
    }

    class CachedRequestSender implements Runnable {
        private WeakReference<Context> ctxReference = null;

        public CachedRequestSender(Context context) {
            this.ctxReference = new WeakReference(context);
        }

        public final void run() {
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
            r13 = this;
            r0 = com.appsflyer.AppsFlyerLib.isDuringCheckCache;
            if (r0 == 0) goto L_0x0007;
        L_0x0006:
            return;
        L_0x0007:
            r0 = java.lang.System.currentTimeMillis();
            com.appsflyer.AppsFlyerLib.lastCacheCheck = r0;
            r0 = r13.ctxReference;
            if (r0 != 0) goto L_0x0013;
        L_0x0012:
            return;
        L_0x0013:
            r0 = 1;
            com.appsflyer.AppsFlyerLib.isDuringCheckCache = r0;
            r0 = 0;
            r1 = "AppsFlyerKey";	 Catch:{ Exception -> 0x00a6 }
            r1 = com.appsflyer.AppsFlyerLib.getProperty(r1);	 Catch:{ Exception -> 0x00a6 }
            r9 = r13.ctxReference;	 Catch:{ Exception -> 0x00a6 }
            monitor-enter(r9);	 Catch:{ Exception -> 0x00a6 }
            com.appsflyer.cache.CacheManager.getInstance();	 Catch:{ all -> 0x00a1 }
            r2 = r13.ctxReference;	 Catch:{ all -> 0x00a1 }
            r2 = r2.get();	 Catch:{ all -> 0x00a1 }
            r2 = (android.content.Context) r2;	 Catch:{ all -> 0x00a1 }
            r2 = com.appsflyer.cache.CacheManager.getCachedRequests(r2);	 Catch:{ all -> 0x00a1 }
            r10 = r2.iterator();	 Catch:{ all -> 0x00a1 }
        L_0x0034:
            r2 = r10.hasNext();	 Catch:{ all -> 0x00a1 }
            if (r2 == 0) goto L_0x009f;	 Catch:{ all -> 0x00a1 }
        L_0x003a:
            r2 = r10.next();	 Catch:{ all -> 0x00a1 }
            r2 = (android.support.compat.C0886R.drawable) r2;	 Catch:{ all -> 0x00a1 }
            r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a1 }
            r4 = "resending request: ";	 Catch:{ all -> 0x00a1 }
            r3.<init>(r4);	 Catch:{ all -> 0x00a1 }
            r4 = r2.getRequestURL();	 Catch:{ all -> 0x00a1 }
            r3.append(r4);	 Catch:{ all -> 0x00a1 }
            r3 = r3.toString();	 Catch:{ all -> 0x00a1 }
            com.appsflyer.AFLogger.afLog(r3);	 Catch:{ all -> 0x00a1 }
            r3 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0099 }
            r5 = r2.getCacheKey();	 Catch:{ Exception -> 0x0099 }
            r6 = 10;	 Catch:{ Exception -> 0x0099 }
            r5 = java.lang.Long.parseLong(r5, r6);	 Catch:{ Exception -> 0x0099 }
            r7 = com.appsflyer.AppsFlyerLib.this;	 Catch:{ Exception -> 0x0099 }
            r8 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0099 }
            r8.<init>();	 Catch:{ Exception -> 0x0099 }
            r11 = r2.getRequestURL();	 Catch:{ Exception -> 0x0099 }
            r8.append(r11);	 Catch:{ Exception -> 0x0099 }
            r11 = "&isCachedRequest=true&timeincache=";	 Catch:{ Exception -> 0x0099 }
            r8.append(r11);	 Catch:{ Exception -> 0x0099 }
            r11 = r3 - r5;	 Catch:{ Exception -> 0x0099 }
            r3 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;	 Catch:{ Exception -> 0x0099 }
            r11 = r11 / r3;	 Catch:{ Exception -> 0x0099 }
            r3 = java.lang.Long.toString(r11);	 Catch:{ Exception -> 0x0099 }
            r8.append(r3);	 Catch:{ Exception -> 0x0099 }
            r3 = r8.toString();	 Catch:{ Exception -> 0x0099 }
            r4 = r2.getPostData();	 Catch:{ Exception -> 0x0099 }
            r6 = r13.ctxReference;	 Catch:{ Exception -> 0x0099 }
            r8 = r2.getCacheKey();	 Catch:{ Exception -> 0x0099 }
            r11 = 0;	 Catch:{ Exception -> 0x0099 }
            r2 = r7;	 Catch:{ Exception -> 0x0099 }
            r5 = r1;	 Catch:{ Exception -> 0x0099 }
            r7 = r8;	 Catch:{ Exception -> 0x0099 }
            r8 = r11;	 Catch:{ Exception -> 0x0099 }
            com.appsflyer.AppsFlyerLib.access$900(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x0099 }
            goto L_0x0034;
        L_0x0099:
            r2 = "Failed to resend cached request";	 Catch:{ all -> 0x00a1 }
            com.appsflyer.AFLogger.afLog(r2);	 Catch:{ all -> 0x00a1 }
            goto L_0x0034;	 Catch:{ all -> 0x00a1 }
        L_0x009f:
            monitor-exit(r9);	 Catch:{ all -> 0x00a1 }
            goto L_0x00ab;	 Catch:{ all -> 0x00a1 }
        L_0x00a1:
            r1 = move-exception;	 Catch:{ all -> 0x00a1 }
            monitor-exit(r9);	 Catch:{ all -> 0x00a1 }
            throw r1;	 Catch:{ Exception -> 0x00a6 }
        L_0x00a4:
            r1 = move-exception;
            goto L_0x00b9;
        L_0x00a6:
            r1 = "failed to check cache.";	 Catch:{ all -> 0x00a4 }
            com.appsflyer.AFLogger.afLog(r1);	 Catch:{ all -> 0x00a4 }
        L_0x00ab:
            com.appsflyer.AppsFlyerLib.isDuringCheckCache = r0;
            r0 = com.appsflyer.AppsFlyerLib.cacheScheduler;
            r0.shutdown();
            com.appsflyer.AppsFlyerLib.cacheScheduler = null;
            return;
        L_0x00b9:
            com.appsflyer.AppsFlyerLib.isDuringCheckCache = r0;
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.CachedRequestSender.run():void");
        }
    }

    class DataCollector implements Runnable {
        private String appsFlyerKey;
        private Context context;
        private String eventName;
        private String eventValue;
        private ExecutorService executor;
        private boolean isNewAPI;
        private String referrer;

        private DataCollector(Context context, String str, String str2, String str3, boolean z, ExecutorService executorService) {
            this.context = context;
            this.appsFlyerKey = null;
            this.eventName = str;
            this.eventValue = str2;
            this.referrer = str3;
            this.isNewAPI = z;
            this.executor = executorService;
        }

        public final void run() {
            AppsFlyerLib.access$500(AppsFlyerLib.this, this.context, null, this.eventName, this.eventValue, this.referrer, this.isNewAPI);
            this.executor.shutdown();
        }
    }

    class SendToServerRunnable implements Runnable {
        private WeakReference<Context> ctxReference;
        boolean isLaunch;
        Map<String, String> params;
        private String urlString;

        private SendToServerRunnable(String str, Map<String, String> map, Context context, boolean z) {
            this.ctxReference = null;
            this.urlString = str;
            this.params = map;
            this.ctxReference = new WeakReference(context);
            this.isLaunch = z;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            /*
            r12 = this;
            r0 = 0;
            r1 = r12.ctxReference;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1 = r1.get();	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1 = (android.content.Context) r1;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r2 = 1;
            r3 = 0;
            if (r1 == 0) goto L_0x0095;
        L_0x000d:
            r4 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r4 = r4.getReferrer(r1);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            if (r4 == 0) goto L_0x002e;
        L_0x0017:
            r5 = r4.length();	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            if (r5 <= 0) goto L_0x002e;
        L_0x001d:
            r5 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r6 = "referrer";
            r5 = r5.get(r6);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            if (r5 != 0) goto L_0x002e;
        L_0x0027:
            r5 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r6 = "referrer";
            r5.put(r6, r4);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
        L_0x002e:
            r4 = "appsflyer-data";
            r4 = r1.getSharedPreferences(r4, r3);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r5 = "true";
            r6 = "sentSuccessfully";
            r7 = "";
            r4 = r4.getString(r6, r7);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r4 = r5.equals(r4);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r5 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r6 = "eventName";
            r5 = r5.get(r6);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r5 = (java.lang.String) r5;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r6 = "appsFlyerCount";
            if (r5 != 0) goto L_0x0052;
        L_0x0050:
            r7 = r2;
            goto L_0x0053;
        L_0x0052:
            r7 = r3;
        L_0x0053:
            r6 = com.appsflyer.AppsFlyerLib.getCounter(r1, r6, r7);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r7 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r8 = "counter";
            r9 = java.lang.Integer.toString(r6);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r7.put(r8, r9);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r7 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r8 = "iaecounter";
            r9 = "appsFlyerInAppEventCount";
            if (r5 == 0) goto L_0x006c;
        L_0x006a:
            r5 = r2;
            goto L_0x006d;
        L_0x006c:
            r5 = r3;
        L_0x006d:
            r5 = com.appsflyer.AppsFlyerLib.getCounter(r1, r9, r5);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r5 = java.lang.Integer.toString(r5);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r7.put(r8, r5);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r5 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r7 = "timepassedsincelastlaunch";
            r8 = com.appsflyer.AppsFlyerLib.access$700$41228562$1ae01aa2(r1);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1 = java.lang.Long.toString(r8);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r5.put(r7, r1);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1 = r12.isLaunch;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            if (r1 == 0) goto L_0x0096;
        L_0x008b:
            if (r6 != r2) goto L_0x0096;
        L_0x008d:
            r1 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1.setFirstLaunchCalled();	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            goto L_0x0096;
        L_0x0095:
            r4 = r3;
        L_0x0096:
            r1 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r5 = "isFirstCall";
            if (r4 != 0) goto L_0x009e;
        L_0x009c:
            r4 = r2;
            goto L_0x009f;
        L_0x009e:
            r4 = r3;
        L_0x009f:
            r4 = java.lang.Boolean.toString(r4);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1.put(r5, r4);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r4 = "appsflyerKey";
            r1 = r1.get(r4);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r7 = r1;
            r7 = (java.lang.String) r7;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            if (r7 == 0) goto L_0x00f5;
        L_0x00b3:
            r1 = r7.length();	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            if (r1 != 0) goto L_0x00ba;
        L_0x00b9:
            goto L_0x00f5;
        L_0x00ba:
            r1 = new com.appsflyer.HashUtils;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1.<init>();	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1 = com.appsflyer.HashUtils.getHashCode(r1);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r4 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r5 = "af_v";
            r4.put(r5, r1);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1 = new org.json.JSONObject;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r4 = r12.params;	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1.<init>(r4);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r1 = r1.toString();	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            r4 = com.appsflyer.AppsFlyerLib.this;	 Catch:{ IOException -> 0x00f0, Throwable -> 0x00fb }
            r5 = r12.urlString;	 Catch:{ IOException -> 0x00f0, Throwable -> 0x00fb }
            r8 = r12.ctxReference;	 Catch:{ IOException -> 0x00f0, Throwable -> 0x00fb }
            r9 = 0;
            r0 = r12.isLaunch;	 Catch:{ IOException -> 0x00f0, Throwable -> 0x00fb }
            if (r0 == 0) goto L_0x00ea;
        L_0x00e2:
            r0 = com.appsflyer.AppsFlyerLib.conversionDataListener$6d80f09e;	 Catch:{ IOException -> 0x00f0, Throwable -> 0x00fb }
            if (r0 == 0) goto L_0x00ea;
        L_0x00e8:
            r10 = r2;
            goto L_0x00eb;
        L_0x00ea:
            r10 = r3;
        L_0x00eb:
            r6 = r1;
            com.appsflyer.AppsFlyerLib.access$900(r4, r5, r6, r7, r8, r9, r10);	 Catch:{ IOException -> 0x00f0, Throwable -> 0x00fb }
            return;
        L_0x00f0:
            r0 = move-exception;
            r11 = r1;
            r1 = r0;
            r0 = r11;
            goto L_0x0105;
        L_0x00f5:
            r1 = "Not sending data yet, waiting for dev key";
            com.appsflyer.AFLogger.afDebugLog(r1);	 Catch:{ IOException -> 0x0104, Throwable -> 0x00fb }
            return;
        L_0x00fb:
            r0 = move-exception;
            r1 = r0.getMessage();
            com.appsflyer.AFLogger.afLogE(r1, r0);
            return;
        L_0x0104:
            r1 = move-exception;
        L_0x0105:
            if (r0 == 0) goto L_0x0133;
        L_0x0107:
            r2 = r12.ctxReference;
            if (r2 == 0) goto L_0x0133;
        L_0x010b:
            r2 = r12.urlString;
            r3 = "&isCachedRequest=true&timeincache=";
            r2 = r2.contains(r3);
            if (r2 != 0) goto L_0x0133;
        L_0x0115:
            r2 = r1.getMessage();
            com.appsflyer.AFLogger.afLogE(r2, r1);
            com.appsflyer.cache.CacheManager.getInstance();
            r1 = new android.support.compat.R$drawable;
            r2 = r12.urlString;
            r3 = com.appsflyer.AppsFlyerLib.SDK_BUILD_NUMBER;
            r1.<init>(r2, r0, r3);
            r0 = r12.ctxReference;
            r0 = r0.get();
            r0 = (android.content.Context) r0;
            com.appsflyer.cache.CacheManager.cacheRequest$29a0b403(r1, r0);
        L_0x0133:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.SendToServerRunnable.run():void");
        }
    }

    /* renamed from: com.appsflyer.AppsFlyerLib$1 */
    class C09801 implements Listener {
        C09801() {
        }

        public final void onBecameForeground(Activity activity) {
            AFLogger.afLog("onBecameForeground");
            AppsFlyerLib.timeInApp = System.currentTimeMillis();
            AppsFlyerLib.this.trackEvent(activity, null, null);
        }

        public final void onBecameBackground(Activity activity) {
            AFLogger.afLog("onBecameBackground");
            AFLogger.afLog("callStatsBackground background call");
            AppsFlyerLib.access$100$1ae01a96(activity.getApplicationContext());
        }
    }

    class InstallAttributionIdFetcher extends AttributionIdFetcher {
        public final String getUrl() {
            return "https://api.appsflyer.com/install_data/v3/";
        }

        public InstallAttributionIdFetcher(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
            super(context, str, scheduledExecutorService);
        }

        protected final void attributionCallback(Map<String, String> map) {
            AppsFlyerLib.conversionDataListener$6d80f09e.onInstallConversionDataLoaded(map);
            ((Context) this.ctxReference.get()).getSharedPreferences("appsflyer-data", 0);
            AppsFlyerLib.saveIntegerToSharedPreferences((Context) this.ctxReference.get(), "appsflyerConversionDataRequestRetries", 0);
        }

        protected final void attributionCallbackFailure$505cff1c(int i) {
            AppsFlyerLib.conversionDataListener$6d80f09e;
            if (i >= 400 && i < 500) {
                AppsFlyerLib.saveIntegerToSharedPreferences((Context) this.ctxReference.get(), "appsflyerConversionDataRequestRetries", ((Context) this.ctxReference.get()).getSharedPreferences("appsflyer-data", 0).getInt("appsflyerConversionDataRequestRetries", 0) + 1);
            }
        }
    }

    static {
        StringBuilder stringBuilder = new StringBuilder("AppsFlyer_");
        stringBuilder.append(SDK_BUILD_NUMBER);
        LOG_TAG = stringBuilder.toString();
        stringBuilder = new StringBuilder("https://t.appsflyer.com/api/v");
        stringBuilder.append(SERVER_BUILD_NUMBER);
        stringBuilder.append("/androidevent?buildnumber=");
        stringBuilder.append(SDK_BUILD_NUMBER);
        stringBuilder.append("&app_id=");
        APPS_TRACKING_URL = stringBuilder.toString();
        stringBuilder = new StringBuilder("https://events.appsflyer.com/api/v");
        stringBuilder.append(SERVER_BUILD_NUMBER);
        stringBuilder.append("/androidevent?buildnumber=");
        stringBuilder.append(SDK_BUILD_NUMBER);
        stringBuilder.append("&app_id=");
        EVENTS_TRACKING_URL = stringBuilder.toString();
        stringBuilder = new StringBuilder("https://register.appsflyer.com/api/v");
        stringBuilder.append(SERVER_BUILD_NUMBER);
        stringBuilder.append("/androidevent?buildnumber=");
        stringBuilder.append(SDK_BUILD_NUMBER);
        stringBuilder.append("&app_id=");
        REGISTER_URL = stringBuilder.toString();
    }

    public final void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("shouldMonitor");
        if (stringExtra != null) {
            AFLogger.afLog("Turning on monitoring.");
            AppsFlyerProperties.getInstance().set("shouldMonitor", stringExtra.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
            monitor(context, null, "START_TRACKING", context.getPackageName());
            return;
        }
        AFLogger.afLog("****** onReceive called *******");
        debugAction("******* onReceive: ", "", context);
        AppsFlyerProperties.getInstance().setOnReceiveCalled();
        String stringExtra2 = intent.getStringExtra("referrer");
        AFLogger.afLog("Play store referrer: ".concat(String.valueOf(stringExtra2)));
        if (stringExtra2 != null) {
            intent = intent.getStringExtra("TestIntegrationMode");
            if (!(intent == null || intent.equals("AppsFlyer_Test") == null)) {
                intent = context.getSharedPreferences("appsflyer-data", 0).edit();
                intent.clear();
                if (VERSION.SDK_INT >= 9) {
                    intent.apply();
                } else {
                    intent.commit();
                }
                AppsFlyerProperties.getInstance().setFirstLaunchCalled$1385ff();
                AFLogger.afLog("Test mode started..");
                this.testModeStartTime = System.currentTimeMillis();
            }
            debugAction("onReceive called. referrer: ", stringExtra2, context);
            saveDataToSharedPreferences(context, "referrer", stringExtra2);
            AppsFlyerProperties.getInstance().setReferrer(stringExtra2);
            if (AppsFlyerProperties.getInstance().isFirstLaunchCalled() != null) {
                AFLogger.afLog("onReceive: isLaunchCalled");
                runInBackground$7227ece7(context, null, null, stringExtra2, false);
            }
        }
    }

    private AppsFlyerLib() {
    }

    public static AppsFlyerLib getInstance() {
        return instance;
    }

    public static void setDebugLog$1385ff() {
        AppsFlyerProperties.getInstance().set("shouldLog", false);
    }

    public static void setAndroidIdData(String str) {
        userCustomAndroidId = str;
    }

    private static void debugAction(String str, String str2, Context context) {
        try {
            if (isAppsFlyerPackage(context) != null) {
                context = DebugLogQueue.getInstance();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(str2);
                context.queue.add(new Item(stringBuilder.toString()));
            }
        } catch (String str3) {
            AFLogger.afLog(str3.toString());
        }
    }

    private static boolean isAppsFlyerPackage(Context context) {
        return (context == null || context.getPackageName().length() <= 12 || "com.appsflyer".equals(context.getPackageName().toLowerCase().substring(0, 13)) == null) ? false : true;
    }

    private static void saveDataToSharedPreferences(Context context, String str, String str2) {
        context = context.getSharedPreferences("appsflyer-data", 0).edit();
        context.putString(str, str2);
        if (VERSION.SDK_INT >= 9) {
            context.apply();
        } else {
            context.commit();
        }
    }

    private static void saveIntegerToSharedPreferences(Context context, String str, int i) {
        context = context.getSharedPreferences("appsflyer-data", 0).edit();
        context.putInt(str, i);
        if (VERSION.SDK_INT >= 9) {
            context.apply();
        } else {
            context.commit();
        }
    }

    private static void saveLongToSharedPreferences(Context context, String str, long j) {
        context = context.getSharedPreferences("appsflyer-data", 0).edit();
        context.putLong(str, j);
        if (VERSION.SDK_INT >= 9) {
            context.apply();
        } else {
            context.commit();
        }
    }

    public static String getProperty(String str) {
        return AppsFlyerProperties.getInstance().getString(str);
    }

    public static void setCustomerUserId(String str) {
        AFLogger.afLog("setCustomerUserId = ".concat(String.valueOf(str)));
        AppsFlyerProperties.getInstance().set("AppUserId", str);
    }

    public final void startTracking(Application application, String str) {
        AFLogger.afLogM("Build Number: 138");
        AppsFlyerProperties.getInstance().set("AppsFlyerKey", str);
        MethodCallsLogger.setDevKey(str);
        if (this.listener == null) {
            AppsFlyerProperties.getInstance().loadProperties(application.getApplicationContext());
            if (VERSION.SDK_INT >= 14) {
                Foreground.init(application);
                this.listener = new C09801();
                Foreground.getInstance().addListener(this.listener);
            } else {
                AFLogger.afLog("SDK<14 call trackAppLaunch manually");
                trackEvent(application.getApplicationContext(), null, null);
            }
        }
        application = application.getApplicationContext();
        str = AppsFlyerProperties.getInstance().getString("GCM_PROJECT_ID");
        if (str != null && AppsFlyerProperties.getInstance().getString("GCM_TOKEN") == null) {
            new Thread(new Runnable() {
                public final void run() {
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
                    r0 = "com.google.android.gms.iid.InstanceID";	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r0 = r3;	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r0 = com.google.android.gms.iid.InstanceID.getInstance(r0);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r1 = r4;	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r2 = "GCM";	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r3 = 0;	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r1 = r0.getToken(r1, r2, r3);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r2 = "token=";	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r3 = java.lang.String.valueOf(r1);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r2 = r2.concat(r3);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    com.appsflyer.AFLogger.afLog(r2);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r3 = "GCM_TOKEN";	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r2.set(r3, r1);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r0 = r0.getId();	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r1 = "instance id=";	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r2 = java.lang.String.valueOf(r0);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r1 = r1.concat(r2);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    com.appsflyer.AFLogger.afLog(r1);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r1 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r2 = "GCM_INSTANCE_ID";	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r1.set(r2, r0);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    r0 = r3;	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    com.appsflyer.AppsFlyerLib.access$200$1ae01a96(r0);	 Catch:{ ClassNotFoundException -> 0x0056, IOException -> 0x0050, Throwable -> 0x004a }
                    return;
                L_0x004a:
                    r0 = "Error registering for uninstall feature";
                    com.appsflyer.AFLogger.afLog(r0);
                    return;
                L_0x0050:
                    r0 = "Could not load registration ID";
                    com.appsflyer.AFLogger.afLog(r0);
                    return;
                L_0x0056:
                    r0 = "Please integrate Google Play Services in order to support uninstall feature";
                    com.appsflyer.AFLogger.afLog(r0);
                    return;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.2.run():void");
                }
            }).start();
        }
    }

    public final void trackEvent(Context context, String str, Map<String, Object> map) {
        if (map == null) {
            map = new HashMap();
        }
        JSONObject jSONObject = new JSONObject(map);
        map = AppsFlyerProperties.getInstance().getReferrer(context);
        String jSONObject2 = jSONObject.toString();
        if (map == null) {
            map = "";
        }
        runInBackground$7227ece7(context, str, jSONObject2, map, true);
    }

    private static void monitor(Context context, String str, String str2, String str3) {
        if (AppsFlyerProperties.getInstance().getBoolean("shouldMonitor", false)) {
            Intent intent = new Intent("com.appsflyer.MonitorBroadcast");
            intent.setPackage("com.appsflyer.nightvision");
            intent.putExtra(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, str2);
            intent.putExtra("value", str3);
            intent.putExtra("packageName", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            intent.putExtra("pid", new Integer(Process.myPid()));
            intent.putExtra("eventIdentifier", str);
            str2 = new StringBuilder();
            str2.append(SERVER_BUILD_NUMBER);
            str2.append('.');
            str2.append(SDK_BUILD_NUMBER);
            intent.putExtra("sdk", str2.toString());
            context.sendBroadcast(intent);
        }
    }

    public static Map<String, String> getConversionData(Context context) throws AttributionIDNotReady {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        String referrer = AppsFlyerProperties.getInstance().getReferrer(context);
        if (referrer != null && referrer.length() > 0 && referrer.contains("af_tranid")) {
            return referrerStringToMap(context, referrer);
        }
        context = sharedPreferences.getString("attributionId", null);
        if (context != null && context.length() > 0) {
            return attributionStringToMap(context);
        }
        throw new AttributionIDNotReady();
    }

    public static void registerConversionListener$815205$bb56743(AnimatorListener animatorListener) {
        conversionDataListener$6d80f09e = animatorListener;
    }

    private static java.util.Map<java.lang.String, java.lang.String> referrerStringToMap(android.content.Context r10, java.lang.String r11) {
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
        r0 = new java.util.LinkedHashMap;
        r0.<init>();
        r1 = "&";
        r11 = r11.split(r1);
        r1 = 0;
        r2 = r11.length;
        r3 = r1;
        r4 = r3;
    L_0x000f:
        if (r3 >= r2) goto L_0x0069;
    L_0x0011:
        r5 = r11[r3];
        r6 = "=";
        r6 = r5.indexOf(r6);
        if (r6 <= 0) goto L_0x0020;
    L_0x001b:
        r7 = r5.substring(r1, r6);
        goto L_0x0021;
    L_0x0020:
        r7 = r5;
    L_0x0021:
        r8 = r0.containsKey(r7);
        if (r8 != 0) goto L_0x0053;
    L_0x0027:
        r8 = "c";
        r8 = r7.equals(r8);
        if (r8 == 0) goto L_0x0032;
    L_0x002f:
        r7 = "campaign";
        goto L_0x004b;
    L_0x0032:
        r8 = "pid";
        r8 = r7.equals(r8);
        if (r8 == 0) goto L_0x003d;
    L_0x003a:
        r7 = "media_source";
        goto L_0x004b;
    L_0x003d:
        r8 = "af_prt";
        r8 = r7.equals(r8);
        if (r8 == 0) goto L_0x004b;
    L_0x0045:
        r4 = "agency";
        r7 = 1;
        r9 = r7;
        r7 = r4;
        r4 = r9;
    L_0x004b:
        r8 = new java.lang.String;
        r8.<init>();
        r0.put(r7, r8);
    L_0x0053:
        if (r6 <= 0) goto L_0x0062;
    L_0x0055:
        r8 = r5.length();
        r6 = r6 + 1;
        if (r8 <= r6) goto L_0x0062;
    L_0x005d:
        r5 = r5.substring(r6);
        goto L_0x0063;
    L_0x0062:
        r5 = 0;
    L_0x0063:
        r0.put(r7, r5);
        r3 = r3 + 1;
        goto L_0x000f;
    L_0x0069:
        r11 = "install_time";	 Catch:{ Exception -> 0x0095 }
        r11 = r0.containsKey(r11);	 Catch:{ Exception -> 0x0095 }
        if (r11 != 0) goto L_0x009a;	 Catch:{ Exception -> 0x0095 }
    L_0x0071:
        r11 = r10.getPackageManager();	 Catch:{ Exception -> 0x0095 }
        r10 = r10.getPackageName();	 Catch:{ Exception -> 0x0095 }
        r10 = r11.getPackageInfo(r10, r1);	 Catch:{ Exception -> 0x0095 }
        r10 = r10.firstInstallTime;	 Catch:{ Exception -> 0x0095 }
        r1 = new java.text.SimpleDateFormat;	 Catch:{ Exception -> 0x0095 }
        r2 = "yyyy-MM-dd hh:mm:ss";	 Catch:{ Exception -> 0x0095 }
        r1.<init>(r2);	 Catch:{ Exception -> 0x0095 }
        r2 = "install_time";	 Catch:{ Exception -> 0x0095 }
        r3 = new java.util.Date;	 Catch:{ Exception -> 0x0095 }
        r3.<init>(r10);	 Catch:{ Exception -> 0x0095 }
        r10 = r1.format(r3);	 Catch:{ Exception -> 0x0095 }
        r0.put(r2, r10);	 Catch:{ Exception -> 0x0095 }
        goto L_0x009a;
    L_0x0095:
        r10 = "Could not fetch install time";
        com.appsflyer.AFLogger.afWarnLog(r10);
    L_0x009a:
        r10 = "af_status";
        r10 = r0.containsKey(r10);
        if (r10 != 0) goto L_0x00a9;
    L_0x00a2:
        r10 = "af_status";
        r11 = "Non-organic";
        r0.put(r10, r11);
    L_0x00a9:
        if (r4 == 0) goto L_0x00b0;
    L_0x00ab:
        r10 = "media_source";
        r0.remove(r10);
    L_0x00b0:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.referrerStringToMap(android.content.Context, java.lang.String):java.util.Map<java.lang.String, java.lang.String>");
    }

    private static Map<String, String> attributionStringToMap(String str) {
        Map<String, String> hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            str = jSONObject.keys();
            while (str.hasNext()) {
                String str2 = (String) str.next();
                if (!IGNORABLE_KEYS.contains(str2)) {
                    hashMap.put(str2, jSONObject.getString(str2));
                }
            }
            return hashMap;
        } catch (String str3) {
            AFLogger.afWarnLog(str3.getMessage());
            return null;
        }
    }

    private void runInBackground$7227ece7(Context context, String str, String str2, String str3, boolean z) {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        newSingleThreadScheduledExecutor.schedule(new DataCollector(context, str, str2, str3, z, newSingleThreadScheduledExecutor), 5, TimeUnit.MILLISECONDS);
    }

    private static int numricBooleanIsClassExist(java.lang.String r0) {
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
        java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0005 }
        r0 = 1;
        return r0;
    L_0x0005:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.numricBooleanIsClassExist(java.lang.String):int");
    }

    private static boolean isGooglePlayServicesAvailable(android.content.Context r2) {
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
        r0 = 0;
        r1 = com.google.android.gms.common.GoogleApiAvailability.getInstance();	 Catch:{ Throwable -> 0x000e }
        r2 = r1.isGooglePlayServicesAvailable(r2);	 Catch:{ Throwable -> 0x000e }
        if (r2 != 0) goto L_0x0013;
    L_0x000b:
        r2 = 1;
        r0 = r2;
        goto L_0x0013;
    L_0x000e:
        r2 = "WARNING: Google play services is unavailable.";
        com.appsflyer.AFLogger.afLog(r2);
    L_0x0013:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.isGooglePlayServicesAvailable(android.content.Context):boolean");
    }

    private static String getManifestMetaData(Context context, String str) {
        try {
            context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (context == null) {
                return null;
            }
            context = context.get(str);
            if (context != null) {
                return context.toString();
            }
            return null;
        } catch (Context context2) {
            StringBuilder stringBuilder = new StringBuilder("Could not find ");
            stringBuilder.append(str);
            stringBuilder.append(" value in the manifest");
            AFLogger.afLogE(stringBuilder.toString(), context2);
            return null;
        }
    }

    private static java.lang.String preInstallValueFromFile(android.content.Context r4) {
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
        r0 = "AF_PRE_INSTALL_PATH";
        r0 = getManifestMetaData(r4, r0);
        if (r0 != 0) goto L_0x000a;
    L_0x0008:
        r0 = "/data/local/tmp/pre_install.appsflyer";
    L_0x000a:
        r1 = 0;
        r2 = new java.util.Properties;	 Catch:{ Throwable -> 0x0033, all -> 0x002b }
        r2.<init>();	 Catch:{ Throwable -> 0x0033, all -> 0x002b }
        r3 = new java.io.FileReader;	 Catch:{ Throwable -> 0x0033, all -> 0x002b }
        r3.<init>(r0);	 Catch:{ Throwable -> 0x0033, all -> 0x002b }
        r2.load(r3);	 Catch:{ Throwable -> 0x0034, all -> 0x0029 }
        r0 = "Found pre_install definition";	 Catch:{ Throwable -> 0x0034, all -> 0x0029 }
        com.appsflyer.AFLogger.afLog(r0);	 Catch:{ Throwable -> 0x0034, all -> 0x0029 }
        r4 = r4.getPackageName();	 Catch:{ Throwable -> 0x0034, all -> 0x0029 }
        r4 = r2.getProperty(r4);	 Catch:{ Throwable -> 0x0034, all -> 0x0029 }
        r3.close();	 Catch:{ Throwable -> 0x0028 }
    L_0x0028:
        return r4;
    L_0x0029:
        r4 = move-exception;
        goto L_0x002d;
    L_0x002b:
        r4 = move-exception;
        r3 = r1;
    L_0x002d:
        if (r3 == 0) goto L_0x0032;
    L_0x002f:
        r3.close();	 Catch:{ Throwable -> 0x0032 }
    L_0x0032:
        throw r4;
    L_0x0033:
        r3 = r1;
    L_0x0034:
        if (r3 == 0) goto L_0x0039;
    L_0x0036:
        r3.close();	 Catch:{ Throwable -> 0x0039 }
    L_0x0039:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.preInstallValueFromFile(android.content.Context):java.lang.String");
    }

    private static boolean isPreInstalledApp(Context context) {
        try {
            if ((context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != null) {
                return true;
            }
            return false;
        } catch (Context context2) {
            AFLogger.afLogE("Could not check if app is pre installed", context2);
        }
    }

    private static String getCachedChannel(Context context, String str) throws NameNotFoundException {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        if (sharedPreferences.contains("CACHED_CHANNEL")) {
            return sharedPreferences.getString("CACHED_CHANNEL", null);
        }
        saveDataToSharedPreferences(context, "CACHED_CHANNEL", str);
        return str;
    }

    private static java.lang.String getAttributionId(android.content.ContentResolver r7) {
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
        r0 = 1;
        r3 = new java.lang.String[r0];
        r0 = "aid";
        r1 = 0;
        r3[r1] = r0;
        r0 = "content://com.facebook.katana.provider.AttributionIdProvider";
        r2 = android.net.Uri.parse(r0);
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r1 = r7;
        r7 = r1.query(r2, r3, r4, r5, r6);
        r0 = 0;
        if (r7 == 0) goto L_0x004d;
    L_0x0019:
        r1 = r7.moveToFirst();	 Catch:{ Exception -> 0x0033 }
        if (r1 != 0) goto L_0x0020;	 Catch:{ Exception -> 0x0033 }
    L_0x001f:
        goto L_0x004d;	 Catch:{ Exception -> 0x0033 }
    L_0x0020:
        r1 = "aid";	 Catch:{ Exception -> 0x0033 }
        r1 = r7.getColumnIndex(r1);	 Catch:{ Exception -> 0x0033 }
        r1 = r7.getString(r1);	 Catch:{ Exception -> 0x0033 }
        if (r7 == 0) goto L_0x002f;
    L_0x002c:
        r7.close();	 Catch:{ Exception -> 0x002f }
    L_0x002f:
        r0 = r1;
        goto L_0x0046;
    L_0x0031:
        r0 = move-exception;
        goto L_0x0047;
    L_0x0033:
        r1 = move-exception;
        r2 = "Could not collect cursor attribution";	 Catch:{ all -> 0x0031 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x0031 }
        r1 = r2.concat(r1);	 Catch:{ all -> 0x0031 }
        com.appsflyer.AFLogger.afWarnLog(r1);	 Catch:{ all -> 0x0031 }
        if (r7 == 0) goto L_0x0046;
    L_0x0043:
        r7.close();	 Catch:{ Exception -> 0x0046 }
    L_0x0046:
        return r0;
    L_0x0047:
        if (r7 == 0) goto L_0x004c;
    L_0x0049:
        r7.close();	 Catch:{ Exception -> 0x004c }
    L_0x004c:
        throw r0;
    L_0x004d:
        if (r7 == 0) goto L_0x0052;
    L_0x004f:
        r7.close();	 Catch:{ Exception -> 0x0052 }
    L_0x0052:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.getAttributionId(android.content.ContentResolver):java.lang.String");
    }

    private static int getCounter(Context context, String str, boolean z) {
        context = context.getSharedPreferences("appsflyer-data", 0);
        int i = context.getInt(str, 0);
        if (z) {
            i++;
            context = context.edit();
            context.putInt(str, i);
            if (VERSION.SDK_INT >= true) {
                context.apply();
            } else {
                context.commit();
            }
        }
        return i;
    }

    private static java.lang.String getUniquePsuedoID() {
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
        r0 = new java.lang.StringBuilder;
        r1 = "35";
        r0.<init>(r1);
        r1 = android.os.Build.BOARD;
        r1 = r1.length();
        r1 = r1 % 10;
        r0.append(r1);
        r1 = android.os.Build.BRAND;
        r1 = r1.length();
        r1 = r1 % 10;
        r0.append(r1);
        r1 = android.os.Build.CPU_ABI;
        r1 = r1.length();
        r1 = r1 % 10;
        r0.append(r1);
        r1 = android.os.Build.DEVICE;
        r1 = r1.length();
        r1 = r1 % 10;
        r0.append(r1);
        r1 = android.os.Build.MANUFACTURER;
        r1 = r1.length();
        r1 = r1 % 10;
        r0.append(r1);
        r1 = android.os.Build.MODEL;
        r1 = r1.length();
        r1 = r1 % 10;
        r0.append(r1);
        r1 = android.os.Build.PRODUCT;
        r1 = r1.length();
        r1 = r1 % 10;
        r0.append(r1);
        r0 = r0.toString();
        r1 = android.os.Build.class;	 Catch:{ Exception -> 0x007d }
        r2 = "SERIAL";	 Catch:{ Exception -> 0x007d }
        r1 = r1.getField(r2);	 Catch:{ Exception -> 0x007d }
        r2 = 0;	 Catch:{ Exception -> 0x007d }
        r1 = r1.get(r2);	 Catch:{ Exception -> 0x007d }
        r1 = r1.toString();	 Catch:{ Exception -> 0x007d }
        r2 = new java.util.UUID;	 Catch:{ Exception -> 0x007d }
        r3 = r0.hashCode();	 Catch:{ Exception -> 0x007d }
        r3 = (long) r3;	 Catch:{ Exception -> 0x007d }
        r1 = r1.hashCode();	 Catch:{ Exception -> 0x007d }
        r5 = (long) r1;	 Catch:{ Exception -> 0x007d }
        r2.<init>(r3, r5);	 Catch:{ Exception -> 0x007d }
        r1 = r2.toString();	 Catch:{ Exception -> 0x007d }
        return r1;
    L_0x007d:
        r1 = "serial";
        r2 = new java.util.UUID;
        r0 = r0.hashCode();
        r3 = (long) r0;
        r0 = r1.hashCode();
        r0 = (long) r0;
        r2.<init>(r3, r0);
        r0 = r2.toString();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.getUniquePsuedoID():java.lang.String");
    }

    public static String getAppsFlyerUID(Context context) {
        return Installation.id(context);
    }

    private void callServer(java.net.URL r21, java.lang.String r22, java.lang.String r23, java.lang.ref.WeakReference<android.content.Context> r24, java.lang.String r25, boolean r26) throws java.io.IOException {
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
        r20 = this;
        r1 = r20;
        r2 = r23;
        r3 = r25;
        r5 = r24.get();
        r5 = (android.content.Context) r5;
        r6 = 0;
        r7 = r21.openConnection();	 Catch:{ all -> 0x0149 }
        r7 = (java.net.HttpURLConnection) r7;	 Catch:{ all -> 0x0149 }
        r8 = "POST";	 Catch:{ all -> 0x0146 }
        r7.setRequestMethod(r8);	 Catch:{ all -> 0x0146 }
        r8 = r22.getBytes();	 Catch:{ all -> 0x0146 }
        r8 = r8.length;	 Catch:{ all -> 0x0146 }
        r9 = "Content-Length";	 Catch:{ all -> 0x0146 }
        r8 = java.lang.String.valueOf(r8);	 Catch:{ all -> 0x0146 }
        r7.setRequestProperty(r9, r8);	 Catch:{ all -> 0x0146 }
        r8 = "Content-Type";	 Catch:{ all -> 0x0146 }
        r9 = "application/json";	 Catch:{ all -> 0x0146 }
        r7.setRequestProperty(r8, r9);	 Catch:{ all -> 0x0146 }
        r8 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;	 Catch:{ all -> 0x0146 }
        r7.setConnectTimeout(r8);	 Catch:{ all -> 0x0146 }
        r8 = 1;	 Catch:{ all -> 0x0146 }
        r7.setDoOutput(r8);	 Catch:{ all -> 0x0146 }
        r9 = new java.io.OutputStreamWriter;	 Catch:{ all -> 0x013e }
        r10 = r7.getOutputStream();	 Catch:{ all -> 0x013e }
        r9.<init>(r10);	 Catch:{ all -> 0x013e }
        r10 = r22;
        r9.write(r10);	 Catch:{ all -> 0x013a }
        r9.close();	 Catch:{ all -> 0x0146 }
        r9 = r7.getResponseCode();	 Catch:{ all -> 0x0146 }
        r10 = "response code: ";	 Catch:{ all -> 0x0146 }
        r11 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x0146 }
        r10 = r10.concat(r11);	 Catch:{ all -> 0x0146 }
        com.appsflyer.AFLogger.afLogM(r10);	 Catch:{ all -> 0x0146 }
        r10 = LOG_TAG;	 Catch:{ all -> 0x0146 }
        r11 = "SERVER_RESPONSE_CODE";	 Catch:{ all -> 0x0146 }
        r12 = java.lang.Integer.toString(r9);	 Catch:{ all -> 0x0146 }
        monitor(r5, r10, r11, r12);	 Catch:{ all -> 0x0146 }
        r10 = "response from server. status=";	 Catch:{ all -> 0x0146 }
        r11 = java.lang.Integer.toString(r9);	 Catch:{ all -> 0x0146 }
        debugAction(r10, r11, r5);	 Catch:{ all -> 0x0146 }
        r10 = "appsflyer-data";	 Catch:{ all -> 0x0146 }
        r11 = 0;	 Catch:{ all -> 0x0146 }
        r10 = r5.getSharedPreferences(r10, r11);	 Catch:{ all -> 0x0146 }
        r12 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;	 Catch:{ all -> 0x0146 }
        if (r9 != r12) goto L_0x00b7;	 Catch:{ all -> 0x0146 }
    L_0x0077:
        if (r3 == 0) goto L_0x007f;	 Catch:{ all -> 0x0146 }
    L_0x0079:
        com.appsflyer.cache.CacheManager.getInstance();	 Catch:{ all -> 0x0146 }
        com.appsflyer.cache.CacheManager.deleteRequest(r3, r5);	 Catch:{ all -> 0x0146 }
    L_0x007f:
        r9 = r24.get();	 Catch:{ all -> 0x0146 }
        if (r9 == 0) goto L_0x00b7;	 Catch:{ all -> 0x0146 }
    L_0x0085:
        if (r3 != 0) goto L_0x00b7;	 Catch:{ all -> 0x0146 }
    L_0x0087:
        r3 = "sentSuccessfully";	 Catch:{ all -> 0x0146 }
        r9 = "true";	 Catch:{ all -> 0x0146 }
        saveDataToSharedPreferences(r5, r3, r9);	 Catch:{ all -> 0x0146 }
        r3 = isDuringCheckCache;	 Catch:{ all -> 0x0146 }
        if (r3 != 0) goto L_0x00b7;	 Catch:{ all -> 0x0146 }
    L_0x0092:
        r12 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x0146 }
        r14 = lastCacheCheck;	 Catch:{ all -> 0x0146 }
        r16 = r12 - r14;	 Catch:{ all -> 0x0146 }
        r12 = 15000; // 0x3a98 float:2.102E-41 double:7.411E-320;	 Catch:{ all -> 0x0146 }
        r3 = (r16 > r12 ? 1 : (r16 == r12 ? 0 : -1));	 Catch:{ all -> 0x0146 }
        if (r3 >= 0) goto L_0x00a1;	 Catch:{ all -> 0x0146 }
    L_0x00a0:
        goto L_0x00b7;	 Catch:{ all -> 0x0146 }
    L_0x00a1:
        r3 = cacheScheduler;	 Catch:{ all -> 0x0146 }
        if (r3 != 0) goto L_0x00b7;	 Catch:{ all -> 0x0146 }
    L_0x00a5:
        r3 = java.util.concurrent.Executors.newSingleThreadScheduledExecutor();	 Catch:{ all -> 0x0146 }
        cacheScheduler = r3;	 Catch:{ all -> 0x0146 }
        r9 = new com.appsflyer.AppsFlyerLib$CachedRequestSender;	 Catch:{ all -> 0x0146 }
        r9.<init>(r5);	 Catch:{ all -> 0x0146 }
        r12 = 1;	 Catch:{ all -> 0x0146 }
        r14 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ all -> 0x0146 }
        r3.schedule(r9, r12, r14);	 Catch:{ all -> 0x0146 }
    L_0x00b7:
        r3 = "appsflyerConversionDataRequestRetries";	 Catch:{ all -> 0x0146 }
        r3 = r10.getInt(r3, r11);	 Catch:{ all -> 0x0146 }
        r9 = "appsflyerConversionDataCacheExpiration";	 Catch:{ all -> 0x0146 }
        r12 = 0;	 Catch:{ all -> 0x0146 }
        r14 = r10.getLong(r9, r12);	 Catch:{ all -> 0x0146 }
        r9 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1));	 Catch:{ all -> 0x0146 }
        if (r9 == 0) goto L_0x00e2;	 Catch:{ all -> 0x0146 }
    L_0x00c9:
        r16 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x0146 }
        r18 = r16 - r14;	 Catch:{ all -> 0x0146 }
        r14 = 5184000000; // 0x134fd9000 float:4.7229696E-7 double:2.561236308E-314;	 Catch:{ all -> 0x0146 }
        r9 = (r18 > r14 ? 1 : (r18 == r14 ? 0 : -1));	 Catch:{ all -> 0x0146 }
        if (r9 <= 0) goto L_0x00e2;	 Catch:{ all -> 0x0146 }
    L_0x00d8:
        r9 = "attributionId";	 Catch:{ all -> 0x0146 }
        saveDataToSharedPreferences(r5, r9, r6);	 Catch:{ all -> 0x0146 }
        r9 = "appsflyerConversionDataCacheExpiration";	 Catch:{ all -> 0x0146 }
        saveLongToSharedPreferences(r5, r9, r12);	 Catch:{ all -> 0x0146 }
    L_0x00e2:
        r9 = "attributionId";	 Catch:{ all -> 0x0146 }
        r9 = r10.getString(r9, r6);	 Catch:{ all -> 0x0146 }
        if (r9 != 0) goto L_0x010a;	 Catch:{ all -> 0x0146 }
    L_0x00ea:
        if (r2 == 0) goto L_0x010a;	 Catch:{ all -> 0x0146 }
    L_0x00ec:
        if (r26 == 0) goto L_0x010a;	 Catch:{ all -> 0x0146 }
    L_0x00ee:
        r9 = conversionDataListener$6d80f09e;	 Catch:{ all -> 0x0146 }
        if (r9 == 0) goto L_0x010a;	 Catch:{ all -> 0x0146 }
    L_0x00f2:
        r9 = 5;	 Catch:{ all -> 0x0146 }
        if (r3 > r9) goto L_0x010a;	 Catch:{ all -> 0x0146 }
    L_0x00f5:
        r3 = java.util.concurrent.Executors.newSingleThreadScheduledExecutor();	 Catch:{ all -> 0x0146 }
        r4 = new com.appsflyer.AppsFlyerLib$InstallAttributionIdFetcher;	 Catch:{ all -> 0x0146 }
        r5 = r5.getApplicationContext();	 Catch:{ all -> 0x0146 }
        r4.<init>(r5, r2, r3);	 Catch:{ all -> 0x0146 }
        r5 = 10;	 Catch:{ all -> 0x0146 }
        r2 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ all -> 0x0146 }
        r3.schedule(r4, r5, r2);	 Catch:{ all -> 0x0146 }
        goto L_0x0133;	 Catch:{ all -> 0x0146 }
    L_0x010a:
        if (r2 != 0) goto L_0x0112;	 Catch:{ all -> 0x0146 }
    L_0x010c:
        r2 = "AppsFlyer dev key is missing.";	 Catch:{ all -> 0x0146 }
        com.appsflyer.AFLogger.afWarnLog(r2);	 Catch:{ all -> 0x0146 }
        goto L_0x0133;	 Catch:{ all -> 0x0146 }
    L_0x0112:
        if (r26 == 0) goto L_0x0133;	 Catch:{ all -> 0x0146 }
    L_0x0114:
        r2 = conversionDataListener$6d80f09e;	 Catch:{ all -> 0x0146 }
        if (r2 == 0) goto L_0x0133;	 Catch:{ all -> 0x0146 }
    L_0x0118:
        r2 = "attributionId";	 Catch:{ all -> 0x0146 }
        r2 = r10.getString(r2, r6);	 Catch:{ all -> 0x0146 }
        if (r2 == 0) goto L_0x0133;	 Catch:{ all -> 0x0146 }
    L_0x0120:
        r2 = "appsFlyerCount";	 Catch:{ all -> 0x0146 }
        r2 = getCounter(r5, r2, r11);	 Catch:{ all -> 0x0146 }
        if (r2 <= r8) goto L_0x0133;
    L_0x0128:
        r2 = getConversionData(r5);	 Catch:{ AttributionIDNotReady -> 0x0133 }
        if (r2 == 0) goto L_0x0133;	 Catch:{ AttributionIDNotReady -> 0x0133 }
    L_0x012e:
        r3 = conversionDataListener$6d80f09e;	 Catch:{ AttributionIDNotReady -> 0x0133 }
        r3.onInstallConversionDataLoaded(r2);	 Catch:{ AttributionIDNotReady -> 0x0133 }
    L_0x0133:
        if (r7 == 0) goto L_0x0139;
    L_0x0135:
        r7.disconnect();
        return;
    L_0x0139:
        return;
    L_0x013a:
        r0 = move-exception;
        r2 = r0;
        r6 = r9;
        goto L_0x0140;
    L_0x013e:
        r0 = move-exception;
        r2 = r0;
    L_0x0140:
        if (r6 == 0) goto L_0x0145;
    L_0x0142:
        r6.close();	 Catch:{ all -> 0x0146 }
    L_0x0145:
        throw r2;	 Catch:{ all -> 0x0146 }
    L_0x0146:
        r0 = move-exception;
        r2 = r0;
        goto L_0x014c;
    L_0x0149:
        r0 = move-exception;
        r2 = r0;
        r7 = r6;
    L_0x014c:
        if (r7 == 0) goto L_0x0151;
    L_0x014e:
        r7.disconnect();
    L_0x0151:
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.callServer(java.net.URL, java.lang.String, java.lang.String, java.lang.ref.WeakReference, java.lang.String, boolean):void");
    }

    static /* synthetic */ void access$100$1ae01a96(android.content.Context r7) {
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
        r0 = "app went to background";
        com.appsflyer.AFLogger.afLog(r0);
        r0 = com.appsflyer.AppsFlyerProperties.getInstance();
        r0.saveProperties(r7);
        r0 = java.lang.System.currentTimeMillis();
        r2 = timeInApp;
        r4 = r0 - r2;
        r0 = new java.util.HashMap;
        r0.<init>();
        r1 = "AppsFlyerKey";
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();
        r1 = r2.getString(r1);
        r2 = "app_id";
        r3 = r7.getPackageName();
        r0.put(r2, r3);
        r2 = "devkey";
        r0.put(r2, r1);
        r1 = "uid";
        r2 = com.appsflyer.Installation.id(r7);
        r0.put(r1, r2);
        r1 = "time_in_app";
        r2 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r4 = r4 / r2;
        r2 = java.lang.String.valueOf(r4);
        r0.put(r1, r2);
        r1 = "statType";
        r2 = "user_closed_app";
        r0.put(r1, r2);
        r1 = "platform";
        r2 = "Android";
        r0.put(r1, r2);
        r1 = "launch_counter";
        r2 = "appsFlyerCount";
        r3 = 0;
        r2 = getCounter(r7, r2, r3);
        r2 = java.lang.Integer.toString(r2);
        r0.put(r1, r2);
        r1 = "appsflyer-data";
        r1 = r7.getSharedPreferences(r1, r3);
        r2 = "gcd_conversion_data_timing";
        r4 = "appsflyerGetConversionDataTiming";
        r5 = 0;
        r4 = r1.getLong(r4, r5);
        r1 = java.lang.Long.toString(r4);
        r0.put(r2, r1);
        r1 = "channel";
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();
        r4 = "channel";
        r2 = r2.getString(r4);
        if (r2 != 0) goto L_0x008f;
    L_0x0089:
        r2 = "CHANNEL";
        r2 = getManifestMetaData(r7, r2);
    L_0x008f:
        r0.put(r1, r2);
        r1 = com.appsflyer.AppsFlyerProperties.getInstance();
        r2 = "collectFingerPrint";
        r4 = 1;
        r1 = r1.getBoolean(r2, r4);
        if (r1 == 0) goto L_0x00aa;
    L_0x009f:
        r1 = getUniquePsuedoID();
        if (r1 == 0) goto L_0x00aa;
    L_0x00a5:
        r2 = "deviceFingerPrintId";
        r0.put(r2, r1);
    L_0x00aa:
        r1 = new com.appsflyer.BackgroundHttpTask;	 Catch:{ Throwable -> 0x00bb }
        r1.<init>(r7);	 Catch:{ Throwable -> 0x00bb }
        r1.bodyParameters = r0;	 Catch:{ Throwable -> 0x00bb }
        r7 = new java.lang.String[r4];	 Catch:{ Throwable -> 0x00bb }
        r0 = "https://stats.appsflyer.com/stats";	 Catch:{ Throwable -> 0x00bb }
        r7[r3] = r0;	 Catch:{ Throwable -> 0x00bb }
        r1.execute(r7);	 Catch:{ Throwable -> 0x00bb }
        return;
    L_0x00bb:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.access$100$1ae01a96(android.content.Context):void");
    }

    static /* synthetic */ void access$200$1ae01a96(android.content.Context r7) {
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
        r0 = new java.util.HashMap;
        r0.<init>();
        r1 = "AppsFlyerKey";
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();
        r1 = r2.getString(r1);
        r2 = "devkey";
        r0.put(r2, r1);
        r1 = "uid";
        r2 = com.appsflyer.Installation.id(r7);
        r0.put(r1, r2);
        r1 = "af_gcm_token";
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();
        r3 = "GCM_TOKEN";
        r2 = r2.getString(r3);
        r0.put(r1, r2);
        r1 = "advertiserId";
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();
        r3 = "advertiserId";
        r2 = r2.getString(r3);
        r0.put(r1, r2);
        r1 = "af_google_instance_id";
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();
        r3 = "GCM_INSTANCE_ID";
        r2 = r2.getString(r3);
        r0.put(r1, r2);
        r1 = "launch_counter";
        r2 = "appsFlyerCount";
        r3 = 0;
        r2 = getCounter(r7, r2, r3);
        r2 = java.lang.Integer.toString(r2);
        r0.put(r1, r2);
        r1 = "sdk";
        r2 = android.os.Build.VERSION.SDK_INT;
        r2 = java.lang.Integer.toString(r2);
        r0.put(r1, r2);
        r1 = "channel";
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();
        r4 = "channel";
        r2 = r2.getString(r4);
        if (r2 != 0) goto L_0x0079;
    L_0x0073:
        r2 = "CHANNEL";
        r2 = getManifestMetaData(r7, r2);
    L_0x0079:
        r0.put(r1, r2);
        r1 = r7.getPackageManager();	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r2 = r7.getPackageName();	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r1 = r1.getPackageInfo(r2, r3);	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r1 = r1.firstInstallTime;	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r4 = new java.text.SimpleDateFormat;	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r5 = "yyyy-MM-dd hh:mm:ss";	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r4.<init>(r5);	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r5 = "install_date";	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r6 = new java.util.Date;	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r6.<init>(r1);	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r1 = r4.format(r6);	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
        r0.put(r5, r1);	 Catch:{ NameNotFoundException -> 0x009f, NameNotFoundException -> 0x009f }
    L_0x009f:
        r1 = com.appsflyer.AppsFlyerProperties.getInstance();
        r2 = "collectFingerPrint";
        r4 = 1;
        r1 = r1.getBoolean(r2, r4);
        if (r1 == 0) goto L_0x00b7;
    L_0x00ac:
        r1 = getUniquePsuedoID();
        if (r1 == 0) goto L_0x00b7;
    L_0x00b2:
        r2 = "deviceFingerPrintId";
        r0.put(r2, r1);
    L_0x00b7:
        r1 = new com.appsflyer.BackgroundHttpTask;	 Catch:{ Throwable -> 0x00db }
        r1.<init>(r7);	 Catch:{ Throwable -> 0x00db }
        r1.bodyParameters = r0;	 Catch:{ Throwable -> 0x00db }
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00db }
        r0.<init>();	 Catch:{ Throwable -> 0x00db }
        r2 = REGISTER_URL;	 Catch:{ Throwable -> 0x00db }
        r0.append(r2);	 Catch:{ Throwable -> 0x00db }
        r7 = r7.getPackageName();	 Catch:{ Throwable -> 0x00db }
        r0.append(r7);	 Catch:{ Throwable -> 0x00db }
        r7 = r0.toString();	 Catch:{ Throwable -> 0x00db }
        r0 = new java.lang.String[r4];	 Catch:{ Throwable -> 0x00db }
        r0[r3] = r7;	 Catch:{ Throwable -> 0x00db }
        r1.execute(r0);	 Catch:{ Throwable -> 0x00db }
        return;
    L_0x00db:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.access$200$1ae01a96(android.content.Context):void");
    }

    static /* synthetic */ void access$500(com.appsflyer.AppsFlyerLib r17, android.content.Context r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, boolean r23) {
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
        r2 = r17;
        r1 = r18;
        r3 = r20;
        r4 = r21;
        r5 = r22;
        r6 = com.appsflyer.AppsFlyerProperties.getInstance();
        r6.saveProperties(r1);
        r6 = new java.lang.StringBuilder;
        r7 = "AsendTrackingWithEvent from activity: ";
        r6.<init>(r7);
        r7 = r18.getClass();
        r7 = r7.getName();
        r7 = r7.toString();
        r6.append(r7);
        r6 = r6.toString();
        com.appsflyer.AFLogger.afLog(r6);
        r6 = 1;
        r7 = 0;
        if (r3 != 0) goto L_0x0034;
    L_0x0032:
        r8 = r6;
        goto L_0x0035;
    L_0x0034:
        r8 = r7;
    L_0x0035:
        r9 = new java.util.HashMap;
        r9.<init>();
        r10 = "af_timestamp";
        r11 = new java.util.Date;
        r11.<init>();
        r11 = r11.getTime();
        r11 = java.lang.Long.toString(r11);
        r9.put(r10, r11);
        r10 = "collect data for server";	 Catch:{ Throwable -> 0x08cc }
        r11 = "";	 Catch:{ Throwable -> 0x08cc }
        debugAction(r10, r11, r1);	 Catch:{ Throwable -> 0x08cc }
        r10 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x08cc }
        r11 = "******* sendTrackingWithEvent: ";	 Catch:{ Throwable -> 0x08cc }
        r10.<init>(r11);	 Catch:{ Throwable -> 0x08cc }
        if (r8 == 0) goto L_0x005f;	 Catch:{ Throwable -> 0x08cc }
    L_0x005c:
        r11 = "Launch";	 Catch:{ Throwable -> 0x08cc }
        goto L_0x0060;	 Catch:{ Throwable -> 0x08cc }
    L_0x005f:
        r11 = r3;	 Catch:{ Throwable -> 0x08cc }
    L_0x0060:
        r10.append(r11);	 Catch:{ Throwable -> 0x08cc }
        r10 = r10.toString();	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r10);	 Catch:{ Throwable -> 0x08cc }
        r10 = "********* sendTrackingWithEvent: ";	 Catch:{ Throwable -> 0x08cc }
        if (r8 == 0) goto L_0x0071;	 Catch:{ Throwable -> 0x08cc }
    L_0x006e:
        r11 = "Launch";	 Catch:{ Throwable -> 0x08cc }
        goto L_0x0072;	 Catch:{ Throwable -> 0x08cc }
    L_0x0071:
        r11 = r3;	 Catch:{ Throwable -> 0x08cc }
    L_0x0072:
        debugAction(r10, r11, r1);	 Catch:{ Throwable -> 0x08cc }
        r10 = LOG_TAG;	 Catch:{ Throwable -> 0x08cc }
        r11 = "EVENT_CREATED_WITH_NAME";	 Catch:{ Throwable -> 0x08cc }
        if (r8 == 0) goto L_0x007e;	 Catch:{ Throwable -> 0x08cc }
    L_0x007b:
        r12 = "Launch";	 Catch:{ Throwable -> 0x08cc }
        goto L_0x007f;	 Catch:{ Throwable -> 0x08cc }
    L_0x007e:
        r12 = r3;	 Catch:{ Throwable -> 0x08cc }
    L_0x007f:
        monitor(r1, r10, r11, r12);	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.cache.CacheManager.getInstance();	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.cache.CacheManager.init(r18);	 Catch:{ Throwable -> 0x08cc }
        r10 = 0;
        r11 = r18.getPackageManager();	 Catch:{ Exception -> 0x00c9 }
        r12 = r18.getPackageName();	 Catch:{ Exception -> 0x00c9 }
        r13 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;	 Catch:{ Exception -> 0x00c9 }
        r11 = r11.getPackageInfo(r12, r13);	 Catch:{ Exception -> 0x00c9 }
        r11 = r11.requestedPermissions;	 Catch:{ Exception -> 0x00c9 }
        r11 = java.util.Arrays.asList(r11);	 Catch:{ Exception -> 0x00c9 }
        r12 = "android.permission.INTERNET";	 Catch:{ Exception -> 0x00c9 }
        r12 = r11.contains(r12);	 Catch:{ Exception -> 0x00c9 }
        if (r12 != 0) goto L_0x00af;	 Catch:{ Exception -> 0x00c9 }
    L_0x00a5:
        r12 = "Permission android.permission.INTERNET is missing in the AndroidManifest.xml";	 Catch:{ Exception -> 0x00c9 }
        com.appsflyer.AFLogger.afWarnLog(r12);	 Catch:{ Exception -> 0x00c9 }
        r12 = "PERMISSION_INTERNET_MISSING";	 Catch:{ Exception -> 0x00c9 }
        monitor(r1, r10, r12, r10);	 Catch:{ Exception -> 0x00c9 }
    L_0x00af:
        r12 = "android.permission.ACCESS_NETWORK_STATE";	 Catch:{ Exception -> 0x00c9 }
        r12 = r11.contains(r12);	 Catch:{ Exception -> 0x00c9 }
        if (r12 != 0) goto L_0x00bc;	 Catch:{ Exception -> 0x00c9 }
    L_0x00b7:
        r12 = "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml";	 Catch:{ Exception -> 0x00c9 }
        com.appsflyer.AFLogger.afWarnLog(r12);	 Catch:{ Exception -> 0x00c9 }
    L_0x00bc:
        r12 = "android.permission.ACCESS_WIFI_STATE";	 Catch:{ Exception -> 0x00c9 }
        r11 = r11.contains(r12);	 Catch:{ Exception -> 0x00c9 }
        if (r11 != 0) goto L_0x00c9;	 Catch:{ Exception -> 0x00c9 }
    L_0x00c4:
        r11 = "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml";	 Catch:{ Exception -> 0x00c9 }
        com.appsflyer.AFLogger.afWarnLog(r11);	 Catch:{ Exception -> 0x00c9 }
    L_0x00c9:
        r11 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x08cc }
        r11.<init>();	 Catch:{ Throwable -> 0x08cc }
        if (r8 == 0) goto L_0x00d3;	 Catch:{ Throwable -> 0x08cc }
    L_0x00d0:
        r12 = APPS_TRACKING_URL;	 Catch:{ Throwable -> 0x08cc }
        goto L_0x00d5;	 Catch:{ Throwable -> 0x08cc }
    L_0x00d3:
        r12 = EVENTS_TRACKING_URL;	 Catch:{ Throwable -> 0x08cc }
    L_0x00d5:
        r11.append(r12);	 Catch:{ Throwable -> 0x08cc }
        r12 = r18.getPackageName();	 Catch:{ Throwable -> 0x08cc }
        r11.append(r12);	 Catch:{ Throwable -> 0x08cc }
        if (r23 == 0) goto L_0x00e8;	 Catch:{ Throwable -> 0x08cc }
    L_0x00e1:
        r12 = "af_events_api";	 Catch:{ Throwable -> 0x08cc }
        r13 = "1";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r12, r13);	 Catch:{ Throwable -> 0x08cc }
    L_0x00e8:
        r12 = "brand";	 Catch:{ Throwable -> 0x08cc }
        r13 = android.os.Build.BRAND;	 Catch:{ Throwable -> 0x08cc }
        r9.put(r12, r13);	 Catch:{ Throwable -> 0x08cc }
        r12 = "device";	 Catch:{ Throwable -> 0x08cc }
        r13 = android.os.Build.DEVICE;	 Catch:{ Throwable -> 0x08cc }
        r9.put(r12, r13);	 Catch:{ Throwable -> 0x08cc }
        r12 = "product";	 Catch:{ Throwable -> 0x08cc }
        r13 = android.os.Build.PRODUCT;	 Catch:{ Throwable -> 0x08cc }
        r9.put(r12, r13);	 Catch:{ Throwable -> 0x08cc }
        r12 = "sdk";	 Catch:{ Throwable -> 0x08cc }
        r13 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x08cc }
        r13 = java.lang.Integer.toString(r13);	 Catch:{ Throwable -> 0x08cc }
        r9.put(r12, r13);	 Catch:{ Throwable -> 0x08cc }
        r12 = "model";	 Catch:{ Throwable -> 0x08cc }
        r13 = android.os.Build.MODEL;	 Catch:{ Throwable -> 0x08cc }
        r9.put(r12, r13);	 Catch:{ Throwable -> 0x08cc }
        r12 = "deviceType";	 Catch:{ Throwable -> 0x08cc }
        r13 = android.os.Build.TYPE;	 Catch:{ Throwable -> 0x08cc }
        r9.put(r12, r13);	 Catch:{ Throwable -> 0x08cc }
        if (r8 == 0) goto L_0x019c;	 Catch:{ Throwable -> 0x08cc }
    L_0x0118:
        r13 = "appsflyer-data";	 Catch:{ Throwable -> 0x08cc }
        r13 = r1.getSharedPreferences(r13, r7);	 Catch:{ Throwable -> 0x08cc }
        r14 = "appsFlyerCount";	 Catch:{ Throwable -> 0x08cc }
        r13 = r13.contains(r14);	 Catch:{ Throwable -> 0x08cc }
        r13 = r13 ^ r6;	 Catch:{ Throwable -> 0x08cc }
        if (r13 == 0) goto L_0x020e;	 Catch:{ Throwable -> 0x08cc }
    L_0x0127:
        r13 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r14 = "disableOtherSdk";	 Catch:{ Throwable -> 0x08cc }
        r13 = r13.getBoolean(r14, r7);	 Catch:{ Throwable -> 0x08cc }
        if (r13 != 0) goto L_0x020e;	 Catch:{ Throwable -> 0x08cc }
    L_0x0133:
        r13 = "af_sdks";	 Catch:{ Throwable -> 0x08cc }
        r14 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x08cc }
        r14.<init>();	 Catch:{ Throwable -> 0x08cc }
        r15 = "com.tune.Tune";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r15 = "com.adjust.sdk.Adjust";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r15 = "com.kochava.android.tracker.Feature";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r15 = "io.branch.referral.Branch";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r15 = "com.apsalar.sdk.Apsalar";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r15 = "com.localytics.android.Localytics";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r15 = "com.tenjin.android.TenjinSDK";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r15 = "com.talkingdata.sdk.TalkingDataSDK";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r15 = "it.partytrack.sdk.Track";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r15 = "jp.appAdForce.android.LtvManager";	 Catch:{ Throwable -> 0x08cc }
        r15 = numricBooleanIsClassExist(r15);	 Catch:{ Throwable -> 0x08cc }
        r14.append(r15);	 Catch:{ Throwable -> 0x08cc }
        r14 = r14.toString();	 Catch:{ Throwable -> 0x08cc }
        r9.put(r13, r14);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x020e;	 Catch:{ Throwable -> 0x08cc }
    L_0x019c:
        r13 = "appsflyer-data";	 Catch:{ Throwable -> 0x08cc }
        r13 = r1.getSharedPreferences(r13, r7);	 Catch:{ Throwable -> 0x08cc }
        r14 = r13.edit();	 Catch:{ Throwable -> 0x08cc }
        r15 = "prev_event_name";	 Catch:{ Exception -> 0x0207 }
        r15 = r13.getString(r15, r10);	 Catch:{ Exception -> 0x0207 }
        if (r15 == 0) goto L_0x01e6;	 Catch:{ Exception -> 0x0207 }
    L_0x01ae:
        r6 = new org.json.JSONObject;	 Catch:{ Exception -> 0x0207 }
        r6.<init>();	 Catch:{ Exception -> 0x0207 }
        r7 = "prev_event_timestamp";	 Catch:{ Exception -> 0x0207 }
        r12 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0207 }
        r12.<init>();	 Catch:{ Exception -> 0x0207 }
        r10 = "prev_event_timestamp";	 Catch:{ Exception -> 0x0207 }
        r1 = -1;	 Catch:{ Exception -> 0x0207 }
        r1 = r13.getLong(r10, r1);	 Catch:{ Exception -> 0x0207 }
        r12.append(r1);	 Catch:{ Exception -> 0x0207 }
        r1 = r12.toString();	 Catch:{ Exception -> 0x0207 }
        r6.put(r7, r1);	 Catch:{ Exception -> 0x0207 }
        r1 = "prev_event_value";	 Catch:{ Exception -> 0x0207 }
        r2 = "prev_event_value";	 Catch:{ Exception -> 0x0207 }
        r7 = 0;	 Catch:{ Exception -> 0x0207 }
        r2 = r13.getString(r2, r7);	 Catch:{ Exception -> 0x0207 }
        r6.put(r1, r2);	 Catch:{ Exception -> 0x0207 }
        r1 = "prev_event_name";	 Catch:{ Exception -> 0x0207 }
        r6.put(r1, r15);	 Catch:{ Exception -> 0x0207 }
        r1 = "prev_event";	 Catch:{ Exception -> 0x0207 }
        r2 = r6.toString();	 Catch:{ Exception -> 0x0207 }
        r9.put(r1, r2);	 Catch:{ Exception -> 0x0207 }
    L_0x01e6:
        r1 = "prev_event_name";	 Catch:{ Exception -> 0x0207 }
        r14.putString(r1, r3);	 Catch:{ Exception -> 0x0207 }
        r1 = "prev_event_value";	 Catch:{ Exception -> 0x0207 }
        r14.putString(r1, r4);	 Catch:{ Exception -> 0x0207 }
        r1 = "prev_event_timestamp";	 Catch:{ Exception -> 0x0207 }
        r6 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0207 }
        r14.putLong(r1, r6);	 Catch:{ Exception -> 0x0207 }
        r1 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x0207 }
        r2 = 9;	 Catch:{ Exception -> 0x0207 }
        if (r1 < r2) goto L_0x0203;	 Catch:{ Exception -> 0x0207 }
    L_0x01ff:
        r14.apply();	 Catch:{ Exception -> 0x0207 }
        goto L_0x020e;	 Catch:{ Exception -> 0x0207 }
    L_0x0203:
        r14.commit();	 Catch:{ Exception -> 0x0207 }
        goto L_0x020e;
    L_0x0207:
        r0 = move-exception;
        r1 = r0;
        r2 = "Error while processing previous event.";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLogE(r2, r1);	 Catch:{ Throwable -> 0x08cc }
    L_0x020e:
        r1 = "additionalCustomData";	 Catch:{ Throwable -> 0x08cc }
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r1 = r2.getString(r1);	 Catch:{ Throwable -> 0x08cc }
        if (r1 == 0) goto L_0x021f;	 Catch:{ Throwable -> 0x08cc }
    L_0x021a:
        r2 = "customData";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r1);	 Catch:{ Throwable -> 0x08cc }
    L_0x021f:
        r1 = r18;
        r2 = r18.getPackageManager();	 Catch:{ Exception -> 0x0234 }
        r6 = r18.getPackageName();	 Catch:{ Exception -> 0x0234 }
        r2 = r2.getInstallerPackageName(r6);	 Catch:{ Exception -> 0x0234 }
        if (r2 == 0) goto L_0x0234;	 Catch:{ Exception -> 0x0234 }
    L_0x022f:
        r6 = "installer_package";	 Catch:{ Exception -> 0x0234 }
        r9.put(r6, r2);	 Catch:{ Exception -> 0x0234 }
    L_0x0234:
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r6 = "sdkExtension";	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getString(r6);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x024b;	 Catch:{ Throwable -> 0x08cc }
    L_0x0240:
        r6 = r2.length();	 Catch:{ Throwable -> 0x08cc }
        if (r6 <= 0) goto L_0x024b;	 Catch:{ Throwable -> 0x08cc }
    L_0x0246:
        r6 = "sdkExtension";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x024b:
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r6 = "channel";	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getString(r6);	 Catch:{ Throwable -> 0x08cc }
        if (r2 != 0) goto L_0x025d;	 Catch:{ Throwable -> 0x08cc }
    L_0x0257:
        r2 = "CHANNEL";	 Catch:{ Throwable -> 0x08cc }
        r2 = getManifestMetaData(r1, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x025d:
        r6 = getCachedChannel(r1, r2);	 Catch:{ Throwable -> 0x08cc }
        if (r6 == 0) goto L_0x0268;	 Catch:{ Throwable -> 0x08cc }
    L_0x0263:
        r7 = "channel";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r7, r6);	 Catch:{ Throwable -> 0x08cc }
    L_0x0268:
        if (r6 == 0) goto L_0x0270;	 Catch:{ Throwable -> 0x08cc }
    L_0x026a:
        r7 = r6.equals(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r7 == 0) goto L_0x0274;	 Catch:{ Throwable -> 0x08cc }
    L_0x0270:
        if (r6 != 0) goto L_0x0279;	 Catch:{ Throwable -> 0x08cc }
    L_0x0272:
        if (r2 == 0) goto L_0x0279;	 Catch:{ Throwable -> 0x08cc }
    L_0x0274:
        r6 = "af_latestchannel";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x0279:
        r2 = "appsflyer-data";	 Catch:{ Throwable -> 0x08cc }
        r6 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r1.getSharedPreferences(r2, r6);	 Catch:{ Throwable -> 0x08cc }
        r6 = "INSTALL_STORE";	 Catch:{ Throwable -> 0x08cc }
        r6 = r2.contains(r6);	 Catch:{ Throwable -> 0x08cc }
        if (r6 == 0) goto L_0x0290;	 Catch:{ Throwable -> 0x08cc }
    L_0x0288:
        r6 = "INSTALL_STORE";	 Catch:{ Throwable -> 0x08cc }
        r7 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getString(r6, r7);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x02af;	 Catch:{ Throwable -> 0x08cc }
    L_0x0290:
        r2 = "appsflyer-data";	 Catch:{ Throwable -> 0x08cc }
        r6 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r1.getSharedPreferences(r2, r6);	 Catch:{ Throwable -> 0x08cc }
        r6 = "appsFlyerCount";	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.contains(r6);	 Catch:{ Throwable -> 0x08cc }
        r6 = 1;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2 ^ r6;	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x02a9;	 Catch:{ Throwable -> 0x08cc }
    L_0x02a1:
        r2 = "AF_STORE";	 Catch:{ Throwable -> 0x08cc }
        r10 = getManifestMetaData(r1, r2);	 Catch:{ Throwable -> 0x08cc }
        r2 = r10;	 Catch:{ Throwable -> 0x08cc }
        goto L_0x02aa;	 Catch:{ Throwable -> 0x08cc }
    L_0x02a9:
        r2 = 0;	 Catch:{ Throwable -> 0x08cc }
    L_0x02aa:
        r6 = "INSTALL_STORE";	 Catch:{ Throwable -> 0x08cc }
        saveDataToSharedPreferences(r1, r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x02af:
        if (r2 == 0) goto L_0x02ba;	 Catch:{ Throwable -> 0x08cc }
    L_0x02b1:
        r6 = "af_installstore";	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.toLowerCase();	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x02ba:
        r2 = "appsflyer-data";	 Catch:{ Throwable -> 0x08cc }
        r6 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r1.getSharedPreferences(r2, r6);	 Catch:{ Throwable -> 0x08cc }
        r6 = "preInstallName";	 Catch:{ Throwable -> 0x08cc }
        r6 = r2.contains(r6);	 Catch:{ Throwable -> 0x08cc }
        if (r6 == 0) goto L_0x02d1;	 Catch:{ Throwable -> 0x08cc }
    L_0x02c9:
        r6 = "preInstallName";	 Catch:{ Throwable -> 0x08cc }
        r7 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getString(r6, r7);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x02f9;	 Catch:{ Throwable -> 0x08cc }
    L_0x02d1:
        r2 = "appsflyer-data";	 Catch:{ Throwable -> 0x08cc }
        r6 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r1.getSharedPreferences(r2, r6);	 Catch:{ Throwable -> 0x08cc }
        r6 = "appsFlyerCount";	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.contains(r6);	 Catch:{ Throwable -> 0x08cc }
        r6 = 1;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2 ^ r6;	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x02f1;	 Catch:{ Throwable -> 0x08cc }
    L_0x02e2:
        r10 = preInstallValueFromFile(r18);	 Catch:{ Throwable -> 0x08cc }
        if (r10 == 0) goto L_0x02ea;	 Catch:{ Throwable -> 0x08cc }
    L_0x02e8:
        r2 = r10;	 Catch:{ Throwable -> 0x08cc }
        goto L_0x02f2;	 Catch:{ Throwable -> 0x08cc }
    L_0x02ea:
        r2 = "AF_PRE_INSTALL_NAME";	 Catch:{ Throwable -> 0x08cc }
        r10 = getManifestMetaData(r1, r2);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x02e8;	 Catch:{ Throwable -> 0x08cc }
    L_0x02f1:
        r2 = 0;	 Catch:{ Throwable -> 0x08cc }
    L_0x02f2:
        if (r2 == 0) goto L_0x02f9;	 Catch:{ Throwable -> 0x08cc }
    L_0x02f4:
        r6 = "preInstallName";	 Catch:{ Throwable -> 0x08cc }
        saveDataToSharedPreferences(r1, r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x02f9:
        if (r2 == 0) goto L_0x0304;	 Catch:{ Throwable -> 0x08cc }
    L_0x02fb:
        r6 = "af_preinstall_name";	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.toLowerCase();	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x0304:
        r2 = "AF_STORE";	 Catch:{ Throwable -> 0x08cc }
        r2 = getManifestMetaData(r1, r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x0315;	 Catch:{ Throwable -> 0x08cc }
    L_0x030c:
        r6 = "af_currentstore";	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.toLowerCase();	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x0315:
        r2 = "AppsFlyerKey";	 Catch:{ Throwable -> 0x08cc }
        r6 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r2 = r6.getString(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x08b9;	 Catch:{ Throwable -> 0x08cc }
    L_0x0321:
        r6 = r2.length();	 Catch:{ Throwable -> 0x08cc }
        if (r6 <= 0) goto L_0x08b9;	 Catch:{ Throwable -> 0x08cc }
    L_0x0327:
        r6 = "appsflyerKey";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
        r6 = r2.length();	 Catch:{ Throwable -> 0x08cc }
        r7 = 8;	 Catch:{ Throwable -> 0x08cc }
        if (r6 <= r7) goto L_0x033e;	 Catch:{ Throwable -> 0x08cc }
    L_0x0334:
        r6 = "dkh";	 Catch:{ Throwable -> 0x08cc }
        r10 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.substring(r10, r7);	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x033e:
        r2 = "AppUserId";	 Catch:{ Throwable -> 0x08cc }
        r6 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r2 = r6.getString(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x034f;	 Catch:{ Throwable -> 0x08cc }
    L_0x034a:
        r6 = "appUserId";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x034f:
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r6 = "userEmails";	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getString(r6);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x0361;	 Catch:{ Throwable -> 0x08cc }
    L_0x035b:
        r6 = "user_emails";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x0376;	 Catch:{ Throwable -> 0x08cc }
    L_0x0361:
        r2 = "userEmail";	 Catch:{ Throwable -> 0x08cc }
        r6 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r2 = r6.getString(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x0376;	 Catch:{ Throwable -> 0x08cc }
    L_0x036d:
        r6 = "sha1_el";	 Catch:{ Throwable -> 0x08cc }
        r2 = com.appsflyer.HashUtils.toSHA1(r2);	 Catch:{ Throwable -> 0x08cc }
        r9.put(r6, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x0376:
        if (r3 == 0) goto L_0x0384;	 Catch:{ Throwable -> 0x08cc }
    L_0x0378:
        r2 = "eventName";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r3);	 Catch:{ Throwable -> 0x08cc }
        if (r4 == 0) goto L_0x0384;	 Catch:{ Throwable -> 0x08cc }
    L_0x037f:
        r2 = "eventValue";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r4);	 Catch:{ Throwable -> 0x08cc }
    L_0x0384:
        r2 = "appid";	 Catch:{ Throwable -> 0x08cc }
        r3 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r2 = r3.getString(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x039f;	 Catch:{ Throwable -> 0x08cc }
    L_0x0390:
        r2 = "appid";	 Catch:{ Throwable -> 0x08cc }
        r3 = "appid";	 Catch:{ Throwable -> 0x08cc }
        r4 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r3 = r4.getString(r3);	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r3);	 Catch:{ Throwable -> 0x08cc }
    L_0x039f:
        r2 = "currencyCode";	 Catch:{ Throwable -> 0x08cc }
        r3 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r2 = r3.getString(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x03cd;	 Catch:{ Throwable -> 0x08cc }
    L_0x03ab:
        r3 = r2.length();	 Catch:{ Throwable -> 0x08cc }
        r4 = 3;	 Catch:{ Throwable -> 0x08cc }
        if (r3 == r4) goto L_0x03c8;	 Catch:{ Throwable -> 0x08cc }
    L_0x03b2:
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x08cc }
        r4 = "WARNING: currency code should be 3 characters!!! '";	 Catch:{ Throwable -> 0x08cc }
        r3.<init>(r4);	 Catch:{ Throwable -> 0x08cc }
        r3.append(r2);	 Catch:{ Throwable -> 0x08cc }
        r4 = "' is not a legal value.";	 Catch:{ Throwable -> 0x08cc }
        r3.append(r4);	 Catch:{ Throwable -> 0x08cc }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afWarnLog(r3);	 Catch:{ Throwable -> 0x08cc }
    L_0x03c8:
        r3 = "currency";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r3, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x03cd:
        r2 = "IS_UPDATE";	 Catch:{ Throwable -> 0x08cc }
        r3 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r2 = r3.getString(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x03de;	 Catch:{ Throwable -> 0x08cc }
    L_0x03d9:
        r3 = "isUpdate";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r3, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x03de:
        r2 = isPreInstalledApp(r18);	 Catch:{ Throwable -> 0x08cc }
        r3 = "af_preinstalled";	 Catch:{ Throwable -> 0x08cc }
        r2 = java.lang.Boolean.toString(r2);	 Catch:{ Throwable -> 0x08cc }
        r9.put(r3, r2);	 Catch:{ Throwable -> 0x08cc }
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r3 = "collectFacebookAttrId";	 Catch:{ Throwable -> 0x08cc }
        r4 = 1;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getBoolean(r3, r4);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x0407;	 Catch:{ Throwable -> 0x08cc }
    L_0x03f8:
        r2 = r18.getContentResolver();	 Catch:{ Throwable -> 0x08cc }
        r2 = getAttributionId(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x0407;	 Catch:{ Throwable -> 0x08cc }
    L_0x0402:
        r3 = "fb";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r3, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x0407:
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r3 = "deviceTrackingDisabled";	 Catch:{ Throwable -> 0x08cc }
        r4 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getBoolean(r3, r4);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x041d;	 Catch:{ Throwable -> 0x08cc }
    L_0x0414:
        r2 = "deviceTrackingDisabled";	 Catch:{ Throwable -> 0x08cc }
        r3 = "true";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r3);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x04e4;	 Catch:{ Throwable -> 0x08cc }
    L_0x041d:
        r2 = "appsflyer-data";	 Catch:{ Throwable -> 0x08cc }
        r3 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r1.getSharedPreferences(r2, r3);	 Catch:{ Throwable -> 0x08cc }
        r3 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r4 = "collectIMEI";	 Catch:{ Throwable -> 0x08cc }
        r6 = 1;	 Catch:{ Throwable -> 0x08cc }
        r3 = r3.getBoolean(r4, r6);	 Catch:{ Throwable -> 0x08cc }
        r4 = "imeiCached";	 Catch:{ Throwable -> 0x08cc }
        r6 = 0;	 Catch:{ Throwable -> 0x08cc }
        r4 = r2.getString(r4, r6);	 Catch:{ Throwable -> 0x08cc }
        r6 = 19;	 Catch:{ Throwable -> 0x08cc }
        if (r3 == 0) goto L_0x0474;	 Catch:{ Throwable -> 0x08cc }
    L_0x043a:
        r3 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x08cc }
        if (r3 < r6) goto L_0x0447;	 Catch:{ Throwable -> 0x08cc }
    L_0x043e:
        r3 = isGooglePlayServicesAvailable(r18);	 Catch:{ Throwable -> 0x08cc }
        if (r3 != 0) goto L_0x0445;
    L_0x0444:
        goto L_0x0447;
    L_0x0445:
        r3 = 0;
        goto L_0x0448;
    L_0x0447:
        r3 = 1;
    L_0x0448:
        if (r3 == 0) goto L_0x0474;
    L_0x044a:
        r3 = "phone";	 Catch:{ Exception -> 0x046f }
        r3 = r1.getSystemService(r3);	 Catch:{ Exception -> 0x046f }
        r3 = (android.telephony.TelephonyManager) r3;	 Catch:{ Exception -> 0x046f }
        r7 = r3.getClass();	 Catch:{ Exception -> 0x046f }
        r10 = "getDeviceId";	 Catch:{ Exception -> 0x046f }
        r12 = 0;	 Catch:{ Exception -> 0x046f }
        r13 = new java.lang.Class[r12];	 Catch:{ Exception -> 0x046f }
        r7 = r7.getMethod(r10, r13);	 Catch:{ Exception -> 0x046f }
        r10 = new java.lang.Object[r12];	 Catch:{ Exception -> 0x046f }
        r3 = r7.invoke(r3, r10);	 Catch:{ Exception -> 0x046f }
        r10 = r3;	 Catch:{ Exception -> 0x046f }
        r10 = (java.lang.String) r10;	 Catch:{ Exception -> 0x046f }
        if (r10 == 0) goto L_0x046b;
    L_0x046a:
        goto L_0x0475;
    L_0x046b:
        if (r4 == 0) goto L_0x0474;
    L_0x046d:
        r10 = r4;
        goto L_0x0475;
    L_0x046f:
        r3 = "WARNING: READ_PHONE_STATE is missing";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r3);	 Catch:{ Throwable -> 0x08cc }
    L_0x0474:
        r10 = 0;	 Catch:{ Throwable -> 0x08cc }
    L_0x0475:
        if (r10 == 0) goto L_0x0482;	 Catch:{ Throwable -> 0x08cc }
    L_0x0477:
        r3 = "imeiCached";	 Catch:{ Throwable -> 0x08cc }
        saveDataToSharedPreferences(r1, r3, r10);	 Catch:{ Throwable -> 0x08cc }
        r3 = "imei";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r3, r10);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x0487;	 Catch:{ Throwable -> 0x08cc }
    L_0x0482:
        r3 = "IMEI was not collected.";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r3);	 Catch:{ Throwable -> 0x08cc }
    L_0x0487:
        r3 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r4 = "collectAndroidId";	 Catch:{ Throwable -> 0x08cc }
        r7 = 1;	 Catch:{ Throwable -> 0x08cc }
        r3 = r3.getBoolean(r4, r7);	 Catch:{ Throwable -> 0x08cc }
        r4 = "androidIdCached";	 Catch:{ Throwable -> 0x08cc }
        r7 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getString(r4, r7);	 Catch:{ Throwable -> 0x08cc }
        if (r3 == 0) goto L_0x04ca;	 Catch:{ Throwable -> 0x08cc }
    L_0x049b:
        r3 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x08cc }
        if (r3 < r6) goto L_0x04a8;	 Catch:{ Throwable -> 0x08cc }
    L_0x049f:
        r3 = isGooglePlayServicesAvailable(r18);	 Catch:{ Throwable -> 0x08cc }
        if (r3 != 0) goto L_0x04a6;
    L_0x04a5:
        goto L_0x04a8;
    L_0x04a6:
        r3 = 0;
        goto L_0x04a9;
    L_0x04a8:
        r3 = 1;
    L_0x04a9:
        if (r3 == 0) goto L_0x04c3;
    L_0x04ab:
        r3 = r18.getContentResolver();	 Catch:{ Exception -> 0x04d1 }
        r4 = "android_id";	 Catch:{ Exception -> 0x04d1 }
        r10 = android.provider.Settings.Secure.getString(r3, r4);	 Catch:{ Exception -> 0x04d1 }
        if (r10 == 0) goto L_0x04b8;	 Catch:{ Exception -> 0x04d1 }
    L_0x04b7:
        goto L_0x04d2;	 Catch:{ Exception -> 0x04d1 }
    L_0x04b8:
        r3 = userCustomAndroidId;	 Catch:{ Exception -> 0x04d1 }
        if (r3 == 0) goto L_0x04bf;	 Catch:{ Exception -> 0x04d1 }
    L_0x04bc:
        r10 = userCustomAndroidId;	 Catch:{ Exception -> 0x04d1 }
        goto L_0x04d2;
    L_0x04bf:
        if (r2 == 0) goto L_0x04d1;
    L_0x04c1:
        r10 = r2;
        goto L_0x04d2;
    L_0x04c3:
        r2 = userCustomAndroidId;	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x04d1;	 Catch:{ Throwable -> 0x08cc }
    L_0x04c7:
        r10 = userCustomAndroidId;	 Catch:{ Throwable -> 0x08cc }
        goto L_0x04d2;	 Catch:{ Throwable -> 0x08cc }
    L_0x04ca:
        r2 = userCustomAndroidId;	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x04d1;	 Catch:{ Throwable -> 0x08cc }
    L_0x04ce:
        r10 = userCustomAndroidId;	 Catch:{ Throwable -> 0x08cc }
        goto L_0x04d2;	 Catch:{ Throwable -> 0x08cc }
    L_0x04d1:
        r10 = 0;	 Catch:{ Throwable -> 0x08cc }
    L_0x04d2:
        if (r10 == 0) goto L_0x04df;	 Catch:{ Throwable -> 0x08cc }
    L_0x04d4:
        r2 = "androidIdCached";	 Catch:{ Throwable -> 0x08cc }
        saveDataToSharedPreferences(r1, r2, r10);	 Catch:{ Throwable -> 0x08cc }
        r2 = "android_id";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r10);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x04e4;	 Catch:{ Throwable -> 0x08cc }
    L_0x04df:
        r2 = "Android ID was not collected.";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x04e4:
        r2 = com.appsflyer.Installation.id(r18);	 Catch:{ Exception -> 0x04f0 }
        if (r2 == 0) goto L_0x0507;	 Catch:{ Exception -> 0x04f0 }
    L_0x04ea:
        r3 = "uid";	 Catch:{ Exception -> 0x04f0 }
        r9.put(r3, r2);	 Catch:{ Exception -> 0x04f0 }
        goto L_0x0507;
    L_0x04f0:
        r0 = move-exception;
        r2 = r0;
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x08cc }
        r4 = "ERROR: ERROR: could not get uid ";	 Catch:{ Throwable -> 0x08cc }
        r3.<init>(r4);	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getMessage();	 Catch:{ Throwable -> 0x08cc }
        r3.append(r2);	 Catch:{ Throwable -> 0x08cc }
        r2 = r3.toString();	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x0507:
        r2 = "lang";	 Catch:{ Exception -> 0x0514 }
        r3 = java.util.Locale.getDefault();	 Catch:{ Exception -> 0x0514 }
        r3 = r3.getDisplayLanguage();	 Catch:{ Exception -> 0x0514 }
        r9.put(r2, r3);	 Catch:{ Exception -> 0x0514 }
    L_0x0514:
        r2 = "lang_code";	 Catch:{ Exception -> 0x0521 }
        r3 = java.util.Locale.getDefault();	 Catch:{ Exception -> 0x0521 }
        r3 = r3.getLanguage();	 Catch:{ Exception -> 0x0521 }
        r9.put(r2, r3);	 Catch:{ Exception -> 0x0521 }
    L_0x0521:
        r2 = "country";	 Catch:{ Exception -> 0x052e }
        r3 = java.util.Locale.getDefault();	 Catch:{ Exception -> 0x052e }
        r3 = r3.getCountry();	 Catch:{ Exception -> 0x052e }
        r9.put(r2, r3);	 Catch:{ Exception -> 0x052e }
    L_0x052e:
        r2 = "phone";	 Catch:{ Exception -> 0x0548 }
        r2 = r1.getSystemService(r2);	 Catch:{ Exception -> 0x0548 }
        r2 = (android.telephony.TelephonyManager) r2;	 Catch:{ Exception -> 0x0548 }
        r3 = "operator";	 Catch:{ Exception -> 0x0548 }
        r4 = r2.getSimOperatorName();	 Catch:{ Exception -> 0x0548 }
        r9.put(r3, r4);	 Catch:{ Exception -> 0x0548 }
        r3 = "carrier";	 Catch:{ Exception -> 0x0548 }
        r2 = r2.getNetworkOperatorName();	 Catch:{ Exception -> 0x0548 }
        r9.put(r3, r2);	 Catch:{ Exception -> 0x0548 }
    L_0x0548:
        r2 = "network";	 Catch:{ Throwable -> 0x0571 }
        r3 = "connectivity";	 Catch:{ Throwable -> 0x0571 }
        r3 = r1.getSystemService(r3);	 Catch:{ Throwable -> 0x0571 }
        r3 = (android.net.ConnectivityManager) r3;	 Catch:{ Throwable -> 0x0571 }
        r3 = r3.getActiveNetworkInfo();	 Catch:{ Throwable -> 0x0571 }
        if (r3 == 0) goto L_0x056b;	 Catch:{ Throwable -> 0x0571 }
    L_0x0558:
        r4 = r3.getType();	 Catch:{ Throwable -> 0x0571 }
        r6 = 1;	 Catch:{ Throwable -> 0x0571 }
        if (r4 != r6) goto L_0x0562;	 Catch:{ Throwable -> 0x0571 }
    L_0x055f:
        r3 = "WIFI";	 Catch:{ Throwable -> 0x0571 }
        goto L_0x056d;	 Catch:{ Throwable -> 0x0571 }
    L_0x0562:
        r3 = r3.getType();	 Catch:{ Throwable -> 0x0571 }
        if (r3 != 0) goto L_0x056b;	 Catch:{ Throwable -> 0x0571 }
    L_0x0568:
        r3 = "MOBILE";	 Catch:{ Throwable -> 0x0571 }
        goto L_0x056d;	 Catch:{ Throwable -> 0x0571 }
    L_0x056b:
        r3 = "unknown";	 Catch:{ Throwable -> 0x0571 }
    L_0x056d:
        r9.put(r2, r3);	 Catch:{ Throwable -> 0x0571 }
        goto L_0x0588;
    L_0x0571:
        r0 = move-exception;
        r2 = r0;
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x08cc }
        r4 = "checking network error ";	 Catch:{ Throwable -> 0x08cc }
        r3.<init>(r4);	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getMessage();	 Catch:{ Throwable -> 0x08cc }
        r3.append(r2);	 Catch:{ Throwable -> 0x08cc }
        r2 = r3.toString();	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x0588:
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r3 = "collectFingerPrint";	 Catch:{ Throwable -> 0x08cc }
        r4 = 1;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getBoolean(r3, r4);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x05a0;	 Catch:{ Throwable -> 0x08cc }
    L_0x0595:
        r2 = getUniquePsuedoID();	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x05a0;	 Catch:{ Throwable -> 0x08cc }
    L_0x059b:
        r3 = "deviceFingerPrintId";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r3, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x05a0:
        r2 = -1;
        r3 = "com.google.android.gms.ads.identifier.AdvertisingIdClient";	 Catch:{ Throwable -> 0x05e0 }
        java.lang.Class.forName(r3);	 Catch:{ Throwable -> 0x05e0 }
        r3 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r18);	 Catch:{ Throwable -> 0x05e0 }
        if (r3 == 0) goto L_0x05d3;	 Catch:{ Throwable -> 0x05e0 }
    L_0x05ac:
        r10 = r3.getId();	 Catch:{ Throwable -> 0x05e0 }
        r3 = r3.isLimitAdTrackingEnabled();	 Catch:{ Throwable -> 0x05ce }
        r4 = 1;	 Catch:{ Throwable -> 0x05ce }
        r3 = r3 ^ r4;	 Catch:{ Throwable -> 0x05ce }
        r3 = java.lang.Boolean.toString(r3);	 Catch:{ Throwable -> 0x05ce }
        if (r10 == 0) goto L_0x05ca;
    L_0x05bc:
        r4 = r10.length();	 Catch:{ Throwable -> 0x05c5 }
        if (r4 != 0) goto L_0x05c3;	 Catch:{ Throwable -> 0x05c5 }
    L_0x05c2:
        goto L_0x05ca;	 Catch:{ Throwable -> 0x05c5 }
    L_0x05c3:
        r4 = 0;	 Catch:{ Throwable -> 0x05c5 }
        goto L_0x05cc;	 Catch:{ Throwable -> 0x05c5 }
    L_0x05c5:
        r0 = move-exception;	 Catch:{ Throwable -> 0x05c5 }
        r4 = r3;	 Catch:{ Throwable -> 0x05c5 }
        r6 = 1;	 Catch:{ Throwable -> 0x05c5 }
        r3 = r0;	 Catch:{ Throwable -> 0x05c5 }
        goto L_0x05e5;	 Catch:{ Throwable -> 0x05c5 }
    L_0x05ca:
        r4 = "emptyOrNull";	 Catch:{ Throwable -> 0x05c5 }
    L_0x05cc:
        r6 = 1;
        goto L_0x05d9;
    L_0x05ce:
        r0 = move-exception;
        r3 = r0;
        r4 = 0;
        r6 = 0;
        goto L_0x05e5;
    L_0x05d3:
        r10 = "gpsAdInfo-null";	 Catch:{ Throwable -> 0x05e0 }
        r4 = r10;
        r3 = 0;
        r6 = 0;
        r10 = 0;
    L_0x05d9:
        r16 = r4;
        r4 = r3;
        r3 = r16;
        goto L_0x0674;
    L_0x05e0:
        r0 = move-exception;
        r3 = r0;
        r4 = 0;
        r6 = 0;
        r10 = 0;
    L_0x05e5:
        r7 = com.google.android.gms.common.GoogleApiAvailability.getInstance();	 Catch:{ Throwable -> 0x05ee }
        r7 = r7.isGooglePlayServicesAvailable(r1);	 Catch:{ Throwable -> 0x05ee }
        r2 = r7;
    L_0x05ee:
        r3 = r3.getClass();	 Catch:{ Throwable -> 0x08cc }
        r3 = r3.getSimpleName();	 Catch:{ Throwable -> 0x08cc }
        r7 = "WARNING: Google Play services SDK jar is missing.";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r7);	 Catch:{ Throwable -> 0x08cc }
        r7 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r12 = "enableGpsFallback";	 Catch:{ Throwable -> 0x08cc }
        r13 = 1;	 Catch:{ Throwable -> 0x08cc }
        r7 = r7.getBoolean(r12, r13);	 Catch:{ Throwable -> 0x08cc }
        if (r7 == 0) goto L_0x0674;
    L_0x0608:
        r4 = com.appsflyer.AdvertisingIdClient.getAdvertisingIdInfo(r18);	 Catch:{ Throwable -> 0x0628 }
        r10 = r4.getId();	 Catch:{ Throwable -> 0x0628 }
        r4 = r4.isLimitAdTrackingEnabled();	 Catch:{ Throwable -> 0x0628 }
        r4 = r4 ^ r13;	 Catch:{ Throwable -> 0x0628 }
        r4 = java.lang.Boolean.toString(r4);	 Catch:{ Throwable -> 0x0628 }
        if (r10 == 0) goto L_0x0624;	 Catch:{ Throwable -> 0x0628 }
    L_0x061b:
        r7 = r10.length();	 Catch:{ Throwable -> 0x0628 }
        if (r7 != 0) goto L_0x0622;	 Catch:{ Throwable -> 0x0628 }
    L_0x0621:
        goto L_0x0624;	 Catch:{ Throwable -> 0x0628 }
    L_0x0622:
        r7 = r3;	 Catch:{ Throwable -> 0x0628 }
        goto L_0x0626;	 Catch:{ Throwable -> 0x0628 }
    L_0x0624:
        r7 = "emptyOrNull (bypass)";	 Catch:{ Throwable -> 0x0628 }
    L_0x0626:
        r3 = r7;
        goto L_0x0674;
    L_0x0628:
        r0 = move-exception;
        r4 = r0;
        r7 = "GAID";	 Catch:{ Throwable -> 0x08cc }
        r10 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x08cc }
        r12 = "\tgot error: ";	 Catch:{ Throwable -> 0x08cc }
        r10.<init>(r12);	 Catch:{ Throwable -> 0x08cc }
        r12 = r4.getMessage();	 Catch:{ Throwable -> 0x08cc }
        r10.append(r12);	 Catch:{ Throwable -> 0x08cc }
        r10 = r10.toString();	 Catch:{ Throwable -> 0x08cc }
        debugAction(r7, r10, r1);	 Catch:{ Throwable -> 0x08cc }
        r7 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r10 = "advertiserId";	 Catch:{ Throwable -> 0x08cc }
        r10 = r7.getString(r10);	 Catch:{ Throwable -> 0x08cc }
        r7 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r12 = "advertiserIdEnabled";	 Catch:{ Throwable -> 0x08cc }
        r7 = r7.getString(r12);	 Catch:{ Throwable -> 0x08cc }
        r12 = r4.getLocalizedMessage();	 Catch:{ Throwable -> 0x08cc }
        if (r12 == 0) goto L_0x0663;	 Catch:{ Throwable -> 0x08cc }
    L_0x065b:
        r12 = r4.getLocalizedMessage();	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r12);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x066a;	 Catch:{ Throwable -> 0x08cc }
    L_0x0663:
        r12 = r4.toString();	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r12);	 Catch:{ Throwable -> 0x08cc }
    L_0x066a:
        r12 = "Could not fetch advertiser id: ";	 Catch:{ Throwable -> 0x08cc }
        r4 = r4.getLocalizedMessage();	 Catch:{ Throwable -> 0x08cc }
        debugAction(r12, r4, r1);	 Catch:{ Throwable -> 0x08cc }
        r4 = r7;	 Catch:{ Throwable -> 0x08cc }
    L_0x0674:
        if (r3 == 0) goto L_0x068f;	 Catch:{ Throwable -> 0x08cc }
    L_0x0676:
        r7 = "gaidError";	 Catch:{ Throwable -> 0x08cc }
        r12 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x08cc }
        r12.<init>();	 Catch:{ Throwable -> 0x08cc }
        r12.append(r2);	 Catch:{ Throwable -> 0x08cc }
        r2 = ": ";	 Catch:{ Throwable -> 0x08cc }
        r12.append(r2);	 Catch:{ Throwable -> 0x08cc }
        r12.append(r3);	 Catch:{ Throwable -> 0x08cc }
        r2 = r12.toString();	 Catch:{ Throwable -> 0x08cc }
        r9.put(r7, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x068f:
        if (r10 == 0) goto L_0x06b8;	 Catch:{ Throwable -> 0x08cc }
    L_0x0691:
        if (r4 == 0) goto L_0x06b8;	 Catch:{ Throwable -> 0x08cc }
    L_0x0693:
        r2 = "advertiserId";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r10);	 Catch:{ Throwable -> 0x08cc }
        r2 = "advertiserIdEnabled";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r4);	 Catch:{ Throwable -> 0x08cc }
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r3 = "advertiserId";	 Catch:{ Throwable -> 0x08cc }
        r2.set(r3, r10);	 Catch:{ Throwable -> 0x08cc }
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r3 = "advertiserIdEnabled";	 Catch:{ Throwable -> 0x08cc }
        r2.set(r3, r4);	 Catch:{ Throwable -> 0x08cc }
        r2 = "isGaidWithGps";	 Catch:{ Throwable -> 0x08cc }
        r3 = java.lang.String.valueOf(r6);	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r3);	 Catch:{ Throwable -> 0x08cc }
    L_0x06b8:
        r2 = "com.unity3d.player.UnityPlayer";	 Catch:{ Throwable -> 0x08cc }
        java.lang.Class.forName(r2);	 Catch:{ ClassNotFoundException -> 0x06c5, Exception -> 0x06cc }
        r2 = "platformextension";	 Catch:{ ClassNotFoundException -> 0x06c5, Exception -> 0x06cc }
        r3 = "android_unity";	 Catch:{ ClassNotFoundException -> 0x06c5, Exception -> 0x06cc }
        r9.put(r2, r3);	 Catch:{ ClassNotFoundException -> 0x06c5, Exception -> 0x06cc }
        goto L_0x06cc;
    L_0x06c5:
        r2 = "platformextension";	 Catch:{ Throwable -> 0x08cc }
        r3 = "android_native";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r3);	 Catch:{ Throwable -> 0x08cc }
    L_0x06cc:
        r2 = new java.text.SimpleDateFormat;	 Catch:{ Throwable -> 0x08cc }
        r3 = "yyyy-MM-dd_HHmmZ";	 Catch:{ Throwable -> 0x08cc }
        r4 = java.util.Locale.US;	 Catch:{ Throwable -> 0x08cc }
        r2.<init>(r3, r4);	 Catch:{ Throwable -> 0x08cc }
        r3 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x08cc }
        r4 = 9;
        if (r3 < r4) goto L_0x06f8;
    L_0x06db:
        r3 = r18.getPackageManager();	 Catch:{ Exception -> 0x06f8 }
        r4 = r18.getPackageName();	 Catch:{ Exception -> 0x06f8 }
        r6 = 0;	 Catch:{ Exception -> 0x06f8 }
        r3 = r3.getPackageInfo(r4, r6);	 Catch:{ Exception -> 0x06f8 }
        r3 = r3.firstInstallTime;	 Catch:{ Exception -> 0x06f8 }
        r6 = "installDate";	 Catch:{ Exception -> 0x06f8 }
        r7 = new java.util.Date;	 Catch:{ Exception -> 0x06f8 }
        r7.<init>(r3);	 Catch:{ Exception -> 0x06f8 }
        r3 = r2.format(r7);	 Catch:{ Exception -> 0x06f8 }
        r9.put(r6, r3);	 Catch:{ Exception -> 0x06f8 }
    L_0x06f8:
        r3 = r18.getPackageManager();	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = r18.getPackageName();	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r6 = 0;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r3 = r3.getPackageInfo(r4, r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = "appsflyer-data";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = r1.getSharedPreferences(r4, r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r7 = "versionCode";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = r4.getInt(r7, r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r7 = r3.versionCode;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        if (r7 <= r4) goto L_0x0721;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
    L_0x0715:
        r4 = "appsflyerConversionDataRequestRetries";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        saveIntegerToSharedPreferences(r1, r4, r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = "versionCode";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r6 = r3.versionCode;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        saveIntegerToSharedPreferences(r1, r4, r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
    L_0x0721:
        r4 = "app_version_code";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r6 = r3.versionCode;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r6 = java.lang.Integer.toString(r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r9.put(r4, r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = "app_version_name";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r6 = r3.versionName;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r9.put(r4, r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = android.os.Build.VERSION.SDK_INT;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r6 = 9;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        if (r4 < r6) goto L_0x07a5;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
    L_0x0739:
        r6 = r3.firstInstallTime;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r3 = r3.lastUpdateTime;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r10 = "date1";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r12 = new java.util.Date;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r12.<init>(r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r6 = r2.format(r12);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r9.put(r10, r6);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r6 = "date2";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r7 = new java.util.Date;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r7.<init>(r3);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r3 = r2.format(r7);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r9.put(r6, r3);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r3 = "appsflyer-data";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = 0;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r3 = r1.getSharedPreferences(r3, r4);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r6 = "appsFlyerFirstInstall";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r7 = 0;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r3 = r3.getString(r6, r7);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        if (r3 != 0) goto L_0x0791;	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
    L_0x0769:
        r3 = "appsflyer-data";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r3 = r1.getSharedPreferences(r3, r4);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = "appsFlyerCount";	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r3 = r3.contains(r4);	 Catch:{ NameNotFoundException -> 0x07a5, NameNotFoundException -> 0x07a5 }
        r4 = 1;
        r3 = r3 ^ r4;
        if (r3 == 0) goto L_0x0788;
    L_0x0779:
        r3 = "AppsFlyer: first launch detected";	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        com.appsflyer.AFLogger.afDebugLog(r3);	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        r3 = new java.util.Date;	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        r3.<init>();	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        r2 = r2.format(r3);	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        goto L_0x078a;	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
    L_0x0788:
        r2 = "";	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
    L_0x078a:
        r3 = r2;	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        r2 = "appsFlyerFirstInstall";	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        saveDataToSharedPreferences(r1, r2, r3);	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        goto L_0x0792;	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
    L_0x0791:
        r4 = 1;	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
    L_0x0792:
        r2 = "AppsFlyer: first launch date: ";	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        r6 = java.lang.String.valueOf(r3);	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        r2 = r2.concat(r6);	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        com.appsflyer.AFLogger.afLog(r2);	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        r2 = "firstLaunchDate";	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        r9.put(r2, r3);	 Catch:{ NameNotFoundException -> 0x07a6, NameNotFoundException -> 0x07a6 }
        goto L_0x07a6;
    L_0x07a5:
        r4 = 1;
    L_0x07a6:
        r2 = r22.length();	 Catch:{ Throwable -> 0x08cc }
        if (r2 <= 0) goto L_0x07b1;	 Catch:{ Throwable -> 0x08cc }
    L_0x07ac:
        r2 = "referrer";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r5);	 Catch:{ Throwable -> 0x08cc }
    L_0x07b1:
        r2 = "appsflyer-data";	 Catch:{ Throwable -> 0x08cc }
        r6 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r1.getSharedPreferences(r2, r6);	 Catch:{ Throwable -> 0x08cc }
        r3 = "attributionId";	 Catch:{ Throwable -> 0x08cc }
        r7 = 0;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getString(r3, r7);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x07cc;	 Catch:{ Throwable -> 0x08cc }
    L_0x07c1:
        r3 = r2.length();	 Catch:{ Throwable -> 0x08cc }
        if (r3 <= 0) goto L_0x07cc;	 Catch:{ Throwable -> 0x08cc }
    L_0x07c7:
        r3 = "installAttribution";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r3, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x07cc:
        r2 = com.appsflyer.AppsFlyerProperties.getInstance();	 Catch:{ Throwable -> 0x08cc }
        r3 = "GCM_INSTANCE_ID";	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getString(r3);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x07dd;	 Catch:{ Throwable -> 0x08cc }
    L_0x07d8:
        r3 = "af_google_instance_id";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r3, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x07dd:
        if (r8 == 0) goto L_0x0858;	 Catch:{ Throwable -> 0x08cc }
    L_0x07df:
        r2 = r1 instanceof android.app.Activity;	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x0858;	 Catch:{ Throwable -> 0x08cc }
    L_0x07e3:
        r2 = r1;	 Catch:{ Throwable -> 0x08cc }
        r2 = (android.app.Activity) r2;	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.getIntent();	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x07fd;	 Catch:{ Throwable -> 0x08cc }
    L_0x07ec:
        r3 = "android.intent.action.VIEW";	 Catch:{ Throwable -> 0x08cc }
        r7 = r2.getAction();	 Catch:{ Throwable -> 0x08cc }
        r3 = r3.equals(r7);	 Catch:{ Throwable -> 0x08cc }
        if (r3 == 0) goto L_0x07fd;	 Catch:{ Throwable -> 0x08cc }
    L_0x07f8:
        r10 = r2.getData();	 Catch:{ Throwable -> 0x08cc }
        goto L_0x07fe;	 Catch:{ Throwable -> 0x08cc }
    L_0x07fd:
        r10 = 0;	 Catch:{ Throwable -> 0x08cc }
    L_0x07fe:
        if (r10 == 0) goto L_0x0858;	 Catch:{ Throwable -> 0x08cc }
    L_0x0800:
        r2 = "af_deeplink";	 Catch:{ Throwable -> 0x08cc }
        r3 = r10.toString();	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r3);	 Catch:{ Throwable -> 0x08cc }
        r2 = "af_deeplink";	 Catch:{ Throwable -> 0x08cc }
        r2 = r10.getQueryParameter(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x083c;	 Catch:{ Throwable -> 0x08cc }
    L_0x0811:
        r2 = r10.getQuery();	 Catch:{ Throwable -> 0x08cc }
        r2 = r2.toString();	 Catch:{ Throwable -> 0x08cc }
        r2 = referrerStringToMap(r1, r2);	 Catch:{ Throwable -> 0x08cc }
        r3 = r10.getPath();	 Catch:{ Throwable -> 0x08cc }
        if (r3 == 0) goto L_0x082c;	 Catch:{ Throwable -> 0x08cc }
    L_0x0823:
        r3 = "path";	 Catch:{ Throwable -> 0x08cc }
        r7 = r10.getPath();	 Catch:{ Throwable -> 0x08cc }
        r2.put(r3, r7);	 Catch:{ Throwable -> 0x08cc }
    L_0x082c:
        r3 = r10.getScheme();	 Catch:{ Throwable -> 0x08cc }
        if (r3 == 0) goto L_0x084a;	 Catch:{ Throwable -> 0x08cc }
    L_0x0832:
        r3 = "scheme";	 Catch:{ Throwable -> 0x08cc }
        r7 = r10.getScheme();	 Catch:{ Throwable -> 0x08cc }
        r2.put(r3, r7);	 Catch:{ Throwable -> 0x08cc }
        goto L_0x084a;	 Catch:{ Throwable -> 0x08cc }
    L_0x083c:
        r2 = new java.util.HashMap;	 Catch:{ Throwable -> 0x08cc }
        r2.<init>();	 Catch:{ Throwable -> 0x08cc }
        r3 = "link";	 Catch:{ Throwable -> 0x08cc }
        r7 = r10.toString();	 Catch:{ Throwable -> 0x08cc }
        r2.put(r3, r7);	 Catch:{ Throwable -> 0x08cc }
    L_0x084a:
        r3 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x08cc }
        r3.<init>(r2);	 Catch:{ Throwable -> 0x08cc }
        r2 = r3.toString();	 Catch:{ Throwable -> 0x08cc }
        r3 = "deeplinkAttribution";	 Catch:{ Throwable -> 0x08cc }
        saveDataToSharedPreferences(r1, r3, r2);	 Catch:{ Throwable -> 0x08cc }
    L_0x0858:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x08cc }
        r7 = r17;	 Catch:{ Throwable -> 0x08cc }
        r12 = r7.testModeStartTime;	 Catch:{ Throwable -> 0x08cc }
        r14 = r2 - r12;	 Catch:{ Throwable -> 0x08cc }
        r2 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;	 Catch:{ Throwable -> 0x08cc }
        r10 = (r14 > r2 ? 1 : (r14 == r2 ? 0 : -1));	 Catch:{ Throwable -> 0x08cc }
        if (r10 > 0) goto L_0x0873;	 Catch:{ Throwable -> 0x08cc }
    L_0x0868:
        if (r5 == 0) goto L_0x0873;	 Catch:{ Throwable -> 0x08cc }
    L_0x086a:
        r2 = "AppsFlyer_Test";	 Catch:{ Throwable -> 0x08cc }
        r2 = r5.contains(r2);	 Catch:{ Throwable -> 0x08cc }
        if (r2 == 0) goto L_0x0873;	 Catch:{ Throwable -> 0x08cc }
    L_0x0872:
        goto L_0x0874;	 Catch:{ Throwable -> 0x08cc }
    L_0x0873:
        r4 = r6;	 Catch:{ Throwable -> 0x08cc }
    L_0x0874:
        if (r4 == 0) goto L_0x089d;	 Catch:{ Throwable -> 0x08cc }
    L_0x0876:
        r2 = "testAppMode";	 Catch:{ Throwable -> 0x08cc }
        r3 = "true";	 Catch:{ Throwable -> 0x08cc }
        r9.put(r2, r3);	 Catch:{ Throwable -> 0x08cc }
        r2 = r9;	 Catch:{ Throwable -> 0x08cc }
        r2 = (java.util.HashMap) r2;	 Catch:{ Throwable -> 0x08cc }
        r3 = new android.content.Intent;	 Catch:{ Throwable -> 0x08cc }
        r4 = "com.appsflyer.testIntgrationBroadcast";	 Catch:{ Throwable -> 0x08cc }
        r3.<init>(r4);	 Catch:{ Throwable -> 0x08cc }
        r4 = "params";	 Catch:{ Throwable -> 0x08cc }
        r3.putExtra(r4, r2);	 Catch:{ Throwable -> 0x08cc }
        r1.sendBroadcast(r3);	 Catch:{ Throwable -> 0x08cc }
        r2 = "Sent params to test app";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r2);	 Catch:{ Throwable -> 0x08cc }
        r2 = "Test mode ended!";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r2);	 Catch:{ Throwable -> 0x08cc }
        r2 = 0;	 Catch:{ Throwable -> 0x08cc }
        r7.testModeStartTime = r2;	 Catch:{ Throwable -> 0x08cc }
    L_0x089d:
        r2 = "AppsFlyerLib.sendTrackingWithEvent";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r2);	 Catch:{ Throwable -> 0x08cc }
        r10 = new com.appsflyer.AppsFlyerLib$SendToServerRunnable;	 Catch:{ Throwable -> 0x08cc }
        r3 = r11.toString();	 Catch:{ Throwable -> 0x08cc }
        r5 = r18.getApplicationContext();	 Catch:{ Throwable -> 0x08cc }
        r11 = 0;	 Catch:{ Throwable -> 0x08cc }
        r1 = r10;	 Catch:{ Throwable -> 0x08cc }
        r2 = r7;	 Catch:{ Throwable -> 0x08cc }
        r4 = r9;	 Catch:{ Throwable -> 0x08cc }
        r6 = r8;	 Catch:{ Throwable -> 0x08cc }
        r7 = r11;	 Catch:{ Throwable -> 0x08cc }
        r1.<init>(r3, r4, r5, r6);	 Catch:{ Throwable -> 0x08cc }
        r10.run();	 Catch:{ Throwable -> 0x08cc }
        return;	 Catch:{ Throwable -> 0x08cc }
    L_0x08b9:
        r2 = "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. ";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r2);	 Catch:{ Throwable -> 0x08cc }
        r2 = LOG_TAG;	 Catch:{ Throwable -> 0x08cc }
        r3 = "DEV_KEY_MISSING";	 Catch:{ Throwable -> 0x08cc }
        r4 = 0;	 Catch:{ Throwable -> 0x08cc }
        monitor(r1, r2, r3, r4);	 Catch:{ Throwable -> 0x08cc }
        r1 = "AppsFlyer will not track this event.";	 Catch:{ Throwable -> 0x08cc }
        com.appsflyer.AFLogger.afLog(r1);	 Catch:{ Throwable -> 0x08cc }
        return;
    L_0x08cc:
        r0 = move-exception;
        r1 = r0;
        r2 = r1.getLocalizedMessage();
        com.appsflyer.AFLogger.afLogE(r2, r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.access$500(com.appsflyer.AppsFlyerLib, android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):void");
    }

    static /* synthetic */ long access$700$41228562$1ae01aa2(Context context) {
        long j = context.getSharedPreferences("appsflyer-data", 0).getLong("AppsFlyerTimePassedSincePrevLaunch", 0);
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = j > 0 ? currentTimeMillis - j : -1;
        saveLongToSharedPreferences(context, "AppsFlyerTimePassedSincePrevLaunch", currentTimeMillis);
        return j2 / 1000;
    }

    static /* synthetic */ void access$900(AppsFlyerLib appsFlyerLib, String str, String str2, String str3, WeakReference weakReference, String str4, boolean z) throws IOException {
        String str5 = str;
        String str6 = str2;
        URL url = new URL(str5);
        StringBuilder stringBuilder = new StringBuilder("url: ");
        stringBuilder.append(url.toString());
        AFLogger.afLog(stringBuilder.toString());
        StringBuilder stringBuilder2 = new StringBuilder("\n");
        stringBuilder2.append(url.toString());
        stringBuilder2.append("\nPOST:");
        stringBuilder2.append(str6);
        debugAction("call server.", stringBuilder2.toString(), (Context) weakReference.get());
        MethodCallsLogger.logMessageMaskKey("data: ".concat(String.valueOf(str6)));
        monitor((Context) weakReference.get(), LOG_TAG, "EVENT_DATA", str6);
        try {
            appsFlyerLib.callServer(url, str6, str3, weakReference, str4, z);
        } catch (IOException e) {
            if (AppsFlyerProperties.getInstance().getBoolean("useHttpFallback", false)) {
                stringBuilder = new StringBuilder("https failed: ");
                stringBuilder.append(e.getLocalizedMessage());
                debugAction(stringBuilder.toString(), "", (Context) weakReference.get());
                appsFlyerLib.callServer(new URL(str5.replace("https:", "http:")), str6, str3, weakReference, str4, z);
                return;
            }
            StringBuilder stringBuilder3 = new StringBuilder("failed to send requeset to server. ");
            stringBuilder3.append(e.getLocalizedMessage());
            AFLogger.afLog(stringBuilder3.toString());
            monitor((Context) weakReference.get(), LOG_TAG, "ERROR", e.getLocalizedMessage());
            throw e;
        }
    }

    static /* synthetic */ String access$1100$49a85076(Context context) {
        String string = AppsFlyerProperties.getInstance().getString("channel");
        return string == null ? getManifestMetaData(context, "CHANNEL") : string;
    }
}
