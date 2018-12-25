package io.fabric.sdk.android.services.events;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class EventsFilesManager<T> {
    protected final Context context;
    protected final CurrentTimeProvider currentTimeProvider;
    private final int defaultMaxFilesToKeep;
    protected final EventsStorage eventStorage;
    protected volatile long lastRollOverTime;
    protected final List<EventsStorageListener> rollOverListeners = new CopyOnWriteArrayList();
    protected final EventTransform<T> transform;

    /* renamed from: io.fabric.sdk.android.services.events.EventsFilesManager$1 */
    class C07481 implements Comparator<FileWithTimestamp> {
        C07481() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            return (int) (((FileWithTimestamp) obj).timestamp - ((FileWithTimestamp) obj2).timestamp);
        }
    }

    static class FileWithTimestamp {
        final File file;
        final long timestamp;

        public FileWithTimestamp(File file, long j) {
            this.file = file;
            this.timestamp = j;
        }
    }

    protected abstract String generateUniqueRollOverFileName();

    protected int getMaxByteSizePerFile() {
        return 8000;
    }

    protected int getMaxFilesToKeep() {
        return 100;
    }

    public EventsFilesManager(Context context, EventTransform<T> eventTransform, CurrentTimeProvider currentTimeProvider, EventsStorage eventsStorage) throws IOException {
        this.context = context.getApplicationContext();
        this.transform = eventTransform;
        this.eventStorage = eventsStorage;
        this.currentTimeProvider = currentTimeProvider;
        this.lastRollOverTime = this.currentTimeProvider.getCurrentTimeMillis();
        this.defaultMaxFilesToKeep = 100;
    }

    public final void writeEvent(T t) throws IOException {
        t = this.transform.toBytes(t);
        if (!this.eventStorage.canWorkingFileStore(t.length, getMaxByteSizePerFile())) {
            CommonUtils.logControlled(this.context, 4, "Fabric", String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", new Object[]{Integer.valueOf(this.eventStorage.getWorkingFileUsedSizeInBytes()), Integer.valueOf(t.length), Integer.valueOf(getMaxByteSizePerFile())}));
            rollFileOver();
        }
        this.eventStorage.add(t);
    }

    public final void registerRollOverListener(EventsStorageListener eventsStorageListener) {
        if (eventsStorageListener != null) {
            this.rollOverListeners.add(eventsStorageListener);
        }
    }

    public final boolean rollFileOver() throws IOException {
        boolean z = true;
        if (this.eventStorage.isWorkingFileEmpty()) {
            z = false;
        } else {
            this.eventStorage.rollOver(generateUniqueRollOverFileName());
            CommonUtils.logControlled(this.context, 4, "Fabric", String.format(Locale.US, "generated new file %s", new Object[]{r0}));
            this.lastRollOverTime = this.currentTimeProvider.getCurrentTimeMillis();
        }
        triggerRollOverOnListeners$552c4e01();
        return z;
    }

    private void triggerRollOverOnListeners$552c4e01() {
        for (EventsStorageListener onRollOver$552c4e01 : this.rollOverListeners) {
            try {
                onRollOver$552c4e01.onRollOver$552c4e01();
            } catch (Throwable e) {
                CommonUtils.logControlledError(this.context, "One of the roll over listeners threw an exception", e);
            }
        }
    }

    public final List<File> getBatchOfFilesToSend() {
        return this.eventStorage.getBatchOfFilesToSend$22f3aa59();
    }

    public final void deleteSentFiles(List<File> list) {
        this.eventStorage.deleteFilesInRollOverDirectory(list);
    }

    public final void deleteAllEventsFiles() {
        this.eventStorage.deleteFilesInRollOverDirectory(this.eventStorage.getAllFilesInRollOverDirectory());
        this.eventStorage.deleteWorkingFile();
    }

    public final void deleteOldestInRollOverIfOverMax() {
        List<File> allFilesInRollOverDirectory = this.eventStorage.getAllFilesInRollOverDirectory();
        int maxFilesToKeep = getMaxFilesToKeep();
        if (allFilesInRollOverDirectory.size() > maxFilesToKeep) {
            int size = allFilesInRollOverDirectory.size() - maxFilesToKeep;
            CommonUtils.logControlled(this.context, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", new Object[]{Integer.valueOf(allFilesInRollOverDirectory.size()), Integer.valueOf(maxFilesToKeep), Integer.valueOf(size)}));
            TreeSet treeSet = new TreeSet(new C07481());
            for (File file : allFilesInRollOverDirectory) {
                treeSet.add(new FileWithTimestamp(file, parseCreationTimestampFromFileName(file.getName())));
            }
            List allFilesInRollOverDirectory2 = new ArrayList();
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                allFilesInRollOverDirectory2.add(((FileWithTimestamp) it.next()).file);
                if (allFilesInRollOverDirectory2.size() == size) {
                    break;
                }
            }
            this.eventStorage.deleteFilesInRollOverDirectory(allFilesInRollOverDirectory2);
        }
    }

    private static long parseCreationTimestampFromFileName(java.lang.String r4) {
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
        r0 = "_";
        r4 = r4.split(r0);
        r0 = 0;
        r2 = 3;
        r3 = r4.length;
        if (r3 == r2) goto L_0x000d;
    L_0x000c:
        return r0;
    L_0x000d:
        r2 = 2;
        r4 = r4[r2];	 Catch:{ NumberFormatException -> 0x0019 }
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ NumberFormatException -> 0x0019 }
        r2 = r4.longValue();	 Catch:{ NumberFormatException -> 0x0019 }
        return r2;
    L_0x0019:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.events.EventsFilesManager.parseCreationTimestampFromFileName(java.lang.String):long");
    }
}
