package android.support.v7.recyclerview;

import android.content.Context;
import android.support.v7.cardview.C0943R.dimen;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.QueueFile;
import io.fabric.sdk.android.services.events.EventsStorage;
import io.fabric.sdk.android.services.settings.IconRequest;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: android.support.v7.recyclerview.R */
public class C0945R implements EventsStorage {
    private final Context context;
    private QueueFile queueFile = new QueueFile(this.workingFile);
    private File targetDirectory = new File(this.workingDirectory, this.targetDirectoryName);
    private final String targetDirectoryName;
    private final File workingDirectory;
    private final File workingFile;

    /* renamed from: android.support.v7.recyclerview.R$dimen */
    public static final class dimen {
        public final String analyticsURL;
        public final int flushIntervalSeconds;
        public final boolean flushOnBackground;
        public final boolean forwardToFirebaseAnalytics;
        public final boolean includePurchaseEventsInForwardedEvents;
        public final int maxByteSizePerFile;
        public final int maxFileCountPerSend;
        public final int maxPendingSendFileCount;
        public final int samplingRate;
        public final boolean trackCustomEvents;
        public final boolean trackPredefinedEvents;

        public dimen(String str, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, boolean z5) {
            this.analyticsURL = str;
            this.flushIntervalSeconds = i;
            this.maxByteSizePerFile = i2;
            this.maxFileCountPerSend = i3;
            this.maxPendingSendFileCount = i4;
            this.forwardToFirebaseAnalytics = z;
            this.includePurchaseEventsInForwardedEvents = z2;
            this.trackCustomEvents = z3;
            this.trackPredefinedEvents = z4;
            this.samplingRate = i5;
            this.flushOnBackground = z5;
        }
    }

    /* renamed from: android.support.v7.recyclerview.R$id */
    public static final class id {
        public final String apiKey;
        public final String appId;
        public final String buildVersion;
        public final String builtSdkVersion;
        public final String displayVersion;
        public final IconRequest icon;
        public final String instanceIdentifier;
        public final String minSdkVersion;
        public final String name;
        public final Collection<dimen> sdkKits;
        public final int source;

        public id(String str, String str2, String str3, String str4, String str5, String str6, int i, String str7, String str8, IconRequest iconRequest, Collection<dimen> collection) {
            this.apiKey = str;
            this.appId = str2;
            this.displayVersion = str3;
            this.buildVersion = str4;
            this.instanceIdentifier = str5;
            this.name = str6;
            this.source = i;
            this.minSdkVersion = str7;
            this.builtSdkVersion = str8;
            this.icon = iconRequest;
            this.sdkKits = collection;
        }
    }

    /* renamed from: android.support.v7.recyclerview.R$styleable */
    public static final class styleable {
        public static final int[] CoordinatorLayout = new int[]{C0859R.attr.keylines, C0859R.attr.statusBarBackground};
        public static final int[] CoordinatorLayout_Layout = new int[]{16842931, C0859R.attr.layout_anchor, C0859R.attr.layout_anchorGravity, C0859R.attr.layout_behavior, C0859R.attr.layout_dodgeInsetEdges, C0859R.attr.layout_insetEdge, C0859R.attr.layout_keyline};
        public static final int[] FontFamily = new int[]{C0859R.attr.fontProviderAuthority, C0859R.attr.fontProviderCerts, C0859R.attr.fontProviderFetchStrategy, C0859R.attr.fontProviderFetchTimeout, C0859R.attr.fontProviderPackage, C0859R.attr.fontProviderQuery};
        public static final int[] FontFamilyFont = new int[]{16844082, 16844083, 16844095, C0859R.attr.font, C0859R.attr.fontStyle, C0859R.attr.fontWeight};
        public static final int[] RecyclerView = new int[]{16842948, 16842993, C0859R.attr.fastScrollEnabled, C0859R.attr.fastScrollHorizontalThumbDrawable, C0859R.attr.fastScrollHorizontalTrackDrawable, C0859R.attr.fastScrollVerticalThumbDrawable, C0859R.attr.fastScrollVerticalTrackDrawable, C0859R.attr.layoutManager, C0859R.attr.reverseLayout, C0859R.attr.spanCount, C0859R.attr.stackFromEnd};
        public static final int RecyclerView_android_descendantFocusability = 1;
        public static final int RecyclerView_android_orientation = 0;
        public static final int RecyclerView_fastScrollEnabled = 2;
        public static final int RecyclerView_fastScrollHorizontalThumbDrawable = 3;
        public static final int RecyclerView_fastScrollHorizontalTrackDrawable = 4;
        public static final int RecyclerView_fastScrollVerticalThumbDrawable = 5;
        public static final int RecyclerView_fastScrollVerticalTrackDrawable = 6;
        public static final int RecyclerView_layoutManager = 7;
        public static final int RecyclerView_reverseLayout = 8;
        public static final int RecyclerView_spanCount = 9;
        public static final int RecyclerView_stackFromEnd = 10;
    }

