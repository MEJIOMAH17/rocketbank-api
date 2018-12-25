package com.crashlytics.android.core;

import com.facebook.appevents.AppEventsConstants;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.BackgroundPriorityRunnable;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

final class ReportUploader {
    static final Map<String, String> HEADER_INVALID_CLS_FILE = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", AppEventsConstants.EVENT_PARAM_VALUE_YES);
    private static final short[] RETRY_INTERVALS = new short[]{(short) 10, (short) 20, (short) 30, (short) 60, (short) 120, (short) 300};
    private final String apiKey;
    private final CreateReportSpiCall createReportCall;
    private final Object fileAccessLock = new Object();
    private final HandlingExceptionCheck handlingExceptionCheck;
    private final ReportFilesProvider reportFilesProvider;
    private Thread uploadThread;

    interface HandlingExceptionCheck {
        boolean isHandlingException();
    }

    interface ReportFilesProvider {
        File[] getCompleteSessionFiles();

        File[] getInvalidSessionFiles();

        File[] getNativeReportFiles();
    }

    interface SendCheck {
        boolean canSendReports();
    }

    static final class AlwaysSendCheck implements SendCheck {
        public final boolean canSendReports() {
            return true;
        }

        AlwaysSendCheck() {
        }
    }

    class Worker extends BackgroundPriorityRunnable {
        private final float delay;
        private final SendCheck sendCheck;

        Worker(float f, SendCheck sendCheck) {
            this.delay = f;
            this.sendCheck = sendCheck;
        }

