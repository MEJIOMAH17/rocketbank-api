package com.facebook;

import android.content.Context;
import android.os.AsyncTask;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.LockOnGetVariable;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class FacebookSdk {
    public static final String APPLICATION_ID_PROPERTY = "com.facebook.sdk.ApplicationId";
    public static final String APPLICATION_NAME_PROPERTY = "com.facebook.sdk.ApplicationName";
    private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
    static final String CALLBACK_OFFSET_CHANGED_AFTER_INIT = "The callback request code offset can't be updated once the SDK is initialized.";
    static final String CALLBACK_OFFSET_NEGATIVE = "The callback request code offset can't be negative.";
    public static final String CLIENT_TOKEN_PROPERTY = "com.facebook.sdk.ClientToken";
    private static final int DEFAULT_CORE_POOL_SIZE = 5;
    private static final int DEFAULT_KEEP_ALIVE = 1;
    private static final int DEFAULT_MAXIMUM_POOL_SIZE = 128;
    private static final int DEFAULT_THEME = C0361R.style.com_facebook_activity_theme;
    private static final ThreadFactory DEFAULT_THREAD_FACTORY = new C03521();
    private static final BlockingQueue<Runnable> DEFAULT_WORK_QUEUE = new LinkedBlockingQueue(10);
    private static final String FACEBOOK_COM = "facebook.com";
    private static final Object LOCK = new Object();
    private static final int MAX_REQUEST_CODE_RANGE = 100;
    private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
    private static final String TAG = FacebookSdk.class.getCanonicalName();
    public static final String WEB_DIALOG_THEME = "com.facebook.sdk.WebDialogTheme";
    private static volatile String appClientToken = null;
    private static Context applicationContext = null;
    private static volatile String applicationId = null;
    private static volatile String applicationName = null;
    private static LockOnGetVariable<File> cacheDir = null;
    private static int callbackRequestCodeOffset = 64206;
    private static volatile Executor executor = null;
    private static volatile String facebookDomain = "facebook.com";
    private static String graphApiVersion = ServerProtocol.getDefaultAPIVersion();
    private static volatile boolean isDebugEnabled = false;
    private static boolean isLegacyTokenUpgradeSupported = false;
    private static final HashSet<LoggingBehavior> loggingBehaviors = new HashSet(Arrays.asList(new LoggingBehavior[]{LoggingBehavior.DEVELOPER_ERRORS}));
    private static AtomicLong onProgressThreshold = new AtomicLong(PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
    private static Boolean sdkInitialized = Boolean.FALSE;
    private static volatile int webDialogTheme;

    /* renamed from: com.facebook.FacebookSdk$1 */
    static class C03521 implements ThreadFactory {
        private final AtomicInteger counter = new AtomicInteger(0);

        C03521() {
        }

        public final Thread newThread(Runnable runnable) {
            StringBuilder stringBuilder = new StringBuilder("FacebookSdk #");
            stringBuilder.append(this.counter.incrementAndGet());
            return new Thread(runnable, stringBuilder.toString());
        }
    }

    /* renamed from: com.facebook.FacebookSdk$2 */
    static class C03532 implements Callable<File> {
        C03532() {
        }

        public final File call() throws Exception {
            return FacebookSdk.applicationContext.getCacheDir();
        }
    }

    public interface InitializeCallback {
        void onInitialized();
    }

    public static String getSdkVersion() {
        return FacebookSdkVersion.BUILD;
    }

    public static synchronized void sdkInitialize(Context context, int i) {
        synchronized (FacebookSdk.class) {
            sdkInitialize(context, i, null);
        }
    }

    public static synchronized void sdkInitialize(Context context, int i, InitializeCallback initializeCallback) {
        synchronized (FacebookSdk.class) {
            if (sdkInitialized.booleanValue() && i != callbackRequestCodeOffset) {
                throw new FacebookException(CALLBACK_OFFSET_CHANGED_AFTER_INIT);
            } else if (i < 0) {
                throw new FacebookException(CALLBACK_OFFSET_NEGATIVE);
            } else {
                callbackRequestCodeOffset = i;
                sdkInitialize(context, initializeCallback);
            }
        }
    }

    public static synchronized void sdkInitialize(Context context) {
        synchronized (FacebookSdk.class) {
            sdkInitialize(context, null);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void sdkInitialize(final android.content.Context r3, final com.facebook.FacebookSdk.InitializeCallback r4) {
        /*
        r0 = com.facebook.FacebookSdk.class;
        monitor-enter(r0);
        r1 = sdkInitialized;	 Catch:{ all -> 0x0059 }
        r1 = r1.booleanValue();	 Catch:{ all -> 0x0059 }
        if (r1 == 0) goto L_0x0012;
    L_0x000b:
        if (r4 == 0) goto L_0x0010;
    L_0x000d:
        r4.onInitialized();	 Catch:{ all -> 0x0059 }
    L_0x0010:
        monitor-exit(r0);
        return;
    L_0x0012:
        r1 = "applicationContext";
        com.facebook.internal.Validate.notNull(r3, r1);	 Catch:{ all -> 0x0059 }
        r1 = 0;
        com.facebook.internal.Validate.hasFacebookActivity(r3, r1);	 Catch:{ all -> 0x0059 }
        com.facebook.internal.Validate.hasInternetPermissions(r3, r1);	 Catch:{ all -> 0x0059 }
        r1 = r3.getApplicationContext();	 Catch:{ all -> 0x0059 }
        applicationContext = r1;	 Catch:{ all -> 0x0059 }
        loadDefaultsFromMetadata(r1);	 Catch:{ all -> 0x0059 }
        r1 = java.lang.Boolean.TRUE;	 Catch:{ all -> 0x0059 }
        sdkInitialized = r1;	 Catch:{ all -> 0x0059 }
        r1 = applicationContext;	 Catch:{ all -> 0x0059 }
        r2 = applicationId;	 Catch:{ all -> 0x0059 }
        com.facebook.internal.FetchedAppSettingsManager.loadAppSettingsAsync(r1, r2);	 Catch:{ all -> 0x0059 }
        com.facebook.internal.NativeProtocol.updateAllAvailableProtocolVersionsAsync();	 Catch:{ all -> 0x0059 }
        r1 = applicationContext;	 Catch:{ all -> 0x0059 }
        com.facebook.internal.BoltsMeasurementEventListener.getInstance(r1);	 Catch:{ all -> 0x0059 }
        r1 = new com.facebook.internal.LockOnGetVariable;	 Catch:{ all -> 0x0059 }
        r2 = new com.facebook.FacebookSdk$2;	 Catch:{ all -> 0x0059 }
        r2.<init>();	 Catch:{ all -> 0x0059 }
        r1.<init>(r2);	 Catch:{ all -> 0x0059 }
        cacheDir = r1;	 Catch:{ all -> 0x0059 }
        r1 = new java.util.concurrent.FutureTask;	 Catch:{ all -> 0x0059 }
        r2 = new com.facebook.FacebookSdk$3;	 Catch:{ all -> 0x0059 }
        r2.<init>(r4, r3);	 Catch:{ all -> 0x0059 }
        r1.<init>(r2);	 Catch:{ all -> 0x0059 }
        r3 = getExecutor();	 Catch:{ all -> 0x0059 }
        r3.execute(r1);	 Catch:{ all -> 0x0059 }
        monitor-exit(r0);
        return;
    L_0x0059:
        r3 = move-exception;
        monitor-exit(r0);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.FacebookSdk.sdkInitialize(android.content.Context, com.facebook.FacebookSdk$InitializeCallback):void");
    }

    public static synchronized boolean isInitialized() {
        boolean booleanValue;
        synchronized (FacebookSdk.class) {
            booleanValue = sdkInitialized.booleanValue();
        }
        return booleanValue;
    }

    public static Set<LoggingBehavior> getLoggingBehaviors() {
        Set<LoggingBehavior> unmodifiableSet;
        synchronized (loggingBehaviors) {
            unmodifiableSet = Collections.unmodifiableSet(new HashSet(loggingBehaviors));
        }
        return unmodifiableSet;
    }

    public static void addLoggingBehavior(LoggingBehavior loggingBehavior) {
        synchronized (loggingBehaviors) {
            loggingBehaviors.add(loggingBehavior);
            updateGraphDebugBehavior();
        }
    }

    public static void removeLoggingBehavior(LoggingBehavior loggingBehavior) {
        synchronized (loggingBehaviors) {
            loggingBehaviors.remove(loggingBehavior);
        }
    }

    public static void clearLoggingBehaviors() {
        synchronized (loggingBehaviors) {
            loggingBehaviors.clear();
        }
    }

    public static boolean isLoggingBehaviorEnabled(LoggingBehavior loggingBehavior) {
        synchronized (loggingBehaviors) {
            loggingBehavior = (!isDebugEnabled() || loggingBehaviors.contains(loggingBehavior) == null) ? null : true;
        }
        return loggingBehavior;
    }

    public static boolean isDebugEnabled() {
        return isDebugEnabled;
    }

    public static void setIsDebugEnabled(boolean z) {
        isDebugEnabled = z;
    }

    public static boolean isLegacyTokenUpgradeSupported() {
        return isLegacyTokenUpgradeSupported;
    }

    private static void updateGraphDebugBehavior() {
        if (loggingBehaviors.contains(LoggingBehavior.GRAPH_API_DEBUG_INFO) && !loggingBehaviors.contains(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            loggingBehaviors.add(LoggingBehavior.GRAPH_API_DEBUG_WARNING);
        }
    }

    public static void setLegacyTokenUpgradeSupported(boolean z) {
        isLegacyTokenUpgradeSupported = z;
    }

    public static Executor getExecutor() {
        synchronized (LOCK) {
            if (executor == null) {
                executor = AsyncTask.THREAD_POOL_EXECUTOR;
            }
        }
        return executor;
    }

    public static void setExecutor(Executor executor) {
        Validate.notNull(executor, "executor");
        synchronized (LOCK) {
            executor = executor;
        }
    }

    public static String getFacebookDomain() {
        return facebookDomain;
    }

    public static void setFacebookDomain(String str) {
        Log.w(TAG, "WARNING: Calling setFacebookDomain from non-DEBUG code.");
        facebookDomain = str;
    }

    public static Context getApplicationContext() {
        Validate.sdkInitialized();
        return applicationContext;
    }

    public static void setGraphApiVersion(String str) {
        if (!Utility.isNullOrEmpty(str) && !graphApiVersion.equals(str)) {
            graphApiVersion = str;
        }
    }

    public static String getGraphApiVersion() {
        return graphApiVersion;
    }

    public static void publishInstallAsync(Context context, final String str) {
        context = context.getApplicationContext();
        getExecutor().execute(new Runnable() {
            public final void run() {
                FacebookSdk.publishInstallAndWaitForResponse(context, str);
            }
        });
    }

    static com.facebook.GraphResponse publishInstallAndWaitForResponse(android.content.Context r14, java.lang.String r15) {
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
        if (r14 == 0) goto L_0x00b3;
    L_0x0003:
        if (r15 != 0) goto L_0x0007;
    L_0x0005:
        goto L_0x00b3;
    L_0x0007:
        r1 = com.facebook.internal.AttributionIdentifiers.getAttributionIdentifiers(r14);	 Catch:{ Exception -> 0x00bb }
        r2 = "com.facebook.sdk.attributionTracking";	 Catch:{ Exception -> 0x00bb }
        r3 = 0;	 Catch:{ Exception -> 0x00bb }
        r2 = r14.getSharedPreferences(r2, r3);	 Catch:{ Exception -> 0x00bb }
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00bb }
        r4.<init>();	 Catch:{ Exception -> 0x00bb }
        r4.append(r15);	 Catch:{ Exception -> 0x00bb }
        r5 = "ping";	 Catch:{ Exception -> 0x00bb }
        r4.append(r5);	 Catch:{ Exception -> 0x00bb }
        r4 = r4.toString();	 Catch:{ Exception -> 0x00bb }
        r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00bb }
        r5.<init>();	 Catch:{ Exception -> 0x00bb }
        r5.append(r15);	 Catch:{ Exception -> 0x00bb }
        r6 = "json";	 Catch:{ Exception -> 0x00bb }
        r5.append(r6);	 Catch:{ Exception -> 0x00bb }
        r5 = r5.toString();	 Catch:{ Exception -> 0x00bb }
        r6 = 0;	 Catch:{ Exception -> 0x00bb }
        r8 = r2.getLong(r4, r6);	 Catch:{ Exception -> 0x00bb }
        r10 = r2.getString(r5, r0);	 Catch:{ Exception -> 0x00bb }
        r11 = com.facebook.internal.AppEventsLoggerUtility.GraphAPIActivityType.MOBILE_INSTALL_EVENT;	 Catch:{ JSONException -> 0x00aa }
        r12 = com.facebook.appevents.AppEventsLogger.getAnonymousAppDeviceGUID(r14);	 Catch:{ JSONException -> 0x00aa }
        r13 = getLimitEventAndDataUsage(r14);	 Catch:{ JSONException -> 0x00aa }
        r14 = com.facebook.internal.AppEventsLoggerUtility.getJSONObjectForGraphAPICall(r11, r1, r12, r13, r14);	 Catch:{ JSONException -> 0x00aa }
        r1 = "%s/activities";	 Catch:{ Exception -> 0x00bb }
        r11 = 1;	 Catch:{ Exception -> 0x00bb }
        r12 = new java.lang.Object[r11];	 Catch:{ Exception -> 0x00bb }
        r12[r3] = r15;	 Catch:{ Exception -> 0x00bb }
        r15 = java.lang.String.format(r1, r12);	 Catch:{ Exception -> 0x00bb }
        r14 = com.facebook.GraphRequest.newPostRequest(r0, r15, r14, r0);	 Catch:{ Exception -> 0x00bb }
        r15 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1));
        if (r15 == 0) goto L_0x0086;
    L_0x005f:
        if (r10 == 0) goto L_0x0067;
    L_0x0061:
        r15 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0067 }
        r15.<init>(r10);	 Catch:{ JSONException -> 0x0067 }
        goto L_0x0068;
    L_0x0067:
        r15 = r0;
    L_0x0068:
        if (r15 != 0) goto L_0x0080;
    L_0x006a:
        r15 = "true";	 Catch:{ Exception -> 0x00bb }
        r1 = new com.facebook.GraphRequestBatch;	 Catch:{ Exception -> 0x00bb }
        r2 = new com.facebook.GraphRequest[r11];	 Catch:{ Exception -> 0x00bb }
        r2[r3] = r14;	 Catch:{ Exception -> 0x00bb }
        r1.<init>(r2);	 Catch:{ Exception -> 0x00bb }
        r14 = com.facebook.GraphResponse.createResponsesFromString(r15, r0, r1);	 Catch:{ Exception -> 0x00bb }
        r14 = r14.get(r3);	 Catch:{ Exception -> 0x00bb }
        r14 = (com.facebook.GraphResponse) r14;	 Catch:{ Exception -> 0x00bb }
        return r14;	 Catch:{ Exception -> 0x00bb }
    L_0x0080:
        r14 = new com.facebook.GraphResponse;	 Catch:{ Exception -> 0x00bb }
        r14.<init>(r0, r0, r0, r15);	 Catch:{ Exception -> 0x00bb }
        return r14;	 Catch:{ Exception -> 0x00bb }
    L_0x0086:
        r14 = r14.executeAndWait();	 Catch:{ Exception -> 0x00bb }
        r15 = r2.edit();	 Catch:{ Exception -> 0x00bb }
        r1 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00bb }
        r15.putLong(r4, r1);	 Catch:{ Exception -> 0x00bb }
        r1 = r14.getJSONObject();	 Catch:{ Exception -> 0x00bb }
        if (r1 == 0) goto L_0x00a6;	 Catch:{ Exception -> 0x00bb }
    L_0x009b:
        r1 = r14.getJSONObject();	 Catch:{ Exception -> 0x00bb }
        r1 = r1.toString();	 Catch:{ Exception -> 0x00bb }
        r15.putString(r5, r1);	 Catch:{ Exception -> 0x00bb }
    L_0x00a6:
        r15.apply();	 Catch:{ Exception -> 0x00bb }
        return r14;	 Catch:{ Exception -> 0x00bb }
    L_0x00aa:
        r14 = move-exception;	 Catch:{ Exception -> 0x00bb }
        r15 = new com.facebook.FacebookException;	 Catch:{ Exception -> 0x00bb }
        r1 = "An error occurred while publishing install.";	 Catch:{ Exception -> 0x00bb }
        r15.<init>(r1, r14);	 Catch:{ Exception -> 0x00bb }
        throw r15;	 Catch:{ Exception -> 0x00bb }
    L_0x00b3:
        r14 = new java.lang.IllegalArgumentException;	 Catch:{ Exception -> 0x00bb }
        r15 = "Both context and applicationId must be non-null";	 Catch:{ Exception -> 0x00bb }
        r14.<init>(r15);	 Catch:{ Exception -> 0x00bb }
        throw r14;	 Catch:{ Exception -> 0x00bb }
    L_0x00bb:
        r14 = move-exception;
        r15 = "Facebook-publish";
        com.facebook.internal.Utility.logd(r15, r14);
        r15 = new com.facebook.GraphResponse;
        r1 = new com.facebook.FacebookRequestError;
        r1.<init>(r0, r14);
        r15.<init>(r0, r0, r1);
        return r15;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.FacebookSdk.publishInstallAndWaitForResponse(android.content.Context, java.lang.String):com.facebook.GraphResponse");
    }

    public static boolean getLimitEventAndDataUsage(Context context) {
        Validate.sdkInitialized();
        return context.getSharedPreferences(AppEventsLogger.APP_EVENT_PREFERENCES, 0).getBoolean("limitEventUsage", false);
    }

    public static void setLimitEventAndDataUsage(Context context, boolean z) {
        context.getSharedPreferences(AppEventsLogger.APP_EVENT_PREFERENCES, 0).edit().putBoolean("limitEventUsage", z).apply();
    }

    public static long getOnProgressThreshold() {
        Validate.sdkInitialized();
        return onProgressThreshold.get();
    }

    public static void setOnProgressThreshold(long j) {
        onProgressThreshold.set(j);
    }

    static void loadDefaultsFromMetadata(android.content.Context r3) {
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
        if (r3 != 0) goto L_0x0003;
    L_0x0002:
        return;
    L_0x0003:
        r0 = r3.getPackageManager();	 Catch:{ NameNotFoundException -> 0x007c }
        r3 = r3.getPackageName();	 Catch:{ NameNotFoundException -> 0x007c }
        r1 = 128; // 0x80 float:1.794E-43 double:6.32E-322;	 Catch:{ NameNotFoundException -> 0x007c }
        r3 = r0.getApplicationInfo(r3, r1);	 Catch:{ NameNotFoundException -> 0x007c }
        if (r3 == 0) goto L_0x007b;
    L_0x0013:
        r0 = r3.metaData;
        if (r0 != 0) goto L_0x0018;
    L_0x0017:
        goto L_0x007b;
    L_0x0018:
        r0 = applicationId;
        if (r0 != 0) goto L_0x004f;
    L_0x001c:
        r0 = r3.metaData;
        r1 = "com.facebook.sdk.ApplicationId";
        r0 = r0.get(r1);
        r1 = r0 instanceof java.lang.String;
        if (r1 == 0) goto L_0x0043;
    L_0x0028:
        r0 = (java.lang.String) r0;
        r1 = java.util.Locale.ROOT;
        r1 = r0.toLowerCase(r1);
        r2 = "fb";
        r1 = r1.startsWith(r2);
        if (r1 == 0) goto L_0x0040;
    L_0x0038:
        r1 = 2;
        r0 = r0.substring(r1);
        applicationId = r0;
        goto L_0x004f;
    L_0x0040:
        applicationId = r0;
        goto L_0x004f;
    L_0x0043:
        r0 = r0 instanceof java.lang.Integer;
        if (r0 == 0) goto L_0x004f;
    L_0x0047:
        r3 = new com.facebook.FacebookException;
        r0 = "App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.";
        r3.<init>(r0);
        throw r3;
    L_0x004f:
        r0 = applicationName;
        if (r0 != 0) goto L_0x005d;
    L_0x0053:
        r0 = r3.metaData;
        r1 = "com.facebook.sdk.ApplicationName";
        r0 = r0.getString(r1);
        applicationName = r0;
    L_0x005d:
        r0 = appClientToken;
        if (r0 != 0) goto L_0x006b;
    L_0x0061:
        r0 = r3.metaData;
        r1 = "com.facebook.sdk.ClientToken";
        r0 = r0.getString(r1);
        appClientToken = r0;
    L_0x006b:
        r0 = webDialogTheme;
        if (r0 != 0) goto L_0x007a;
    L_0x006f:
        r3 = r3.metaData;
        r0 = "com.facebook.sdk.WebDialogTheme";
        r3 = r3.getInt(r0);
        setWebDialogTheme(r3);
    L_0x007a:
        return;
    L_0x007b:
        return;
    L_0x007c:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.FacebookSdk.loadDefaultsFromMetadata(android.content.Context):void");
    }

    public static java.lang.String getApplicationSignature(android.content.Context r3) {
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
        com.facebook.internal.Validate.sdkInitialized();
        r0 = 0;
        if (r3 != 0) goto L_0x0007;
    L_0x0006:
        return r0;
    L_0x0007:
        r1 = r3.getPackageManager();
        if (r1 != 0) goto L_0x000e;
    L_0x000d:
        return r0;
    L_0x000e:
        r3 = r3.getPackageName();
        r2 = 64;
        r3 = r1.getPackageInfo(r3, r2);	 Catch:{ NameNotFoundException -> 0x003f }
        r1 = r3.signatures;
        if (r1 == 0) goto L_0x003e;
    L_0x001c:
        r1 = r1.length;
        if (r1 != 0) goto L_0x0020;
    L_0x001f:
        goto L_0x003e;
    L_0x0020:
        r1 = "SHA-1";	 Catch:{ NoSuchAlgorithmException -> 0x003d }
        r1 = java.security.MessageDigest.getInstance(r1);	 Catch:{ NoSuchAlgorithmException -> 0x003d }
        r3 = r3.signatures;
        r0 = 0;
        r3 = r3[r0];
        r3 = r3.toByteArray();
        r1.update(r3);
        r3 = r1.digest();
        r0 = 9;
        r3 = android.util.Base64.encodeToString(r3, r0);
        return r3;
    L_0x003d:
        return r0;
    L_0x003e:
        return r0;
    L_0x003f:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.FacebookSdk.getApplicationSignature(android.content.Context):java.lang.String");
    }

    public static String getApplicationId() {
        Validate.sdkInitialized();
        return applicationId;
    }

    public static void setApplicationId(String str) {
        applicationId = str;
    }

    public static String getApplicationName() {
        Validate.sdkInitialized();
        return applicationName;
    }

    public static void setApplicationName(String str) {
        applicationName = str;
    }

    public static String getClientToken() {
        Validate.sdkInitialized();
        return appClientToken;
    }

    public static void setClientToken(String str) {
        appClientToken = str;
    }

    public static int getWebDialogTheme() {
        Validate.sdkInitialized();
        return webDialogTheme;
    }

    public static void setWebDialogTheme(int i) {
        if (i == 0) {
            i = DEFAULT_THEME;
        }
        webDialogTheme = i;
    }

    public static File getCacheDir() {
        Validate.sdkInitialized();
        return (File) cacheDir.getValue();
    }

    public static void setCacheDir(File file) {
        cacheDir = new LockOnGetVariable((Object) file);
    }

    public static int getCallbackRequestCodeOffset() {
        Validate.sdkInitialized();
        return callbackRequestCodeOffset;
    }

    public static boolean isFacebookRequestCode(int i) {
        return i >= callbackRequestCodeOffset && i < callbackRequestCodeOffset + 100;
    }
}
