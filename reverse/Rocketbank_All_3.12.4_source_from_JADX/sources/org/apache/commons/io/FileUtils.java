package org.apache.commons.io;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;

public final class FileUtils {
    public static final File[] EMPTY_FILE_ARRAY = new File[0];
    public static final BigInteger ONE_EB_BI = ONE_KB_BI.multiply(ONE_PB_BI);
    public static final BigInteger ONE_GB_BI = ONE_KB_BI.multiply(ONE_MB_BI);
    public static final BigInteger ONE_KB_BI;
    public static final BigInteger ONE_MB_BI;
    public static final BigInteger ONE_PB_BI = ONE_KB_BI.multiply(ONE_TB_BI);
    public static final BigInteger ONE_TB_BI = ONE_KB_BI.multiply(ONE_GB_BI);
    public static final BigInteger ONE_YB = ONE_KB_BI.multiply(ONE_ZB);
    public static final BigInteger ONE_ZB = BigInteger.valueOf(PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID).multiply(BigInteger.valueOf(1152921504606846976L));

    static {
        BigInteger valueOf = BigInteger.valueOf(PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
        ONE_KB_BI = valueOf;
        ONE_MB_BI = valueOf.multiply(valueOf);
    }

    private static long sizeOfDirectory0(java.io.File r11) {
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
        r11 = r11.listFiles();
        r0 = 0;
        if (r11 != 0) goto L_0x0009;
    L_0x0008:
        return r0;
    L_0x0009:
        r2 = 0;
        r3 = r11.length;
        r5 = r0;
        r4 = r2;
    L_0x000d:
        if (r4 >= r3) goto L_0x009a;
    L_0x000f:
        r7 = r11[r4];
        r8 = org.apache.commons.io.Java7Support.isAtLeastJava7();	 Catch:{ IOException -> 0x0096 }
        if (r8 == 0) goto L_0x001c;	 Catch:{ IOException -> 0x0096 }
    L_0x0017:
        r8 = org.apache.commons.io.Java7Support.isSymLink(r7);	 Catch:{ IOException -> 0x0096 }
        goto L_0x007c;	 Catch:{ IOException -> 0x0096 }
    L_0x001c:
        if (r7 != 0) goto L_0x0026;	 Catch:{ IOException -> 0x0096 }
    L_0x001e:
        r7 = new java.lang.NullPointerException;	 Catch:{ IOException -> 0x0096 }
        r8 = "File must not be null";	 Catch:{ IOException -> 0x0096 }
        r7.<init>(r8);	 Catch:{ IOException -> 0x0096 }
        throw r7;	 Catch:{ IOException -> 0x0096 }
    L_0x0026:
        r8 = org.apache.commons.io.FilenameUtils.isSystemWindows();	 Catch:{ IOException -> 0x0096 }
        if (r8 == 0) goto L_0x002e;	 Catch:{ IOException -> 0x0096 }
    L_0x002c:
        r8 = r2;	 Catch:{ IOException -> 0x0096 }
        goto L_0x007c;	 Catch:{ IOException -> 0x0096 }
    L_0x002e:
        r8 = r7.getParent();	 Catch:{ IOException -> 0x0096 }
        if (r8 != 0) goto L_0x0036;	 Catch:{ IOException -> 0x0096 }
    L_0x0034:
        r9 = r7;	 Catch:{ IOException -> 0x0096 }
        goto L_0x0047;	 Catch:{ IOException -> 0x0096 }
    L_0x0036:
        r8 = r7.getParentFile();	 Catch:{ IOException -> 0x0096 }
        r8 = r8.getCanonicalFile();	 Catch:{ IOException -> 0x0096 }
        r9 = new java.io.File;	 Catch:{ IOException -> 0x0096 }
        r10 = r7.getName();	 Catch:{ IOException -> 0x0096 }
        r9.<init>(r8, r10);	 Catch:{ IOException -> 0x0096 }
    L_0x0047:
        r8 = r9.getCanonicalFile();	 Catch:{ IOException -> 0x0096 }
        r9 = r9.getAbsoluteFile();	 Catch:{ IOException -> 0x0096 }
        r8 = r8.equals(r9);	 Catch:{ IOException -> 0x0096 }
        if (r8 == 0) goto L_0x007b;	 Catch:{ IOException -> 0x0096 }
    L_0x0055:
        r8 = r7.exists();	 Catch:{ IOException -> 0x0096 }
        if (r8 != 0) goto L_0x002c;	 Catch:{ IOException -> 0x0096 }
    L_0x005b:
        r8 = r7.getCanonicalFile();	 Catch:{ IOException -> 0x0096 }
        r9 = r8.getParentFile();	 Catch:{ IOException -> 0x0096 }
        if (r9 == 0) goto L_0x002c;	 Catch:{ IOException -> 0x0096 }
    L_0x0065:
        r10 = r9.exists();	 Catch:{ IOException -> 0x0096 }
        if (r10 != 0) goto L_0x006c;	 Catch:{ IOException -> 0x0096 }
    L_0x006b:
        goto L_0x002c;	 Catch:{ IOException -> 0x0096 }
    L_0x006c:
        r10 = new org.apache.commons.io.FileUtils$1;	 Catch:{ IOException -> 0x0096 }
        r10.<init>(r8);	 Catch:{ IOException -> 0x0096 }
        r8 = r9.listFiles(r10);	 Catch:{ IOException -> 0x0096 }
        if (r8 == 0) goto L_0x002c;	 Catch:{ IOException -> 0x0096 }
    L_0x0077:
        r8 = r8.length;	 Catch:{ IOException -> 0x0096 }
        if (r8 > 0) goto L_0x007b;	 Catch:{ IOException -> 0x0096 }
    L_0x007a:
        goto L_0x002c;	 Catch:{ IOException -> 0x0096 }
    L_0x007b:
        r8 = 1;	 Catch:{ IOException -> 0x0096 }
    L_0x007c:
        if (r8 != 0) goto L_0x0096;	 Catch:{ IOException -> 0x0096 }
    L_0x007e:
        r8 = r7.isDirectory();	 Catch:{ IOException -> 0x0096 }
        if (r8 == 0) goto L_0x0089;	 Catch:{ IOException -> 0x0096 }
    L_0x0084:
        r7 = sizeOfDirectory0(r7);	 Catch:{ IOException -> 0x0096 }
        goto L_0x008d;	 Catch:{ IOException -> 0x0096 }
    L_0x0089:
        r7 = r7.length();	 Catch:{ IOException -> 0x0096 }
    L_0x008d:
        r9 = r5 + r7;
        r5 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1));
        if (r5 >= 0) goto L_0x0095;
    L_0x0093:
        r5 = r9;
        goto L_0x009a;
    L_0x0095:
        r5 = r9;
    L_0x0096:
        r4 = r4 + 1;
        goto L_0x000d;
    L_0x009a:
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.FileUtils.sizeOfDirectory0(java.io.File):long");
    }

    public static boolean isFileNewer(File file, long j) {
        if (file == null) {
            throw new IllegalArgumentException("No specified file");
        } else if (file.exists() && file.lastModified() > j) {
            return true;
        } else {
            return false;
        }
    }

    public static byte[] readFileToByteArray(File file) throws IOException {
        InputStream inputStream = null;
        try {
            StringBuilder stringBuilder;
            if (!file.exists()) {
                stringBuilder = new StringBuilder("File '");
                stringBuilder.append(file);
                stringBuilder.append("' does not exist");
                throw new FileNotFoundException(stringBuilder.toString());
            } else if (file.isDirectory()) {
                stringBuilder = new StringBuilder("File '");
                stringBuilder.append(file);
                stringBuilder.append("' exists but is a directory");
                throw new IOException(stringBuilder.toString());
            } else if (file.canRead()) {
                InputStream fileInputStream = new FileInputStream(file);
                try {
                    file = IOUtils.toByteArray(fileInputStream);
                    IOUtils.closeQuietly(fileInputStream);
                    return file;
                } catch (Throwable th) {
                    file = th;
                    inputStream = fileInputStream;
                    IOUtils.closeQuietly(inputStream);
                    throw file;
                }
            } else {
                stringBuilder = new StringBuilder("File '");
                stringBuilder.append(file);
                stringBuilder.append("' cannot be read");
                throw new IOException(stringBuilder.toString());
            }
        } catch (Throwable th2) {
            file = th2;
            IOUtils.closeQuietly(inputStream);
            throw file;
        }
    }

    public static void writeByteArrayToFile(File file, byte[] bArr) throws IOException {
        int length = bArr.length;
        OutputStream outputStream = null;
        try {
            if (!file.exists()) {
                File parentFile = file.getParentFile();
                if (!(parentFile == null || parentFile.mkdirs() || parentFile.isDirectory())) {
                    bArr = new StringBuilder("Directory '");
                    bArr.append(parentFile);
                    bArr.append("' could not be created");
                    throw new IOException(bArr.toString());
                }
            } else if (file.isDirectory()) {
                r0 = new StringBuilder("File '");
                r0.append(file);
                r0.append("' exists but is a directory");
                throw new IOException(r0.toString());
            } else if (!file.canWrite()) {
                r0 = new StringBuilder("File '");
                r0.append(file);
                r0.append("' cannot be written to");
                throw new IOException(r0.toString());
            }
            OutputStream fileOutputStream = new FileOutputStream(file, false);
            try {
                fileOutputStream.write(bArr, 0, length);
                fileOutputStream.close();
                IOUtils.closeQuietly(fileOutputStream);
            } catch (Throwable th) {
                file = th;
                outputStream = fileOutputStream;
                IOUtils.closeQuietly(outputStream);
                throw file;
            }
        } catch (Throwable th2) {
            file = th2;
            IOUtils.closeQuietly(outputStream);
            throw file;
        }
    }

    public static long sizeOfDirectory(File file) {
        StringBuilder stringBuilder;
        if (!file.exists()) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(file);
            stringBuilder.append(" does not exist");
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (file.isDirectory()) {
            return sizeOfDirectory0(file);
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append(file);
            stringBuilder.append(" is not a directory");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }
}
