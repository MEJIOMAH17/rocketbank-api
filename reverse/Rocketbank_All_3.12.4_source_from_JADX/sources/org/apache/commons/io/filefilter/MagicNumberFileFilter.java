package org.apache.commons.io.filefilter;

import java.io.Serializable;
import java.nio.charset.Charset;

public class MagicNumberFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -547733176983104172L;
    private final long byteOffset;
    private final byte[] magicNumbers;

    public MagicNumberFileFilter(byte[] bArr) {
        this(bArr, 0);
    }

    public MagicNumberFileFilter(String str) {
        this(str, 0);
    }

    public MagicNumberFileFilter(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("The magic number cannot be null");
        } else if (str.isEmpty()) {
            throw new IllegalArgumentException("The magic number must contain at least one byte");
        } else if (j < 0) {
            throw new IllegalArgumentException("The offset cannot be negative");
        } else {
            this.magicNumbers = str.getBytes(Charset.defaultCharset());
            this.byteOffset = j;
        }
    }

    public MagicNumberFileFilter(byte[] bArr, long j) {
        if (bArr == null) {
            throw new IllegalArgumentException("The magic number cannot be null");
        } else if (bArr.length == 0) {
            throw new IllegalArgumentException("The magic number must contain at least one byte");
        } else if (j < 0) {
            throw new IllegalArgumentException("The offset cannot be negative");
        } else {
            this.magicNumbers = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.magicNumbers, 0, bArr.length);
            this.byteOffset = j;
        }
    }

    public boolean accept(java.io.File r7) {
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
        r0 = 0;
        if (r7 == 0) goto L_0x0045;
    L_0x0003:
        r1 = r7.isFile();
        if (r1 == 0) goto L_0x0045;
    L_0x0009:
        r1 = r7.canRead();
        if (r1 == 0) goto L_0x0045;
    L_0x000f:
        r1 = 0;
        r2 = r6.magicNumbers;	 Catch:{ IOException -> 0x0042, all -> 0x003c }
        r2 = r2.length;	 Catch:{ IOException -> 0x0042, all -> 0x003c }
        r2 = new byte[r2];	 Catch:{ IOException -> 0x0042, all -> 0x003c }
        r3 = new java.io.RandomAccessFile;	 Catch:{ IOException -> 0x0042, all -> 0x003c }
        r4 = "r";	 Catch:{ IOException -> 0x0042, all -> 0x003c }
        r3.<init>(r7, r4);	 Catch:{ IOException -> 0x0042, all -> 0x003c }
        r4 = r6.byteOffset;	 Catch:{ IOException -> 0x003a, all -> 0x0038 }
        r3.seek(r4);	 Catch:{ IOException -> 0x003a, all -> 0x0038 }
        r7 = r3.read(r2);	 Catch:{ IOException -> 0x003a, all -> 0x0038 }
        r1 = r6.magicNumbers;	 Catch:{ IOException -> 0x003a, all -> 0x0038 }
        r1 = r1.length;	 Catch:{ IOException -> 0x003a, all -> 0x0038 }
        if (r7 == r1) goto L_0x002e;
    L_0x002a:
        org.apache.commons.io.IOUtils.closeQuietly(r3);
        return r0;
    L_0x002e:
        r7 = r6.magicNumbers;	 Catch:{ IOException -> 0x003a, all -> 0x0038 }
        r7 = java.util.Arrays.equals(r7, r2);	 Catch:{ IOException -> 0x003a, all -> 0x0038 }
        org.apache.commons.io.IOUtils.closeQuietly(r3);
        return r7;
    L_0x0038:
        r7 = move-exception;
        goto L_0x003e;
    L_0x003a:
        r1 = r3;
        goto L_0x0042;
    L_0x003c:
        r7 = move-exception;
        r3 = r1;
    L_0x003e:
        org.apache.commons.io.IOUtils.closeQuietly(r3);
        throw r7;
    L_0x0042:
        org.apache.commons.io.IOUtils.closeQuietly(r1);
    L_0x0045:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.filefilter.MagicNumberFileFilter.accept(java.io.File):boolean");
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(super.toString());
        stringBuilder.append("(");
        stringBuilder.append(new String(this.magicNumbers, Charset.defaultCharset()));
        stringBuilder.append(",");
        stringBuilder.append(this.byteOffset);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
