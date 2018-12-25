package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.Callback;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger.FlushBehavior;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

class AppEventQueue {
    private static final int FLUSH_PERIOD_IN_SECONDS = 15;
    private static final int NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER = 100;
    private static final String TAG = "com.facebook.appevents.AppEventQueue";
    private static volatile AppEventCollection appEventCollection = new AppEventCollection();
    private static final Runnable flushRunnable = new C03671();
    private static ScheduledFuture scheduledFuture;
    private static final ScheduledExecutorService singleThreadExecutor = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: com.facebook.appevents.AppEventQueue$1 */
    static class C03671 implements Runnable {
        C03671() {
        }

        public final void run() {
            AppEventQueue.scheduledFuture = null;
            if (AppEventsLogger.getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY) {
                AppEventQueue.flushAndWait(FlushReason.TIMER);
            }
        }
    }

    /* renamed from: com.facebook.appevents.AppEventQueue$2 */
    static class C03682 implements Runnable {
        C03682() {
        }

        public final void run() {
            AppEventStore.persistEvents(AppEventQueue.appEventCollection);
            AppEventQueue.appEventCollection = new AppEventCollection();
        }
    }

    AppEventQueue() {
    }

    public static void persistToDisk() {
        singleThreadExecutor.execute(new C03682());
    }

    public static void flush(final FlushReason flushReason) {
        singleThreadExecutor.execute(new Runnable() {
            public final void run() {
                AppEventQueue.flushAndWait(flushReason);
            }
        });
    }

    public static void add(final AccessTokenAppIdPair accessTokenAppIdPair, final AppEvent appEvent) {
        singleThreadExecutor.execute(new Runnable() {
            public final void run() {
                AppEventQueue.appEventCollection.addEvent(accessTokenAppIdPair, appEvent);
                if (AppEventsLogger.getFlushBehavior() == FlushBehavior.EXPLICIT_ONLY || AppEventQueue.appEventCollection.getEventCount() <= 100) {
                    if (AppEventQueue.scheduledFuture == null) {
                        AppEventQueue.scheduledFuture = AppEventQueue.singleThreadExecutor.schedule(AppEventQueue.flushRunnable, 15, TimeUnit.SECONDS);
                    }
                    return;
                }
                AppEventQueue.flushAndWait(FlushReason.EVENT_THRESHOLD);
            }
        });
    }

    public static Set<AccessTokenAppIdPair> getKeySet() {
        return appEventCollection.keySet();
    }

