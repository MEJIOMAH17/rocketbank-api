package com.crashlytics.android.core;

import android.arch.lifecycle.GeneratedAdapter;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.support.v4.util.ObjectsCompat;
import android.util.Log;
import com.appsflyer.AdvertisingIdClient;
import com.crashlytics.android.answers.EventLogger;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.ApiKey;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.ExecutorUtils;
import io.fabric.sdk.android.services.common.FirebaseInfo;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.DependsOn;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.PriorityCallable;
import io.fabric.sdk.android.services.concurrency.Task;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.FileStore;
import io.fabric.sdk.android.services.persistence.FileStoreImpl;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.Settings;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@DependsOn({GeneratedAdapter.class})
public class CrashlyticsCore extends Kit<Void> {
    private final ConcurrentHashMap<String, String> attributes;
    private CrashlyticsBackgroundWorker backgroundWorker;
    private CrashlyticsController controller;
    private NativeFileUtils crashMarker$4a109614;
    private float delay;
    private boolean disabled;
    private HttpRequestFactory httpRequestFactory;
    private NativeFileUtils initializationMarker$4a109614;
    private OnLoadCompleteListener listener$3c5e3072;
    private final GeneratedAdapter pinningInfo$6c5cb54d;
    private final long startTime;
    private String userEmail;
    private String userId;
    private String userName;

    /* renamed from: com.crashlytics.android.core.CrashlyticsCore$2 */
    class C03332 implements Callable<Void> {
        C03332() {
        }

        public final /* bridge */ /* synthetic */ Object call() throws Exception {
            CrashlyticsCore.this.initializationMarker$4a109614.create();
            Fabric.getLogger().mo768d("CrashlyticsCore", "Initialization marker file created.");
            return null;
        }
    }

    /* renamed from: com.crashlytics.android.core.CrashlyticsCore$3 */
    class C03343 implements Callable<Boolean> {
        C03343() {
        }

        private Boolean call() throws Exception {
            try {
                boolean remove = CrashlyticsCore.this.initializationMarker$4a109614.remove();
                Fabric.getLogger().mo768d("CrashlyticsCore", "Initialization marker file removed: ".concat(String.valueOf(remove)));
                return Boolean.valueOf(remove);
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("CrashlyticsCore", "Problem encountered deleting Crashlytics initialization marker.", e);
                return Boolean.FALSE;
            }
        }
    }

    static final class CrashMarkerCheck implements Callable<Boolean> {
        private final NativeFileUtils crashMarker$4a109614;

        public CrashMarkerCheck(NativeFileUtils nativeFileUtils) {
            this.crashMarker$4a109614 = nativeFileUtils;
        }

        public final /* bridge */ /* synthetic */ Object call() throws Exception {
            if (!this.crashMarker$4a109614.isPresent()) {
                return Boolean.FALSE;
            }
            Fabric.getLogger().mo768d("CrashlyticsCore", "Found previous crash marker.");
            this.crashMarker$4a109614.remove();
            return Boolean.TRUE;
        }
    }

    static final class NoOpListener implements OnLoadCompleteListener {
        private NoOpListener() {
        }
    }

    /* renamed from: com.crashlytics.android.core.CrashlyticsCore$1 */
    class C14551 extends PriorityCallable<Void> {
        C14551() {
        }

        public final Priority getPriority() {
            return Priority.IMMEDIATE;
        }

        public final /* bridge */ /* synthetic */ Object call() throws Exception {
            return CrashlyticsCore.this.doInBackground();
        }
    }

    public final String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    public final String getVersion() {
        return "2.6.1.23";
    }

    public CrashlyticsCore() {
        this((byte) 0);
    }

    private CrashlyticsCore(byte b) {
        this(ExecutorUtils.buildSingleThreadExecutorService("Crashlytics Exception Handler"));
    }

    private CrashlyticsCore(ExecutorService executorService) {
        this.userId = null;
        this.userEmail = null;
        this.userName = null;
        this.delay = 1.0f;
        this.listener$3c5e3072 = new NoOpListener();
        this.pinningInfo$6c5cb54d = null;
        this.disabled = false;
        this.backgroundWorker = new CrashlyticsBackgroundWorker(executorService);
        this.attributes = new ConcurrentHashMap();
        this.startTime = System.currentTimeMillis();
    }

    protected final boolean onPreExecute() {
        return onPreExecute(super.getContext());
    }

