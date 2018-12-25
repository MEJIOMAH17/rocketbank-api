package com.flurry.sdk;

import com.flurry.sdk.ks.C1142a;
import com.flurry.sdk.ku.C1150a;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

public class kt {
    /* renamed from: a */
    public static final Integer f388a = Integer.valueOf(50);
    /* renamed from: d */
    private static final String f389d = "kt";
    /* renamed from: b */
    String f390b;
    /* renamed from: c */
    LinkedHashMap<String, List<String>> f391c;

    /* renamed from: com.flurry.sdk.kt$1 */
    class C11431 implements lc<List<ku>> {
        /* renamed from: a */
        final /* synthetic */ kt f666a;

        C11431(kt ktVar) {
            this.f666a = ktVar;
        }

        /* renamed from: a */
        public final kz<List<ku>> mo1372a(int i) {
            return new ky(new C1150a());
        }
    }

    /* renamed from: com.flurry.sdk.kt$2 */
    class C11442 implements lc<ks> {
        /* renamed from: a */
        final /* synthetic */ kt f667a;

        C11442(kt ktVar) {
            this.f667a = ktVar;
        }

        /* renamed from: a */
        public final kz<ks> mo1372a(int i) {
            return new C1142a();
        }
    }

    /* renamed from: com.flurry.sdk.kt$3 */
    class C11453 implements lc<List<ku>> {
        /* renamed from: a */
        final /* synthetic */ kt f668a;

        C11453(kt ktVar) {
            this.f668a = ktVar;
        }

        /* renamed from: a */
        public final kz<List<ku>> mo1372a(int i) {
            return new ky(new C1150a());
        }
    }

    /* renamed from: com.flurry.sdk.kt$4 */
    class C11464 implements lc<List<ku>> {
        /* renamed from: a */
        final /* synthetic */ kt f669a;

        C11464(kt ktVar) {
            this.f669a = ktVar;
        }

        /* renamed from: a */
        public final kz<List<ku>> mo1372a(int i) {
            return new ky(new C1150a());
        }
    }

    /* renamed from: com.flurry.sdk.kt$5 */
    class C11475 implements lc<List<ku>> {
        /* renamed from: a */
        final /* synthetic */ kt f670a;

        C11475(kt ktVar) {
            this.f670a = ktVar;
        }

        /* renamed from: a */
        public final kz<List<ku>> mo1372a(int i) {
            return new ky(new C1150a());
        }
    }

    /* renamed from: com.flurry.sdk.kt$6 */
    class C11486 implements lc<ks> {
        /* renamed from: a */
        final /* synthetic */ kt f671a;

        C11486(kt ktVar) {
            this.f671a = ktVar;
        }

        /* renamed from: a */
        public final kz<ks> mo1372a(int i) {
            return new C1142a();
        }
    }

    /* renamed from: com.flurry.sdk.kt$7 */
    class C11497 implements lc<List<ku>> {
        /* renamed from: a */
        final /* synthetic */ kt f672a;

        C11497(kt ktVar) {
            this.f672a = ktVar;
        }

        /* renamed from: a */
        public final kz<List<ku>> mo1372a(int i) {
            return new ky(new C1150a());
        }
    }

    public kt(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("Main");
        this.f390b = stringBuilder.toString();
        m243b(this.f390b);
    }

    /* renamed from: b */
    private void m243b(String str) {
        this.f391c = new LinkedHashMap();
        List<String> arrayList = new ArrayList();
        if (m250i(str)) {
            Collection j = m251j(str);
            if (j != null && j.size() > 0) {
                arrayList.addAll(j);
                for (String c : arrayList) {
                    m244c(c);
                }
            }
            m249h(str);
        } else {
            List<ku> list = (List) new jy(jr.m114a().f293a.getFileStreamPath(m245d(this.f390b)), str, 1, new C11431(this)).m145a();
            if (list == null) {
                kf.m186c(f389d, "New main file also not found. returning..");
                return;
            }
            for (ku kuVar : list) {
                arrayList.add(kuVar.f394a);
            }
        }
        for (String str2 : arrayList) {
            this.f391c.put(str2, m248g(str2));
        }
    }

