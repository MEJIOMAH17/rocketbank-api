package org.apache.commons.io;

import java.io.File;
import java.lang.reflect.Method;

final class Java7Support {
    private static final boolean IS_JAVA7 = true;
    private static Method createSymlink;
    private static Method delete;
    private static Object emptyFileAttributes;
    private static Object emptyLinkOpts;
    private static Method exists;
    private static Method isSymbolicLink;
    private static Method readSymlink;
    private static Method toFile;
    private static Method toPath;

    static {
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
        r0 = 1;
        r1 = 0;
        r2 = java.lang.Thread.currentThread();	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r2 = r2.getContextClassLoader();	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r3 = "java.nio.file.Files";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r3 = r2.loadClass(r3);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r4 = "java.nio.file.Path";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r4 = r2.loadClass(r4);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r5 = "java.nio.file.attribute.FileAttribute";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r5 = r2.loadClass(r5);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = "java.nio.file.LinkOption";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r2 = r2.loadClass(r6);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = "isSymbolicLink";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r7 = new java.lang.Class[r0];	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r7[r1] = r4;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = r3.getMethod(r6, r7);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        isSymbolicLink = r6;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = "delete";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r7 = new java.lang.Class[r0];	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r7[r1] = r4;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = r3.getMethod(r6, r7);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        delete = r6;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = "readSymbolicLink";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r7 = new java.lang.Class[r0];	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r7[r1] = r4;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = r3.getMethod(r6, r7);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        readSymlink = r6;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r5 = java.lang.reflect.Array.newInstance(r5, r1);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        emptyFileAttributes = r5;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r5 = "createSymbolicLink";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = 3;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = new java.lang.Class[r6];	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6[r1] = r4;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6[r0] = r4;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r7 = emptyFileAttributes;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r7 = r7.getClass();	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r8 = 2;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6[r8] = r7;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r5 = r3.getMethod(r5, r6);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        createSymlink = r5;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r2 = java.lang.reflect.Array.newInstance(r2, r1);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        emptyLinkOpts = r2;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r2 = "exists";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r5 = new java.lang.Class[r8];	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r5[r1] = r4;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = emptyLinkOpts;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r6 = r6.getClass();	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r5[r0] = r6;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r2 = r3.getMethod(r2, r5);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        exists = r2;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r2 = java.io.File.class;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r3 = "toPath";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r5 = new java.lang.Class[r1];	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r2 = r2.getMethod(r3, r5);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        toPath = r2;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r2 = "toFile";	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r3 = new java.lang.Class[r1];	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r2 = r4.getMethod(r2, r3);	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        toFile = r2;	 Catch:{ ClassNotFoundException -> 0x0095, ClassNotFoundException -> 0x0095 }
        r1 = r0;
    L_0x0095:
        IS_JAVA7 = r1;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.Java7Support.<clinit>():void");
    }

    public static boolean isSymLink(File file) {
        try {
            file = toPath.invoke(file, new Object[0]);
            return ((Boolean) isSymbolicLink.invoke(null, new Object[]{file})).booleanValue();
        } catch (File file2) {
            throw new RuntimeException(file2);
        } catch (File file22) {
            throw new RuntimeException(file22);
        }
    }

    public static boolean isAtLeastJava7() {
        return IS_JAVA7;
    }
}
