package okhttp3.internal.publicsuffix;

import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.Util;
import org.slf4j.Marker;

public final class PublicSuffixDatabase {
    private static final String[] EMPTY_RULE = new String[0];
    private static final String[] PREVAILING_RULE = new String[]{Marker.ANY_MARKER};
    private static final byte[] WILDCARD_LABEL = new byte[]{(byte) 42};
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    public static PublicSuffixDatabase get() {
        return instance;
    }

    public final String getEffectiveTldPlusOne(String str) {
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] findMatchingRule = findMatchingRule(split);
        if (split.length == findMatchingRule.length && findMatchingRule[0].charAt(0) != '!') {
            return null;
        }
        int length;
        if (findMatchingRule[0].charAt(0) == '!') {
            length = split.length - findMatchingRule.length;
        } else {
            length = split.length - (findMatchingRule.length + 1);
        }
        StringBuilder stringBuilder = new StringBuilder();
        str = str.split("\\.");
        for (length = 
/*
Method generation error in method: okhttp3.internal.publicsuffix.PublicSuffixDatabase.getEffectiveTldPlusOne(java.lang.String):java.lang.String, dex: classes.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: PHI: (r0_7 'length' int) = (r0_4 'length' int), (r0_6 'length' int) binds: {(r0_6 'length' int)=B:12:0x0035, (r0_4 'length' int)=B:11:0x0031} in method: okhttp3.internal.publicsuffix.PublicSuffixDatabase.getEffectiveTldPlusOne(java.lang.String):java.lang.String, dex: classes.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:226)
	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:184)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:61)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
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
Caused by: jadx.core.utils.exceptions.CodegenException: PHI can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:537)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:509)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:220)
	... 24 more

*/

        private java.lang.String[] findMatchingRule(java.lang.String[] r8) {
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
            r7 = this;
            r0 = r7.listRead;
            r0 = r0.get();
            r1 = 0;
            r2 = 1;
            if (r0 != 0) goto L_0x0079;
        L_0x000a:
            r0 = r7.listRead;
            r0 = r0.compareAndSet(r1, r2);
            if (r0 == 0) goto L_0x0079;
        L_0x0012:
            r0 = r1;
        L_0x0013:
            r3 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.class;	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            r4 = "publicsuffixes.gz";	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            r3 = r3.getResourceAsStream(r4);	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            if (r3 == 0) goto L_0x0053;	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
        L_0x001d:
            r4 = new okio.GzipSource;	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            r3 = okio.Okio.source(r3);	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            r4.<init>(r3);	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            r3 = okio.Okio.buffer(r4);	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            r4 = r3.readInt();	 Catch:{ all -> 0x004e }
            r4 = new byte[r4];	 Catch:{ all -> 0x004e }
            r3.readFully(r4);	 Catch:{ all -> 0x004e }
            r5 = r3.readInt();	 Catch:{ all -> 0x004e }
            r5 = new byte[r5];	 Catch:{ all -> 0x004e }
            r3.readFully(r5);	 Catch:{ all -> 0x004e }
            okhttp3.internal.Util.closeQuietly(r3);	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            monitor-enter(r7);	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            r7.publicSuffixListBytes = r4;	 Catch:{ all -> 0x004b }
            r7.publicSuffixExceptionListBytes = r5;	 Catch:{ all -> 0x004b }
            monitor-exit(r7);	 Catch:{ all -> 0x004b }
            r3 = r7.readCompleteLatch;	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            r3.countDown();	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            goto L_0x0053;
        L_0x004b:
            r3 = move-exception;
            monitor-exit(r7);	 Catch:{ all -> 0x004b }
            throw r3;	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
        L_0x004e:
            r4 = move-exception;	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            okhttp3.internal.Util.closeQuietly(r3);	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
            throw r4;	 Catch:{ InterruptedIOException -> 0x0077, IOException -> 0x005f }
        L_0x0053:
            if (r0 == 0) goto L_0x007e;
        L_0x0055:
            r0 = java.lang.Thread.currentThread();
            r0.interrupt();
            goto L_0x007e;
        L_0x005d:
            r8 = move-exception;
            goto L_0x006d;
        L_0x005f:
            r3 = move-exception;
            r4 = okhttp3.internal.platform.Platform.get();	 Catch:{ all -> 0x005d }
            r5 = 5;	 Catch:{ all -> 0x005d }
            r6 = "Failed to read public suffix list";	 Catch:{ all -> 0x005d }
            r4.log(r5, r6, r3);	 Catch:{ all -> 0x005d }
            if (r0 == 0) goto L_0x007e;
        L_0x006c:
            goto L_0x0055;
        L_0x006d:
            if (r0 == 0) goto L_0x0076;
        L_0x006f:
            r0 = java.lang.Thread.currentThread();
            r0.interrupt();
        L_0x0076:
            throw r8;
        L_0x0077:
            r0 = r2;
            goto L_0x0013;
        L_0x0079:
            r0 = r7.readCompleteLatch;	 Catch:{ InterruptedException -> 0x007e }
            r0.await();	 Catch:{ InterruptedException -> 0x007e }
        L_0x007e:
            monitor-enter(r7);
            r0 = r7.publicSuffixListBytes;	 Catch:{ all -> 0x011a }
            if (r0 != 0) goto L_0x008b;	 Catch:{ all -> 0x011a }
        L_0x0083:
            r8 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x011a }
            r0 = "Unable to load publicsuffixes.gz resource from the classpath.";	 Catch:{ all -> 0x011a }
            r8.<init>(r0);	 Catch:{ all -> 0x011a }
            throw r8;	 Catch:{ all -> 0x011a }
        L_0x008b:
            monitor-exit(r7);	 Catch:{ all -> 0x011a }
            r0 = r8.length;
            r0 = new byte[r0][];
            r3 = r1;
        L_0x0090:
            r4 = r8.length;
            if (r3 >= r4) goto L_0x00a0;
        L_0x0093:
            r4 = r8[r3];
            r5 = okhttp3.internal.Util.UTF_8;
            r4 = r4.getBytes(r5);
            r0[r3] = r4;
            r3 = r3 + 1;
            goto L_0x0090;
        L_0x00a0:
            r8 = r1;
        L_0x00a1:
            r3 = 0;
            r4 = r0.length;
            if (r8 >= r4) goto L_0x00b1;
        L_0x00a5:
            r4 = r7.publicSuffixListBytes;
            r4 = binarySearchBytes(r4, r0, r8);
            if (r4 == 0) goto L_0x00ae;
        L_0x00ad:
            goto L_0x00b2;
        L_0x00ae:
            r8 = r8 + 1;
            goto L_0x00a1;
        L_0x00b1:
            r4 = r3;
        L_0x00b2:
            r8 = r0.length;
            if (r8 <= r2) goto L_0x00d0;
        L_0x00b5:
            r8 = r0.clone();
            r8 = (byte[][]) r8;
            r5 = r1;
        L_0x00bc:
            r6 = r8.length;
            r6 = r6 - r2;
            if (r5 >= r6) goto L_0x00d0;
        L_0x00c0:
            r6 = WILDCARD_LABEL;
            r8[r5] = r6;
            r6 = r7.publicSuffixListBytes;
            r6 = binarySearchBytes(r6, r8, r5);
            if (r6 == 0) goto L_0x00cd;
        L_0x00cc:
            goto L_0x00d1;
        L_0x00cd:
            r5 = r5 + 1;
            goto L_0x00bc;
        L_0x00d0:
            r6 = r3;
        L_0x00d1:
            if (r6 == 0) goto L_0x00e3;
        L_0x00d3:
            r8 = r0.length;
            r8 = r8 - r2;
            if (r1 >= r8) goto L_0x00e3;
        L_0x00d7:
            r8 = r7.publicSuffixExceptionListBytes;
            r8 = binarySearchBytes(r8, r0, r1);
            if (r8 == 0) goto L_0x00e0;
        L_0x00df:
            goto L_0x00e4;
        L_0x00e0:
            r1 = r1 + 1;
            goto L_0x00d3;
        L_0x00e3:
            r8 = r3;
        L_0x00e4:
            if (r8 == 0) goto L_0x00f7;
        L_0x00e6:
            r0 = "!";
            r8 = java.lang.String.valueOf(r8);
            r8 = r0.concat(r8);
            r0 = "\\.";
            r8 = r8.split(r0);
            return r8;
        L_0x00f7:
            if (r4 != 0) goto L_0x00fe;
        L_0x00f9:
            if (r6 != 0) goto L_0x00fe;
        L_0x00fb:
            r8 = PREVAILING_RULE;
            return r8;
        L_0x00fe:
            if (r4 == 0) goto L_0x0107;
        L_0x0100:
            r8 = "\\.";
            r8 = r4.split(r8);
            goto L_0x0109;
        L_0x0107:
            r8 = EMPTY_RULE;
        L_0x0109:
            if (r6 == 0) goto L_0x0112;
        L_0x010b:
            r0 = "\\.";
            r0 = r6.split(r0);
            goto L_0x0114;
        L_0x0112:
            r0 = EMPTY_RULE;
        L_0x0114:
            r1 = r8.length;
            r2 = r0.length;
            if (r1 <= r2) goto L_0x0119;
        L_0x0118:
            return r8;
        L_0x0119:
            return r0;
        L_0x011a:
            r8 = move-exception;
            monitor-exit(r7);	 Catch:{ all -> 0x011a }
            throw r8;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.findMatchingRule(java.lang.String[]):java.lang.String[]");
        }