    private boolean onPreExecute(Context context) {
        Kit kit = this;
        Context context2 = context;
        String value = new ApiKey().getValue(context2);
        if (value == null) {
            return false;
        }
        boolean z;
        String resolveBuildId = CommonUtils.resolveBuildId(context);
        if (!CommonUtils.getBooleanResourceValue(context2, "com.crashlytics.RequireBuildId", true)) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Configured not to require a build ID.");
        } else if (CommonUtils.isNullOrEmpty(resolveBuildId)) {
            Log.e("CrashlyticsCore", ".");
            Log.e("CrashlyticsCore", ".     |  | ");
            Log.e("CrashlyticsCore", ".     |  |");
            Log.e("CrashlyticsCore", ".     |  |");
            Log.e("CrashlyticsCore", ".   \\ |  | /");
            Log.e("CrashlyticsCore", ".    \\    /");
            Log.e("CrashlyticsCore", ".     \\  /");
            Log.e("CrashlyticsCore", ".      \\/");
            Log.e("CrashlyticsCore", ".");
            Log.e("CrashlyticsCore", "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.");
            Log.e("CrashlyticsCore", ".");
            Log.e("CrashlyticsCore", ".      /\\");
            Log.e("CrashlyticsCore", ".     /  \\");
            Log.e("CrashlyticsCore", ".    /    \\");
            Log.e("CrashlyticsCore", ".   / |  | \\");
            Log.e("CrashlyticsCore", ".     |  |");
            Log.e("CrashlyticsCore", ".     |  |");
            Log.e("CrashlyticsCore", ".     |  |");
            Log.e("CrashlyticsCore", ".");
            z = false;
            if (z) {
                throw new UnmetDependencyException("This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.");
            }
            try {
                Fabric.getLogger().mo772i("CrashlyticsCore", "Initializing Crashlytics 2.6.1.23");
                FileStore fileStoreImpl = new FileStoreImpl(kit);
                kit.crashMarker$4a109614 = new NativeFileUtils("crash_marker", fileStoreImpl);
                kit.initializationMarker$4a109614 = new NativeFileUtils("initialization_marker", fileStoreImpl);
                PreferenceManager preferenceManager = new PreferenceManager(new PreferenceStoreImpl(getContext(), "com.crashlytics.android.core.CrashlyticsCore"), kit);
                kit.httpRequestFactory = new DefaultHttpRequestFactory(Fabric.getLogger());
                kit.httpRequestFactory.setPinningInfoProvider$4e61dc68$6195d672();
                IdManager idManager = getIdManager();
                String packageName = context.getPackageName();
                String installerPackageName = idManager.getInstallerPackageName();
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
                AppData appData = new AppData(value, resolveBuildId, installerPackageName, packageName, Integer.toString(packageInfo.versionCode), packageInfo.versionName != null ? IdManager.DEFAULT_VERSION_NAME : packageInfo.versionName);
                ManifestUnityVersionProvider manifestUnityVersionProvider = new ManifestUnityVersionProvider(context2, appData.packageName);
                AppMeasurementEventListenerRegistrar instanceFrom = DefaultAppMeasurementEventListenerRegistrar.instanceFrom(this);
                EventLogger eventLogger = ObjectsCompat.getEventLogger(context);
                StringBuilder stringBuilder = new StringBuilder("Installer package name is: ");
                stringBuilder.append(appData.installerPackageName);
                Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder.toString());
                CrashlyticsController crashlyticsController = r1;
                CrashlyticsController crashlyticsController2 = new CrashlyticsController(kit, kit.backgroundWorker, kit.httpRequestFactory, idManager, preferenceManager, fileStoreImpl, appData, manifestUnityVersionProvider, instanceFrom, eventLogger);
                kit.controller = crashlyticsController;
                z = kit.initializationMarker$4a109614.isPresent();
                Boolean.TRUE.equals((Boolean) kit.backgroundWorker.submitAndWait(new CrashMarkerCheck(kit.crashMarker$4a109614)));
                kit.controller.enableExceptionHandling(Thread.getDefaultUncaughtExceptionHandler(), new FirebaseInfo().isFirebaseCrashlyticsEnabled(context2));
                if (z || !CommonUtils.canTryConnection(context)) {
                    Fabric.getLogger().mo768d("CrashlyticsCore", "Exception handling initialization successful");
                    return true;
                }
                Fabric.getLogger().mo768d("CrashlyticsCore", "Crashlytics did not finish previous background initialization. Initializing synchronously.");
                finishInitSynchronously();
                return false;
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("CrashlyticsCore", "Crashlytics was not started due to an exception during initialization", e);
                kit.controller = null;
                return false;
            }
        }
        z = true;
        if (z) {
            Fabric.getLogger().mo772i("CrashlyticsCore", "Initializing Crashlytics 2.6.1.23");
            FileStore fileStoreImpl2 = new FileStoreImpl(kit);
            kit.crashMarker$4a109614 = new NativeFileUtils("crash_marker", fileStoreImpl2);
            kit.initializationMarker$4a109614 = new NativeFileUtils("initialization_marker", fileStoreImpl2);
            PreferenceManager preferenceManager2 = new PreferenceManager(new PreferenceStoreImpl(getContext(), "com.crashlytics.android.core.CrashlyticsCore"), kit);
            kit.httpRequestFactory = new DefaultHttpRequestFactory(Fabric.getLogger());
            kit.httpRequestFactory.setPinningInfoProvider$4e61dc68$6195d672();
            IdManager idManager2 = getIdManager();
            String packageName2 = context.getPackageName();
            String installerPackageName2 = idManager2.getInstallerPackageName();
            PackageInfo packageInfo2 = context.getPackageManager().getPackageInfo(packageName2, 0);
            if (packageInfo2.versionName != null) {
            }
            AppData appData2 = new AppData(value, resolveBuildId, installerPackageName2, packageName2, Integer.toString(packageInfo2.versionCode), packageInfo2.versionName != null ? IdManager.DEFAULT_VERSION_NAME : packageInfo2.versionName);
            ManifestUnityVersionProvider manifestUnityVersionProvider2 = new ManifestUnityVersionProvider(context2, appData2.packageName);
            AppMeasurementEventListenerRegistrar instanceFrom2 = DefaultAppMeasurementEventListenerRegistrar.instanceFrom(this);
            EventLogger eventLogger2 = ObjectsCompat.getEventLogger(context);
            StringBuilder stringBuilder2 = new StringBuilder("Installer package name is: ");
            stringBuilder2.append(appData2.installerPackageName);
            Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder2.toString());
            CrashlyticsController crashlyticsController3 = crashlyticsController2;
            CrashlyticsController crashlyticsController22 = new CrashlyticsController(kit, kit.backgroundWorker, kit.httpRequestFactory, idManager2, preferenceManager2, fileStoreImpl2, appData2, manifestUnityVersionProvider2, instanceFrom2, eventLogger2);
            kit.controller = crashlyticsController3;
            z = kit.initializationMarker$4a109614.isPresent();
            Boolean.TRUE.equals((Boolean) kit.backgroundWorker.submitAndWait(new CrashMarkerCheck(kit.crashMarker$4a109614)));
            kit.controller.enableExceptionHandling(Thread.getDefaultUncaughtExceptionHandler(), new FirebaseInfo().isFirebaseCrashlyticsEnabled(context2));
            if (z) {
            }
            Fabric.getLogger().mo768d("CrashlyticsCore", "Exception handling initialization successful");
            return true;
        }
        throw new UnmetDependencyException("This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.");
    }

    public final void logException(Throwable th) {
        if (!ensureFabricWithCalled("prior to logging exceptions.")) {
            return;
        }
        if (th == null) {
            Fabric.getLogger().log(5, "CrashlyticsCore", "Crashlytics is ignoring a request to log a null exception.");
        } else {
            this.controller.writeNonFatalException(Thread.currentThread(), th);
        }
    }

    public final void setUserIdentifier(String str) {
        if (ensureFabricWithCalled("prior to setting user data.")) {
            if (str != null) {
                str = str.trim();
                if (str.length() > 1024) {
                    str = str.substring(0, 1024);
                }
            }
            this.userId = str;
            this.controller.cacheUserData$14e1ec6d(this.userId, this.userName);
        }
    }

    public final void setUserName(String str) {
        if (ensureFabricWithCalled("prior to setting user data.")) {
            if (str != null) {
                str = str.trim();
                if (str.length() > 1024) {
                    str = str.substring(0, 1024);
                }
            }
            this.userName = str;
            this.controller.cacheUserData$14e1ec6d(this.userId, this.userName);
        }
    }

    public final void setString(String str, String str2) {
        if (!ensureFabricWithCalled("prior to setting keys.")) {
            return;
        }
        if (str == null) {
            str = getContext();
            if (str == null || CommonUtils.isAppDebuggable(str) == null) {
                Fabric.getLogger().mo771e("CrashlyticsCore", "Attempting to set custom attribute with null key, ignoring.", null);
                return;
            }
            throw new IllegalArgumentException("Custom attribute key must not be null.");
        }
        if (str != null) {
            str = str.trim();
            if (str.length() > 1024) {
                str = str.substring(0, 1024);
            }
        }
        if (this.attributes.size() < 64 || this.attributes.containsKey(str)) {
            if (str2 == null) {
                str2 = "";
            } else if (str2 != null) {
                str2 = str2.trim();
                if (str2.length() > 1024) {
                    str2 = str2.substring(0, 1024);
                }
            }
            this.attributes.put(str, str2);
            this.controller.cacheKeyData(this.attributes);
            return;
        }
        Fabric.getLogger().mo768d("CrashlyticsCore", "Exceeded maximum number of custom attributes (64)");
    }

    final Map<String, String> getAttributes() {
        return Collections.unmodifiableMap(this.attributes);
    }

    final String getUserIdentifier() {
        return getIdManager().canCollectUserIds() ? this.userId : null;
    }

    final String getUserEmail() {
        getIdManager().canCollectUserIds();
        return null;
    }

    final String getUserName() {
        return getIdManager().canCollectUserIds() ? this.userName : null;
    }

    private void finishInitSynchronously() {
        Callable c14551 = new C14551();
        for (Task addDependency : getDependencies()) {
            c14551.addDependency(addDependency);
        }
        Future submit = getFabric().getExecutorService().submit(c14551);
        Fabric.getLogger().mo768d("CrashlyticsCore", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4, TimeUnit.SECONDS);
        } catch (Throwable e) {
            Fabric.getLogger().mo771e("CrashlyticsCore", "Crashlytics was interrupted during initialization.", e);
        } catch (Throwable e2) {
            Fabric.getLogger().mo771e("CrashlyticsCore", "Problem encountered during Crashlytics initialization.", e2);
        } catch (Throwable e22) {
            Fabric.getLogger().mo771e("CrashlyticsCore", "Crashlytics timed out during initialization.", e22);
        }
    }

    final void createCrashMarker() {
        this.crashMarker$4a109614.create();
    }

    protected final Void doInBackground() {
        this.backgroundWorker.submitAndWait(new C03332());
        this.controller.cleanInvalidTempFiles();
        try {
            this.controller.registerDevicePowerStateListener();
            AdvertisingIdClient awaitSettingsData$694ccaae = Settings.getInstance().awaitSettingsData$694ccaae();
            if (awaitSettingsData$694ccaae == null) {
                Fabric.getLogger().mo776w("CrashlyticsCore", "Received null settings, skipping report submission!");
                return null;
            }
            this.controller.registerAnalyticsEventListener$73e477ba(awaitSettingsData$694ccaae);
            if (awaitSettingsData$694ccaae.featuresData$60521ed4.collectReports) {
                if (!this.controller.finalizeSessions$34bad1a2(awaitSettingsData$694ccaae.sessionData$32e49775)) {
                    Fabric.getLogger().mo768d("CrashlyticsCore", "Could not finalize previous sessions.");
                }
                this.controller.submitAllReports$77fccc4(this.delay, awaitSettingsData$694ccaae);
                this.backgroundWorker.submit(new C03343());
                return null;
            }
            Fabric.getLogger().mo768d("CrashlyticsCore", "Collection of crash reports disabled in Crashlytics settings.");
            this.backgroundWorker.submit(new C03343());
            return null;
        } catch (Throwable e) {
            Fabric.getLogger().mo771e("CrashlyticsCore", "Crashlytics encountered a problem during asynchronous initialization.", e);
        } finally {
            this.backgroundWorker.submit(new C03343());
        }
    }

    public final void log(String str) {
        String str2 = "CrashlyticsCore";
        if (ensureFabricWithCalled("prior to logging messages.")) {
            long currentTimeMillis = System.currentTimeMillis() - this.startTime;
            CrashlyticsController crashlyticsController = this.controller;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(CommonUtils.logPriorityToString(3));
            stringBuilder.append("/");
            stringBuilder.append(str2);
            stringBuilder.append(" ");
            stringBuilder.append(str);
            crashlyticsController.writeToLog(currentTimeMillis, stringBuilder.toString());
        }
    }

    private static boolean ensureFabricWithCalled(String str) {
        CrashlyticsCore crashlyticsCore = (CrashlyticsCore) Fabric.getKit(CrashlyticsCore.class);
        if (crashlyticsCore != null) {
            if (crashlyticsCore.controller != null) {
                return true;
            }
        }
        Fabric.getLogger().mo771e("CrashlyticsCore", "Crashlytics must be initialized by calling Fabric.with(Context) ".concat(String.valueOf(str)), null);
        return null;
    }
}
