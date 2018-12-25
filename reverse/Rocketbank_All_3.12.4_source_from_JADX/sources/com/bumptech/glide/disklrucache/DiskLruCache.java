package com.bumptech.glide.disklrucache;

import com.facebook.appevents.AppEventsConstants;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class DiskLruCache implements Closeable {
    private final int appVersion;
    private final Callable<Void> cleanupCallable = new C02981();
    private final File directory;
    final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private Writer journalWriter;
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap(0, 0.75f, true);
    private long maxSize;
    private long nextSequenceNumber = 0;
    private int redundantOpCount;
    private long size = 0;
    private final int valueCount;

    /* renamed from: com.bumptech.glide.disklrucache.DiskLruCache$1 */
    class C02981 implements Callable<Void> {
        C02981() {
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private java.lang.Void call() throws java.lang.Exception {
            /*
            r3 = this;
            r0 = com.bumptech.glide.disklrucache.DiskLruCache.this;
            monitor-enter(r0);
            r1 = com.bumptech.glide.disklrucache.DiskLruCache.this;	 Catch:{ all -> 0x0027 }
            r1 = r1.journalWriter;	 Catch:{ all -> 0x0027 }
            r2 = 0;
            if (r1 != 0) goto L_0x000e;
        L_0x000c:
            monitor-exit(r0);	 Catch:{ all -> 0x0027 }
            return r2;
        L_0x000e:
            r1 = com.bumptech.glide.disklrucache.DiskLruCache.this;	 Catch:{ all -> 0x0027 }
            r1.trimToSize();	 Catch:{ all -> 0x0027 }
            r1 = com.bumptech.glide.disklrucache.DiskLruCache.this;	 Catch:{ all -> 0x0027 }
            r1 = com.bumptech.glide.disklrucache.DiskLruCache.access$200(r1);	 Catch:{ all -> 0x0027 }
            if (r1 == 0) goto L_0x0025;
        L_0x001b:
            r1 = com.bumptech.glide.disklrucache.DiskLruCache.this;	 Catch:{ all -> 0x0027 }
            r1.rebuildJournal();	 Catch:{ all -> 0x0027 }
            r1 = com.bumptech.glide.disklrucache.DiskLruCache.this;	 Catch:{ all -> 0x0027 }
            r1.redundantOpCount = 0;	 Catch:{ all -> 0x0027 }
        L_0x0025:
            monitor-exit(r0);	 Catch:{ all -> 0x0027 }
            return r2;
        L_0x0027:
            r1 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0027 }
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.disklrucache.DiskLruCache.1.call():java.lang.Void");
        }
    }

    public final class Editor {
        private boolean committed;
        private final Entry entry;
        private final boolean[] written;

        private Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.readable != null ? null : new boolean[1];
        }

        public final File getFile$54ec799f() throws IOException {
            File file;
            synchronized (DiskLruCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    this.written[0] = true;
                }
                file = this.entry.dirtyFiles[0];
                if (!DiskLruCache.this.directory.exists()) {
                    DiskLruCache.this.directory.mkdirs();
                }
            }
            return file;
        }

        public final void commit() throws IOException {
            DiskLruCache.this.completeEdit(this, true);
            this.committed = true;
        }

        public final void abortUnlessCommitted() {
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
            r2 = this;
            r0 = r2.committed;
            if (r0 != 0) goto L_0x000b;
        L_0x0004:
            r0 = com.bumptech.glide.disklrucache.DiskLruCache.this;	 Catch:{ IOException -> 0x000b }
            r1 = 0;	 Catch:{ IOException -> 0x000b }
            r0.completeEdit(r2, r1);	 Catch:{ IOException -> 0x000b }
            return;
        L_0x000b:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.disklrucache.DiskLruCache.Editor.abortUnlessCommitted():void");
        }
    }

    final class Entry {
        File[] cleanFiles;
        private Editor currentEditor;
        File[] dirtyFiles;
        private final String key;
        private final long[] lengths;
        private boolean readable;
        private long sequenceNumber;

        private Entry(String str) {
            this.key = str;
            this.lengths = new long[1];
            this.cleanFiles = new File[1];
            this.dirtyFiles = new File[1];
            StringBuilder stringBuilder = new StringBuilder(str);
            stringBuilder.append('.');
            str = stringBuilder.length();
            for (int i = 0; i < 1; i++) {
                stringBuilder.append(0);
                this.cleanFiles[0] = new File(DiskLruCache.this.directory, stringBuilder.toString());
                stringBuilder.append(".tmp");
                this.dirtyFiles[0] = new File(DiskLruCache.this.directory, stringBuilder.toString());
                stringBuilder.setLength(str);
            }
        }

        public final String getLengths() throws IOException {
            StringBuilder stringBuilder = new StringBuilder();
            for (long j : this.lengths) {
                stringBuilder.append(' ');
                stringBuilder.append(j);
            }
            return stringBuilder.toString();
        }

        static /* synthetic */ void access$800(com.bumptech.glide.disklrucache.DiskLruCache.Entry r4, java.lang.String[] r5) throws java.io.IOException {
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
            r0 = r5.length;
            r1 = 1;
            if (r0 == r1) goto L_0x001f;
        L_0x0007:
            r4 = new java.io.IOException;
            r0 = new java.lang.StringBuilder;
            r1 = "unexpected journal line: ";
            r0.<init>(r1);
            r5 = java.util.Arrays.toString(r5);
            r0.append(r5);
            r5 = r0.toString();
            r4.<init>(r5);
            throw r4;
        L_0x001f:
            r0 = 0;
        L_0x0020:
            r1 = r5.length;	 Catch:{ NumberFormatException -> 0x0031 }
            if (r0 >= r1) goto L_0x0030;	 Catch:{ NumberFormatException -> 0x0031 }
        L_0x0023:
            r1 = r4.lengths;	 Catch:{ NumberFormatException -> 0x0031 }
            r2 = r5[r0];	 Catch:{ NumberFormatException -> 0x0031 }
            r2 = java.lang.Long.parseLong(r2);	 Catch:{ NumberFormatException -> 0x0031 }
            r1[r0] = r2;	 Catch:{ NumberFormatException -> 0x0031 }
            r0 = r0 + 1;
            goto L_0x0020;
        L_0x0030:
            return;
        L_0x0031:
            r4 = new java.io.IOException;
            r0 = new java.lang.StringBuilder;
            r1 = "unexpected journal line: ";
            r0.<init>(r1);
            r5 = java.util.Arrays.toString(r5);
            r0.append(r5);
            r5 = r0.toString();
            r4.<init>(r5);
            throw r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.disklrucache.DiskLruCache.Entry.access$800(com.bumptech.glide.disklrucache.DiskLruCache$Entry, java.lang.String[]):void");
        }
    }

    public final class Value {
        private final File[] files;
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;

        private Value(String str, long j, File[] fileArr, long[] jArr) {
            this.key = str;
            this.sequenceNumber = j;
            this.files = fileArr;
            this.lengths = jArr;
        }

        public final File getFile$54ec799f() {
            return this.files[0];
        }
    }

    private DiskLruCache(File file, long j) {
        File file2 = file;
        this.directory = file2;
        this.appVersion = 1;
        this.journalFile = new File(file2, "journal");
        this.journalFileTmp = new File(file2, "journal.tmp");
        this.journalFileBackup = new File(file2, "journal.bkp");
        this.valueCount = 1;
        this.maxSize = j;
    }

    public static DiskLruCache open$641e3723(File file, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else if (!file2.renameTo(file3)) {
                throw new IOException();
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, j);
        if (diskLruCache.journalFile.exists()) {
            try {
                diskLruCache.readJournal();
                diskLruCache.processJournal();
                return diskLruCache;
            } catch (IOException e) {
                PrintStream printStream = System.out;
                StringBuilder stringBuilder = new StringBuilder("DiskLruCache ");
                stringBuilder.append(file);
                stringBuilder.append(" is corrupt: ");
                stringBuilder.append(e.getMessage());
                stringBuilder.append(", removing");
                printStream.println(stringBuilder.toString());
                diskLruCache.close();
                Util.deleteContents(diskLruCache.directory);
            }
        }
        file.mkdirs();
        diskLruCache = new DiskLruCache(file, j);
        diskLruCache.rebuildJournal();
        return diskLruCache;
    }

    private void readJournal() throws java.io.IOException {
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
        r11 = this;
        r0 = new com.bumptech.glide.disklrucache.StrictLineReader;
        r1 = new java.io.FileInputStream;
        r2 = r11.journalFile;
        r1.<init>(r2);
        r2 = com.bumptech.glide.disklrucache.Util.US_ASCII;
        r0.<init>(r1, r2);
        r1 = r0.readLine();	 Catch:{ all -> 0x015d }
        r2 = r0.readLine();	 Catch:{ all -> 0x015d }
        r3 = r0.readLine();	 Catch:{ all -> 0x015d }
        r4 = r0.readLine();	 Catch:{ all -> 0x015d }
        r5 = r0.readLine();	 Catch:{ all -> 0x015d }
        r6 = "libcore.io.DiskLruCache";	 Catch:{ all -> 0x015d }
        r6 = r6.equals(r1);	 Catch:{ all -> 0x015d }
        if (r6 == 0) goto L_0x012c;	 Catch:{ all -> 0x015d }
    L_0x002a:
        r6 = "1";	 Catch:{ all -> 0x015d }
        r6 = r6.equals(r2);	 Catch:{ all -> 0x015d }
        if (r6 == 0) goto L_0x012c;	 Catch:{ all -> 0x015d }
    L_0x0032:
        r6 = 1;	 Catch:{ all -> 0x015d }
        r7 = java.lang.Integer.toString(r6);	 Catch:{ all -> 0x015d }
        r3 = r7.equals(r3);	 Catch:{ all -> 0x015d }
        if (r3 == 0) goto L_0x012c;	 Catch:{ all -> 0x015d }
    L_0x003d:
        r3 = java.lang.Integer.toString(r6);	 Catch:{ all -> 0x015d }
        r3 = r3.equals(r4);	 Catch:{ all -> 0x015d }
        if (r3 == 0) goto L_0x012c;	 Catch:{ all -> 0x015d }
    L_0x0047:
        r3 = "";	 Catch:{ all -> 0x015d }
        r3 = r3.equals(r5);	 Catch:{ all -> 0x015d }
        if (r3 != 0) goto L_0x0051;
    L_0x004f:
        goto L_0x012c;
    L_0x0051:
        r1 = 0;
        r2 = r1;
    L_0x0053:
        r3 = r0.readLine();	 Catch:{ EOFException -> 0x0100 }
        r4 = 32;	 Catch:{ EOFException -> 0x0100 }
        r5 = r3.indexOf(r4);	 Catch:{ EOFException -> 0x0100 }
        r7 = -1;	 Catch:{ EOFException -> 0x0100 }
        if (r5 != r7) goto L_0x0070;	 Catch:{ EOFException -> 0x0100 }
    L_0x0060:
        r1 = new java.io.IOException;	 Catch:{ EOFException -> 0x0100 }
        r4 = "unexpected journal line: ";	 Catch:{ EOFException -> 0x0100 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ EOFException -> 0x0100 }
        r3 = r4.concat(r3);	 Catch:{ EOFException -> 0x0100 }
        r1.<init>(r3);	 Catch:{ EOFException -> 0x0100 }
        throw r1;	 Catch:{ EOFException -> 0x0100 }
    L_0x0070:
        r8 = r5 + 1;	 Catch:{ EOFException -> 0x0100 }
        r4 = r3.indexOf(r4, r8);	 Catch:{ EOFException -> 0x0100 }
        if (r4 != r7) goto L_0x008d;	 Catch:{ EOFException -> 0x0100 }
    L_0x0078:
        r8 = r3.substring(r8);	 Catch:{ EOFException -> 0x0100 }
        r9 = 6;	 Catch:{ EOFException -> 0x0100 }
        if (r5 != r9) goto L_0x0091;	 Catch:{ EOFException -> 0x0100 }
    L_0x007f:
        r9 = "REMOVE";	 Catch:{ EOFException -> 0x0100 }
        r9 = r3.startsWith(r9);	 Catch:{ EOFException -> 0x0100 }
        if (r9 == 0) goto L_0x0091;	 Catch:{ EOFException -> 0x0100 }
    L_0x0087:
        r3 = r11.lruEntries;	 Catch:{ EOFException -> 0x0100 }
        r3.remove(r8);	 Catch:{ EOFException -> 0x0100 }
        goto L_0x00ec;	 Catch:{ EOFException -> 0x0100 }
    L_0x008d:
        r8 = r3.substring(r8, r4);	 Catch:{ EOFException -> 0x0100 }
    L_0x0091:
        r9 = r11.lruEntries;	 Catch:{ EOFException -> 0x0100 }
        r9 = r9.get(r8);	 Catch:{ EOFException -> 0x0100 }
        r9 = (com.bumptech.glide.disklrucache.DiskLruCache.Entry) r9;	 Catch:{ EOFException -> 0x0100 }
        if (r9 != 0) goto L_0x00a5;	 Catch:{ EOFException -> 0x0100 }
    L_0x009b:
        r9 = new com.bumptech.glide.disklrucache.DiskLruCache$Entry;	 Catch:{ EOFException -> 0x0100 }
        r9.<init>(r8);	 Catch:{ EOFException -> 0x0100 }
        r10 = r11.lruEntries;	 Catch:{ EOFException -> 0x0100 }
        r10.put(r8, r9);	 Catch:{ EOFException -> 0x0100 }
    L_0x00a5:
        r8 = 5;	 Catch:{ EOFException -> 0x0100 }
        if (r4 == r7) goto L_0x00c9;	 Catch:{ EOFException -> 0x0100 }
    L_0x00a8:
        if (r5 != r8) goto L_0x00c9;	 Catch:{ EOFException -> 0x0100 }
    L_0x00aa:
        r10 = "CLEAN";	 Catch:{ EOFException -> 0x0100 }
        r10 = r3.startsWith(r10);	 Catch:{ EOFException -> 0x0100 }
        if (r10 == 0) goto L_0x00c9;	 Catch:{ EOFException -> 0x0100 }
    L_0x00b2:
        r4 = r4 + 1;	 Catch:{ EOFException -> 0x0100 }
        r3 = r3.substring(r4);	 Catch:{ EOFException -> 0x0100 }
        r4 = " ";	 Catch:{ EOFException -> 0x0100 }
        r3 = r3.split(r4);	 Catch:{ EOFException -> 0x0100 }
        r9.readable = true;	 Catch:{ EOFException -> 0x0100 }
        r4 = 0;	 Catch:{ EOFException -> 0x0100 }
        r9.currentEditor = r4;	 Catch:{ EOFException -> 0x0100 }
        com.bumptech.glide.disklrucache.DiskLruCache.Entry.access$800(r9, r3);	 Catch:{ EOFException -> 0x0100 }
        goto L_0x00ec;	 Catch:{ EOFException -> 0x0100 }
    L_0x00c9:
        if (r4 != r7) goto L_0x00de;	 Catch:{ EOFException -> 0x0100 }
    L_0x00cb:
        if (r5 != r8) goto L_0x00de;	 Catch:{ EOFException -> 0x0100 }
    L_0x00cd:
        r8 = "DIRTY";	 Catch:{ EOFException -> 0x0100 }
        r8 = r3.startsWith(r8);	 Catch:{ EOFException -> 0x0100 }
        if (r8 == 0) goto L_0x00de;	 Catch:{ EOFException -> 0x0100 }
    L_0x00d5:
        r3 = new com.bumptech.glide.disklrucache.DiskLruCache$Editor;	 Catch:{ EOFException -> 0x0100 }
        r3.<init>(r9);	 Catch:{ EOFException -> 0x0100 }
        r9.currentEditor = r3;	 Catch:{ EOFException -> 0x0100 }
        goto L_0x00ec;	 Catch:{ EOFException -> 0x0100 }
    L_0x00de:
        if (r4 != r7) goto L_0x00f0;	 Catch:{ EOFException -> 0x0100 }
    L_0x00e0:
        r4 = 4;	 Catch:{ EOFException -> 0x0100 }
        if (r5 != r4) goto L_0x00f0;	 Catch:{ EOFException -> 0x0100 }
    L_0x00e3:
        r4 = "READ";	 Catch:{ EOFException -> 0x0100 }
        r4 = r3.startsWith(r4);	 Catch:{ EOFException -> 0x0100 }
        if (r4 != 0) goto L_0x00ec;	 Catch:{ EOFException -> 0x0100 }
    L_0x00eb:
        goto L_0x00f0;	 Catch:{ EOFException -> 0x0100 }
    L_0x00ec:
        r2 = r2 + 1;	 Catch:{ EOFException -> 0x0100 }
        goto L_0x0053;	 Catch:{ EOFException -> 0x0100 }
    L_0x00f0:
        r1 = new java.io.IOException;	 Catch:{ EOFException -> 0x0100 }
        r4 = "unexpected journal line: ";	 Catch:{ EOFException -> 0x0100 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ EOFException -> 0x0100 }
        r3 = r4.concat(r3);	 Catch:{ EOFException -> 0x0100 }
        r1.<init>(r3);	 Catch:{ EOFException -> 0x0100 }
        throw r1;	 Catch:{ EOFException -> 0x0100 }
    L_0x0100:
        r1 = r11.lruEntries;	 Catch:{ all -> 0x015d }
        r1 = r1.size();	 Catch:{ all -> 0x015d }
        r2 = r2 - r1;	 Catch:{ all -> 0x015d }
        r11.redundantOpCount = r2;	 Catch:{ all -> 0x015d }
        r1 = r0.hasUnterminatedLine();	 Catch:{ all -> 0x015d }
        if (r1 == 0) goto L_0x0113;	 Catch:{ all -> 0x015d }
    L_0x010f:
        r11.rebuildJournal();	 Catch:{ all -> 0x015d }
        goto L_0x0128;	 Catch:{ all -> 0x015d }
    L_0x0113:
        r1 = new java.io.BufferedWriter;	 Catch:{ all -> 0x015d }
        r2 = new java.io.OutputStreamWriter;	 Catch:{ all -> 0x015d }
        r3 = new java.io.FileOutputStream;	 Catch:{ all -> 0x015d }
        r4 = r11.journalFile;	 Catch:{ all -> 0x015d }
        r3.<init>(r4, r6);	 Catch:{ all -> 0x015d }
        r4 = com.bumptech.glide.disklrucache.Util.US_ASCII;	 Catch:{ all -> 0x015d }
        r2.<init>(r3, r4);	 Catch:{ all -> 0x015d }
        r1.<init>(r2);	 Catch:{ all -> 0x015d }
        r11.journalWriter = r1;	 Catch:{ all -> 0x015d }
    L_0x0128:
        com.bumptech.glide.disklrucache.Util.closeQuietly(r0);
        return;
    L_0x012c:
        r3 = new java.io.IOException;	 Catch:{ all -> 0x015d }
        r6 = new java.lang.StringBuilder;	 Catch:{ all -> 0x015d }
        r7 = "unexpected journal header: [";	 Catch:{ all -> 0x015d }
        r6.<init>(r7);	 Catch:{ all -> 0x015d }
        r6.append(r1);	 Catch:{ all -> 0x015d }
        r1 = ", ";	 Catch:{ all -> 0x015d }
        r6.append(r1);	 Catch:{ all -> 0x015d }
        r6.append(r2);	 Catch:{ all -> 0x015d }
        r1 = ", ";	 Catch:{ all -> 0x015d }
        r6.append(r1);	 Catch:{ all -> 0x015d }
        r6.append(r4);	 Catch:{ all -> 0x015d }
        r1 = ", ";	 Catch:{ all -> 0x015d }
        r6.append(r1);	 Catch:{ all -> 0x015d }
        r6.append(r5);	 Catch:{ all -> 0x015d }
        r1 = "]";	 Catch:{ all -> 0x015d }
        r6.append(r1);	 Catch:{ all -> 0x015d }
        r1 = r6.toString();	 Catch:{ all -> 0x015d }
        r3.<init>(r1);	 Catch:{ all -> 0x015d }
        throw r3;	 Catch:{ all -> 0x015d }
    L_0x015d:
        r1 = move-exception;
        com.bumptech.glide.disklrucache.Util.closeQuietly(r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.disklrucache.DiskLruCache.readJournal():void");
    }

    private void processJournal() throws IOException {
        File file = this.journalFileTmp;
        if (!file.exists() || file.delete()) {
            Iterator it = this.lruEntries.values().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                int i = 0;
                if (entry.currentEditor == null) {
                    while (i <= 0) {
                        this.size += entry.lengths[i];
                        i++;
                    }
                } else {
                    entry.currentEditor = null;
                    while (i <= 0) {
                        File file2 = entry.cleanFiles[i];
                        if (!file2.exists() || file2.delete()) {
                            file2 = entry.dirtyFiles[i];
                            if (!file2.exists() || file2.delete()) {
                                i++;
                            } else {
                                throw new IOException();
                            }
                        }
                        throw new IOException();
                    }
                    it.remove();
                }
            }
            return;
        }
        throw new IOException();
    }

    private synchronized void rebuildJournal() throws IOException {
        if (this.journalWriter != null) {
            this.journalWriter.close();
        }
        Writer bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), Util.US_ASCII));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write(AppEventsConstants.EVENT_PARAM_VALUE_YES);
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(1));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(1));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (Entry entry : this.lruEntries.values()) {
                StringBuilder stringBuilder;
                if (entry.currentEditor != null) {
                    stringBuilder = new StringBuilder("DIRTY ");
                    stringBuilder.append(entry.key);
                    stringBuilder.append('\n');
                    bufferedWriter.write(stringBuilder.toString());
                } else {
                    stringBuilder = new StringBuilder("CLEAN ");
                    stringBuilder.append(entry.key);
                    stringBuilder.append(entry.getLengths());
                    stringBuilder.append('\n');
                    bufferedWriter.write(stringBuilder.toString());
                }
            }
            if (this.journalFile.exists()) {
                File file = this.journalFile;
                File file2 = this.journalFileBackup;
                if (file2.exists() && !file2.delete()) {
                    throw new IOException();
                } else if (!file.renameTo(file2)) {
                    throw new IOException();
                }
            }
            if (this.journalFileTmp.renameTo(this.journalFile)) {
                this.journalFileBackup.delete();
                this.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), Util.US_ASCII));
            } else {
                throw new IOException();
            }
        } finally {
            bufferedWriter.close();
        }
    }

    public final Editor edit(String str) throws IOException {
        return edit$7efc45cb(str);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void completeEdit(com.bumptech.glide.disklrucache.DiskLruCache.Editor r11, boolean r12) throws java.io.IOException {
        /*
        r10 = this;
        monitor-enter(r10);
        r0 = r11.entry;	 Catch:{ all -> 0x011f }
        r1 = r0.currentEditor;	 Catch:{ all -> 0x011f }
        if (r1 == r11) goto L_0x0011;
    L_0x000b:
        r11 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x011f }
        r11.<init>();	 Catch:{ all -> 0x011f }
        throw r11;	 Catch:{ all -> 0x011f }
    L_0x0011:
        r1 = 0;
        if (r12 == 0) goto L_0x0046;
    L_0x0014:
        r2 = r0.readable;	 Catch:{ all -> 0x011f }
        if (r2 != 0) goto L_0x0046;
    L_0x001a:
        r2 = r1;
    L_0x001b:
        if (r2 > 0) goto L_0x0046;
    L_0x001d:
        r3 = r11.written;	 Catch:{ all -> 0x011f }
        r3 = r3[r1];	 Catch:{ all -> 0x011f }
        if (r3 != 0) goto L_0x0032;
    L_0x0025:
        r12 = r11.this$0;	 Catch:{ all -> 0x011f }
        r12.completeEdit(r11, r1);	 Catch:{ all -> 0x011f }
        r11 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x011f }
        r12 = "Newly created entry didn't create value for index 0";
        r11.<init>(r12);	 Catch:{ all -> 0x011f }
        throw r11;	 Catch:{ all -> 0x011f }
    L_0x0032:
        r3 = r0.dirtyFiles;	 Catch:{ all -> 0x011f }
        r3 = r3[r1];	 Catch:{ all -> 0x011f }
        r3 = r3.exists();	 Catch:{ all -> 0x011f }
        if (r3 != 0) goto L_0x0043;
    L_0x003c:
        r12 = r11.this$0;	 Catch:{ all -> 0x011f }
        r12.completeEdit(r11, r1);	 Catch:{ all -> 0x011f }
        monitor-exit(r10);
        return;
    L_0x0043:
        r2 = r2 + 1;
        goto L_0x001b;
    L_0x0046:
        r11 = r1;
    L_0x0047:
        if (r11 > 0) goto L_0x008a;
    L_0x0049:
        r2 = r0.dirtyFiles;	 Catch:{ all -> 0x011f }
        r2 = r2[r1];	 Catch:{ all -> 0x011f }
        if (r12 == 0) goto L_0x0075;
    L_0x004f:
        r3 = r2.exists();	 Catch:{ all -> 0x011f }
        if (r3 == 0) goto L_0x0087;
    L_0x0055:
        r3 = r0.cleanFiles;	 Catch:{ all -> 0x011f }
        r3 = r3[r1];	 Catch:{ all -> 0x011f }
        r2.renameTo(r3);	 Catch:{ all -> 0x011f }
        r2 = r0.lengths;	 Catch:{ all -> 0x011f }
        r4 = r2[r1];	 Catch:{ all -> 0x011f }
        r2 = r3.length();	 Catch:{ all -> 0x011f }
        r6 = r0.lengths;	 Catch:{ all -> 0x011f }
        r6[r1] = r2;	 Catch:{ all -> 0x011f }
        r6 = r10.size;	 Catch:{ all -> 0x011f }
        r8 = r6 - r4;
        r4 = r8 + r2;
        r10.size = r4;	 Catch:{ all -> 0x011f }
        goto L_0x0087;
    L_0x0075:
        r3 = r2.exists();	 Catch:{ all -> 0x011f }
        if (r3 == 0) goto L_0x0087;
    L_0x007b:
        r2 = r2.delete();	 Catch:{ all -> 0x011f }
        if (r2 != 0) goto L_0x0087;
    L_0x0081:
        r11 = new java.io.IOException;	 Catch:{ all -> 0x011f }
        r11.<init>();	 Catch:{ all -> 0x011f }
        throw r11;	 Catch:{ all -> 0x011f }
    L_0x0087:
        r11 = r11 + 1;
        goto L_0x0047;
    L_0x008a:
        r11 = r10.redundantOpCount;	 Catch:{ all -> 0x011f }
        r2 = 1;
        r11 = r11 + r2;
        r10.redundantOpCount = r11;	 Catch:{ all -> 0x011f }
        r11 = 0;
        r0.currentEditor = r11;	 Catch:{ all -> 0x011f }
        r11 = r0.readable;	 Catch:{ all -> 0x011f }
        r11 = r11 | r12;
        r3 = 10;
        r4 = 32;
        if (r11 == 0) goto L_0x00d3;
    L_0x009f:
        r0.readable = true;	 Catch:{ all -> 0x011f }
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r5 = "CLEAN";
        r11.append(r5);	 Catch:{ all -> 0x011f }
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r11.append(r4);	 Catch:{ all -> 0x011f }
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r4 = r0.key;	 Catch:{ all -> 0x011f }
        r11.append(r4);	 Catch:{ all -> 0x011f }
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r4 = r0.getLengths();	 Catch:{ all -> 0x011f }
        r11.append(r4);	 Catch:{ all -> 0x011f }
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r11.append(r3);	 Catch:{ all -> 0x011f }
        if (r12 == 0) goto L_0x00f6;
    L_0x00c7:
        r11 = r10.nextSequenceNumber;	 Catch:{ all -> 0x011f }
        r3 = 1;
        r5 = r11 + r3;
        r10.nextSequenceNumber = r5;	 Catch:{ all -> 0x011f }
        r0.sequenceNumber = r11;	 Catch:{ all -> 0x011f }
        goto L_0x00f6;
    L_0x00d3:
        r11 = r10.lruEntries;	 Catch:{ all -> 0x011f }
        r12 = r0.key;	 Catch:{ all -> 0x011f }
        r11.remove(r12);	 Catch:{ all -> 0x011f }
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r12 = "REMOVE";
        r11.append(r12);	 Catch:{ all -> 0x011f }
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r11.append(r4);	 Catch:{ all -> 0x011f }
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r12 = r0.key;	 Catch:{ all -> 0x011f }
        r11.append(r12);	 Catch:{ all -> 0x011f }
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r11.append(r3);	 Catch:{ all -> 0x011f }
    L_0x00f6:
        r11 = r10.journalWriter;	 Catch:{ all -> 0x011f }
        r11.flush();	 Catch:{ all -> 0x011f }
        r11 = r10.size;	 Catch:{ all -> 0x011f }
        r3 = r10.maxSize;	 Catch:{ all -> 0x011f }
        r0 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1));
        if (r0 > 0) goto L_0x0116;
    L_0x0103:
        r11 = r10.redundantOpCount;	 Catch:{ all -> 0x011f }
        r12 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;
        if (r11 < r12) goto L_0x0114;
    L_0x0109:
        r11 = r10.redundantOpCount;	 Catch:{ all -> 0x011f }
        r12 = r10.lruEntries;	 Catch:{ all -> 0x011f }
        r12 = r12.size();	 Catch:{ all -> 0x011f }
        if (r11 < r12) goto L_0x0114;
    L_0x0113:
        r1 = r2;
    L_0x0114:
        if (r1 == 0) goto L_0x011d;
    L_0x0116:
        r11 = r10.executorService;	 Catch:{ all -> 0x011f }
        r12 = r10.cleanupCallable;	 Catch:{ all -> 0x011f }
        r11.submit(r12);	 Catch:{ all -> 0x011f }
    L_0x011d:
        monitor-exit(r10);
        return;
    L_0x011f:
        r11 = move-exception;
        monitor-exit(r10);
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.disklrucache.DiskLruCache.completeEdit(com.bumptech.glide.disklrucache.DiskLruCache$Editor, boolean):void");
    }

    public final synchronized void close() throws IOException {
        if (this.journalWriter != null) {
            Iterator it = new ArrayList(this.lruEntries.values()).iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (entry.currentEditor != null) {
                    Editor access$700 = entry.currentEditor;
                    access$700.this$0.completeEdit(access$700, false);
                }
            }
            trimToSize();
            this.journalWriter.close();
            this.journalWriter = null;
        }
    }

    private void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            remove((String) ((java.util.Map.Entry) this.lruEntries.entrySet().iterator().next()).getKey());
        }
    }

    public final synchronized Value get(String str) throws IOException {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
        Entry entry = (Entry) this.lruEntries.get(str);
        if (entry == null) {
            return null;
        }
        if (!entry.readable) {
            return null;
        }
        for (File exists : entry.cleanFiles) {
            if (!exists.exists()) {
                return null;
            }
        }
        int i = 1;
        this.redundantOpCount++;
        this.journalWriter.append("READ");
        this.journalWriter.append(' ');
        this.journalWriter.append(str);
        this.journalWriter.append('\n');
        if (this.redundantOpCount < 2000 || this.redundantOpCount < this.lruEntries.size()) {
            i = 0;
        }
        if (i != 0) {
            this.executorService.submit(this.cleanupCallable);
        }
        return new Value(str, entry.sequenceNumber, entry.cleanFiles, entry.lengths);
    }

    private synchronized Editor edit$7efc45cb(String str) throws IOException {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
        Entry entry = (Entry) this.lruEntries.get(str);
        if (entry == null) {
            entry = new Entry(str);
            this.lruEntries.put(str, entry);
        } else if (entry.currentEditor != null) {
            return null;
        }
        Editor editor = new Editor(entry);
        entry.currentEditor = editor;
        this.journalWriter.append("DIRTY");
        this.journalWriter.append(' ');
        this.journalWriter.append(str);
        this.journalWriter.append('\n');
        this.journalWriter.flush();
        return editor;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized boolean remove(java.lang.String r11) throws java.io.IOException {
        /*
        r10 = this;
        monitor-enter(r10);
        r0 = r10.journalWriter;	 Catch:{ all -> 0x009d }
        if (r0 != 0) goto L_0x000d;
    L_0x0005:
        r11 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x009d }
        r0 = "cache is closed";
        r11.<init>(r0);	 Catch:{ all -> 0x009d }
        throw r11;	 Catch:{ all -> 0x009d }
    L_0x000d:
        r0 = r10.lruEntries;	 Catch:{ all -> 0x009d }
        r0 = r0.get(r11);	 Catch:{ all -> 0x009d }
        r0 = (com.bumptech.glide.disklrucache.DiskLruCache.Entry) r0;	 Catch:{ all -> 0x009d }
        r1 = 0;
        if (r0 == 0) goto L_0x009b;
    L_0x0018:
        r2 = r0.currentEditor;	 Catch:{ all -> 0x009d }
        if (r2 == 0) goto L_0x0020;
    L_0x001e:
        goto L_0x009b;
    L_0x0020:
        r2 = r1;
    L_0x0021:
        if (r2 > 0) goto L_0x005a;
    L_0x0023:
        r3 = r0.cleanFiles;	 Catch:{ all -> 0x009d }
        r3 = r3[r1];	 Catch:{ all -> 0x009d }
        r4 = r3.exists();	 Catch:{ all -> 0x009d }
        if (r4 == 0) goto L_0x0043;
    L_0x002d:
        r4 = r3.delete();	 Catch:{ all -> 0x009d }
        if (r4 != 0) goto L_0x0043;
    L_0x0033:
        r11 = new java.io.IOException;	 Catch:{ all -> 0x009d }
        r0 = "failed to delete ";
        r1 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x009d }
        r0 = r0.concat(r1);	 Catch:{ all -> 0x009d }
        r11.<init>(r0);	 Catch:{ all -> 0x009d }
        throw r11;	 Catch:{ all -> 0x009d }
    L_0x0043:
        r3 = r10.size;	 Catch:{ all -> 0x009d }
        r5 = r0.lengths;	 Catch:{ all -> 0x009d }
        r6 = r5[r1];	 Catch:{ all -> 0x009d }
        r8 = r3 - r6;
        r10.size = r8;	 Catch:{ all -> 0x009d }
        r3 = r0.lengths;	 Catch:{ all -> 0x009d }
        r4 = 0;
        r3[r1] = r4;	 Catch:{ all -> 0x009d }
        r2 = r2 + 1;
        goto L_0x0021;
    L_0x005a:
        r0 = r10.redundantOpCount;	 Catch:{ all -> 0x009d }
        r2 = 1;
        r0 = r0 + r2;
        r10.redundantOpCount = r0;	 Catch:{ all -> 0x009d }
        r0 = r10.journalWriter;	 Catch:{ all -> 0x009d }
        r3 = "REMOVE";
        r0.append(r3);	 Catch:{ all -> 0x009d }
        r0 = r10.journalWriter;	 Catch:{ all -> 0x009d }
        r3 = 32;
        r0.append(r3);	 Catch:{ all -> 0x009d }
        r0 = r10.journalWriter;	 Catch:{ all -> 0x009d }
        r0.append(r11);	 Catch:{ all -> 0x009d }
        r0 = r10.journalWriter;	 Catch:{ all -> 0x009d }
        r3 = 10;
        r0.append(r3);	 Catch:{ all -> 0x009d }
        r0 = r10.lruEntries;	 Catch:{ all -> 0x009d }
        r0.remove(r11);	 Catch:{ all -> 0x009d }
        r11 = r10.redundantOpCount;	 Catch:{ all -> 0x009d }
        r0 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;
        if (r11 < r0) goto L_0x0090;
    L_0x0085:
        r11 = r10.redundantOpCount;	 Catch:{ all -> 0x009d }
        r0 = r10.lruEntries;	 Catch:{ all -> 0x009d }
        r0 = r0.size();	 Catch:{ all -> 0x009d }
        if (r11 < r0) goto L_0x0090;
    L_0x008f:
        r1 = r2;
    L_0x0090:
        if (r1 == 0) goto L_0x0099;
    L_0x0092:
        r11 = r10.executorService;	 Catch:{ all -> 0x009d }
        r0 = r10.cleanupCallable;	 Catch:{ all -> 0x009d }
        r11.submit(r0);	 Catch:{ all -> 0x009d }
    L_0x0099:
        monitor-exit(r10);
        return r2;
    L_0x009b:
        monitor-exit(r10);
        return r1;
    L_0x009d:
        r11 = move-exception;
        monitor-exit(r10);
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.disklrucache.DiskLruCache.remove(java.lang.String):boolean");
    }

    static /* synthetic */ boolean access$200(DiskLruCache diskLruCache) {
        return (diskLruCache.redundantOpCount < 2000 || diskLruCache.redundantOpCount < diskLruCache.lruEntries.size()) ? null : true;
    }
}
