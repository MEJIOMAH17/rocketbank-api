package com.crashlytics.android.core;

import android.app.Activity;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.android.databinding.library.C0291R;
import com.android.databinding.library.baseAdapters.C0292R;
import com.android.databinding.library.baseAdapters.C0292R.id;
import com.appsflyer.AdvertisingIdClient;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.EventLogger;
import com.crashlytics.android.core.LogFileManager.DirectoryProvider;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.Crash.FatalException;
import io.fabric.sdk.android.services.common.Crash.LoggedException;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import io.fabric.sdk.android.services.persistence.FileStore;
import io.fabric.sdk.android.services.settings.Settings;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

class CrashlyticsController {
    private static final String[] INITIAL_SESSION_PART_TAGS = new String[]{"SessionUser", "SessionApp", "SessionOS", "SessionDevice"};
    static final Comparator<File> LARGEST_FILE_NAME_FIRST = new C03274();
    private static final Map<String, String> SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", AppEventsConstants.EVENT_PARAM_VALUE_YES);
    static final FilenameFilter SESSION_BEGIN_FILE_FILTER = new FileNameContainsFilter("BeginSession") {
        public final boolean accept(File file, String str) {
            return (super.accept(file, str) == null || str.endsWith(".cls") == null) ? null : true;
        }
    };
    static final FileFilter SESSION_DIRECTORY_FILTER = new C03263();
    static final FilenameFilter SESSION_FILE_FILTER = new C03252();
    private static final Pattern SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    static final Comparator<File> SMALLEST_FILE_NAME_FIRST = new C03285();
    private final AppData appData;
    private final AppMeasurementEventListenerRegistrar appMeasurementEventListenerRegistrar;
    private final CrashlyticsBackgroundWorker backgroundWorker;
    private CrashlyticsUncaughtExceptionHandler crashHandler;
    private final CrashlyticsCore crashlyticsCore;
    private final DevicePowerStateListener devicePowerStateListener;
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final FileStore fileStore;
    private final EventLogger firebaseAnalyticsLogger;
    private final HandlingExceptionCheck handlingExceptionCheck;
    private final HttpRequestFactory httpRequestFactory;
    private final IdManager idManager;
    private final LogFileDirectoryProvider logFileDirectoryProvider;
    private final LogFileManager logFileManager;
    private final PreferenceManager preferenceManager;
    private final ReportFilesProvider reportFilesProvider;
    private final StackTraceTrimmingStrategy stackTraceTrimmingStrategy;
    private final String unityVersion;

    /* renamed from: com.crashlytics.android.core.CrashlyticsController$2 */
    static class C03252 implements FilenameFilter {
        C03252() {
        }

        public final boolean accept(File file, String str) {
            return (str.length() != 39 || str.endsWith(".cls") == null) ? null : true;
        }
    }

    /* renamed from: com.crashlytics.android.core.CrashlyticsController$3 */
    static class C03263 implements FileFilter {
        C03263() {
        }

        public final boolean accept(File file) {
            return (file.isDirectory() && file.getName().length() == 35) ? true : null;
        }
    }