        public final void onRun() {
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
            r8 = this;
            r0 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Exception -> 0x0122 }
            r1 = "CrashlyticsCore";	 Catch:{ Exception -> 0x0122 }
            r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0122 }
            r3 = "Starting report processing in ";	 Catch:{ Exception -> 0x0122 }
            r2.<init>(r3);	 Catch:{ Exception -> 0x0122 }
            r3 = r8.delay;	 Catch:{ Exception -> 0x0122 }
            r2.append(r3);	 Catch:{ Exception -> 0x0122 }
            r3 = " second(s)...";	 Catch:{ Exception -> 0x0122 }
            r2.append(r3);	 Catch:{ Exception -> 0x0122 }
            r2 = r2.toString();	 Catch:{ Exception -> 0x0122 }
            r0.mo768d(r1, r2);	 Catch:{ Exception -> 0x0122 }
            r0 = r8.delay;	 Catch:{ Exception -> 0x0122 }
            r1 = 0;
            r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1));
            if (r0 <= 0) goto L_0x0038;
        L_0x0025:
            r0 = r8.delay;	 Catch:{ InterruptedException -> 0x002f }
            r1 = 1148846080; // 0x447a0000 float:1000.0 double:5.676053805E-315;	 Catch:{ InterruptedException -> 0x002f }
            r0 = r0 * r1;	 Catch:{ InterruptedException -> 0x002f }
            r0 = (long) r0;	 Catch:{ InterruptedException -> 0x002f }
            java.lang.Thread.sleep(r0);	 Catch:{ InterruptedException -> 0x002f }
            goto L_0x0038;
        L_0x002f:
            r0 = java.lang.Thread.currentThread();	 Catch:{ Exception -> 0x0122 }
            r0.interrupt();	 Catch:{ Exception -> 0x0122 }
            goto L_0x012e;	 Catch:{ Exception -> 0x0122 }
        L_0x0038:
            r0 = com.crashlytics.android.core.ReportUploader.this;	 Catch:{ Exception -> 0x0122 }
            r0 = r0.findReports();	 Catch:{ Exception -> 0x0122 }
            r1 = com.crashlytics.android.core.ReportUploader.this;	 Catch:{ Exception -> 0x0122 }
            r1 = r1.handlingExceptionCheck;	 Catch:{ Exception -> 0x0122 }
            r1 = r1.isHandlingException();	 Catch:{ Exception -> 0x0122 }
            if (r1 != 0) goto L_0x012e;	 Catch:{ Exception -> 0x0122 }
        L_0x004a:
            r1 = r0.isEmpty();	 Catch:{ Exception -> 0x0122 }
            if (r1 != 0) goto L_0x008c;	 Catch:{ Exception -> 0x0122 }
        L_0x0050:
            r1 = r8.sendCheck;	 Catch:{ Exception -> 0x0122 }
            r1 = r1.canSendReports();	 Catch:{ Exception -> 0x0122 }
            if (r1 != 0) goto L_0x008c;	 Catch:{ Exception -> 0x0122 }
        L_0x0058:
            r1 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Exception -> 0x0122 }
            r2 = "CrashlyticsCore";	 Catch:{ Exception -> 0x0122 }
            r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0122 }
            r4 = "User declined to send. Removing ";	 Catch:{ Exception -> 0x0122 }
            r3.<init>(r4);	 Catch:{ Exception -> 0x0122 }
            r4 = r0.size();	 Catch:{ Exception -> 0x0122 }
            r3.append(r4);	 Catch:{ Exception -> 0x0122 }
            r4 = " Report(s).";	 Catch:{ Exception -> 0x0122 }
            r3.append(r4);	 Catch:{ Exception -> 0x0122 }
            r3 = r3.toString();	 Catch:{ Exception -> 0x0122 }
            r1.mo768d(r2, r3);	 Catch:{ Exception -> 0x0122 }
            r0 = r0.iterator();	 Catch:{ Exception -> 0x0122 }
        L_0x007c:
            r1 = r0.hasNext();	 Catch:{ Exception -> 0x0122 }
            if (r1 == 0) goto L_0x012e;	 Catch:{ Exception -> 0x0122 }
        L_0x0082:
            r1 = r0.next();	 Catch:{ Exception -> 0x0122 }
            r1 = (com.crashlytics.android.core.Report) r1;	 Catch:{ Exception -> 0x0122 }
            r1.remove();	 Catch:{ Exception -> 0x0122 }
            goto L_0x007c;	 Catch:{ Exception -> 0x0122 }
        L_0x008c:
            r1 = 0;	 Catch:{ Exception -> 0x0122 }
        L_0x008d:
            r2 = r0.isEmpty();	 Catch:{ Exception -> 0x0122 }
            if (r2 != 0) goto L_0x012e;	 Catch:{ Exception -> 0x0122 }
        L_0x0093:
            r2 = com.crashlytics.android.core.ReportUploader.this;	 Catch:{ Exception -> 0x0122 }
            r2 = r2.handlingExceptionCheck;	 Catch:{ Exception -> 0x0122 }
            r2 = r2.isHandlingException();	 Catch:{ Exception -> 0x0122 }
            if (r2 != 0) goto L_0x012e;	 Catch:{ Exception -> 0x0122 }
        L_0x009f:
            r2 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Exception -> 0x0122 }
            r3 = "CrashlyticsCore";	 Catch:{ Exception -> 0x0122 }
            r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0122 }
            r5 = "Attempting to send ";	 Catch:{ Exception -> 0x0122 }
            r4.<init>(r5);	 Catch:{ Exception -> 0x0122 }
            r5 = r0.size();	 Catch:{ Exception -> 0x0122 }
            r4.append(r5);	 Catch:{ Exception -> 0x0122 }
            r5 = " report(s)";	 Catch:{ Exception -> 0x0122 }
            r4.append(r5);	 Catch:{ Exception -> 0x0122 }
            r4 = r4.toString();	 Catch:{ Exception -> 0x0122 }
            r2.mo768d(r3, r4);	 Catch:{ Exception -> 0x0122 }
            r0 = r0.iterator();	 Catch:{ Exception -> 0x0122 }
        L_0x00c3:
            r2 = r0.hasNext();	 Catch:{ Exception -> 0x0122 }
            if (r2 == 0) goto L_0x00d5;	 Catch:{ Exception -> 0x0122 }
        L_0x00c9:
            r2 = r0.next();	 Catch:{ Exception -> 0x0122 }
            r2 = (com.crashlytics.android.core.Report) r2;	 Catch:{ Exception -> 0x0122 }
            r3 = com.crashlytics.android.core.ReportUploader.this;	 Catch:{ Exception -> 0x0122 }
            r3.forceUpload(r2);	 Catch:{ Exception -> 0x0122 }
            goto L_0x00c3;	 Catch:{ Exception -> 0x0122 }
        L_0x00d5:
            r0 = com.crashlytics.android.core.ReportUploader.this;	 Catch:{ Exception -> 0x0122 }
            r0 = r0.findReports();	 Catch:{ Exception -> 0x0122 }
            r2 = r0.isEmpty();	 Catch:{ Exception -> 0x0122 }
            if (r2 != 0) goto L_0x008d;	 Catch:{ Exception -> 0x0122 }
        L_0x00e1:
            r2 = com.crashlytics.android.core.ReportUploader.RETRY_INTERVALS;	 Catch:{ Exception -> 0x0122 }
            r3 = r1 + 1;	 Catch:{ Exception -> 0x0122 }
            r4 = com.crashlytics.android.core.ReportUploader.RETRY_INTERVALS;	 Catch:{ Exception -> 0x0122 }
            r4 = r4.length;	 Catch:{ Exception -> 0x0122 }
            r4 = r4 + -1;	 Catch:{ Exception -> 0x0122 }
            r1 = java.lang.Math.min(r1, r4);	 Catch:{ Exception -> 0x0122 }
            r1 = r2[r1];	 Catch:{ Exception -> 0x0122 }
            r1 = (long) r1;	 Catch:{ Exception -> 0x0122 }
            r4 = io.fabric.sdk.android.Fabric.getLogger();	 Catch:{ Exception -> 0x0122 }
            r5 = "CrashlyticsCore";	 Catch:{ Exception -> 0x0122 }
            r6 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0122 }
            r7 = "Report submisson: scheduling delayed retry in ";	 Catch:{ Exception -> 0x0122 }
            r6.<init>(r7);	 Catch:{ Exception -> 0x0122 }
            r6.append(r1);	 Catch:{ Exception -> 0x0122 }
            r7 = " seconds";	 Catch:{ Exception -> 0x0122 }
            r6.append(r7);	 Catch:{ Exception -> 0x0122 }
            r6 = r6.toString();	 Catch:{ Exception -> 0x0122 }
            r4.mo768d(r5, r6);	 Catch:{ Exception -> 0x0122 }
            r4 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
            r1 = r1 * r4;
            java.lang.Thread.sleep(r1);	 Catch:{ InterruptedException -> 0x011a }
            r1 = r3;
            goto L_0x008d;
        L_0x011a:
            r0 = java.lang.Thread.currentThread();	 Catch:{ Exception -> 0x0122 }
            r0.interrupt();	 Catch:{ Exception -> 0x0122 }
            goto L_0x012e;
        L_0x0122:
            r0 = move-exception;
            r1 = io.fabric.sdk.android.Fabric.getLogger();
            r2 = "CrashlyticsCore";
            r3 = "An unexpected error occurred while attempting to upload crash reports.";
            r1.mo771e(r2, r3, r0);
        L_0x012e:
            r0 = com.crashlytics.android.core.ReportUploader.this;
            r0.uploadThread = null;
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.core.ReportUploader.Worker.onRun():void");
        }
    }

    public ReportUploader(String str, CreateReportSpiCall createReportSpiCall, ReportFilesProvider reportFilesProvider, HandlingExceptionCheck handlingExceptionCheck) {
        if (createReportSpiCall == null) {
            throw new IllegalArgumentException("createReportCall must not be null.");
        }
        this.createReportCall = createReportSpiCall;
        this.apiKey = str;
        this.reportFilesProvider = reportFilesProvider;
        this.handlingExceptionCheck = handlingExceptionCheck;
    }

    public final synchronized void uploadReports(float f, SendCheck sendCheck) {
        if (this.uploadThread != null) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Report upload has already been started.");
            return;
        }
        this.uploadThread = new Thread(new Worker(f, sendCheck), "Crashlytics Report Uploader");
        this.uploadThread.start();
    }

    final boolean forceUpload(Report report) {
        boolean z;
        synchronized (this.fileAccessLock) {
            z = false;
            try {
                boolean invoke = this.createReportCall.invoke(new CreateReportRequest(this.apiKey, report));
                Logger logger = Fabric.getLogger();
                String str = "CrashlyticsCore";
                StringBuilder stringBuilder = new StringBuilder("Crashlytics report upload ");
                stringBuilder.append(invoke ? "complete: " : "FAILED: ");
                stringBuilder.append(report.getIdentifier());
                logger.mo772i(str, stringBuilder.toString());
                if (invoke) {
                    report.remove();
                    z = true;
                }
            } catch (Throwable e) {
                Fabric.getLogger().mo771e("CrashlyticsCore", "Error occurred sending report ".concat(String.valueOf(report)), e);
            }
        }
        return z;
    }

    final List<Report> findReports() {
        Fabric.getLogger().mo768d("CrashlyticsCore", "Checking for crash reports...");
        synchronized (this.fileAccessLock) {
            File[] completeSessionFiles = this.reportFilesProvider.getCompleteSessionFiles();
            File[] invalidSessionFiles = this.reportFilesProvider.getInvalidSessionFiles();
            File[] nativeReportFiles = this.reportFilesProvider.getNativeReportFiles();
        }
        List<Report> linkedList = new LinkedList();
        int i = 0;
        if (completeSessionFiles != null) {
            for (File file : completeSessionFiles) {
                StringBuilder stringBuilder = new StringBuilder("Found crash report ");
                stringBuilder.append(file.getPath());
                Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder.toString());
                linkedList.add(new SessionReport(file));
            }
        }
        Map hashMap = new HashMap();
        if (invalidSessionFiles != null) {
            for (File file2 : invalidSessionFiles) {
                String sessionIdFromSessionFile = CrashlyticsController.getSessionIdFromSessionFile(file2);
                if (!hashMap.containsKey(sessionIdFromSessionFile)) {
                    hashMap.put(sessionIdFromSessionFile, new LinkedList());
                }
                ((List) hashMap.get(sessionIdFromSessionFile)).add(file2);
            }
        }
        for (String str : hashMap.keySet()) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "Found invalid session: ".concat(String.valueOf(str)));
            List list = (List) hashMap.get(str);
            linkedList.add(new InvalidSessionReport(str, (File[]) list.toArray(new File[list.size()])));
        }
        if (nativeReportFiles != null) {
            int length = nativeReportFiles.length;
            while (i < length) {
                linkedList.add(new NativeSessionReport(nativeReportFiles[i]));
                i++;
            }
        }
        if (linkedList.isEmpty()) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "No reports found.");
        }
        return linkedList;
    }
}