    /* renamed from: c */
    private void m244c(String str) {
        List<String> j = m251j(str);
        if (j == null) {
            kf.m186c(f389d, "No old file to replace");
            return;
        }
        for (String str2 : j) {
            byte[] k = m252k(str2);
            if (k == null) {
                kf.m176a(6, f389d, "File does not exist");
            } else {
                m242a(str2, k);
                lr.m312b();
                String str3 = f389d;
                StringBuilder stringBuilder = new StringBuilder("Deleting  block File for ");
                stringBuilder.append(str2);
                stringBuilder.append(" file name:");
                stringBuilder.append(jr.m114a().f293a.getFileStreamPath(".flurrydatasenderblock.".concat(String.valueOf(str2))));
                kf.m176a(5, str3, stringBuilder.toString());
                File fileStreamPath = jr.m114a().f293a.getFileStreamPath(".flurrydatasenderblock.".concat(String.valueOf(str2)));
                if (fileStreamPath.exists()) {
                    boolean delete = fileStreamPath.delete();
                    String str4 = f389d;
                    StringBuilder stringBuilder2 = new StringBuilder("Found file for ");
                    stringBuilder2.append(str2);
                    stringBuilder2.append(". Deleted - ");
                    stringBuilder2.append(delete);
                    kf.m176a(5, str4, stringBuilder2.toString());
                }
            }
        }
        if (j != null) {
            m241a(str, j, ".YFlurrySenderIndex.info.");
            m249h(str);
        }
    }

    /* renamed from: d */
    private static String m245d(String str) {
        return ".YFlurrySenderIndex.info.".concat(String.valueOf(str));
    }

    /* renamed from: a */
    private synchronized void m240a() {
        List linkedList = new LinkedList(this.f391c.keySet());
        new jy(jr.m114a().f293a.getFileStreamPath(m245d(this.f390b)), ".YFlurrySenderIndex.info.", 1, new C11464(this)).m147b();
        if (!linkedList.isEmpty()) {
            m241a(this.f390b, linkedList, this.f390b);
        }
    }

    /* renamed from: a */
    public final synchronized void m254a(ks ksVar, String str) {
        int i;
        kf.m176a(4, f389d, "addBlockInfo".concat(String.valueOf(str)));
        ksVar = ksVar.f386a;
        List list = (List) this.f391c.get(str);
        if (list == null) {
            kf.m176a(4, f389d, "New Data Key");
            list = new LinkedList();
            i = 1;
        } else {
            i = 0;
        }
        list.add(ksVar);
        if (list.size() > f388a.intValue()) {
            m246e((String) list.get(0));
            list.remove(0);
        }
        this.f391c.put(str, list);
        m241a(str, list, ".YFlurrySenderIndex.info.");
        if (i != 0) {
            m240a();
        }
    }

    /* renamed from: e */
    private boolean m246e(String str) {
        return new jy(jr.m114a().f293a.getFileStreamPath(ks.m237a(str)), ".yflurrydatasenderblock.", 1, new C11442(this)).m147b();
    }

    /* renamed from: a */
    public final boolean m255a(String str, String str2) {
        List list = (List) this.f391c.get(str2);
        if (list != null) {
            m246e(str);
            str = list.remove(str);
        } else {
            str = null;
        }
        if (list == null || list.isEmpty()) {
            m247f(str2);
        } else {
            this.f391c.put(str2, list);
            m241a(str2, list, ".YFlurrySenderIndex.info.");
        }
        return str;
    }

    /* renamed from: a */
    public final List<String> m253a(String str) {
        return (List) this.f391c.get(str);
    }

    /* renamed from: f */
    private synchronized boolean m247f(String str) {
        lr.m312b();
        jy jyVar = new jy(jr.m114a().f293a.getFileStreamPath(m245d(str)), ".YFlurrySenderIndex.info.", 1, new C11453(this));
        List<String> a = m253a(str);
        if (a != null) {
            String str2 = f389d;
            StringBuilder stringBuilder = new StringBuilder("discardOutdatedBlocksForDataKey: notSentBlocks = ");
            stringBuilder.append(a.size());
            kf.m176a(4, str2, stringBuilder.toString());
            for (String str22 : a) {
                m246e(str22);
                kf.m176a(4, f389d, "discardOutdatedBlocksForDataKey: removed block = ".concat(String.valueOf(str22)));
            }
        }
        this.f391c.remove(str);
        str = jyVar.m147b();
        m240a();
        return str;
    }