    static void flushAndWait(FlushReason flushReason) {
        appEventCollection.addPersistedEvents(AppEventStore.readAndClearStore());
        try {
            flushReason = sendEventsToServer(flushReason, appEventCollection);
            if (flushReason != null) {
                Intent intent = new Intent(AppEventsLogger.ACTION_APP_EVENTS_FLUSHED);
                intent.putExtra(AppEventsLogger.APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED, flushReason.numEvents);
                intent.putExtra(AppEventsLogger.APP_EVENTS_EXTRA_FLUSH_RESULT, flushReason.result);
                LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext()).sendBroadcast(intent);
            }
        } catch (FlushReason flushReason2) {
            Log.w(TAG, "Caught unexpected exception while flushing app events: ", flushReason2);
        }
    }

    private static FlushStatistics sendEventsToServer(FlushReason flushReason, AppEventCollection appEventCollection) {
        FlushStatistics flushStatistics = new FlushStatistics();
        boolean limitEventAndDataUsage = FacebookSdk.getLimitEventAndDataUsage(FacebookSdk.getApplicationContext());
        List<GraphRequest> arrayList = new ArrayList();
        for (AccessTokenAppIdPair accessTokenAppIdPair : appEventCollection.keySet()) {
            GraphRequest buildRequestForSession = buildRequestForSession(accessTokenAppIdPair, appEventCollection.get(accessTokenAppIdPair), limitEventAndDataUsage, flushStatistics);
            if (buildRequestForSession != null) {
                arrayList.add(buildRequestForSession);
            }
        }
        if (arrayList.size() <= null) {
            return null;
        }
        Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Flushing %d events due to %s.", Integer.valueOf(flushStatistics.numEvents), flushReason.toString());
        for (GraphRequest executeAndWait : arrayList) {
            executeAndWait.executeAndWait();
        }
        return flushStatistics;
    }

    private static GraphRequest buildRequestForSession(final AccessTokenAppIdPair accessTokenAppIdPair, final SessionEventsState sessionEventsState, boolean z, final FlushStatistics flushStatistics) {
        boolean z2 = false;
        FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(accessTokenAppIdPair.getApplicationId(), false);
        final GraphRequest newPostRequest = GraphRequest.newPostRequest(null, String.format("%s/activities", new Object[]{r0}), null, null);
        Bundle parameters = newPostRequest.getParameters();
        if (parameters == null) {
            parameters = new Bundle();
        }
        parameters.putString("access_token", accessTokenAppIdPair.getAccessTokenString());
        String pushNotificationsRegistrationId = AppEventsLogger.getPushNotificationsRegistrationId();
        if (pushNotificationsRegistrationId != null) {
            parameters.putString("device_token", pushNotificationsRegistrationId);
        }
        newPostRequest.setParameters(parameters);
        if (queryAppSettings != null) {
            z2 = queryAppSettings.supportsImplicitLogging();
        }
        z = sessionEventsState.populateRequest(newPostRequest, FacebookSdk.getApplicationContext(), z2, z);
        if (!z) {
            return null;
        }
        flushStatistics.numEvents += z;
        newPostRequest.setCallback(new Callback() {
            public final void onCompleted(GraphResponse graphResponse) {
                AppEventQueue.handleResponse(accessTokenAppIdPair, newPostRequest, graphResponse, sessionEventsState, flushStatistics);
            }
        });
        return newPostRequest;
    }

    private static void handleResponse(final com.facebook.appevents.AccessTokenAppIdPair r10, com.facebook.GraphRequest r11, com.facebook.GraphResponse r12, final com.facebook.appevents.SessionEventsState r13, com.facebook.appevents.FlushStatistics r14) {
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
        r0 = r12.getError();
        r1 = "Success";
        r2 = com.facebook.appevents.FlushResult.SUCCESS;
        r3 = 1;
        r4 = 0;
        r5 = 2;
        if (r0 == 0) goto L_0x002f;
    L_0x000d:
        r1 = r0.getErrorCode();
        r2 = -1;
        if (r1 != r2) goto L_0x0019;
    L_0x0014:
        r1 = "Failed: No Connectivity";
        r2 = com.facebook.appevents.FlushResult.NO_CONNECTIVITY;
        goto L_0x002f;
    L_0x0019:
        r1 = "Failed:\n  Response: %s\n  Error %s";
        r2 = new java.lang.Object[r5];
        r12 = r12.toString();
        r2[r4] = r12;
        r12 = r0.toString();
        r2[r3] = r12;
        r1 = java.lang.String.format(r1, r2);
        r2 = com.facebook.appevents.FlushResult.SERVER_ERROR;
    L_0x002f:
        r12 = com.facebook.LoggingBehavior.APP_EVENTS;
        r12 = com.facebook.FacebookSdk.isLoggingBehaviorEnabled(r12);
        if (r12 == 0) goto L_0x0063;
    L_0x0037:
        r12 = r11.getTag();
        r12 = (java.lang.String) r12;
        r6 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x0047 }
        r6.<init>(r12);	 Catch:{ JSONException -> 0x0047 }
        r12 = r6.toString(r5);	 Catch:{ JSONException -> 0x0047 }
        goto L_0x0049;
    L_0x0047:
        r12 = "<Can't encode events for debug logging>";
    L_0x0049:
        r6 = com.facebook.LoggingBehavior.APP_EVENTS;
        r7 = TAG;
        r8 = "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s";
        r9 = 3;
        r9 = new java.lang.Object[r9];
        r11 = r11.getGraphObject();
        r11 = r11.toString();
        r9[r4] = r11;
        r9[r3] = r1;
        r9[r5] = r12;
        com.facebook.internal.Logger.log(r6, r7, r8, r9);
    L_0x0063:
        if (r0 == 0) goto L_0x0066;
    L_0x0065:
        goto L_0x0067;
    L_0x0066:
        r3 = r4;
    L_0x0067:
        r13.clearInFlightAndStats(r3);
        r11 = com.facebook.appevents.FlushResult.NO_CONNECTIVITY;
        if (r2 != r11) goto L_0x007a;
    L_0x006e:
        r11 = com.facebook.FacebookSdk.getExecutor();
        r12 = new com.facebook.appevents.AppEventQueue$6;
        r12.<init>(r10, r13);
        r11.execute(r12);
    L_0x007a:
        r10 = com.facebook.appevents.FlushResult.SUCCESS;
        if (r2 == r10) goto L_0x0086;
    L_0x007e:
        r10 = r14.result;
        r11 = com.facebook.appevents.FlushResult.NO_CONNECTIVITY;
        if (r10 == r11) goto L_0x0086;
    L_0x0084:
        r14.result = r2;
    L_0x0086:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.AppEventQueue.handleResponse(com.facebook.appevents.AccessTokenAppIdPair, com.facebook.GraphRequest, com.facebook.GraphResponse, com.facebook.appevents.SessionEventsState, com.facebook.appevents.FlushStatistics):void");
    }
}