    /* renamed from: com.crashlytics.android.core.CrashlyticsController$4 */
    static class C03274 implements Comparator<File> {
        C03274() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            return ((File) obj2).getName().compareTo(((File) obj).getName());
        }
    }

    /* renamed from: com.crashlytics.android.core.CrashlyticsController$5 */
    static class C03285 implements Comparator<File> {
        C03285() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            return ((File) obj).getName().compareTo(((File) obj2).getName());
        }
    }

    static class AnySessionPartFileFilter implements FilenameFilter {
        private AnySessionPartFileFilter() {
        }

        public final boolean accept(File file, String str) {
            return (CrashlyticsController.SESSION_FILE_FILTER.accept(file, str) != null || CrashlyticsController.SESSION_FILE_PATTERN.matcher(str).matches() == null) ? null : true;
        }
    }

    interface CodedOutputStreamWriteAction {
        void writeTo(CodedOutputStream codedOutputStream) throws Exception;
    }

    static class FileNameContainsFilter implements FilenameFilter {
        private final String string;

        public FileNameContainsFilter(String str) {
            this.string = str;
        }

        public boolean accept(File file, String str) {
            return (str.contains(this.string) == null || str.endsWith(".cls_temp") != null) ? null : true;
        }
    }

    interface FileOutputStreamWriteAction {
        void writeTo(FileOutputStream fileOutputStream) throws Exception;
    }

    static class InvalidPartFileFilter implements FilenameFilter {
        InvalidPartFileFilter() {
        }

        public final boolean accept(File file, String str) {
            if (ClsFileOutputStream.TEMP_FILENAME_FILTER.accept(file, str) == null) {
                if (str.contains("SessionMissingBinaryImages") == null) {
                    return null;
                }
            }
            return true;
        }
    }

    static final class SendReportRunnable implements Runnable {
        private final Context context;
        private final Report report;
        private final ReportUploader reportUploader;

        public SendReportRunnable(Context context, Report report, ReportUploader reportUploader) {
            this.context = context;
            this.report = report;
            this.reportUploader = reportUploader;
        }

        public final void run() {
            if (CommonUtils.canTryConnection(this.context)) {
                Fabric.getLogger().mo768d("CrashlyticsCore", "Attempting to send crash report at time of crash...");
                this.reportUploader.forceUpload(this.report);
            }
        }
    }

    static class SessionPartFileFilter implements FilenameFilter {
        private final String sessionId;

        public SessionPartFileFilter(String str) {
            this.sessionId = str;
        }

        public final boolean accept(File file, String str) {
            file = new StringBuilder();
            file.append(this.sessionId);
            file.append(".cls");
            if (str.equals(file.toString()) == null && str.contains(this.sessionId) != null && str.endsWith(".cls_temp") == null) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.crashlytics.android.core.CrashlyticsController$6 */
    class C09896 implements CrashListener {
        C09896() {
        }

        public final void onUncaughtException(SettingsDataProvider settingsDataProvider, Thread thread, Throwable th, boolean z) {
            CrashlyticsController.this.handleUncaughtException(settingsDataProvider, thread, th, z);
        }
    }

    static final class DefaultSettingsDataProvider implements SettingsDataProvider {
        private DefaultSettingsDataProvider() {
        }

        public final AdvertisingIdClient getSettingsData$694ccaae() {
            return Settings.getInstance().awaitSettingsData$694ccaae();
        }
    }

    static final class LogFileDirectoryProvider implements DirectoryProvider {
        private final FileStore rootFileStore;

        public LogFileDirectoryProvider(FileStore fileStore) {
            this.rootFileStore = fileStore;
        }

        public final File getLogFileDir() {
            File file = new File(this.rootFileStore.getFilesDir(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    static final class PrivacyDialogCheck implements AlwaysSendCallback, SendCheck {
        private final Kit kit;
        private final PreferenceManager preferenceManager;
        private final C0292R promptData$73c74dcd;

        public PrivacyDialogCheck(Kit kit, PreferenceManager preferenceManager, C0292R c0292r) {
            this.kit = kit;
            this.preferenceManager = preferenceManager;
            this.promptData$73c74dcd = c0292r;
        }

        public final boolean canSendReports() {
            Activity currentActivity = this.kit.getFabric().getCurrentActivity();
            if (currentActivity != null) {
                if (!currentActivity.isFinishing()) {
                    final CrashPromptDialog create$70c3dcb6 = CrashPromptDialog.create$70c3dcb6(currentActivity, this.promptData$73c74dcd, this);
                    currentActivity.runOnUiThread(new Runnable() {
                        public final void run() {
                            create$70c3dcb6.show();
                        }
                    });
                    Fabric.getLogger().mo768d("CrashlyticsCore", "Waiting for user opt-in.");
                    create$70c3dcb6.await();
                    return create$70c3dcb6.getOptIn();
                }
            }
            return true;
        }

        public final void sendUserReportsWithoutPrompting$1385ff() {
            this.preferenceManager.setShouldAlwaysSendReports$1385ff();
        }
    }

    final class ReportUploaderFilesProvider implements ReportFilesProvider {
        private ReportUploaderFilesProvider() {
        }

        public final File[] getCompleteSessionFiles() {
            return CrashlyticsController.this.listCompleteSessionFiles();
        }

        public final File[] getInvalidSessionFiles() {
            return CrashlyticsController.this.getInvalidFilesDir().listFiles();
        }

        public final File[] getNativeReportFiles() {
            return CrashlyticsController.this.listNativeSessionFileDirectories();
        }
    }

    final class ReportUploaderHandlingExceptionCheck implements HandlingExceptionCheck {
        private ReportUploaderHandlingExceptionCheck() {
        }

        public final boolean isHandlingException() {
            return CrashlyticsController.this.isHandlingException();
        }
    }

    CrashlyticsController(CrashlyticsCore crashlyticsCore, CrashlyticsBackgroundWorker crashlyticsBackgroundWorker, HttpRequestFactory httpRequestFactory, IdManager idManager, PreferenceManager preferenceManager, FileStore fileStore, AppData appData, UnityVersionProvider unityVersionProvider, AppMeasurementEventListenerRegistrar appMeasurementEventListenerRegistrar, EventLogger eventLogger) {
        this.crashlyticsCore = crashlyticsCore;
        this.backgroundWorker = crashlyticsBackgroundWorker;
        this.httpRequestFactory = httpRequestFactory;
        this.idManager = idManager;
        this.preferenceManager = preferenceManager;
        this.fileStore = fileStore;
        this.appData = appData;
        this.unityVersion = unityVersionProvider.getUnityVersion();
        this.appMeasurementEventListenerRegistrar = appMeasurementEventListenerRegistrar;
        this.firebaseAnalyticsLogger = eventLogger;
        crashlyticsCore = crashlyticsCore.getContext();
        this.logFileDirectoryProvider = new LogFileDirectoryProvider(fileStore);
        this.logFileManager = new LogFileManager(crashlyticsCore, this.logFileDirectoryProvider);
        this.reportFilesProvider = new ReportUploaderFilesProvider();
        this.handlingExceptionCheck = new ReportUploaderHandlingExceptionCheck();
        this.devicePowerStateListener = new DevicePowerStateListener(crashlyticsCore);
        this.stackTraceTrimmingStrategy = new MiddleOutFallbackStrategy(new StackTraceTrimmingStrategy[]{new RemoveRepeatsStrategy(10)});
    }

    final synchronized void handleUncaughtException(SettingsDataProvider settingsDataProvider, Thread thread, Throwable th, boolean z) {
        StringBuilder stringBuilder = new StringBuilder("Crashlytics is handling uncaught exception \"");
        stringBuilder.append(th);
        stringBuilder.append("\" from thread ");
        stringBuilder.append(thread.getName());
        Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder.toString());
        this.devicePowerStateListener.dispose();
        final Date date = new Date();
        final Thread thread2 = thread;
        final Throwable th2 = th;
        final SettingsDataProvider settingsDataProvider2 = settingsDataProvider;
        final boolean z2 = z;
        this.backgroundWorker.submitAndWait(new Callable<Void>() {
            public final /* bridge */ /* synthetic */ Object call() throws Exception {
                id idVar;
                C0291R.id idVar2;
                Object obj;
                CrashlyticsController.this.crashlyticsCore.createCrashMarker();
                CrashlyticsController.access$500(CrashlyticsController.this, date, thread2, th2);
                AdvertisingIdClient settingsData$694ccaae = settingsDataProvider2.getSettingsData$694ccaae();
                if (settingsData$694ccaae != null) {
                    idVar = settingsData$694ccaae.sessionData$32e49775;
                    idVar2 = settingsData$694ccaae.featuresData$60521ed4;
                } else {
                    idVar = null;
                    idVar2 = idVar;
                }
                if (idVar2 != null) {
                    if (!idVar2.firebaseCrashlyticsEnabled) {
                        obj = null;
                        if (obj != null || z2) {
                            CrashlyticsController.access$600(CrashlyticsController.this, date.getTime());
                        }
                        CrashlyticsController.this.doCloseSessions$34bad1a6(idVar);
                        CrashlyticsController.access$700(CrashlyticsController.this);
                        if (idVar != null) {
                            CrashlyticsController.this.trimSessionFiles(idVar.maxCompleteSessionsCount);
                        }
                        if (!CrashlyticsController.access$800$336d2230(CrashlyticsController.this, settingsData$694ccaae)) {
                            CrashlyticsController.access$900$336d222c(CrashlyticsController.this, settingsData$694ccaae);
                        }
                        return null;
                    }
                }
                obj = 1;
                CrashlyticsController.access$600(CrashlyticsController.this, date.getTime());
                CrashlyticsController.this.doCloseSessions$34bad1a6(idVar);
                CrashlyticsController.access$700(CrashlyticsController.this);
                if (idVar != null) {
                    CrashlyticsController.this.trimSessionFiles(idVar.maxCompleteSessionsCount);
                }
                if (CrashlyticsController.access$800$336d2230(CrashlyticsController.this, settingsData$694ccaae)) {
                    CrashlyticsController.access$900$336d222c(CrashlyticsController.this, settingsData$694ccaae);
                }
                return null;
            }
        });
    }

    final void submitAllReports$77fccc4(float f, AdvertisingIdClient advertisingIdClient) {
        if (advertisingIdClient == null) {
            Fabric.getLogger().mo776w("CrashlyticsCore", "Could not send reports. Settings are not available.");
            return;
        }
        CreateReportSpiCall createReportSpiCall = getCreateReportSpiCall(advertisingIdClient.appData$13257fb6.reportsUrl, advertisingIdClient.appData$13257fb6.ndkReportsUrl);
        Object obj = (advertisingIdClient == null || !advertisingIdClient.featuresData$60521ed4.promptEnabled || this.preferenceManager.shouldAlwaysSendReports()) ? null : 1;
        new ReportUploader(this.appData.apiKey, createReportSpiCall, this.reportFilesProvider, this.handlingExceptionCheck).uploadReports(f, obj != null ? new PrivacyDialogCheck(this.crashlyticsCore, this.preferenceManager, advertisingIdClient.promptData$73c74dcd) : new AlwaysSendCheck());
    }

    final void writeToLog(final long j, final String str) {
        this.backgroundWorker.submit(new Callable<Void>() {
            public final /* bridge */ /* synthetic */ Object call() throws Exception {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.logFileManager.writeToLog(j, str);
                }
                return null;
            }
        });
    }

    final void writeNonFatalException(final Thread thread, final Throwable th) {
        final Date date = new Date();
        this.backgroundWorker.submit(new Runnable() {
            public final void run() {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.access$1100(CrashlyticsController.this, date, thread, th);
                }
            }
        });
    }

    final void cacheUserData$14e1ec6d(final String str, final String str2) {
        this.backgroundWorker.submit(new Callable<Void>() {
            final /* synthetic */ String val$userEmail = null;

            public final /* bridge */ /* synthetic */ Object call() throws Exception {
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeUserData(CrashlyticsController.this.getCurrentSessionId(), new UserMetaData(str, str2, null));
                return null;
            }
        });
    }

    final void cacheKeyData(final Map<String, String> map) {
        this.backgroundWorker.submit(new Callable<Void>() {
            public final /* bridge */ /* synthetic */ Object call() throws Exception {
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeKeyData(CrashlyticsController.this.getCurrentSessionId(), map);
                return null;
            }
        });
    }

    static String getSessionIdFromSessionFile(File file) {
        return file.getName().substring(0, 35);
    }

    final boolean finalizeSessions$34bad1a2(final id idVar) {
        return ((Boolean) this.backgroundWorker.submitAndWait(new Callable<Boolean>() {
            public final /* bridge */ /* synthetic */ Object call() throws Exception {
                if (CrashlyticsController.this.isHandlingException()) {
                    Fabric.getLogger().mo768d("CrashlyticsCore", "Skipping session finalization because a crash has already occurred.");
                    return Boolean.FALSE;
                }
                Fabric.getLogger().mo768d("CrashlyticsCore", "Finalizing previously open sessions.");
                CrashlyticsController.this.doCloseSessions$629eb046(idVar, true);
                Fabric.getLogger().mo768d("CrashlyticsCore", "Closed all previously open sessions");
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    final void doCloseSessions$34bad1a6(id idVar) throws Exception {
        doCloseSessions$629eb046(idVar, false);
    }

    private void doCloseSessions$629eb046(id idVar, boolean z) throws Exception {
        trimOpenSessions(z + 8);
        File[] listFiles = this.fileStore.getFilesDir().listFiles(SESSION_BEGIN_FILE_FILTER);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        Arrays.sort(listFiles, LARGEST_FILE_NAME_FIRST);
        if (listFiles.length <= z) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "No open sessions to be closed.");
            return;
        }
        String substring = listFiles[z].getName().substring(0, 35);
        final UserMetaData userMetaData = getUserMetaData(substring);
        writeSessionPartFile(substring, "SessionUser", new CodedOutputStreamWriteAction() {
            public final void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeSessionUser(codedOutputStream, userMetaData.id, userMetaData.name, userMetaData.email);
            }
        });
        if (idVar == null) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Unable to close session. Settings are not loaded.");
        } else {
            closeOpenSessions(listFiles, z, idVar.maxCustomExceptionEvents);
        }
    }

    private void closeOpenSessions(File[] fileArr, int i, int i2) {
        Fabric.getLogger().mo768d("CrashlyticsCore", "Closing open sessions.");
        while (i < fileArr.length) {
            File file = fileArr[i];
            String substring = file.getName().substring(0, 35);
            Fabric.getLogger().mo768d("CrashlyticsCore", "Closing session: ".concat(String.valueOf(substring)));
            writeSessionPartsToSessionFile(file, substring, i2);
            i++;
        }
    }

    final File[] listCompleteSessionFiles() {
        List linkedList = new LinkedList();
        Object[] listFiles = new File(this.fileStore.getFilesDir(), "fatal-sessions").listFiles(SESSION_FILE_FILTER);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        Collections.addAll(linkedList, listFiles);
        listFiles = new File(this.fileStore.getFilesDir(), "nonfatal-sessions").listFiles(SESSION_FILE_FILTER);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        Collections.addAll(linkedList, listFiles);
        listFiles = this.fileStore.getFilesDir().listFiles(SESSION_FILE_FILTER);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        Collections.addAll(linkedList, listFiles);
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    final File[] listNativeSessionFileDirectories() {
        File[] listFiles = this.fileStore.getFilesDir().listFiles(SESSION_DIRECTORY_FILTER);
        return listFiles == null ? new File[0] : listFiles;
    }

    private void trimOpenSessions(int i) {
        Set hashSet = new HashSet();
        Object[] listFiles = this.fileStore.getFilesDir().listFiles(SESSION_BEGIN_FILE_FILTER);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        Arrays.sort(listFiles, LARGEST_FILE_NAME_FIRST);
        i = Math.min(i, listFiles.length);
        for (int i2 = 0; i2 < i; i2++) {
            hashSet.add(listFiles[i2].getName().substring(0, 35));
        }
        this.logFileManager.discardOldLogFiles(hashSet);
        i = this.fileStore.getFilesDir().listFiles(new AnySessionPartFileFilter());
        if (i == 0) {
            i = new File[0];
        }
        retainSessions(i, hashSet);
    }

    private static void retainSessions(File[] fileArr, Set<String> set) {
        for (File file : fileArr) {
            CharSequence name = file.getName();
            Matcher matcher = SESSION_FILE_PATTERN.matcher(name);
            if (!matcher.matches()) {
                Fabric.getLogger().mo768d("CrashlyticsCore", "Deleting unknown file: ".concat(String.valueOf(name)));
                file.delete();
            } else if (!set.contains(matcher.group(1))) {
                Fabric.getLogger().mo768d("CrashlyticsCore", "Trimming session file: ".concat(String.valueOf(name)));
                file.delete();
            }
        }
    }

    private File[] getTrimmedNonFatalFiles(String str, File[] fileArr, int i) {
        if (fileArr.length <= i) {
            return fileArr;
        }
        Fabric.getLogger().mo768d("CrashlyticsCore", String.format(Locale.US, "Trimming down to %d logged exceptions.", new Object[]{Integer.valueOf(i)}));
        trimSessionEventFiles(str, i);
        i = new StringBuilder();
        i.append(str);
        i.append("SessionEvent");
        str = this.fileStore.getFilesDir().listFiles(new FileNameContainsFilter(i.toString()));
        if (str == null) {
            str = new File[0];
        }
        return str;
    }

    final void cleanInvalidTempFiles() {
        this.backgroundWorker.submit(new Runnable() {
            public final void run() {
                CrashlyticsController.this.doCleanInvalidTempFiles(CrashlyticsController.access$1500(CrashlyticsController.this, new InvalidPartFileFilter()));
            }
        });
    }

    final void doCleanInvalidTempFiles(File[] fileArr) {
        int length;
        final Set hashSet = new HashSet();
        int i = 0;
        for (File file : fileArr) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Found invalid session part file: ".concat(String.valueOf(file)));
            hashSet.add(file.getName().substring(0, 35));
        }
        if (hashSet.isEmpty() == null) {
            fileArr = new File(this.fileStore.getFilesDir(), "invalidClsFiles");
            if (!fileArr.exists()) {
                fileArr.mkdir();
            }
            File[] listFiles = this.fileStore.getFilesDir().listFiles(new FilenameFilter() {
                public final boolean accept(File file, String str) {
                    if (str.length() < 35) {
                        return false;
                    }
                    return hashSet.contains(str.substring(0, 35));
                }
            });
            if (listFiles == null) {
                listFiles = new File[0];
            }
            length = listFiles.length;
            while (i < length) {
                File file2 = listFiles[i];
                Fabric.getLogger().mo768d("CrashlyticsCore", "Moving session file: ".concat(String.valueOf(file2)));
                if (!file2.renameTo(new File(fileArr, file2.getName()))) {
                    Fabric.getLogger().mo768d("CrashlyticsCore", "Could not move session file. Deleting ".concat(String.valueOf(file2)));
                    file2.delete();
                }
                i++;
            }
            trimInvalidSessionFiles();
        }
    }

    private void writeSessionPartFile(String str, String str2, CodedOutputStreamWriteAction codedOutputStreamWriteAction) throws Exception {
        Closeable clsFileOutputStream;
        Flushable flushable = null;
        try {
            File filesDir = this.fileStore.getFilesDir();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(str2);
            clsFileOutputStream = new ClsFileOutputStream(filesDir, stringBuilder.toString());
            try {
                str = CodedOutputStream.newInstance(clsFileOutputStream);
                try {
                    codedOutputStreamWriteAction.writeTo(str);
                    codedOutputStreamWriteAction = new StringBuilder("Failed to flush to session ");
                    codedOutputStreamWriteAction.append(str2);
                    codedOutputStreamWriteAction.append(" file.");
                    CommonUtils.flushOrLog(str, codedOutputStreamWriteAction.toString());
                    str = new StringBuilder("Failed to close session ");
                    str.append(str2);
                    str.append(" file.");
                    CommonUtils.closeOrLog(clsFileOutputStream, str.toString());
                } catch (Throwable th) {
                    codedOutputStreamWriteAction = th;
                    flushable = str;
                    str = new StringBuilder("Failed to flush to session ");
                    str.append(str2);
                    str.append(" file.");
                    CommonUtils.flushOrLog(flushable, str.toString());
                    str = new StringBuilder("Failed to close session ");
                    str.append(str2);
                    str.append(" file.");
                    CommonUtils.closeOrLog(clsFileOutputStream, str.toString());
                    throw codedOutputStreamWriteAction;
                }
            } catch (Throwable th2) {
                codedOutputStreamWriteAction = th2;
                str = new StringBuilder("Failed to flush to session ");
                str.append(str2);
                str.append(" file.");
                CommonUtils.flushOrLog(flushable, str.toString());
                str = new StringBuilder("Failed to close session ");
                str.append(str2);
                str.append(" file.");
                CommonUtils.closeOrLog(clsFileOutputStream, str.toString());
                throw codedOutputStreamWriteAction;
            }
        } catch (Throwable th3) {
            codedOutputStreamWriteAction = th3;
            clsFileOutputStream = null;
            str = new StringBuilder("Failed to flush to session ");
            str.append(str2);
            str.append(" file.");
            CommonUtils.flushOrLog(flushable, str.toString());
            str = new StringBuilder("Failed to close session ");
            str.append(str2);
            str.append(" file.");
            CommonUtils.closeOrLog(clsFileOutputStream, str.toString());
            throw codedOutputStreamWriteAction;
        }
    }

    private void writeFile(String str, String str2, FileOutputStreamWriteAction fileOutputStreamWriteAction) throws Exception {
        Closeable closeable = null;
        try {
            File filesDir = this.fileStore.getFilesDir();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(str2);
            Closeable fileOutputStream = new FileOutputStream(new File(filesDir, stringBuilder.toString()));
            try {
                fileOutputStreamWriteAction.writeTo(fileOutputStream);
                str = new StringBuilder("Failed to close ");
                str.append(str2);
                str.append(" file.");
                CommonUtils.closeOrLog(fileOutputStream, str.toString());
            } catch (Throwable th) {
                str = th;
                closeable = fileOutputStream;
                fileOutputStreamWriteAction = new StringBuilder("Failed to close ");
                fileOutputStreamWriteAction.append(str2);
                fileOutputStreamWriteAction.append(" file.");
                CommonUtils.closeOrLog(closeable, fileOutputStreamWriteAction.toString());
                throw str;
            }
        } catch (Throwable th2) {
            str = th2;
            fileOutputStreamWriteAction = new StringBuilder("Failed to close ");
            fileOutputStreamWriteAction.append(str2);
            fileOutputStreamWriteAction.append(" file.");
            CommonUtils.closeOrLog(closeable, fileOutputStreamWriteAction.toString());
            throw str;
        }
    }

    private void writeSessionEvent(CodedOutputStream codedOutputStream, Date date, Thread thread, Throwable th, String str, boolean z) throws Exception {
        boolean z2;
        Thread[] threadArr;
        TreeMap attributes;
        Map treeMap;
        TrimmedThrowableData trimmedThrowableData = new TrimmedThrowableData(th, this.stackTraceTrimmingStrategy);
        Context context = this.crashlyticsCore.getContext();
        long time = date.getTime() / 1000;
        Float batteryLevel = CommonUtils.getBatteryLevel(context);
        int batteryVelocity = CommonUtils.getBatteryVelocity(context, this.devicePowerStateListener.isPowerConnected());
        boolean proximitySensorEnabled = CommonUtils.getProximitySensorEnabled(context);
        int i = context.getResources().getConfiguration().orientation;
        long totalRamInBytes = CommonUtils.getTotalRamInBytes() - CommonUtils.calculateFreeRamInBytes(context);
        long calculateUsedDiskSpaceInBytes = CommonUtils.calculateUsedDiskSpaceInBytes(Environment.getDataDirectory().getPath());
        RunningAppProcessInfo appProcessInfo = CommonUtils.getAppProcessInfo(context.getPackageName(), context);
        List linkedList = new LinkedList();
        StackTraceElement[] stackTraceElementArr = trimmedThrowableData.stacktrace;
        String str2 = this.appData.buildId;
        String appIdentifier = this.idManager.getAppIdentifier();
        int i2 = 0;
        if (z) {
            Map allStackTraces = Thread.getAllStackTraces();
            Thread[] threadArr2 = new Thread[allStackTraces.size()];
            for (Entry entry : allStackTraces.entrySet()) {
                threadArr2[i2] = (Thread) entry.getKey();
                linkedList.add(r0.stackTraceTrimmingStrategy.getTrimmedStackTrace((StackTraceElement[]) entry.getValue()));
                i2++;
            }
            z2 = true;
            threadArr = threadArr2;
        } else {
            z2 = true;
            threadArr = new Thread[0];
        }
        if (CommonUtils.getBooleanResourceValue(context, "com.crashlytics.CollectCustomKeys", z2)) {
            attributes = r0.crashlyticsCore.getAttributes();
            if (attributes != null && attributes.size() > z2) {
                treeMap = new TreeMap(attributes);
                SessionProtobufHelper.writeSessionEvent(codedOutputStream, time, str, trimmedThrowableData, thread, stackTraceElementArr, threadArr, linkedList, treeMap, r0.logFileManager, appProcessInfo, i, appIdentifier, str2, batteryLevel, batteryVelocity, proximitySensorEnabled, totalRamInBytes, calculateUsedDiskSpaceInBytes);
            }
        }
        attributes = new TreeMap();
        treeMap = attributes;
        SessionProtobufHelper.writeSessionEvent(codedOutputStream, time, str, trimmedThrowableData, thread, stackTraceElementArr, threadArr, linkedList, treeMap, r0.logFileManager, appProcessInfo, i, appIdentifier, str2, batteryLevel, batteryVelocity, proximitySensorEnabled, totalRamInBytes, calculateUsedDiskSpaceInBytes);
    }

    private void writeSessionPartsToSessionFile(File file, String str, int i) {
        Fabric.getLogger().mo768d("CrashlyticsCore", "Collecting session parts for ID ".concat(String.valueOf(str)));
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("SessionCrash");
        File[] listFiles = this.fileStore.getFilesDir().listFiles(new FileNameContainsFilter(stringBuilder.toString()));
        if (listFiles == null) {
            listFiles = new File[0];
        }
        boolean z = listFiles != null && listFiles.length > 0;
        Fabric.getLogger().mo768d("CrashlyticsCore", String.format(Locale.US, "Session %s has fatal exception: %s", new Object[]{str, Boolean.valueOf(z)}));
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(str);
        stringBuilder2.append("SessionEvent");
        File[] listFiles2 = this.fileStore.getFilesDir().listFiles(new FileNameContainsFilter(stringBuilder2.toString()));
        if (listFiles2 == null) {
            listFiles2 = new File[0];
        }
        boolean z2 = listFiles2 != null && listFiles2.length > 0;
        Fabric.getLogger().mo768d("CrashlyticsCore", String.format(Locale.US, "Session %s has non-fatal exceptions: %s", new Object[]{str, Boolean.valueOf(z2)}));
        if (!z) {
            if (!z2) {
                Fabric.getLogger().mo768d("CrashlyticsCore", "No events present for session ID ".concat(String.valueOf(str)));
                Fabric.getLogger().mo768d("CrashlyticsCore", "Removing session part files for ID ".concat(String.valueOf(str)));
                deleteSessionPartFilesFor(str);
            }
        }
        synthesizeSessionFile(file, str, getTrimmedNonFatalFiles(str, listFiles2, i), z ? listFiles[0] : null);
        Fabric.getLogger().mo768d("CrashlyticsCore", "Removing session part files for ID ".concat(String.valueOf(str)));
        deleteSessionPartFilesFor(str);
    }

    private static void writeNonFatalEventsTo(CodedOutputStream codedOutputStream, File[] fileArr, String str) {
        Arrays.sort(fileArr, CommonUtils.FILE_MODIFIED_COMPARATOR);
        for (File name : fileArr) {
            try {
                Fabric.getLogger().mo768d("CrashlyticsCore", String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", new Object[]{str, name.getName()}));
                writeToCosFromFile(codedOutputStream, name);
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("CrashlyticsCore", "Error writting non-fatal to session.", e);
            }
        }
    }

    private void writeInitialPartsTo(CodedOutputStream codedOutputStream, String str) throws IOException {
        String[] strArr = INITIAL_SESSION_PART_TAGS;
        for (int i = 0; i < 4; i++) {
            String str2 = strArr[i];
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(str2);
            stringBuilder.append(".cls");
            File[] listFiles = this.fileStore.getFilesDir().listFiles(new FileNameContainsFilter(stringBuilder.toString()));
            if (listFiles == null) {
                listFiles = new File[0];
            }
            if (listFiles.length == 0) {
                StringBuilder stringBuilder2 = new StringBuilder("Can't find ");
                stringBuilder2.append(str2);
                stringBuilder2.append(" data for session ID ");
                stringBuilder2.append(str);
                Fabric.getLogger().mo771e("CrashlyticsCore", stringBuilder2.toString(), null);
            } else {
                StringBuilder stringBuilder3 = new StringBuilder("Collecting ");
                stringBuilder3.append(str2);
                stringBuilder3.append(" data for session ID ");
                stringBuilder3.append(str);
                Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder3.toString());
                writeToCosFromFile(codedOutputStream, listFiles[0]);
            }
        }
    }

    private static void writeToCosFromFile(CodedOutputStream codedOutputStream, File file) throws IOException {
        Closeable fileInputStream;
        if (file.exists()) {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    copyToCodedOutputStream(fileInputStream, codedOutputStream, (int) file.length());
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream.");
                    return;
                } catch (Throwable th) {
                    codedOutputStream = th;
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream.");
                    throw codedOutputStream;
                }
            } catch (Throwable th2) {
                codedOutputStream = th2;
                fileInputStream = null;
                CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream.");
                throw codedOutputStream;
            }
        }
        StringBuilder stringBuilder = new StringBuilder("Tried to include a file that doesn't exist: ");
        stringBuilder.append(file.getName());
        Fabric.getLogger().mo771e("CrashlyticsCore", stringBuilder.toString(), null);
    }

    private static void copyToCodedOutputStream(InputStream inputStream, CodedOutputStream codedOutputStream, int i) throws IOException {
        i = new byte[i];
        int i2 = 0;
        while (i2 < i.length) {
            int read = inputStream.read(i, i2, i.length - i2);
            if (read < 0) {
                break;
            }
            i2 += read;
        }
        codedOutputStream.writeRawBytes(i);
    }

    final boolean isHandlingException() {
        return this.crashHandler != null && this.crashHandler.isHandlingException();
    }

    final File getFilesDir() {
        return this.fileStore.getFilesDir();
    }

    final File getInvalidFilesDir() {
        return new File(this.fileStore.getFilesDir(), "invalidClsFiles");
    }

    final void registerAnalyticsEventListener$73e477ba(AdvertisingIdClient advertisingIdClient) {
        if (advertisingIdClient.featuresData$60521ed4.firebaseCrashlyticsEnabled != null && this.appMeasurementEventListenerRegistrar.register() != null) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Registered Firebase Analytics event listener");
        }
    }

    final void registerDevicePowerStateListener() {
        this.devicePowerStateListener.initialize();
    }

    private CreateReportSpiCall getCreateReportSpiCall(String str, String str2) {
        String stringsFileValue = CommonUtils.getStringsFileValue(this.crashlyticsCore.getContext(), "com.crashlytics.ApiEndpoint");
        return new CompositeCreateReportSpiCall(new DefaultCreateReportSpiCall(this.crashlyticsCore, stringsFileValue, str, this.httpRequestFactory), new NativeCreateReportSpiCall(this.crashlyticsCore, stringsFileValue, str2, this.httpRequestFactory));
    }

    private static boolean firebaseCrashExists() {
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
        r0 = "com.google.firebase.crash.FirebaseCrash";	 Catch:{ ClassNotFoundException -> 0x0007 }
        java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0007 }
        r0 = 1;
        return r0;
    L_0x0007:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.core.CrashlyticsController.firebaseCrashExists():boolean");
    }

    final void enableExceptionHandling(UncaughtExceptionHandler uncaughtExceptionHandler, boolean z) {
        this.backgroundWorker.submit(new Callable<Void>() {
            public final /* bridge */ /* synthetic */ Object call() throws Exception {
                CrashlyticsController.access$700(CrashlyticsController.this);
                return null;
            }
        });
        this.crashHandler = new CrashlyticsUncaughtExceptionHandler(new C09896(), new DefaultSettingsDataProvider(), z, uncaughtExceptionHandler);
        Thread.setDefaultUncaughtExceptionHandler(this.crashHandler);
    }

    private String getCurrentSessionId() {
        Object[] listFiles = this.fileStore.getFilesDir().listFiles(SESSION_BEGIN_FILE_FILTER);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        Arrays.sort(listFiles, LARGEST_FILE_NAME_FIRST);
        return listFiles.length > 0 ? listFiles[0].getName().substring(0, 35) : null;
    }

    private void deleteSessionPartFilesFor(String str) {
        str = this.fileStore.getFilesDir().listFiles(new SessionPartFileFilter(str));
        int i = 0;
        if (str == null) {
            str = new File[0];
        }
        int length = str.length;
        while (i < length) {
            str[i].delete();
            i++;
        }
    }

    private void trimSessionEventFiles(String str, int i) {
        File filesDir = this.fileStore.getFilesDir();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("SessionEvent");
        Utils.capFileCount(filesDir, new FileNameContainsFilter(stringBuilder.toString()), i, SMALLEST_FILE_NAME_FIRST);
    }

    final void trimSessionFiles(int i) {
        i -= Utils.capFileCount(new File(this.fileStore.getFilesDir(), "fatal-sessions"), i, SMALLEST_FILE_NAME_FIRST);
        Utils.capFileCount(this.fileStore.getFilesDir(), SESSION_FILE_FILTER, i - Utils.capFileCount(new File(this.fileStore.getFilesDir(), "nonfatal-sessions"), i, SMALLEST_FILE_NAME_FIRST), SMALLEST_FILE_NAME_FIRST);
    }

    private void trimInvalidSessionFiles() {
        File file = new File(this.fileStore.getFilesDir(), "invalidClsFiles");
        if (file.exists()) {
            Object[] listFiles = file.listFiles(new InvalidPartFileFilter());
            if (listFiles == null) {
                listFiles = new File[0];
            }
            Arrays.sort(listFiles, Collections.reverseOrder());
            Set hashSet = new HashSet();
            for (int i = 0; i < listFiles.length && hashSet.size() < 4; i++) {
                hashSet.add(listFiles[i].getName().substring(0, 35));
            }
            File[] listFiles2 = file.listFiles();
            if (listFiles2 == null) {
                listFiles2 = new File[0];
            }
            retainSessions(listFiles2, hashSet);
        }
    }

    private void synthesizeSessionFile(File file, String str, File[] fileArr, File file2) {
        File file3;
        Closeable clsFileOutputStream;
        Flushable newInstance;
        boolean z = file2 != null;
        if (z) {
            file3 = new File(this.fileStore.getFilesDir(), "fatal-sessions");
        } else {
            file3 = new File(this.fileStore.getFilesDir(), "nonfatal-sessions");
        }
        if (!file3.exists()) {
            file3.mkdirs();
        }
        Flushable flushable = null;
        try {
            clsFileOutputStream = new ClsFileOutputStream(file3, str);
            try {
                newInstance = CodedOutputStream.newInstance(clsFileOutputStream);
                try {
                    Fabric.getLogger().mo768d("CrashlyticsCore", "Collecting SessionStart data for session ID ".concat(String.valueOf(str)));
                    writeToCosFromFile(newInstance, file);
                    newInstance.writeUInt64(4, new Date().getTime() / 1000);
                    newInstance.writeBool(5, z);
                    newInstance.writeUInt32(11, 1);
                    newInstance.writeEnum(12, 3);
                    writeInitialPartsTo(newInstance, str);
                    writeNonFatalEventsTo(newInstance, fileArr, str);
                    if (z) {
                        writeToCosFromFile(newInstance, file2);
                    }
                    CommonUtils.flushOrLog(newInstance, "Error flushing session file stream");
                    CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close CLS file");
                } catch (Exception e) {
                    file = e;
                    flushable = newInstance;
                    try {
                        Fabric.getLogger().mo771e("CrashlyticsCore", "Failed to write session file for session ID: ".concat(String.valueOf(str)), file);
                        CommonUtils.flushOrLog(flushable, "Error flushing session file stream");
                        if (clsFileOutputStream != null) {
                            try {
                                clsFileOutputStream.closeInProgressStream();
                            } catch (File file4) {
                                Fabric.getLogger().mo771e("CrashlyticsCore", "Error closing session file stream in the presence of an exception", file4);
                            }
                        }
                    } catch (Throwable th) {
                        file4 = th;
                        newInstance = flushable;
                        CommonUtils.flushOrLog(newInstance, "Error flushing session file stream");
                        CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close CLS file");
                        throw file4;
                    }
                } catch (Throwable th2) {
                    file4 = th2;
                    CommonUtils.flushOrLog(newInstance, "Error flushing session file stream");
                    CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close CLS file");
                    throw file4;
                }
            } catch (Exception e2) {
                file4 = e2;
                Fabric.getLogger().mo771e("CrashlyticsCore", "Failed to write session file for session ID: ".concat(String.valueOf(str)), file4);
                CommonUtils.flushOrLog(flushable, "Error flushing session file stream");
                if (clsFileOutputStream != null) {
                    clsFileOutputStream.closeInProgressStream();
                }
            }
        } catch (Exception e3) {
            file4 = e3;
            clsFileOutputStream = null;
            Fabric.getLogger().mo771e("CrashlyticsCore", "Failed to write session file for session ID: ".concat(String.valueOf(str)), file4);
            CommonUtils.flushOrLog(flushable, "Error flushing session file stream");
            if (clsFileOutputStream != null) {
                clsFileOutputStream.closeInProgressStream();
            }
        } catch (Throwable th3) {
            file4 = th3;
            newInstance = null;
            clsFileOutputStream = newInstance;
            CommonUtils.flushOrLog(newInstance, "Error flushing session file stream");
            CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close CLS file");
            throw file4;
        }
    }

    private UserMetaData getUserMetaData(String str) {
        Object obj = (this.crashHandler == null || !this.crashHandler.isHandlingException()) ? null : 1;
        if (obj != null) {
            return new UserMetaData(this.crashlyticsCore.getUserIdentifier(), this.crashlyticsCore.getUserName(), this.crashlyticsCore.getUserEmail());
        }
        return new MetaDataStore(this.fileStore.getFilesDir()).readUserData(str);
    }

    static /* synthetic */ void access$500(CrashlyticsController crashlyticsController, Date date, Thread thread, Throwable th) {
        Flushable newInstance;
        Flushable flushable = null;
        Closeable clsFileOutputStream;
        try {
            String currentSessionId = crashlyticsController.getCurrentSessionId();
            if (currentSessionId == null) {
                Fabric.getLogger().mo771e("CrashlyticsCore", "Tried to write a fatal exception while no session was open.", null);
                CommonUtils.flushOrLog(null, "Failed to flush to session begin file.");
                CommonUtils.closeOrLog(null, "Failed to close fatal exception file output stream.");
                return;
            }
            String name = th.getClass().getName();
            Answers answers = (Answers) Fabric.getKit(Answers.class);
            if (answers == null) {
                Fabric.getLogger().mo768d("CrashlyticsCore", "Answers is not available");
            } else {
                answers.onException(new FatalException(currentSessionId, name));
            }
            File filesDir = crashlyticsController.fileStore.getFilesDir();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(currentSessionId);
            stringBuilder.append("SessionCrash");
            clsFileOutputStream = new ClsFileOutputStream(filesDir, stringBuilder.toString());
            try {
                newInstance = CodedOutputStream.newInstance(clsFileOutputStream);
            } catch (Exception e) {
                crashlyticsController = e;
                try {
                    Fabric.getLogger().mo771e("CrashlyticsCore", "An error occurred in the fatal exception logger", crashlyticsController);
                    CommonUtils.flushOrLog(flushable, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close fatal exception file output stream.");
                } catch (Throwable th2) {
                    crashlyticsController = th2;
                    CommonUtils.flushOrLog(flushable, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close fatal exception file output stream.");
                    throw crashlyticsController;
                }
            }
            try {
                crashlyticsController.writeSessionEvent(newInstance, date, thread, th, "crash", true);
                CommonUtils.flushOrLog(newInstance, "Failed to flush to session begin file.");
            } catch (Exception e2) {
                crashlyticsController = e2;
                flushable = newInstance;
                Fabric.getLogger().mo771e("CrashlyticsCore", "An error occurred in the fatal exception logger", crashlyticsController);
                CommonUtils.flushOrLog(flushable, "Failed to flush to session begin file.");
                CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close fatal exception file output stream.");
            } catch (Throwable th3) {
                crashlyticsController = th3;
                flushable = newInstance;
                CommonUtils.flushOrLog(flushable, "Failed to flush to session begin file.");
                CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close fatal exception file output stream.");
                throw crashlyticsController;
            }
            CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close fatal exception file output stream.");
        } catch (Exception e3) {
            crashlyticsController = e3;
            clsFileOutputStream = null;
            Fabric.getLogger().mo771e("CrashlyticsCore", "An error occurred in the fatal exception logger", crashlyticsController);
            CommonUtils.flushOrLog(flushable, "Failed to flush to session begin file.");
            CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close fatal exception file output stream.");
        } catch (Throwable th4) {
            crashlyticsController = th4;
            clsFileOutputStream = null;
            CommonUtils.flushOrLog(flushable, "Failed to flush to session begin file.");
            CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close fatal exception file output stream.");
            throw crashlyticsController;
        }
    }

    static /* synthetic */ void access$600(CrashlyticsController crashlyticsController, long j) {
        if (firebaseCrashExists()) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
        } else if (crashlyticsController.firebaseAnalyticsLogger != null) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Logging Crashlytics event to Firebase");
            Bundle bundle = new Bundle();
            bundle.putInt("_r", 1);
            bundle.putInt("fatal", 1);
            bundle.putLong("timestamp", j);
            crashlyticsController.firebaseAnalyticsLogger.logEvent("clx", "_ae", bundle);
        } else {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Skipping logging Crashlytics event to Firebase, no Firebase Analytics");
        }
    }

    static /* synthetic */ void access$700(CrashlyticsController crashlyticsController) throws Exception {
        CrashlyticsController crashlyticsController2 = crashlyticsController;
        Date date = new Date();
        String clsuuid = new CLSUUID(crashlyticsController2.idManager).toString();
        Fabric.getLogger().mo768d("CrashlyticsCore", "Opening a new session with ID ".concat(String.valueOf(clsuuid)));
        CrashlyticsController crashlyticsController3 = crashlyticsController2;
        final String str = clsuuid;
        final String format = String.format(Locale.US, "Crashlytics Android SDK/%s", new Object[]{"2.6.1.23"});
        final long time = date.getTime() / 1000;
        crashlyticsController2.writeSessionPartFile(clsuuid, "BeginSession", new CodedOutputStreamWriteAction() {
            public final void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeBeginSession(codedOutputStream, str, format, time);
            }
        });
        crashlyticsController2.writeFile(clsuuid, "BeginSession.json", new FileOutputStreamWriteAction() {

            /* renamed from: com.crashlytics.android.core.CrashlyticsController$18$1 */
            class C03211 extends HashMap<String, Object> {
                C03211() {
                    put("session_id", str);
                    put("generator", format);
                    put("started_at_seconds", Long.valueOf(time));
                }
            }

            public final void writeTo(FileOutputStream fileOutputStream) throws Exception {
                fileOutputStream.write(new JSONObject(new C03211()).toString().getBytes());
            }
        });
        String appIdentifier = crashlyticsController2.idManager.getAppIdentifier();
        String str2 = crashlyticsController2.appData.versionCode;
        String str3 = crashlyticsController2.appData.versionName;
        str = appIdentifier;
        format = str2;
        final String str4 = str3;
        final String appInstallIdentifier = crashlyticsController2.idManager.getAppInstallIdentifier();
        final int id = DeliveryMechanism.determineFrom(crashlyticsController2.appData.installerPackageName).getId();
        crashlyticsController2.writeSessionPartFile(clsuuid, "SessionApp", new CodedOutputStreamWriteAction() {
            public final void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeSessionApp(codedOutputStream, str, CrashlyticsController.this.appData.apiKey, format, str4, appInstallIdentifier, id, CrashlyticsController.this.unityVersion);
            }
        });
        crashlyticsController2.writeFile(clsuuid, "SessionApp.json", new FileOutputStreamWriteAction() {

            /* renamed from: com.crashlytics.android.core.CrashlyticsController$20$1 */
            class C03221 extends HashMap<String, Object> {
                C03221() {
                    put("app_identifier", str);
                    put("api_key", CrashlyticsController.this.appData.apiKey);
                    put("version_code", format);
                    put("version_name", str4);
                    put("install_uuid", appInstallIdentifier);
                    put("delivery_mechanism", Integer.valueOf(id));
                    put("unity_version", TextUtils.isEmpty(CrashlyticsController.this.unityVersion) ? "" : CrashlyticsController.this.unityVersion);
                }
            }

            public final void writeTo(FileOutputStream fileOutputStream) throws Exception {
                fileOutputStream.write(new JSONObject(new C03221()).toString().getBytes());
            }
        });
        final boolean isRooted = CommonUtils.isRooted(crashlyticsController2.crashlyticsCore.getContext());
        crashlyticsController2.writeSessionPartFile(clsuuid, "SessionOS", new CodedOutputStreamWriteAction() {
            public final void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeSessionOS(codedOutputStream, VERSION.RELEASE, VERSION.CODENAME, isRooted);
            }
        });
        crashlyticsController2.writeFile(clsuuid, "SessionOS.json", new FileOutputStreamWriteAction() {

            /* renamed from: com.crashlytics.android.core.CrashlyticsController$22$1 */
            class C03231 extends HashMap<String, Object> {
                C03231() {
                    put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, VERSION.RELEASE);
                    put("build_version", VERSION.CODENAME);
                    put("is_rooted", Boolean.valueOf(isRooted));
                }
            }

            public final void writeTo(FileOutputStream fileOutputStream) throws Exception {
                fileOutputStream.write(new JSONObject(new C03231()).toString().getBytes());
            }
        });
        Context context = crashlyticsController2.crashlyticsCore.getContext();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int cpuArchitectureInt = CommonUtils.getCpuArchitectureInt();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long totalRamInBytes = CommonUtils.getTotalRamInBytes();
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        boolean isEmulator = CommonUtils.isEmulator(context);
        crashlyticsController3 = crashlyticsController2;
        final int i = cpuArchitectureInt;
        final int i2 = availableProcessors;
        time = totalRamInBytes;
        final long j = blockCount;
        final boolean z = isEmulator;
        long j2 = totalRamInBytes;
        AnonymousClass23 anonymousClass23 = r0;
        final Map deviceIdentifiers = crashlyticsController2.idManager.getDeviceIdentifiers();
        int i3 = availableProcessors;
        final int deviceState = CommonUtils.getDeviceState(context);
        AnonymousClass23 anonymousClass232 = new CodedOutputStreamWriteAction() {
            public final void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeSessionDevice(codedOutputStream, i, Build.MODEL, i2, time, j, z, deviceIdentifiers, deviceState, Build.MANUFACTURER, Build.PRODUCT);
            }
        };
        crashlyticsController2.writeSessionPartFile(clsuuid, "SessionDevice", anonymousClass23);
        i2 = i3;
        time = j2;
        crashlyticsController2.writeFile(clsuuid, "SessionDevice.json", new FileOutputStreamWriteAction() {

            /* renamed from: com.crashlytics.android.core.CrashlyticsController$24$1 */
            class C03241 extends HashMap<String, Object> {
                C03241() {
                    put("arch", Integer.valueOf(i));
                    put("build_model", Build.MODEL);
                    put("available_processors", Integer.valueOf(i2));
                    put("total_ram", Long.valueOf(time));
                    put("disk_space", Long.valueOf(j));
                    put("is_emulator", Boolean.valueOf(z));
                    put("ids", deviceIdentifiers);
                    put(ServerProtocol.DIALOG_PARAM_STATE, Integer.valueOf(deviceState));
                    put("build_manufacturer", Build.MANUFACTURER);
                    put("build_product", Build.PRODUCT);
                }
            }

            public final void writeTo(FileOutputStream fileOutputStream) throws Exception {
                fileOutputStream.write(new JSONObject(new C03241()).toString().getBytes());
            }
        });
        crashlyticsController2.logFileManager.setCurrentSession(clsuuid);
    }

    static /* synthetic */ boolean access$800$336d2230(CrashlyticsController crashlyticsController, AdvertisingIdClient advertisingIdClient) {
        return (advertisingIdClient == null || advertisingIdClient.featuresData$60521ed4.promptEnabled == null || crashlyticsController.preferenceManager.shouldAlwaysSendReports() != null) ? null : true;
    }

    static /* synthetic */ void access$900$336d222c(CrashlyticsController crashlyticsController, AdvertisingIdClient advertisingIdClient) {
        if (advertisingIdClient == null) {
            Fabric.getLogger().mo776w("CrashlyticsCore", "Cannot send reports. Settings are unavailable.");
            return;
        }
        Context context = crashlyticsController.crashlyticsCore.getContext();
        ReportUploader reportUploader = new ReportUploader(crashlyticsController.appData.apiKey, crashlyticsController.getCreateReportSpiCall(advertisingIdClient.appData$13257fb6.reportsUrl, advertisingIdClient.appData$13257fb6.ndkReportsUrl), crashlyticsController.reportFilesProvider, crashlyticsController.handlingExceptionCheck);
        for (File sessionReport : crashlyticsController.listCompleteSessionFiles()) {
            crashlyticsController.backgroundWorker.submit(new SendReportRunnable(context, new SessionReport(sessionReport, SEND_AT_CRASHTIME_HEADER), reportUploader));
        }
    }

    static /* synthetic */ void access$1100(CrashlyticsController crashlyticsController, Date date, Thread thread, Throwable th) {
        Closeable clsFileOutputStream;
        String currentSessionId = crashlyticsController.getCurrentSessionId();
        Flushable flushable = null;
        if (currentSessionId == null) {
            Fabric.getLogger().mo771e("CrashlyticsCore", "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        String name = th.getClass().getName();
        Answers answers = (Answers) Fabric.getKit(Answers.class);
        if (answers == null) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Answers is not available");
        } else {
            answers.onException(new LoggedException(currentSessionId, name));
        }
        try {
            Flushable newInstance;
            StringBuilder stringBuilder = new StringBuilder("Crashlytics is logging non-fatal exception \"");
            stringBuilder.append(th);
            stringBuilder.append("\" from thread ");
            stringBuilder.append(thread.getName());
            Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder.toString());
            name = CommonUtils.padWithZerosToMaxIntWidth(crashlyticsController.eventCounter.getAndIncrement());
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(currentSessionId);
            stringBuilder2.append("SessionEvent");
            stringBuilder2.append(name);
            clsFileOutputStream = new ClsFileOutputStream(crashlyticsController.fileStore.getFilesDir(), stringBuilder2.toString());
            try {
                newInstance = CodedOutputStream.newInstance(clsFileOutputStream);
            } catch (Exception e) {
                date = e;
                try {
                    Fabric.getLogger().mo771e("CrashlyticsCore", "An error occurred in the non-fatal exception logger", date);
                    CommonUtils.flushOrLog(flushable, "Failed to flush to non-fatal file.");
                    CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
                    crashlyticsController.trimSessionEventFiles(currentSessionId, 64);
                } catch (Throwable th2) {
                    crashlyticsController = th2;
                    CommonUtils.flushOrLog(flushable, "Failed to flush to non-fatal file.");
                    CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
                    throw crashlyticsController;
                }
            }
            try {
                crashlyticsController.writeSessionEvent(newInstance, date, thread, th, "error", false);
                CommonUtils.flushOrLog(newInstance, "Failed to flush to non-fatal file.");
            } catch (Exception e2) {
                date = e2;
                flushable = newInstance;
                Fabric.getLogger().mo771e("CrashlyticsCore", "An error occurred in the non-fatal exception logger", date);
                CommonUtils.flushOrLog(flushable, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
                crashlyticsController.trimSessionEventFiles(currentSessionId, 64);
            } catch (Throwable th3) {
                crashlyticsController = th3;
                flushable = newInstance;
                CommonUtils.flushOrLog(flushable, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
                throw crashlyticsController;
            }
        } catch (Exception e3) {
            date = e3;
            clsFileOutputStream = null;
            Fabric.getLogger().mo771e("CrashlyticsCore", "An error occurred in the non-fatal exception logger", date);
            CommonUtils.flushOrLog(flushable, "Failed to flush to non-fatal file.");
            CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
            crashlyticsController.trimSessionEventFiles(currentSessionId, 64);
        } catch (Throwable th4) {
            crashlyticsController = th4;
            clsFileOutputStream = null;
            CommonUtils.flushOrLog(flushable, "Failed to flush to non-fatal file.");
            CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
            throw crashlyticsController;
        }
        CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
        try {
            crashlyticsController.trimSessionEventFiles(currentSessionId, 64);
        } catch (CrashlyticsController crashlyticsController2) {
            Fabric.getLogger().mo771e("CrashlyticsCore", "An error occurred when trimming non-fatal files.", crashlyticsController2);
        }
    }

    static /* synthetic */ File[] access$1500(CrashlyticsController crashlyticsController, FilenameFilter filenameFilter) {
        crashlyticsController = crashlyticsController.fileStore.getFilesDir().listFiles(filenameFilter);
        return crashlyticsController == null ? new File[null] : crashlyticsController;
    }
}