    /* renamed from: g */
    private synchronized List<String> m248g(String str) {
        List<String> arrayList;
        lr.m312b();
        String str2 = f389d;
        StringBuilder stringBuilder = new StringBuilder("Reading Index File for ");
        stringBuilder.append(str);
        stringBuilder.append(" file name:");
        stringBuilder.append(jr.m114a().f293a.getFileStreamPath(m245d(str)));
        kf.m176a(5, str2, stringBuilder.toString());
        List<ku> list = (List) new jy(jr.m114a().f293a.getFileStreamPath(m245d(str)), ".YFlurrySenderIndex.info.", 1, new C11475(this)).m145a();
        arrayList = new ArrayList();
        for (ku kuVar : list) {
            arrayList.add(kuVar.f394a);
        }
        return arrayList;
    }

    /* renamed from: a */
    private synchronized void m242a(String str, byte[] bArr) {
        lr.m312b();
        String str2 = f389d;
        StringBuilder stringBuilder = new StringBuilder("Saving Block File for ");
        stringBuilder.append(str);
        stringBuilder.append(" file name:");
        stringBuilder.append(jr.m114a().f293a.getFileStreamPath(ks.m237a(str)));
        kf.m176a(5, str2, stringBuilder.toString());
        new jy(jr.m114a().f293a.getFileStreamPath(ks.m237a(str)), ".yflurrydatasenderblock.", 1, new C11486(this)).m146a(new ks(bArr));
    }

    /* renamed from: h */
    private static void m249h(String str) {
        lr.m312b();
        String str2 = f389d;
        StringBuilder stringBuilder = new StringBuilder("Deleting Index File for ");
        stringBuilder.append(str);
        stringBuilder.append(" file name:");
        stringBuilder.append(jr.m114a().f293a.getFileStreamPath(".FlurrySenderIndex.info.".concat(String.valueOf(str))));
        kf.m176a(5, str2, stringBuilder.toString());
        File fileStreamPath = jr.m114a().f293a.getFileStreamPath(".FlurrySenderIndex.info.".concat(String.valueOf(str)));
        if (fileStreamPath.exists()) {
            boolean delete = fileStreamPath.delete();
            String str3 = f389d;
            StringBuilder stringBuilder2 = new StringBuilder("Found file for ");
            stringBuilder2.append(str);
            stringBuilder2.append(". Deleted - ");
            stringBuilder2.append(delete);
            kf.m176a(5, str3, stringBuilder2.toString());
        }
    }

    /* renamed from: a */
    private synchronized void m241a(String str, List<String> list, String str2) {
        lr.m312b();
        String str3 = f389d;
        StringBuilder stringBuilder = new StringBuilder("Saving Index File for ");
        stringBuilder.append(str);
        stringBuilder.append(" file name:");
        stringBuilder.append(jr.m114a().f293a.getFileStreamPath(m245d(str)));
        kf.m176a(5, str3, stringBuilder.toString());
        jy jyVar = new jy(jr.m114a().f293a.getFileStreamPath(m245d(str)), str2, 1, new C11497(this));
        str = new ArrayList();
        for (String str22 : list) {
            str.add(new ku(str22));
        }
        jyVar.m146a(str);
    }

