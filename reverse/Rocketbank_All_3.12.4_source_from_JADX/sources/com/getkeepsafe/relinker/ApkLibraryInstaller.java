package com.getkeepsafe.relinker;

import com.getkeepsafe.relinker.ReLinker.LibraryInstaller;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class ApkLibraryInstaller implements LibraryInstaller {
    public final void installLibrary$757ca6fb(android.content.Context r18, java.lang.String[] r19, java.lang.String r20, java.io.File r21) {
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
        r17 = this;
        r1 = r19;
        r2 = r20;
        r3 = r21;
        r4 = 0;
        r5 = r18.getApplicationInfo();	 Catch:{ all -> 0x0113 }
        r6 = 0;
        r7 = r6;
    L_0x000d:
        r8 = r7 + 1;
        r9 = 5;
        r10 = 1;
        if (r7 >= r9) goto L_0x0022;
    L_0x0013:
        r7 = new java.util.zip.ZipFile;	 Catch:{ IOException -> 0x0020 }
        r11 = new java.io.File;	 Catch:{ IOException -> 0x0020 }
        r12 = r5.sourceDir;	 Catch:{ IOException -> 0x0020 }
        r11.<init>(r12);	 Catch:{ IOException -> 0x0020 }
        r7.<init>(r11, r10);	 Catch:{ IOException -> 0x0020 }
        goto L_0x0023;
    L_0x0020:
        r7 = r8;
        goto L_0x000d;
    L_0x0022:
        r7 = r4;
    L_0x0023:
        if (r7 != 0) goto L_0x002d;
    L_0x0025:
        if (r7 == 0) goto L_0x002c;
    L_0x0027:
        r7.close();	 Catch:{ IOException -> 0x002b }
        goto L_0x002c;
    L_0x002b:
        return;
    L_0x002c:
        return;
    L_0x002d:
        r5 = r6;
    L_0x002e:
        r8 = r5 + 1;
        if (r5 >= r9) goto L_0x010b;
    L_0x0032:
        r5 = r1.length;	 Catch:{ all -> 0x0108 }
        r12 = r4;	 Catch:{ all -> 0x0108 }
        r13 = r12;	 Catch:{ all -> 0x0108 }
        r11 = r6;	 Catch:{ all -> 0x0108 }
    L_0x0036:
        if (r11 >= r5) goto L_0x005e;	 Catch:{ all -> 0x0108 }
    L_0x0038:
        r12 = r1[r11];	 Catch:{ all -> 0x0108 }
        r13 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0108 }
        r14 = "lib";	 Catch:{ all -> 0x0108 }
        r13.<init>(r14);	 Catch:{ all -> 0x0108 }
        r14 = java.io.File.separatorChar;	 Catch:{ all -> 0x0108 }
        r13.append(r14);	 Catch:{ all -> 0x0108 }
        r13.append(r12);	 Catch:{ all -> 0x0108 }
        r12 = java.io.File.separatorChar;	 Catch:{ all -> 0x0108 }
        r13.append(r12);	 Catch:{ all -> 0x0108 }
        r13.append(r2);	 Catch:{ all -> 0x0108 }
        r12 = r13.toString();	 Catch:{ all -> 0x0108 }
        r13 = r7.getEntry(r12);	 Catch:{ all -> 0x0108 }
        if (r13 != 0) goto L_0x005e;	 Catch:{ all -> 0x0108 }
    L_0x005b:
        r11 = r11 + 1;	 Catch:{ all -> 0x0108 }
        goto L_0x0036;	 Catch:{ all -> 0x0108 }
    L_0x005e:
        if (r12 == 0) goto L_0x006b;	 Catch:{ all -> 0x0108 }
    L_0x0060:
        r5 = "Looking for %s in APK...";	 Catch:{ all -> 0x0108 }
        r11 = new java.lang.Object[r10];	 Catch:{ all -> 0x0108 }
        r11[r6] = r12;	 Catch:{ all -> 0x0108 }
        r14 = java.util.Locale.US;	 Catch:{ all -> 0x0108 }
        java.lang.String.format(r14, r5, r11);	 Catch:{ all -> 0x0108 }
    L_0x006b:
        if (r13 != 0) goto L_0x007b;	 Catch:{ all -> 0x0108 }
    L_0x006d:
        if (r12 == 0) goto L_0x0075;	 Catch:{ all -> 0x0108 }
    L_0x006f:
        r1 = new com.getkeepsafe.relinker.MissingLibraryException;	 Catch:{ all -> 0x0108 }
        r1.<init>(r12);	 Catch:{ all -> 0x0108 }
        throw r1;	 Catch:{ all -> 0x0108 }
    L_0x0075:
        r1 = new com.getkeepsafe.relinker.MissingLibraryException;	 Catch:{ all -> 0x0108 }
        r1.<init>(r2);	 Catch:{ all -> 0x0108 }
        throw r1;	 Catch:{ all -> 0x0108 }
    L_0x007b:
        r5 = "Found %s! Extracting...";	 Catch:{ all -> 0x0108 }
        r11 = new java.lang.Object[r10];	 Catch:{ all -> 0x0108 }
        r11[r6] = r12;	 Catch:{ all -> 0x0108 }
        r12 = java.util.Locale.US;	 Catch:{ all -> 0x0108 }
        java.lang.String.format(r12, r5, r11);	 Catch:{ all -> 0x0108 }
        r5 = r21.exists();	 Catch:{ IOException -> 0x0105 }
        if (r5 != 0) goto L_0x0094;	 Catch:{ IOException -> 0x0105 }
    L_0x008c:
        r5 = r21.createNewFile();	 Catch:{ IOException -> 0x0105 }
        if (r5 != 0) goto L_0x0094;
    L_0x0092:
        goto L_0x0105;
    L_0x0094:
        r5 = r7.getInputStream(r13);	 Catch:{ FileNotFoundException -> 0x00f9, IOException -> 0x00ec, all -> 0x00dd }
        r11 = new java.io.FileOutputStream;	 Catch:{ FileNotFoundException -> 0x00db, IOException -> 0x00d9, all -> 0x00d5 }
        r11.<init>(r3);	 Catch:{ FileNotFoundException -> 0x00db, IOException -> 0x00d9, all -> 0x00d5 }
        r12 = copy(r5, r11);	 Catch:{ FileNotFoundException -> 0x00fb, IOException -> 0x00ee, all -> 0x00d2 }
        r14 = r11.getFD();	 Catch:{ FileNotFoundException -> 0x00fb, IOException -> 0x00ee, all -> 0x00d2 }
        r14.sync();	 Catch:{ FileNotFoundException -> 0x00fb, IOException -> 0x00ee, all -> 0x00d2 }
        r14 = r21.length();	 Catch:{ FileNotFoundException -> 0x00fb, IOException -> 0x00ee, all -> 0x00d2 }
        r16 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r16 == 0) goto L_0x00b9;
    L_0x00b0:
        if (r5 == 0) goto L_0x00b5;
    L_0x00b2:
        r5.close();	 Catch:{ IOException -> 0x00b5 }
    L_0x00b5:
        r11.close();	 Catch:{ IOException -> 0x0105 }
        goto L_0x0105;
    L_0x00b9:
        if (r5 == 0) goto L_0x00be;
    L_0x00bb:
        r5.close();	 Catch:{ IOException -> 0x00be }
    L_0x00be:
        r11.close();	 Catch:{ IOException -> 0x00c1 }
    L_0x00c1:
        r3.setReadable(r10, r6);	 Catch:{ all -> 0x0108 }
        r3.setExecutable(r10, r6);	 Catch:{ all -> 0x0108 }
        r3.setWritable(r10);	 Catch:{ all -> 0x0108 }
        if (r7 == 0) goto L_0x00d1;
    L_0x00cc:
        r7.close();	 Catch:{ IOException -> 0x00d0 }
        goto L_0x00d1;
    L_0x00d0:
        return;
    L_0x00d1:
        return;
    L_0x00d2:
        r0 = move-exception;
        r1 = r0;
        goto L_0x00e1;
    L_0x00d5:
        r0 = move-exception;
        r1 = r0;
        r11 = r4;
        goto L_0x00e1;
    L_0x00d9:
        r11 = r4;
        goto L_0x00ee;
    L_0x00db:
        r11 = r4;
        goto L_0x00fb;
    L_0x00dd:
        r0 = move-exception;
        r1 = r0;
        r5 = r4;
        r11 = r5;
    L_0x00e1:
        if (r5 == 0) goto L_0x00e6;
    L_0x00e3:
        r5.close();	 Catch:{ IOException -> 0x00e6 }
    L_0x00e6:
        if (r11 == 0) goto L_0x00eb;
    L_0x00e8:
        r11.close();	 Catch:{ IOException -> 0x00eb }
    L_0x00eb:
        throw r1;	 Catch:{ all -> 0x0108 }
    L_0x00ec:
        r5 = r4;
        r11 = r5;
    L_0x00ee:
        if (r5 == 0) goto L_0x00f3;
    L_0x00f0:
        r5.close();	 Catch:{ IOException -> 0x00f3 }
    L_0x00f3:
        if (r11 == 0) goto L_0x0105;
    L_0x00f5:
        r11.close();	 Catch:{ IOException -> 0x0105 }
        goto L_0x0105;
    L_0x00f9:
        r5 = r4;
        r11 = r5;
    L_0x00fb:
        if (r5 == 0) goto L_0x0100;
    L_0x00fd:
        r5.close();	 Catch:{ IOException -> 0x0100 }
    L_0x0100:
        if (r11 == 0) goto L_0x0105;
    L_0x0102:
        r11.close();	 Catch:{ IOException -> 0x0105 }
    L_0x0105:
        r5 = r8;
        goto L_0x002e;
    L_0x0108:
        r0 = move-exception;
        r1 = r0;
        goto L_0x0116;
    L_0x010b:
        if (r7 == 0) goto L_0x0112;
    L_0x010d:
        r7.close();	 Catch:{ IOException -> 0x0111 }
        goto L_0x0112;
    L_0x0111:
        return;
    L_0x0112:
        return;
    L_0x0113:
        r0 = move-exception;
        r1 = r0;
        r7 = r4;
    L_0x0116:
        if (r7 == 0) goto L_0x011b;
    L_0x0118:
        r7.close();	 Catch:{ IOException -> 0x011b }
    L_0x011b:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getkeepsafe.relinker.ApkLibraryInstaller.installLibrary$757ca6fb(android.content.Context, java.lang.String[], java.lang.String, java.io.File):void");
    }

    private static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                j += (long) read;
            } else {
                outputStream.flush();
                return j;
            }
        }
    }
}