    public C0945R(Context context, File file, String str, String str2) throws IOException {
        this.context = context;
        this.workingDirectory = file;
        this.targetDirectoryName = str2;
        this.workingFile = new File(this.workingDirectory, str);
        if (this.targetDirectory.exists() == null) {
            this.targetDirectory.mkdirs();
        }
    }

    public final void add(byte[] bArr) throws IOException {
        this.queueFile.add(bArr);
    }

    public final int getWorkingFileUsedSizeInBytes() {
        return this.queueFile.usedBytes();
    }

    public final void rollOver(String str) throws IOException {
        Closeable fileInputStream;
        Throwable th;
        this.queueFile.close();
        File file = this.workingFile;
        File file2 = new File(this.targetDirectory, str);
        str = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                Closeable moveOutputStream = getMoveOutputStream(file2);
                try {
                    CommonUtils.copyStream(fileInputStream, moveOutputStream, new byte[1024]);
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream");
                    CommonUtils.closeOrLog(moveOutputStream, "Failed to close output stream");
                    file.delete();
                    this.queueFile = new QueueFile(this.workingFile);
                } catch (String str2) {
                    Closeable closeable = moveOutputStream;
                    th = str2;
                    str2 = closeable;
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream");
                    CommonUtils.closeOrLog(str2, "Failed to close output stream");
                    file.delete();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream");
                CommonUtils.closeOrLog(str2, "Failed to close output stream");
                file.delete();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream");
            CommonUtils.closeOrLog(str2, "Failed to close output stream");
            file.delete();
            throw th;
        }
    }

    public OutputStream getMoveOutputStream(File file) throws IOException {
        return new FileOutputStream(file);
    }

    public final List<File> getBatchOfFilesToSend$22f3aa59() {
        List<File> arrayList = new ArrayList();
        for (Object add : this.targetDirectory.listFiles()) {
            arrayList.add(add);
            if (arrayList.size() > 0) {
                break;
            }
        }
        return arrayList;
    }

    public final void deleteFilesInRollOverDirectory(List<File> list) {
        for (File file : list) {
            CommonUtils.logControlled(this.context, String.format("deleting sent analytics file %s", new Object[]{file.getName()}));
            file.delete();
        }
    }

    public final List<File> getAllFilesInRollOverDirectory() {
        return Arrays.asList(this.targetDirectory.listFiles());
    }

    public final void deleteWorkingFile() {
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
        r1 = this;
        r0 = r1.queueFile;	 Catch:{ IOException -> 0x0005 }
        r0.close();	 Catch:{ IOException -> 0x0005 }
    L_0x0005:
        r0 = r1.workingFile;
        r0.delete();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.recyclerview.R.deleteWorkingFile():void");
    }

    public final boolean isWorkingFileEmpty() {
        return this.queueFile.isEmpty();
    }

    public final boolean canWorkingFileStore(int i, int i2) {
        return this.queueFile.hasSpaceFor(i, i2);
    }
}