    /* renamed from: i */
    private synchronized boolean m250i(String str) {
        File fileStreamPath;
        fileStreamPath = jr.m114a().f293a.getFileStreamPath(".FlurrySenderIndex.info.".concat(String.valueOf(str)));
        String str2 = f389d;
        StringBuilder stringBuilder = new StringBuilder("isOldIndexFilePresent: for ");
        stringBuilder.append(str);
        stringBuilder.append(fileStreamPath.exists());
        kf.m176a(5, str2, stringBuilder.toString());
        return fileStreamPath.exists();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: j */
    private synchronized java.util.List<java.lang.String> m251j(java.lang.String r9) {
        /*
        r8 = this;
        monitor-enter(r8);
        com.flurry.sdk.lr.m312b();	 Catch:{ all -> 0x00e2 }
        r0 = f389d;	 Catch:{ all -> 0x00e2 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00e2 }
        r2 = "Reading Index File for ";
        r1.<init>(r2);	 Catch:{ all -> 0x00e2 }
        r1.append(r9);	 Catch:{ all -> 0x00e2 }
        r2 = " file name:";
        r1.append(r2);	 Catch:{ all -> 0x00e2 }
        r2 = com.flurry.sdk.jr.m114a();	 Catch:{ all -> 0x00e2 }
        r2 = r2.f293a;	 Catch:{ all -> 0x00e2 }
        r3 = ".FlurrySenderIndex.info.";
        r4 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x00e2 }
        r3 = r3.concat(r4);	 Catch:{ all -> 0x00e2 }
        r2 = r2.getFileStreamPath(r3);	 Catch:{ all -> 0x00e2 }
        r1.append(r2);	 Catch:{ all -> 0x00e2 }
        r1 = r1.toString();	 Catch:{ all -> 0x00e2 }
        r2 = 5;
        com.flurry.sdk.kf.m176a(r2, r0, r1);	 Catch:{ all -> 0x00e2 }
        r0 = com.flurry.sdk.jr.m114a();	 Catch:{ all -> 0x00e2 }
        r0 = r0.f293a;	 Catch:{ all -> 0x00e2 }
        r1 = ".FlurrySenderIndex.info.";
        r3 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x00e2 }
        r1 = r1.concat(r3);	 Catch:{ all -> 0x00e2 }
        r0 = r0.getFileStreamPath(r1);	 Catch:{ all -> 0x00e2 }
        r1 = r0.exists();	 Catch:{ all -> 0x00e2 }
        r3 = 0;
        if (r1 == 0) goto L_0x00d8;
    L_0x004f:
        r1 = f389d;	 Catch:{ all -> 0x00e2 }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00e2 }
        r5 = "Reading Index File for ";
        r4.<init>(r5);	 Catch:{ all -> 0x00e2 }
        r4.append(r9);	 Catch:{ all -> 0x00e2 }
        r9 = " Found file.";
        r4.append(r9);	 Catch:{ all -> 0x00e2 }
        r9 = r4.toString();	 Catch:{ all -> 0x00e2 }
        com.flurry.sdk.kf.m176a(r2, r1, r9);	 Catch:{ all -> 0x00e2 }
        r9 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x00c6 }
        r9.<init>(r0);	 Catch:{ Throwable -> 0x00c6 }
        r0 = new java.io.DataInputStream;	 Catch:{ Throwable -> 0x00c6 }
        r0.<init>(r9);	 Catch:{ Throwable -> 0x00c6 }
        r9 = r0.readUnsignedShort();	 Catch:{ Throwable -> 0x00bf, all -> 0x00bd }
        if (r9 != 0) goto L_0x007c;
    L_0x0077:
        com.flurry.sdk.lr.m305a(r0);	 Catch:{ all -> 0x00e2 }
        monitor-exit(r8);
        return r3;
    L_0x007c:
        r1 = new java.util.ArrayList;	 Catch:{ Throwable -> 0x00bf, all -> 0x00bd }
        r1.<init>(r9);	 Catch:{ Throwable -> 0x00bf, all -> 0x00bd }
        r2 = 0;
    L_0x0082:
        if (r2 >= r9) goto L_0x00b6;
    L_0x0084:
        r3 = r0.readUnsignedShort();	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r4 = 4;
        r5 = f389d;	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r6 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r7 = "read iter ";
        r6.<init>(r7);	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r6.append(r2);	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r7 = " dataLength = ";
        r6.append(r7);	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r6.append(r3);	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r6 = r6.toString();	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        com.flurry.sdk.kf.m176a(r4, r5, r6);	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r3 = new byte[r3];	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r0.readFully(r3);	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r4 = new java.lang.String;	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r4.<init>(r3);	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r1.add(r4);	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        r2 = r2 + 1;
        goto L_0x0082;
    L_0x00b4:
        r9 = move-exception;
        goto L_0x00c1;
    L_0x00b6:
        r0.readUnsignedShort();	 Catch:{ Throwable -> 0x00b4, all -> 0x00bd }
        com.flurry.sdk.lr.m305a(r0);	 Catch:{ all -> 0x00e2 }
        goto L_0x00e0;
    L_0x00bd:
        r9 = move-exception;
        goto L_0x00d4;
    L_0x00bf:
        r9 = move-exception;
        r1 = r3;
    L_0x00c1:
        r3 = r0;
        goto L_0x00c8;
    L_0x00c3:
        r9 = move-exception;
        r0 = r3;
        goto L_0x00d4;
    L_0x00c6:
        r9 = move-exception;
        r1 = r3;
    L_0x00c8:
        r0 = 6;
        r2 = f389d;	 Catch:{ all -> 0x00c3 }
        r4 = "Error when loading persistent file";
        com.flurry.sdk.kf.m177a(r0, r2, r4, r9);	 Catch:{ all -> 0x00c3 }
        com.flurry.sdk.lr.m305a(r3);	 Catch:{ all -> 0x00e2 }
        goto L_0x00e0;
    L_0x00d4:
        com.flurry.sdk.lr.m305a(r0);	 Catch:{ all -> 0x00e2 }
        throw r9;	 Catch:{ all -> 0x00e2 }
    L_0x00d8:
        r9 = f389d;	 Catch:{ all -> 0x00e2 }
        r0 = "Agent cache file doesn't exist.";
        com.flurry.sdk.kf.m176a(r2, r9, r0);	 Catch:{ all -> 0x00e2 }
        r1 = r3;
    L_0x00e0:
        monitor-exit(r8);
        return r1;
    L_0x00e2:
        r9 = move-exception;
        monitor-exit(r8);
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.kt.j(java.lang.String):java.util.List<java.lang.String>");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    /* renamed from: k */
    private static byte[] m252k(java.lang.String r6) {
        /*
        com.flurry.sdk.lr.m312b();
        r0 = f389d;
        r1 = new java.lang.StringBuilder;
        r2 = "Reading block File for ";
        r1.<init>(r2);
        r1.append(r6);
        r2 = " file name:";
        r1.append(r2);
        r2 = com.flurry.sdk.jr.m114a();
        r2 = r2.f293a;
        r3 = ".flurrydatasenderblock.";
        r4 = java.lang.String.valueOf(r6);
        r3 = r3.concat(r4);
        r2 = r2.getFileStreamPath(r3);
        r1.append(r2);
        r1 = r1.toString();
        r2 = 5;
        com.flurry.sdk.kf.m176a(r2, r0, r1);
        r0 = com.flurry.sdk.jr.m114a();
        r0 = r0.f293a;
        r1 = ".flurrydatasenderblock.";
        r3 = java.lang.String.valueOf(r6);
        r1 = r1.concat(r3);
        r0 = r0.getFileStreamPath(r1);
        r1 = r0.exists();
        r3 = 0;
        if (r1 == 0) goto L_0x00a3;
    L_0x004e:
        r1 = f389d;
        r4 = new java.lang.StringBuilder;
        r5 = "Reading Index File for ";
        r4.<init>(r5);
        r4.append(r6);
        r6 = " Found file.";
        r4.append(r6);
        r6 = r4.toString();
        com.flurry.sdk.kf.m176a(r2, r1, r6);
        r6 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x0091 }
        r6.<init>(r0);	 Catch:{ Throwable -> 0x0091 }
        r0 = new java.io.DataInputStream;	 Catch:{ Throwable -> 0x0091 }
        r0.<init>(r6);	 Catch:{ Throwable -> 0x0091 }
        r6 = r0.readUnsignedShort();	 Catch:{ Throwable -> 0x008b, all -> 0x0088 }
        if (r6 != 0) goto L_0x007a;
    L_0x0076:
        com.flurry.sdk.lr.m305a(r0);
        return r3;
    L_0x007a:
        r6 = new byte[r6];	 Catch:{ Throwable -> 0x008b, all -> 0x0088 }
        r0.readFully(r6);	 Catch:{ Throwable -> 0x0086, all -> 0x0088 }
        r0.readUnsignedShort();	 Catch:{ Throwable -> 0x0086, all -> 0x0088 }
        com.flurry.sdk.lr.m305a(r0);
        goto L_0x00ac;
    L_0x0086:
        r1 = move-exception;
        goto L_0x008d;
    L_0x0088:
        r6 = move-exception;
        r3 = r0;
        goto L_0x009f;
    L_0x008b:
        r1 = move-exception;
        r6 = r3;
    L_0x008d:
        r3 = r0;
        goto L_0x0093;
    L_0x008f:
        r6 = move-exception;
        goto L_0x009f;
    L_0x0091:
        r1 = move-exception;
        r6 = r3;
    L_0x0093:
        r0 = 6;
        r2 = f389d;	 Catch:{ all -> 0x008f }
        r4 = "Error when loading persistent file";
        com.flurry.sdk.kf.m177a(r0, r2, r4, r1);	 Catch:{ all -> 0x008f }
        com.flurry.sdk.lr.m305a(r3);
        goto L_0x00ac;
    L_0x009f:
        com.flurry.sdk.lr.m305a(r3);
        throw r6;
    L_0x00a3:
        r6 = 4;
        r0 = f389d;
        r1 = "Agent cache file doesn't exist.";
        com.flurry.sdk.kf.m176a(r6, r0, r1);
        r6 = r3;
    L_0x00ac:
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.kt.k(java.lang.String):byte[]");
    }
}
