package com.facebook.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class FileLruCache {
    private static final String HEADER_CACHEKEY_KEY = "key";
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    static final String TAG = "FileLruCache";
    private static final AtomicLong bufferIndex = new AtomicLong();
    private final File directory;
    private boolean isTrimInProgress;
    private boolean isTrimPending;
    private AtomicLong lastClearCacheTime = new AtomicLong(0);
    private final Limits limits;
    private final Object lock;
    private final String tag;

    /* renamed from: com.facebook.internal.FileLruCache$3 */
    class C03953 implements Runnable {
        C03953() {
        }

        public void run() {
            FileLruCache.this.trim();
        }
    }

    private static class BufferFile {
        private static final String FILE_NAME_PREFIX = "buffer";
        private static final FilenameFilter filterExcludeBufferFiles = new C03961();
        private static final FilenameFilter filterExcludeNonBufferFiles = new C03972();

        /* renamed from: com.facebook.internal.FileLruCache$BufferFile$1 */
        static class C03961 implements FilenameFilter {
            C03961() {
            }

            public final boolean accept(File file, String str) {
                return str.startsWith(BufferFile.FILE_NAME_PREFIX) == null ? true : null;
            }
        }

        /* renamed from: com.facebook.internal.FileLruCache$BufferFile$2 */
        static class C03972 implements FilenameFilter {
            C03972() {
            }

            public final boolean accept(File file, String str) {
                return str.startsWith(BufferFile.FILE_NAME_PREFIX);
            }
        }

        private BufferFile() {
        }

        static void deleteAll(File file) {
            file = file.listFiles(excludeNonBufferFiles());
            if (file != null) {
                for (File delete : file) {
                    delete.delete();
                }
            }
        }

        static FilenameFilter excludeBufferFiles() {
            return filterExcludeBufferFiles;
        }

        static FilenameFilter excludeNonBufferFiles() {
            return filterExcludeNonBufferFiles;
        }

        static File newFile(File file) {
            StringBuilder stringBuilder = new StringBuilder(FILE_NAME_PREFIX);
            stringBuilder.append(Long.valueOf(FileLruCache.bufferIndex.incrementAndGet()).toString());
            return new File(file, stringBuilder.toString());
        }
    }

    private static class CloseCallbackOutputStream extends OutputStream {
        final StreamCloseCallback callback;
        final OutputStream innerStream;

        CloseCallbackOutputStream(OutputStream outputStream, StreamCloseCallback streamCloseCallback) {
            this.innerStream = outputStream;
            this.callback = streamCloseCallback;
        }

        public void close() throws IOException {
            try {
                this.innerStream.close();
            } finally {
                this.callback.onClose();
            }
        }

        public void flush() throws IOException {
            this.innerStream.flush();
        }

        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.innerStream.write(bArr, i, i2);
        }

        public void write(byte[] bArr) throws IOException {
            this.innerStream.write(bArr);
        }

        public void write(int i) throws IOException {
            this.innerStream.write(i);
        }
    }

    private static final class CopyingInputStream extends InputStream {
        final InputStream input;
        final OutputStream output;

        public final boolean markSupported() {
            return false;
        }

        CopyingInputStream(InputStream inputStream, OutputStream outputStream) {
            this.input = inputStream;
            this.output = outputStream;
        }

        public final int available() throws IOException {
            return this.input.available();
        }

        public final void close() throws IOException {
            try {
                this.input.close();
            } finally {
                this.output.close();
            }
        }

        public final void mark(int i) {
            throw new UnsupportedOperationException();
        }

        public final int read(byte[] bArr) throws IOException {
            int read = this.input.read(bArr);
            if (read > 0) {
                this.output.write(bArr, 0, read);
            }
            return read;
        }

        public final int read() throws IOException {
            int read = this.input.read();
            if (read >= 0) {
                this.output.write(read);
            }
            return read;
        }

        public final int read(byte[] bArr, int i, int i2) throws IOException {
            i2 = this.input.read(bArr, i, i2);
            if (i2 > 0) {
                this.output.write(bArr, i, i2);
            }
            return i2;
        }

        public final synchronized void reset() {
            throw new UnsupportedOperationException();
        }

        public final long skip(long j) throws IOException {
            byte[] bArr = new byte[1024];
            long j2 = 0;
            while (j2 < j) {
                int read = read(bArr, 0, (int) Math.min(j - j2, PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID));
                if (read < 0) {
                    return j2;
                }
                j2 += (long) read;
            }
            return j2;
        }
    }

    public static final class Limits {
        private int byteCount = 1048576;
        private int fileCount = 1024;

        final int getByteCount() {
            return this.byteCount;
        }

        final int getFileCount() {
            return this.fileCount;
        }

        final void setByteCount(int i) {
            if (i < 0) {
                throw new InvalidParameterException("Cache byte-count limit must be >= 0");
            }
            this.byteCount = i;
        }

        final void setFileCount(int i) {
            if (i < 0) {
                throw new InvalidParameterException("Cache file count limit must be >= 0");
            }
            this.fileCount = i;
        }
    }

    private static final class ModifiedFile implements Comparable<ModifiedFile> {
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        private final File file;
        private final long modified;

        ModifiedFile(File file) {
            this.file = file;
            this.modified = file.lastModified();
        }

        final File getFile() {
            return this.file;
        }

        final long getModified() {
            return this.modified;
        }

        public final int compareTo(ModifiedFile modifiedFile) {
            if (getModified() < modifiedFile.getModified()) {
                return -1;
            }
            if (getModified() > modifiedFile.getModified()) {
                return 1;
            }
            return getFile().compareTo(modifiedFile.getFile());
        }

        public final boolean equals(Object obj) {
            return ((obj instanceof ModifiedFile) && compareTo((ModifiedFile) obj) == null) ? true : null;
        }

        public final int hashCode() {
            return ((1073 + this.file.hashCode()) * 37) + ((int) (this.modified % 2147483647L));
        }
    }

    private interface StreamCloseCallback {
        void onClose();
    }

    private static final class StreamHeader {
        private static final int HEADER_VERSION = 0;

        private StreamHeader() {
        }

        static void writeHeader(OutputStream outputStream, JSONObject jSONObject) throws IOException {
            jSONObject = jSONObject.toString().getBytes();
            outputStream.write(0);
            outputStream.write((jSONObject.length >> 16) & 255);
            outputStream.write((jSONObject.length >> 8) & 255);
            outputStream.write(jSONObject.length & 255);
            outputStream.write(jSONObject);
        }

        static JSONObject readHeader(InputStream inputStream) throws IOException {
            if (inputStream.read() != 0) {
                return null;
            }
            int i = 0;
            int i2 = 0;
            int i3 = i2;
            while (i2 < 3) {
                int read = inputStream.read();
                if (read == -1) {
                    Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i3 = (i3 << 8) + (read & 255);
                i2++;
            }
            byte[] bArr = new byte[i3];
            while (i < i3) {
                read = inputStream.read(bArr, i, i3 - i);
                if (read <= 0) {
                    inputStream = LoggingBehavior.CACHE;
                    String str = FileLruCache.TAG;
                    StringBuilder stringBuilder = new StringBuilder("readHeader: stream.read stopped at ");
                    stringBuilder.append(Integer.valueOf(i));
                    stringBuilder.append(" when expected ");
                    stringBuilder.append(i3);
                    Logger.log(inputStream, str, stringBuilder.toString());
                    return null;
                }
                i += read;
            }
            try {
                inputStream = new JSONTokener(new String(bArr)).nextValue();
                if (inputStream instanceof JSONObject) {
                    return (JSONObject) inputStream;
                }
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                str = FileLruCache.TAG;
                StringBuilder stringBuilder2 = new StringBuilder("readHeader: expected JSONObject, got ");
                stringBuilder2.append(inputStream.getClass().getCanonicalName());
                Logger.log(loggingBehavior, str, stringBuilder2.toString());
                return null;
            } catch (InputStream inputStream2) {
                throw new IOException(inputStream2.getMessage());
            }
        }
    }

    public FileLruCache(String str, Limits limits) {
        this.tag = str;
        this.limits = limits;
        this.directory = new File(FacebookSdk.getCacheDir(), str);
        this.lock = new Object();
        if (this.directory.mkdirs() != null || this.directory.isDirectory() != null) {
            BufferFile.deleteAll(this.directory);
        }
    }

    final long sizeInBytesForTest() {
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
        r9 = this;
        r0 = r9.lock;
        monitor-enter(r0);
    L_0x0003:
        r1 = r9.isTrimPending;	 Catch:{ all -> 0x002e }
        if (r1 != 0) goto L_0x0028;	 Catch:{ all -> 0x002e }
    L_0x0007:
        r1 = r9.isTrimInProgress;	 Catch:{ all -> 0x002e }
        if (r1 == 0) goto L_0x000c;	 Catch:{ all -> 0x002e }
    L_0x000b:
        goto L_0x0028;	 Catch:{ all -> 0x002e }
    L_0x000c:
        monitor-exit(r0);	 Catch:{ all -> 0x002e }
        r0 = r9.directory;
        r0 = r0.listFiles();
        r1 = 0;
        if (r0 == 0) goto L_0x0027;
    L_0x0017:
        r3 = r0.length;
        r4 = 0;
    L_0x0019:
        if (r4 >= r3) goto L_0x0027;
    L_0x001b:
        r5 = r0[r4];
        r5 = r5.length();
        r7 = r1 + r5;
        r4 = r4 + 1;
        r1 = r7;
        goto L_0x0019;
    L_0x0027:
        return r1;
    L_0x0028:
        r1 = r9.lock;	 Catch:{ InterruptedException -> 0x0003 }
        r1.wait();	 Catch:{ InterruptedException -> 0x0003 }
        goto L_0x0003;
    L_0x002e:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x002e }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.FileLruCache.sizeInBytesForTest():long");
    }

    public final InputStream get(String str) throws IOException {
        return get(str, null);
    }

    public final java.io.InputStream get(java.lang.String r7, java.lang.String r8) throws java.io.IOException {
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
        r6 = this;
        r0 = new java.io.File;
        r1 = r6.directory;
        r2 = com.facebook.internal.Utility.md5hash(r7);
        r0.<init>(r1, r2);
        r1 = 0;
        r2 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0082 }
        r2.<init>(r0);	 Catch:{ IOException -> 0x0082 }
        r3 = new java.io.BufferedInputStream;
        r4 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r3.<init>(r2, r4);
        r2 = com.facebook.internal.FileLruCache.StreamHeader.readHeader(r3);	 Catch:{ all -> 0x007d }
        if (r2 != 0) goto L_0x0022;
    L_0x001e:
        r3.close();
        return r1;
    L_0x0022:
        r4 = "key";	 Catch:{ all -> 0x007d }
        r4 = r2.optString(r4);	 Catch:{ all -> 0x007d }
        if (r4 == 0) goto L_0x0079;	 Catch:{ all -> 0x007d }
    L_0x002a:
        r7 = r4.equals(r7);	 Catch:{ all -> 0x007d }
        if (r7 != 0) goto L_0x0031;	 Catch:{ all -> 0x007d }
    L_0x0030:
        goto L_0x0079;	 Catch:{ all -> 0x007d }
    L_0x0031:
        r7 = "tag";	 Catch:{ all -> 0x007d }
        r7 = r2.optString(r7, r1);	 Catch:{ all -> 0x007d }
        if (r8 != 0) goto L_0x003b;	 Catch:{ all -> 0x007d }
    L_0x0039:
        if (r7 != 0) goto L_0x0043;	 Catch:{ all -> 0x007d }
    L_0x003b:
        if (r8 == 0) goto L_0x0047;	 Catch:{ all -> 0x007d }
    L_0x003d:
        r7 = r8.equals(r7);	 Catch:{ all -> 0x007d }
        if (r7 != 0) goto L_0x0047;
    L_0x0043:
        r3.close();
        return r1;
    L_0x0047:
        r7 = new java.util.Date;	 Catch:{ all -> 0x007d }
        r7.<init>();	 Catch:{ all -> 0x007d }
        r7 = r7.getTime();	 Catch:{ all -> 0x007d }
        r1 = com.facebook.LoggingBehavior.CACHE;	 Catch:{ all -> 0x007d }
        r2 = TAG;	 Catch:{ all -> 0x007d }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x007d }
        r5 = "Setting lastModified to ";	 Catch:{ all -> 0x007d }
        r4.<init>(r5);	 Catch:{ all -> 0x007d }
        r5 = java.lang.Long.valueOf(r7);	 Catch:{ all -> 0x007d }
        r4.append(r5);	 Catch:{ all -> 0x007d }
        r5 = " for ";	 Catch:{ all -> 0x007d }
        r4.append(r5);	 Catch:{ all -> 0x007d }
        r5 = r0.getName();	 Catch:{ all -> 0x007d }
        r4.append(r5);	 Catch:{ all -> 0x007d }
        r4 = r4.toString();	 Catch:{ all -> 0x007d }
        com.facebook.internal.Logger.log(r1, r2, r4);	 Catch:{ all -> 0x007d }
        r0.setLastModified(r7);	 Catch:{ all -> 0x007d }
        return r3;
    L_0x0079:
        r3.close();
        return r1;
    L_0x007d:
        r7 = move-exception;
        r3.close();
        throw r7;
    L_0x0082:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.FileLruCache.get(java.lang.String, java.lang.String):java.io.InputStream");
    }

    public final OutputStream openPutStream(String str) throws IOException {
        return openPutStream(str, null);
    }

    public final OutputStream openPutStream(String str, String str2) throws IOException {
        final File newFile = BufferFile.newFile(this.directory);
        newFile.delete();
        if (newFile.createNewFile()) {
            try {
                OutputStream fileOutputStream = new FileOutputStream(newFile);
                final long currentTimeMillis = System.currentTimeMillis();
                final String str3 = str;
                OutputStream bufferedOutputStream = new BufferedOutputStream(new CloseCallbackOutputStream(fileOutputStream, new StreamCloseCallback() {
                    public void onClose() {
                        if (currentTimeMillis < FileLruCache.this.lastClearCacheTime.get()) {
                            newFile.delete();
                        } else {
                            FileLruCache.this.renameToTargetAndTrim(str3, newFile);
                        }
                    }
                }), 8192);
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(HEADER_CACHEKEY_KEY, str);
                    if (Utility.isNullOrEmpty(str2) == null) {
                        jSONObject.put(HEADER_CACHE_CONTENT_TAG_KEY, str2);
                    }
                    StreamHeader.writeHeader(bufferedOutputStream, jSONObject);
                    return bufferedOutputStream;
                } catch (String str4) {
                    Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error creating JSON header for cache file: ".concat(String.valueOf(str4)));
                    throw new IOException(str4.getMessage());
                } catch (Throwable th) {
                    bufferedOutputStream.close();
                }
            } catch (String str42) {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error creating buffer output stream: ".concat(String.valueOf(str42)));
                throw new IOException(str42.getMessage());
            }
        }
        str2 = new StringBuilder("Could not create file at ");
        str2.append(newFile.getAbsolutePath());
        throw new IOException(str2.toString());
    }

    public final void clearCache() {
        final File[] listFiles = this.directory.listFiles(BufferFile.excludeBufferFiles());
        this.lastClearCacheTime.set(System.currentTimeMillis());
        if (listFiles != null) {
            FacebookSdk.getExecutor().execute(new Runnable() {
                public void run() {
                    for (File delete : listFiles) {
                        delete.delete();
                    }
                }
            });
        }
    }

    public final String getLocation() {
        return this.directory.getPath();
    }

    private void renameToTargetAndTrim(String str, File file) {
        if (file.renameTo(new File(this.directory, Utility.md5hash(str))) == null) {
            file.delete();
        }
        postTrim();
    }

    public final InputStream interceptAndPut(String str, InputStream inputStream) throws IOException {
        return new CopyingInputStream(inputStream, openPutStream(str));
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("{FileLruCache: tag:");
        stringBuilder.append(this.tag);
        stringBuilder.append(" file:");
        stringBuilder.append(this.directory.getName());
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    private void postTrim() {
        synchronized (this.lock) {
            if (!this.isTrimPending) {
                this.isTrimPending = true;
                FacebookSdk.getExecutor().execute(new C03953());
            }
        }
    }

    private void trim() {
        FileLruCache fileLruCache;
        Throwable th;
        PriorityQueue priorityQueue = this.lock;
        synchronized (priorityQueue) {
            boolean z = false;
            try {
                fileLruCache.isTrimPending = false;
                fileLruCache.isTrimInProgress = true;
            } finally {
                z = 
/*
Method generation error in method: com.facebook.internal.FileLruCache.trim():void, dex: classes.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00fb: MERGE  (r3_12 'z' boolean) = (r0_5 boolean), (r3_11 'z' boolean) in method: com.facebook.internal.FileLruCache.trim():void, dex: classes.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:226)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:203)
	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:100)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:50)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:299)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeSynchronizedRegion(RegionGen.java:229)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:187)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:320)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:257)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:220)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:75)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:12)
	at jadx.core.ProcessClass.process(ProcessClass.java:40)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
Caused by: jadx.core.utils.exceptions.CodegenException: MERGE can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:537)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:509)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
	... 29 more

*/
            }
