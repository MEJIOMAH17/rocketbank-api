package com.google.android.gms.internal;

import android.os.SystemClock;
import java.io.EOFException;
import java.io.File;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class zzw implements zzb {
    private final Map<String, zza> zzaw;
    private long zzax;
    private final File zzay;
    private final int zzaz;

    static class zza {
        public String zza;
        public long zzaA;
        public String zzaB;
        public long zzb;
        public long zzc;
        public long zzd;
        public long zze;
        public Map<String, String> zzf;

        private zza() {
        }

        public zza(String str, com.google.android.gms.internal.zzb.zza zza) {
            this.zzaB = str;
            this.zzaA = (long) zza.data.length;
            this.zza = zza.zza;
            this.zzb = zza.zzb;
            this.zzc = zza.zzc;
            this.zzd = zza.zzd;
            this.zze = zza.zze;
            this.zzf = zza.zzf;
        }

        public static zza zzf(InputStream inputStream) throws IOException {
            zza zza = new zza();
            if (zzw.zzb(inputStream) != 538247942) {
                throw new IOException();
            }
            zza.zzaB = zzw.zzd(inputStream);
            zza.zza = zzw.zzd(inputStream);
            if (zza.zza.equals("")) {
                zza.zza = null;
            }
            zza.zzb = zzw.zzc(inputStream);
            zza.zzc = zzw.zzc(inputStream);
            zza.zzd = zzw.zzc(inputStream);
            zza.zze = zzw.zzc(inputStream);
            zza.zzf = zzw.zze(inputStream);
            return zza;
        }

        public boolean zza(OutputStream outputStream) {
            try {
                zzw.zza(outputStream, 538247942);
                zzw.zza(outputStream, this.zzaB);
                zzw.zza(outputStream, this.zza == null ? "" : this.zza);
                zzw.zza(outputStream, this.zzb);
                zzw.zza(outputStream, this.zzc);
                zzw.zza(outputStream, this.zzd);
                zzw.zza(outputStream, this.zze);
                zzw.zza(this.zzf, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                zzt.zzb("%s", e.toString());
                return false;
            }
        }

        public com.google.android.gms.internal.zzb.zza zzb(byte[] bArr) {
            com.google.android.gms.internal.zzb.zza zza = new com.google.android.gms.internal.zzb.zza();
            zza.data = bArr;
            zza.zza = this.zza;
            zza.zzb = this.zzb;
            zza.zzc = this.zzc;
            zza.zzd = this.zzd;
            zza.zze = this.zze;
            zza.zzf = this.zzf;
            return zza;
        }
    }

    private static class zzb extends FilterInputStream {
        private int zzaC;

        private zzb(InputStream inputStream) {
            super(inputStream);
            this.zzaC = 0;
        }

        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.zzaC++;
            }
            return read;
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.zzaC += read;
            }
            return read;
        }
    }

    public zzw(File file) {
        this(file, 5242880);
    }

    public zzw(File file, int i) {
        this.zzaw = new LinkedHashMap(16, 0.75f, true);
        this.zzax = 0;
        this.zzay = file;
        this.zzaz = i;
    }

    private void removeEntry(String str) {
        zza zza = (zza) this.zzaw.get(str);
        if (zza != null) {
            this.zzax -= zza.zzaA;
            this.zzaw.remove(str);
        }
    }

    private static int zza(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    static void zza(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    static void zza(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) ((int) j));
        outputStream.write((byte) ((int) (j >>> 8)));
        outputStream.write((byte) ((int) (j >>> 16)));
        outputStream.write((byte) ((int) (j >>> 24)));
        outputStream.write((byte) ((int) (j >>> 32)));
        outputStream.write((byte) ((int) (j >>> 40)));
        outputStream.write((byte) ((int) (j >>> 48)));
        outputStream.write((byte) ((int) (j >>> 56)));
    }

    static void zza(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        zza(outputStream, (long) bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private void zza(String str, zza zza) {
        if (this.zzaw.containsKey(str)) {
            this.zzax += zza.zzaA - ((zza) this.zzaw.get(str)).zzaA;
        } else {
            this.zzax += zza.zzaA;
        }
        this.zzaw.put(str, zza);
    }

    static void zza(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map != null) {
            zza(outputStream, map.size());
            for (Entry entry : map.entrySet()) {
                zza(outputStream, (String) entry.getKey());
                zza(outputStream, (String) entry.getValue());
            }
            return;
        }
        zza(outputStream, 0);
    }

    private static byte[] zza(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        StringBuilder stringBuilder = new StringBuilder("Expected ");
        stringBuilder.append(i);
        stringBuilder.append(" bytes, read ");
        stringBuilder.append(i2);
        stringBuilder.append(" bytes");
        throw new IOException(stringBuilder.toString());
    }

    static int zzb(InputStream inputStream) throws IOException {
        return (zza(inputStream) << 24) | (((zza(inputStream) | 0) | (zza(inputStream) << 8)) | (zza(inputStream) << 16));
    }

    static long zzc(InputStream inputStream) throws IOException {
        return (((((((0 | (((long) zza(inputStream)) & 255)) | ((((long) zza(inputStream)) & 255) << 8)) | ((((long) zza(inputStream)) & 255) << 16)) | ((((long) zza(inputStream)) & 255) << 24)) | ((((long) zza(inputStream)) & 255) << 32)) | ((((long) zza(inputStream)) & 255) << 40)) | ((((long) zza(inputStream)) & 255) << 48)) | ((((long) zza(inputStream)) & 255) << 56);
    }

    private void zzc(int i) {
        long j = (long) i;
        if (this.zzax + j >= ((long) this.zzaz)) {
            long j2;
            if (zzt.DEBUG) {
                zzt.zza("Pruning old cache entries.", new Object[0]);
            }
            long j3 = r0.zzax;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator it = r0.zzaw.entrySet().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                long j4;
                zza zza = (zza) ((Entry) it.next()).getValue();
                if (zzf(zza.zzaB).delete()) {
                    j4 = j;
                    j2 = elapsedRealtime;
                    r0.zzax -= zza.zzaA;
                } else {
                    j4 = j;
                    j2 = elapsedRealtime;
                    zzt.zzb("Could not delete cache entry for key=%s, filename=%s", zza.zzaB, zze(zza.zzaB));
                }
                it.remove();
                i2++;
                if (((float) (r0.zzax + j4)) < ((float) r0.zzaz) * 0.9f) {
                    break;
                }
                j = j4;
                elapsedRealtime = j2;
            }
            j2 = elapsedRealtime;
            if (zzt.DEBUG) {
                zzt.zza("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(r0.zzax - j3), Long.valueOf(SystemClock.elapsedRealtime() - j2));
            }
        }
    }

    static String zzd(InputStream inputStream) throws IOException {
        return new String(zza(inputStream, (int) zzc(inputStream)), "UTF-8");
    }

    private String zze(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(str.substring(0, length).hashCode());
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(valueOf);
        stringBuilder.append(String.valueOf(str.substring(length).hashCode()));
        return stringBuilder.toString();
    }

    static Map<String, String> zze(InputStream inputStream) throws IOException {
        int zzb = zzb(inputStream);
        Map<String, String> emptyMap = zzb == 0 ? Collections.emptyMap() : new HashMap(zzb);
        for (int i = 0; i < zzb; i++) {
            emptyMap.put(zzd(inputStream).intern(), zzd(inputStream).intern());
        }
        return emptyMap;
    }

    public synchronized void initialize() {
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
        r8 = this;
        monitor-enter(r8);
        r0 = r8.zzay;	 Catch:{ all -> 0x006e }
        r0 = r0.exists();	 Catch:{ all -> 0x006e }
        r1 = 0;	 Catch:{ all -> 0x006e }
        if (r0 != 0) goto L_0x0024;	 Catch:{ all -> 0x006e }
    L_0x000a:
        r0 = r8.zzay;	 Catch:{ all -> 0x006e }
        r0 = r0.mkdirs();	 Catch:{ all -> 0x006e }
        if (r0 != 0) goto L_0x0022;	 Catch:{ all -> 0x006e }
    L_0x0012:
        r0 = "Unable to create cache dir %s";	 Catch:{ all -> 0x006e }
        r2 = 1;	 Catch:{ all -> 0x006e }
        r2 = new java.lang.Object[r2];	 Catch:{ all -> 0x006e }
        r3 = r8.zzay;	 Catch:{ all -> 0x006e }
        r3 = r3.getAbsolutePath();	 Catch:{ all -> 0x006e }
        r2[r1] = r3;	 Catch:{ all -> 0x006e }
        com.google.android.gms.internal.zzt.zzc(r0, r2);	 Catch:{ all -> 0x006e }
    L_0x0022:
        monitor-exit(r8);
        return;
    L_0x0024:
        r0 = r8.zzay;	 Catch:{ all -> 0x006e }
        r0 = r0.listFiles();	 Catch:{ all -> 0x006e }
        if (r0 != 0) goto L_0x002e;
    L_0x002c:
        monitor-exit(r8);
        return;
    L_0x002e:
        r2 = r0.length;	 Catch:{ all -> 0x006e }
    L_0x002f:
        if (r1 >= r2) goto L_0x006c;	 Catch:{ all -> 0x006e }
    L_0x0031:
        r3 = r0[r1];	 Catch:{ all -> 0x006e }
        r4 = 0;
        r5 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x0058 }
        r6 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0058 }
        r6.<init>(r3);	 Catch:{ IOException -> 0x0058 }
        r5.<init>(r6);	 Catch:{ IOException -> 0x0058 }
        r4 = com.google.android.gms.internal.zzw.zza.zzf(r5);	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r6 = r3.length();	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r4.zzaA = r6;	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r6 = r4.zzaB;	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r8.zza(r6, r4);	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r5.close();	 Catch:{ IOException -> 0x0069 }
        goto L_0x0069;
    L_0x0051:
        r0 = move-exception;
        r4 = r5;
        goto L_0x005e;
    L_0x0054:
        r4 = r5;
        goto L_0x0058;
    L_0x0056:
        r0 = move-exception;
        goto L_0x005e;
    L_0x0058:
        if (r3 == 0) goto L_0x0064;
    L_0x005a:
        r3.delete();	 Catch:{ all -> 0x0056 }
        goto L_0x0064;
    L_0x005e:
        if (r4 == 0) goto L_0x0063;
    L_0x0060:
        r4.close();	 Catch:{ IOException -> 0x0063 }
    L_0x0063:
        throw r0;	 Catch:{ all -> 0x006e }
    L_0x0064:
        if (r4 == 0) goto L_0x0069;
    L_0x0066:
        r4.close();	 Catch:{ IOException -> 0x0069 }
    L_0x0069:
        r1 = r1 + 1;
        goto L_0x002f;
    L_0x006c:
        monitor-exit(r8);
        return;
    L_0x006e:
        r0 = move-exception;
        monitor-exit(r8);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzw.initialize():void");
    }

    public synchronized void remove(String str) {
        boolean delete = zzf(str).delete();
        removeEntry(str);
        if (!delete) {
            zzt.zzb("Could not delete cache entry for key=%s, filename=%s", str, zze(str));
        }
    }

    public synchronized com.google.android.gms.internal.zzb.zza zza(java.lang.String r11) {
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
        r10 = this;
        monitor-enter(r10);
        r0 = r10.zzaw;	 Catch:{ all -> 0x0073 }
        r0 = r0.get(r11);	 Catch:{ all -> 0x0073 }
        r0 = (com.google.android.gms.internal.zzw.zza) r0;	 Catch:{ all -> 0x0073 }
        r1 = 0;
        if (r0 != 0) goto L_0x000e;
    L_0x000c:
        monitor-exit(r10);
        return r1;
    L_0x000e:
        r2 = r10.zzf(r11);	 Catch:{ all -> 0x0073 }
        r3 = new com.google.android.gms.internal.zzw$zzb;	 Catch:{ IOException -> 0x0044, all -> 0x0041 }
        r4 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x0044, all -> 0x0041 }
        r5 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0044, all -> 0x0041 }
        r5.<init>(r2);	 Catch:{ IOException -> 0x0044, all -> 0x0041 }
        r4.<init>(r5);	 Catch:{ IOException -> 0x0044, all -> 0x0041 }
        r3.<init>(r4);	 Catch:{ IOException -> 0x0044, all -> 0x0041 }
        com.google.android.gms.internal.zzw.zza.zzf(r3);	 Catch:{ IOException -> 0x003f }
        r4 = r2.length();	 Catch:{ IOException -> 0x003f }
        r6 = r3.zzaC;	 Catch:{ IOException -> 0x003f }
        r6 = (long) r6;	 Catch:{ IOException -> 0x003f }
        r8 = r4 - r6;	 Catch:{ IOException -> 0x003f }
        r4 = (int) r8;	 Catch:{ IOException -> 0x003f }
        r4 = zza(r3, r4);	 Catch:{ IOException -> 0x003f }
        r0 = r0.zzb(r4);	 Catch:{ IOException -> 0x003f }
        r3.close();	 Catch:{ IOException -> 0x003d }
        monitor-exit(r10);
        return r0;
    L_0x003d:
        monitor-exit(r10);
        return r1;
    L_0x003f:
        r0 = move-exception;
        goto L_0x0046;
    L_0x0041:
        r11 = move-exception;
        r3 = r1;
        goto L_0x006a;
    L_0x0044:
        r0 = move-exception;
        r3 = r1;
    L_0x0046:
        r4 = "%s: %s";	 Catch:{ all -> 0x0069 }
        r5 = 2;	 Catch:{ all -> 0x0069 }
        r5 = new java.lang.Object[r5];	 Catch:{ all -> 0x0069 }
        r6 = 0;	 Catch:{ all -> 0x0069 }
        r2 = r2.getAbsolutePath();	 Catch:{ all -> 0x0069 }
        r5[r6] = r2;	 Catch:{ all -> 0x0069 }
        r2 = 1;	 Catch:{ all -> 0x0069 }
        r0 = r0.toString();	 Catch:{ all -> 0x0069 }
        r5[r2] = r0;	 Catch:{ all -> 0x0069 }
        com.google.android.gms.internal.zzt.zzb(r4, r5);	 Catch:{ all -> 0x0069 }
        r10.remove(r11);	 Catch:{ all -> 0x0069 }
        if (r3 == 0) goto L_0x0067;
    L_0x0061:
        r3.close();	 Catch:{ IOException -> 0x0065 }
        goto L_0x0067;
    L_0x0065:
        monitor-exit(r10);
        return r1;
    L_0x0067:
        monitor-exit(r10);
        return r1;
    L_0x0069:
        r11 = move-exception;
    L_0x006a:
        if (r3 == 0) goto L_0x0072;
    L_0x006c:
        r3.close();	 Catch:{ IOException -> 0x0070 }
        goto L_0x0072;
    L_0x0070:
        monitor-exit(r10);
        return r1;
    L_0x0072:
        throw r11;	 Catch:{ all -> 0x0073 }
    L_0x0073:
        r11 = move-exception;
        monitor-exit(r10);
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzw.zza(java.lang.String):com.google.android.gms.internal.zzb$zza");
    }

    public synchronized void zza(java.lang.String r7, com.google.android.gms.internal.zzb.zza r8) {
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
        monitor-enter(r6);
        r0 = r8.data;	 Catch:{ all -> 0x005a }
        r0 = r0.length;	 Catch:{ all -> 0x005a }
        r6.zzc(r0);	 Catch:{ all -> 0x005a }
        r0 = r6.zzf(r7);	 Catch:{ all -> 0x005a }
        r1 = 0;
        r2 = 1;
        r3 = new java.io.BufferedOutputStream;	 Catch:{ IOException -> 0x0045 }
        r4 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x0045 }
        r4.<init>(r0);	 Catch:{ IOException -> 0x0045 }
        r3.<init>(r4);	 Catch:{ IOException -> 0x0045 }
        r4 = new com.google.android.gms.internal.zzw$zza;	 Catch:{ IOException -> 0x0045 }
        r4.<init>(r7, r8);	 Catch:{ IOException -> 0x0045 }
        r5 = r4.zza(r3);	 Catch:{ IOException -> 0x0045 }
        if (r5 != 0) goto L_0x0038;	 Catch:{ IOException -> 0x0045 }
    L_0x0022:
        r3.close();	 Catch:{ IOException -> 0x0045 }
        r7 = "Failed to write header for %s";	 Catch:{ IOException -> 0x0045 }
        r8 = new java.lang.Object[r2];	 Catch:{ IOException -> 0x0045 }
        r3 = r0.getAbsolutePath();	 Catch:{ IOException -> 0x0045 }
        r8[r1] = r3;	 Catch:{ IOException -> 0x0045 }
        com.google.android.gms.internal.zzt.zzb(r7, r8);	 Catch:{ IOException -> 0x0045 }
        r7 = new java.io.IOException;	 Catch:{ IOException -> 0x0045 }
        r7.<init>();	 Catch:{ IOException -> 0x0045 }
        throw r7;	 Catch:{ IOException -> 0x0045 }
    L_0x0038:
        r8 = r8.data;	 Catch:{ IOException -> 0x0045 }
        r3.write(r8);	 Catch:{ IOException -> 0x0045 }
        r3.close();	 Catch:{ IOException -> 0x0045 }
        r6.zza(r7, r4);	 Catch:{ IOException -> 0x0045 }
        monitor-exit(r6);
        return;
    L_0x0045:
        r7 = r0.delete();	 Catch:{ all -> 0x005a }
        if (r7 != 0) goto L_0x0058;	 Catch:{ all -> 0x005a }
    L_0x004b:
        r7 = "Could not clean up file %s";	 Catch:{ all -> 0x005a }
        r8 = new java.lang.Object[r2];	 Catch:{ all -> 0x005a }
        r0 = r0.getAbsolutePath();	 Catch:{ all -> 0x005a }
        r8[r1] = r0;	 Catch:{ all -> 0x005a }
        com.google.android.gms.internal.zzt.zzb(r7, r8);	 Catch:{ all -> 0x005a }
    L_0x0058:
        monitor-exit(r6);
        return;
    L_0x005a:
        r7 = move-exception;
        monitor-exit(r6);
        throw r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzw.zza(java.lang.String, com.google.android.gms.internal.zzb$zza):void");
    }

    public File zzf(String str) {
        return new File(this.zzay, zze(str));
    }
}
