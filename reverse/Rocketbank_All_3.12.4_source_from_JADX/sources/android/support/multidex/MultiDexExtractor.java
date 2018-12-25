package android.support.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.util.Log;
import com.facebook.internal.AnalyticsEvents;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

final class MultiDexExtractor implements Closeable {
    private final FileLock cacheLock;
    private final File dexDir;
    private final FileChannel lockChannel;
    private final RandomAccessFile lockRaf;
    private final File sourceApk;
    private final long sourceCrc;

    /* renamed from: android.support.multidex.MultiDexExtractor$1 */
    class C00761 implements FileFilter {
        C00761() {
        }

        public final boolean accept(File file) {
            return file.getName().equals("MultiDex.lock") == null ? true : null;
        }
    }

    private static class ExtractedDex extends File {
        public long crc = -1;

        public ExtractedDex(File file, String str) {
            super(file, str);
        }
    }

    MultiDexExtractor(File file, File file2) throws IOException {
        StringBuilder stringBuilder = new StringBuilder("MultiDexExtractor(");
        stringBuilder.append(file.getPath());
        stringBuilder.append(", ");
        stringBuilder.append(file2.getPath());
        stringBuilder.append(")");
        Log.i("MultiDex", stringBuilder.toString());
        this.sourceApk = file;
        this.dexDir = file2;
        long zipCrc = ZipUtil.getZipCrc(file);
        if (zipCrc == -1) {
            zipCrc--;
        }
        this.sourceCrc = zipCrc;
        file = new File(file2, "MultiDex.lock");
        this.lockRaf = new RandomAccessFile(file, "rw");
        try {
            this.lockChannel = this.lockRaf.getChannel();
            StringBuilder stringBuilder2 = new StringBuilder("Blocking on lock ");
            stringBuilder2.append(file.getPath());
            Log.i("MultiDex", stringBuilder2.toString());
            this.cacheLock = this.lockChannel.lock();
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append(file.getPath());
            stringBuilder2.append(" locked");
            Log.i("MultiDex", stringBuilder2.toString());
        } catch (File file3) {
            try {
                this.lockChannel.close();
            } catch (File file22) {
                Log.w("MultiDex", "Failed to close resource", file22);
            }
            throw file3;
        } catch (File file32) {
            try {
                this.lockRaf.close();
            } catch (File file222) {
                Log.w("MultiDex", "Failed to close resource", file222);
            }
            throw file32;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    final java.util.List<? extends java.io.File> load(android.content.Context r22, java.lang.String r23, boolean r24) throws java.io.IOException {
        /*
        r21 = this;
        r1 = r21;
        r3 = r23;
        r2 = r24;
        r4 = "MultiDex";
        r5 = new java.lang.StringBuilder;
        r6 = "MultiDexExtractor.load(";
        r5.<init>(r6);
        r6 = r1.sourceApk;
        r6 = r6.getPath();
        r5.append(r6);
        r6 = ", ";
        r5.append(r6);
        r5.append(r2);
        r6 = ", ";
        r5.append(r6);
        r5.append(r3);
        r6 = ")";
        r5.append(r6);
        r5 = r5.toString();
        android.util.Log.i(r4, r5);
        r4 = r1.cacheLock;
        r4 = r4.isValid();
        if (r4 != 0) goto L_0x0044;
    L_0x003c:
        r2 = new java.lang.IllegalStateException;
        r3 = "MultiDexExtractor was closed";
        r2.<init>(r3);
        throw r2;
    L_0x0044:
        r4 = 1;
        r6 = -1;
        if (r2 != 0) goto L_0x00cd;
    L_0x004a:
        r8 = r1.sourceApk;
        r9 = r1.sourceCrc;
        r11 = "multidex.version";
        r12 = android.os.Build.VERSION.SDK_INT;
        r13 = 11;
        r14 = 0;
        if (r12 >= r13) goto L_0x005b;
    L_0x0057:
        r12 = r22;
        r13 = r14;
        goto L_0x005f;
    L_0x005b:
        r12 = 4;
        r13 = r12;
        r12 = r22;
    L_0x005f:
        r11 = r12.getSharedPreferences(r11, r13);
        r13 = new java.lang.StringBuilder;
        r13.<init>();
        r13.append(r3);
        r15 = "timestamp";
        r13.append(r15);
        r13 = r13.toString();
        r15 = r11.getLong(r13, r6);
        r17 = r8.lastModified();
        r8 = (r17 > r6 ? 1 : (r17 == r6 ? 0 : -1));
        if (r8 != 0) goto L_0x0084;
    L_0x0080:
        r19 = r17 - r4;
        r17 = r19;
    L_0x0084:
        r8 = (r15 > r17 ? 1 : (r15 == r17 ? 0 : -1));
        if (r8 != 0) goto L_0x00a1;
    L_0x0088:
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r8.append(r3);
        r13 = "crc";
        r8.append(r13);
        r8 = r8.toString();
        r15 = r11.getLong(r8, r6);
        r8 = (r15 > r9 ? 1 : (r15 == r9 ? 0 : -1));
        if (r8 == 0) goto L_0x00a2;
    L_0x00a1:
        r14 = 1;
    L_0x00a2:
        if (r14 != 0) goto L_0x00cf;
    L_0x00a4:
        r2 = r21.loadExistingExtractions(r22, r23);	 Catch:{ IOException -> 0x00aa }
        r9 = r2;
        goto L_0x00fa;
    L_0x00aa:
        r0 = move-exception;
        r2 = "MultiDex";
        r8 = "Failed to reload existing extracted secondary dex files, falling back to fresh extraction";
        android.util.Log.w(r2, r8, r0);
        r9 = r21.performExtractions();
        r2 = r1.sourceApk;
        r10 = r2.lastModified();
        r2 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1));
        if (r2 != 0) goto L_0x00c4;
    L_0x00c0:
        r6 = r10 - r4;
        r4 = r6;
        goto L_0x00c5;
    L_0x00c4:
        r4 = r10;
    L_0x00c5:
        r6 = r1.sourceCrc;
        r2 = r12;
        r8 = r9;
        putStoredApkInfo(r2, r3, r4, r6, r8);
        goto L_0x00fa;
    L_0x00cd:
        r12 = r22;
    L_0x00cf:
        if (r2 == 0) goto L_0x00d9;
    L_0x00d1:
        r2 = "MultiDex";
        r8 = "Forced extraction must be performed.";
        android.util.Log.i(r2, r8);
        goto L_0x00e0;
    L_0x00d9:
        r2 = "MultiDex";
        r8 = "Detected that extraction must be performed.";
        android.util.Log.i(r2, r8);
    L_0x00e0:
        r9 = r21.performExtractions();
        r2 = r1.sourceApk;
        r10 = r2.lastModified();
        r2 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1));
        if (r2 != 0) goto L_0x00f2;
    L_0x00ee:
        r6 = r10 - r4;
        r4 = r6;
        goto L_0x00f3;
    L_0x00f2:
        r4 = r10;
    L_0x00f3:
        r6 = r1.sourceCrc;
        r2 = r12;
        r8 = r9;
        putStoredApkInfo(r2, r3, r4, r6, r8);
    L_0x00fa:
        r2 = "MultiDex";
        r3 = new java.lang.StringBuilder;
        r4 = "load found ";
        r3.<init>(r4);
        r4 = r9.size();
        r3.append(r4);
        r4 = " secondary dex files";
        r3.append(r4);
        r3 = r3.toString();
        android.util.Log.i(r2, r3);
        return r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.multidex.MultiDexExtractor.load(android.content.Context, java.lang.String, boolean):java.util.List<? extends java.io.File>");
    }

    public final void close() throws IOException {
        this.cacheLock.release();
        this.lockChannel.close();
        this.lockRaf.close();
    }

    private List<ExtractedDex> loadExistingExtractions(Context context, String str) throws IOException {
        String str2 = str;
        Log.i("MultiDex", "loading existing secondary dex files");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.sourceApk.getName());
        stringBuilder.append(".classes");
        String stringBuilder2 = stringBuilder.toString();
        SharedPreferences sharedPreferences = context.getSharedPreferences("multidex.version", VERSION.SDK_INT < 11 ? 0 : 4);
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append(str2);
        stringBuilder3.append("dex.number");
        int i = sharedPreferences.getInt(stringBuilder3.toString(), 1);
        List<ExtractedDex> arrayList = new ArrayList(i - 1);
        int i2 = 2;
        while (i2 <= i) {
            StringBuilder stringBuilder4 = new StringBuilder();
            stringBuilder4.append(stringBuilder2);
            stringBuilder4.append(i2);
            stringBuilder4.append(".zip");
            File extractedDex = new ExtractedDex(r0.dexDir, stringBuilder4.toString());
            if (extractedDex.isFile()) {
                long zipCrc = ZipUtil.getZipCrc(extractedDex);
                if (zipCrc == -1) {
                    zipCrc--;
                }
                extractedDex.crc = zipCrc;
                stringBuilder4 = new StringBuilder();
                stringBuilder4.append(str2);
                stringBuilder4.append("dex.crc.");
                stringBuilder4.append(i2);
                zipCrc = sharedPreferences.getLong(stringBuilder4.toString(), -1);
                stringBuilder4 = new StringBuilder();
                stringBuilder4.append(str2);
                stringBuilder4.append("dex.time.");
                stringBuilder4.append(i2);
                long j = sharedPreferences.getLong(stringBuilder4.toString(), -1);
                long lastModified = extractedDex.lastModified();
                if (j == lastModified) {
                    String str3 = stringBuilder2;
                    SharedPreferences sharedPreferences2 = sharedPreferences;
                    if (zipCrc == extractedDex.crc) {
                        arrayList.add(extractedDex);
                        i2++;
                        stringBuilder2 = str3;
                        sharedPreferences = sharedPreferences2;
                    }
                }
                StringBuilder stringBuilder5 = new StringBuilder("Invalid extracted dex: ");
                stringBuilder5.append(extractedDex);
                stringBuilder5.append(" (key \"");
                stringBuilder5.append(str2);
                stringBuilder5.append("\"), expected modification time: ");
                stringBuilder5.append(j);
                stringBuilder5.append(", modification time: ");
                stringBuilder5.append(lastModified);
                stringBuilder5.append(", expected crc: ");
                stringBuilder5.append(zipCrc);
                stringBuilder5.append(", file crc: ");
                stringBuilder5.append(extractedDex.crc);
                throw new IOException(stringBuilder5.toString());
            }
            stringBuilder = new StringBuilder("Missing extracted secondary dex file '");
            stringBuilder.append(extractedDex.getPath());
            stringBuilder.append("'");
            throw new IOException(stringBuilder.toString());
        }
        return arrayList;
    }

    private List<ExtractedDex> performExtractions() throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.sourceApk.getName());
        stringBuilder.append(".classes");
        String stringBuilder2 = stringBuilder.toString();
        clearDexDir();
        List<ExtractedDex> arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.sourceApk);
        int i = 2;
        File extractedDex;
        int i2;
        StringBuilder stringBuilder3;
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            while (entry != null) {
                StringBuilder stringBuilder4 = new StringBuilder();
                stringBuilder4.append(stringBuilder2);
                stringBuilder4.append(i);
                stringBuilder4.append(".zip");
                extractedDex = new ExtractedDex(this.dexDir, stringBuilder4.toString());
                arrayList.add(extractedDex);
                Log.i("MultiDex", "Extraction is needed for file ".concat(String.valueOf(extractedDex)));
                int i3 = 0;
                i2 = i3;
                while (i3 < 3 && i2 == 0) {
                    i3++;
                    extract(zipFile, entry, extractedDex, stringBuilder2);
                    long zipCrc = ZipUtil.getZipCrc(extractedDex);
                    if (zipCrc == -1) {
                        zipCrc--;
                    }
                    extractedDex.crc = zipCrc;
                    i2 = 1;
                    String str = "MultiDex";
                    stringBuilder3 = new StringBuilder("Extraction ");
                    stringBuilder3.append(i2 != 0 ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : "failed");
                    stringBuilder3.append(" '");
                    stringBuilder3.append(extractedDex.getAbsolutePath());
                    stringBuilder3.append("': length ");
                    stringBuilder3.append(extractedDex.length());
                    stringBuilder3.append(" - crc: ");
                    stringBuilder3.append(extractedDex.crc);
                    Log.i(str, stringBuilder3.toString());
                    if (i2 == 0) {
                        extractedDex.delete();
                        if (extractedDex.exists()) {
                            stringBuilder3 = new StringBuilder("Failed to delete corrupted secondary dex '");
                            stringBuilder3.append(extractedDex.getPath());
                            stringBuilder3.append("'");
                            Log.w("MultiDex", stringBuilder3.toString());
                        }
                    }
                }
                if (i2 == 0) {
                    StringBuilder stringBuilder5 = new StringBuilder("Could not create zip file ");
                    stringBuilder5.append(extractedDex.getAbsolutePath());
                    stringBuilder5.append(" for secondary dex (");
                    stringBuilder5.append(i);
                    stringBuilder5.append(")");
                    throw new IOException(stringBuilder5.toString());
                }
                i++;
                StringBuilder stringBuilder6 = new StringBuilder("classes");
                stringBuilder6.append(i);
                stringBuilder6.append(".dex");
                entry = zipFile.getEntry(stringBuilder6.toString());
            }
            try {
                zipFile.close();
            } catch (Throwable e) {
                Log.w("MultiDex", "Failed to close resource", e);
            }
            return arrayList;
        } catch (Throwable e2) {
            stringBuilder3 = new StringBuilder("Failed to read crc from ");
            stringBuilder3.append(extractedDex.getAbsolutePath());
            Log.w("MultiDex", stringBuilder3.toString(), e2);
            i2 = 0;
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (Throwable e3) {
                Log.w("MultiDex", "Failed to close resource", e3);
            }
        }
    }

    private void clearDexDir() {
        File[] listFiles = this.dexDir.listFiles(new C00761());
        if (listFiles == null) {
            StringBuilder stringBuilder = new StringBuilder("Failed to list secondary dex dir content (");
            stringBuilder.append(this.dexDir.getPath());
            stringBuilder.append(").");
            Log.w("MultiDex", stringBuilder.toString());
            return;
        }
        for (File file : listFiles) {
            StringBuilder stringBuilder2 = new StringBuilder("Trying to delete old file ");
            stringBuilder2.append(file.getPath());
            stringBuilder2.append(" of size ");
            stringBuilder2.append(file.length());
            Log.i("MultiDex", stringBuilder2.toString());
            if (file.delete()) {
                stringBuilder2 = new StringBuilder("Deleted old file ");
                stringBuilder2.append(file.getPath());
                Log.i("MultiDex", stringBuilder2.toString());
            } else {
                stringBuilder2 = new StringBuilder("Failed to delete old file ");
                stringBuilder2.append(file.getPath());
                Log.w("MultiDex", stringBuilder2.toString());
            }
        }
    }

    private static void extract(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException, FileNotFoundException {
        zipFile = zipFile.getInputStream(zipEntry);
        str = File.createTempFile("tmp-".concat(String.valueOf(str)), ".zip", file.getParentFile());
        StringBuilder stringBuilder = new StringBuilder("Extracting ");
        stringBuilder.append(str.getPath());
        Log.i("MultiDex", stringBuilder.toString());
        ZipOutputStream zipOutputStream;
        try {
            zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str)));
            ZipEntry zipEntry2 = new ZipEntry("classes.dex");
            zipEntry2.setTime(zipEntry.getTime());
            zipOutputStream.putNextEntry(zipEntry2);
            zipEntry = new byte[16384];
            for (int read = zipFile.read(zipEntry); read != -1; read = zipFile.read(zipEntry)) {
                zipOutputStream.write(zipEntry, 0, read);
            }
            zipOutputStream.closeEntry();
            zipOutputStream.close();
            StringBuilder stringBuilder2;
            if (str.setReadOnly() == null) {
                stringBuilder2 = new StringBuilder("Failed to mark readonly \"");
                stringBuilder2.append(str.getAbsolutePath());
                stringBuilder2.append("\" (tmp of \"");
                stringBuilder2.append(file.getAbsolutePath());
                stringBuilder2.append("\")");
                throw new IOException(stringBuilder2.toString());
            }
            stringBuilder2 = new StringBuilder("Renaming to ");
            stringBuilder2.append(file.getPath());
            Log.i("MultiDex", stringBuilder2.toString());
            if (str.renameTo(file) == null) {
                stringBuilder2 = new StringBuilder("Failed to rename \"");
                stringBuilder2.append(str.getAbsolutePath());
                stringBuilder2.append("\" to \"");
                stringBuilder2.append(file.getAbsolutePath());
                stringBuilder2.append("\"");
                throw new IOException(stringBuilder2.toString());
            }
            try {
                zipFile.close();
            } catch (ZipFile zipFile2) {
                Log.w("MultiDex", "Failed to close resource", zipFile2);
            }
            str.delete();
        } catch (Throwable th) {
            try {
                zipFile2.close();
            } catch (ZipFile zipFile22) {
                Log.w("MultiDex", "Failed to close resource", zipFile22);
            }
            str.delete();
        }
    }

    private static void putStoredApkInfo(Context context, String str, long j, long j2, List<ExtractedDex> list) {
        context = context.getSharedPreferences("multidex.version", VERSION.SDK_INT < 11 ? 0 : 4).edit();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("timestamp");
        context.putLong(stringBuilder.toString(), j);
        j = new StringBuilder();
        j.append(str);
        j.append("crc");
        context.putLong(j.toString(), j2);
        j = new StringBuilder();
        j.append(str);
        j.append("dex.number");
        context.putInt(j.toString(), list.size() + 1);
        j = 2;
        for (ExtractedDex extractedDex : list) {
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(str);
            stringBuilder2.append("dex.crc.");
            stringBuilder2.append(j);
            context.putLong(stringBuilder2.toString(), extractedDex.crc);
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append(str);
            stringBuilder2.append("dex.time.");
            stringBuilder2.append(j);
            context.putLong(stringBuilder2.toString(), extractedDex.lastModified());
            j++;
        }
        context.commit();
    }
}
