package android.support.v4.graphics;

import android.support.annotation.RestrictTo;

@RestrictTo
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    TypefaceCompatApi21Impl() {
    }

    private static java.io.File getFile(android.os.ParcelFileDescriptor r3) {
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
        r0 = 0;
        r1 = new java.lang.StringBuilder;	 Catch:{ ErrnoException -> 0x002a }
        r2 = "/proc/self/fd/";	 Catch:{ ErrnoException -> 0x002a }
        r1.<init>(r2);	 Catch:{ ErrnoException -> 0x002a }
        r3 = r3.getFd();	 Catch:{ ErrnoException -> 0x002a }
        r1.append(r3);	 Catch:{ ErrnoException -> 0x002a }
        r3 = r1.toString();	 Catch:{ ErrnoException -> 0x002a }
        r3 = android.system.Os.readlink(r3);	 Catch:{ ErrnoException -> 0x002a }
        r1 = android.system.Os.stat(r3);	 Catch:{ ErrnoException -> 0x002a }
        r1 = r1.st_mode;	 Catch:{ ErrnoException -> 0x002a }
        r1 = android.system.OsConstants.S_ISREG(r1);	 Catch:{ ErrnoException -> 0x002a }
        if (r1 == 0) goto L_0x0029;	 Catch:{ ErrnoException -> 0x002a }
    L_0x0023:
        r1 = new java.io.File;	 Catch:{ ErrnoException -> 0x002a }
        r1.<init>(r3);	 Catch:{ ErrnoException -> 0x002a }
        return r1;
    L_0x0029:
        return r0;
    L_0x002a:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatApi21Impl.getFile(android.os.ParcelFileDescriptor):java.io.File");
    }

    public android.graphics.Typeface createFromFontInfo$7af7ae3(android.content.Context r4, android.support.v4.provider.FontsContractCompat.FontInfo[] r5, int r6) {
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
        r3 = this;
        r0 = 0;
        r1 = r5.length;
        if (r1 > 0) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        r5 = r3.findBestInfo(r5, r6);
        r6 = r4.getContentResolver();
        r5 = r5.getUri();	 Catch:{ IOException -> 0x0076 }
        r1 = "r";	 Catch:{ IOException -> 0x0076 }
        r5 = r6.openFileDescriptor(r5, r1, r0);	 Catch:{ IOException -> 0x0076 }
        r6 = getFile(r5);	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
        if (r6 == 0) goto L_0x002e;	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
    L_0x001d:
        r1 = r6.canRead();	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
        if (r1 != 0) goto L_0x0024;	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
    L_0x0023:
        goto L_0x002e;	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
    L_0x0024:
        r4 = android.graphics.Typeface.createFromFile(r6);	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
        if (r5 == 0) goto L_0x002d;
    L_0x002a:
        r5.close();	 Catch:{ IOException -> 0x0076 }
    L_0x002d:
        return r4;
    L_0x002e:
        r6 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
        r1 = r5.getFileDescriptor();	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
        r6.<init>(r1);	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
        r4 = android.support.v4.graphics.TypefaceCompatBaseImpl.createFromInputStream(r4, r6);	 Catch:{ Throwable -> 0x0047, all -> 0x0044 }
        r6.close();	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
        if (r5 == 0) goto L_0x0043;
    L_0x0040:
        r5.close();	 Catch:{ IOException -> 0x0076 }
    L_0x0043:
        return r4;
    L_0x0044:
        r4 = move-exception;
        r1 = r0;
        goto L_0x004d;
    L_0x0047:
        r4 = move-exception;
        throw r4;	 Catch:{ all -> 0x0049 }
    L_0x0049:
        r1 = move-exception;
        r2 = r1;
        r1 = r4;
        r4 = r2;
    L_0x004d:
        if (r1 == 0) goto L_0x0058;
    L_0x004f:
        r6.close();	 Catch:{ Throwable -> 0x0053, all -> 0x005c }
        goto L_0x005b;
    L_0x0053:
        r6 = move-exception;
        r1.addSuppressed(r6);	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
        goto L_0x005b;	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
    L_0x0058:
        r6.close();	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
    L_0x005b:
        throw r4;	 Catch:{ Throwable -> 0x005f, all -> 0x005c }
    L_0x005c:
        r4 = move-exception;
        r6 = r0;
        goto L_0x0065;
    L_0x005f:
        r4 = move-exception;
        throw r4;	 Catch:{ all -> 0x0061 }
    L_0x0061:
        r6 = move-exception;
        r2 = r6;
        r6 = r4;
        r4 = r2;
    L_0x0065:
        if (r5 == 0) goto L_0x0075;
    L_0x0067:
        if (r6 == 0) goto L_0x0072;
    L_0x0069:
        r5.close();	 Catch:{ Throwable -> 0x006d }
        goto L_0x0075;
    L_0x006d:
        r5 = move-exception;
        r6.addSuppressed(r5);	 Catch:{ IOException -> 0x0076 }
        goto L_0x0075;	 Catch:{ IOException -> 0x0076 }
    L_0x0072:
        r5.close();	 Catch:{ IOException -> 0x0076 }
    L_0x0075:
        throw r4;	 Catch:{ IOException -> 0x0076 }
    L_0x0076:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatApi21Impl.createFromFontInfo$7af7ae3(android.content.Context, android.support.v4.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }
}