        private static String binarySearchBytes(byte[] bArr, byte[][] bArr2, int i) {
            int length = bArr.length;
            int i2 = 0;
            while (i2 < length) {
                int i3;
                int i4 = (i2 + length) / 2;
                while (i4 >= 0 && bArr[i4] != (byte) 10) {
                    i4--;
                }
                i4++;
                int i5 = 1;
                while (true) {
                    i3 = i4 + i5;
                    if (bArr[i3] == (byte) 10) {
                        break;
                    }
                    i5++;
                }
                int i6 = i3 - i4;
                int i7 = i;
                i5 = 0;
                int i8 = i5;
                int i9 = i8;
                while (true) {
                    int i10;
                    if (i5 != 0) {
                        i10 = 46;
                        i5 = 0;
                    } else {
                        i10 = bArr2[i7][i8] & 255;
                    }
                    i10 -= bArr[i4 + i9] & 255;
                    if (i10 != 0) {
                        break;
                    }
                    i9++;
                    i8++;
                    if (i9 != i6) {
                        if (bArr2[i7].length == i8) {
                            if (i7 == bArr2.length - 1) {
                                break;
                            }
                            i7++;
                            i8 = -1;
                            i5 = 1;
                        }
                    } else {
                        break;
                    }
                }
                if (i10 < 0) {
                    length = i4 - 1;
                } else if (i10 > 0) {
                    i2 = i3 + 1;
                } else {
                    int i11 = i6 - i9;
                    i5 = bArr2[i7].length - i8;
                    while (true) {
                        i7++;
                        if (i7 >= bArr2.length) {
                            break;
                        }
                        i5 += bArr2[i7].length;
                    }
                    if (i5 < i11) {
                        length = i4 - 1;
                    } else if (i5 <= i11) {
                        return new String(bArr, i4, i6, Util.UTF_8);
                    } else {
                        i2 = i3 + 1;
                    }
                }
            }
            return null;
        }
    }
