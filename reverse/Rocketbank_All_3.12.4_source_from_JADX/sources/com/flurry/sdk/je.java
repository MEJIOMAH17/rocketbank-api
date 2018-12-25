package com.flurry.sdk;

import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.flurry.sdk.le.C0517a;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class je {
    /* renamed from: b */
    private static final String f249b = "je";
    /* renamed from: c */
    private static je f250c;
    /* renamed from: a */
    public final Map<jm, byte[]> f251a = new HashMap();
    /* renamed from: d */
    private final Set<String> f252d;
    /* renamed from: e */
    private final ka<le> f253e = new C11141(this);
    /* renamed from: f */
    private C0493a f254f = C0493a.NONE;
    /* renamed from: g */
    private jo f255g;
    /* renamed from: h */
    private String f256h;

    /* renamed from: com.flurry.sdk.je$3 */
    class C04913 implements FilenameFilter {
        /* renamed from: a */
        final /* synthetic */ je f240a;

        C04913(je jeVar) {
            this.f240a = jeVar;
        }

        public final boolean accept(File file, String str) {
            return str.startsWith(".flurryagent.");
        }
    }

    /* renamed from: com.flurry.sdk.je$4 */
    static /* synthetic */ class C04924 {
        /* renamed from: a */
        static final /* synthetic */ int[] f241a = new int[C0517a.m262a().length];

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
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = com.flurry.sdk.je.C0493a.values();
            r0 = r0.length;
            r0 = new int[r0];
            f242b = r0;
            r0 = 1;
            r1 = f242b;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = com.flurry.sdk.je.C0493a.NONE;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = r2.ordinal();	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1[r2] = r0;	 Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r1 = f242b;	 Catch:{ NoSuchFieldError -> 0x001f }
            r2 = com.flurry.sdk.je.C0493a.ADVERTISING;	 Catch:{ NoSuchFieldError -> 0x001f }
            r2 = r2.ordinal();	 Catch:{ NoSuchFieldError -> 0x001f }
            r3 = 2;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1[r2] = r3;	 Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            r1 = f242b;	 Catch:{ NoSuchFieldError -> 0x002a }
            r2 = com.flurry.sdk.je.C0493a.DEVICE;	 Catch:{ NoSuchFieldError -> 0x002a }
            r2 = r2.ordinal();	 Catch:{ NoSuchFieldError -> 0x002a }
            r3 = 3;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1[r2] = r3;	 Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            r1 = f242b;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r2 = com.flurry.sdk.je.C0493a.REPORTED_IDS;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r2 = r2.ordinal();	 Catch:{ NoSuchFieldError -> 0x0035 }
            r3 = 4;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r1[r2] = r3;	 Catch:{ NoSuchFieldError -> 0x0035 }
        L_0x0035:
            r1 = com.flurry.sdk.le.C0517a.m262a();
            r1 = r1.length;
            r1 = new int[r1];
            f241a = r1;
            r1 = f241a;	 Catch:{ NoSuchFieldError -> 0x0045 }
            r2 = com.flurry.sdk.le.C0517a.f402a;	 Catch:{ NoSuchFieldError -> 0x0045 }
            r2 = r2 - r0;	 Catch:{ NoSuchFieldError -> 0x0045 }
            r1[r2] = r0;	 Catch:{ NoSuchFieldError -> 0x0045 }
        L_0x0045:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.je.4.<clinit>():void");
        }
    }

    /* renamed from: com.flurry.sdk.je$a */
    enum C0493a {
        NONE,
        ADVERTISING,
        DEVICE,
        REPORTED_IDS,
        FINISHED
    }

    /* renamed from: com.flurry.sdk.je$1 */
    class C11141 implements ka<le> {
        /* renamed from: a */
        final /* synthetic */ je f601a;

        /* renamed from: com.flurry.sdk.je$1$1 */
        class C11131 extends lw {
            /* renamed from: a */
            final /* synthetic */ C11141 f600a;

            C11131(C11141 c11141) {
                this.f600a = c11141;
            }

            /* renamed from: a */
            public final void mo1370a() {
                this.f600a.f601a.m84e();
            }
        }

        C11141(je jeVar) {
            this.f601a = jeVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void mo1365a(jz jzVar) {
            if (C04924.f241a[((le) jzVar).f680c - 1] == 1) {
                if (this.f601a.m88c() != null) {
                    jr.m114a().m120b(new C11131(this));
                }
            }
        }
    }

    /* renamed from: com.flurry.sdk.je$2 */
    class C11152 extends lw {
        /* renamed from: a */
        final /* synthetic */ je f602a;

        C11152(je jeVar) {
            this.f602a = jeVar;
        }

        /* renamed from: a */
        public final void mo1370a() {
            je.m83b(this.f602a);
        }
    }

    /* renamed from: a */
    public static synchronized je m79a() {
        je jeVar;
        synchronized (je.class) {
            if (f250c == null) {
                f250c = new je();
            }
            jeVar = f250c;
        }
        return jeVar;
    }

    /* renamed from: b */
    public static void m82b() {
        f250c = null;
    }

    private je() {
        Set hashSet = new HashSet();
        hashSet.add("null");
        hashSet.add("9774d56d682e549c");
        hashSet.add("dead00beef");
        this.f252d = Collections.unmodifiableSet(hashSet);
        kb.m151a().m158a("com.flurry.android.sdk.FlurrySessionEvent", this.f253e);
        jr.m114a().m120b(new C11152(this));
    }

    /* renamed from: c */
    public final boolean m88c() {
        return C0493a.FINISHED.equals(this.f254f);
    }

    /* renamed from: d */
    public final boolean m89d() {
        if (this.f255g != null && this.f255g.f277b) {
            return false;
        }
        return true;
    }

    /* renamed from: e */
    private void m84e() {
        lr.m312b();
        if (ls.m321a(jr.m114a().f293a)) {
            this.f255g = ls.m323b(jr.m114a().f293a);
            if (m88c()) {
                m87h();
                kb.m151a().m155a(new jg());
            }
        }
    }

    /* renamed from: a */
    private static void m81a(String str, File file) {
        Closeable closeable = null;
        try {
            Closeable dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(1);
                dataOutputStream.writeUTF(str);
                lr.m305a(dataOutputStream);
            } catch (Throwable th) {
                str = th;
                closeable = dataOutputStream;
                lr.m305a(closeable);
                throw str;
            }
        } catch (Throwable th2) {
            str = th2;
            kf.m177a(6, f249b, "Error when saving deviceId", str);
            lr.m305a(closeable);
        }
    }

    /* renamed from: f */
    private static String m85f() {
        Throwable th;
        File fileStreamPath = jr.m114a().f293a.getFileStreamPath(".flurryb.");
        String str = null;
        if (fileStreamPath != null) {
            if (fileStreamPath.exists()) {
                Closeable dataInputStream;
                try {
                    dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
                    try {
                        if (1 == dataInputStream.readInt()) {
                            str = dataInputStream.readUTF();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            kf.m177a(6, f249b, "Error when loading deviceId", th);
                            lr.m305a(dataInputStream);
                            return str;
                        } catch (Throwable th3) {
                            th = th3;
                            lr.m305a(dataInputStream);
                            throw th;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    dataInputStream = null;
                    lr.m305a(dataInputStream);
                    throw th;
                }
                lr.m305a(dataInputStream);
                return str;
            }
        }
        return null;
    }

    /* renamed from: g */
    private String m86g() {
        Closeable dataInputStream;
        Throwable th;
        File filesDir = jr.m114a().f293a.getFilesDir();
        String str = null;
        if (filesDir == null) {
            return null;
        }
        String[] list = filesDir.list(new C04913(this));
        if (list != null) {
            if (list.length != 0) {
                filesDir = jr.m114a().f293a.getFileStreamPath(list[0]);
                if (filesDir != null) {
                    if (filesDir.exists()) {
                        try {
                            dataInputStream = new DataInputStream(new FileInputStream(filesDir));
                            try {
                                if (46586 == dataInputStream.readUnsignedShort()) {
                                    if (2 == dataInputStream.readUnsignedShort()) {
                                        dataInputStream.readUTF();
                                        str = dataInputStream.readUTF();
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    kf.m177a(6, f249b, "Error when loading deviceId", th);
                                    lr.m305a(dataInputStream);
                                    return str;
                                } catch (Throwable th3) {
                                    th = th3;
                                    lr.m305a(dataInputStream);
                                    throw th;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            dataInputStream = null;
                            lr.m305a(dataInputStream);
                            throw th;
                        }
                        lr.m305a(dataInputStream);
                        return str;
                    }
                }
                return null;
            }
        }
        return null;
    }

    /* renamed from: h */
    private void m87h() {
        String str;
        if (this.f255g == null) {
            str = null;
        } else {
            str = this.f255g.f276a;
        }
        if (str != null) {
            kf.m176a(3, f249b, "Fetched advertising id");
            this.f251a.put(jm.AndroidAdvertisingId, lr.m315e(str));
        }
        str = this.f256h;
        if (str != null) {
            kf.m176a(3, f249b, "Fetched device id");
            this.f251a.put(jm.DeviceId, lr.m315e(str));
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m83b(je jeVar) {
        while (!C0493a.FINISHED.equals(jeVar.f254f)) {
            switch (jeVar.f254f) {
                case NONE:
                    jeVar.f254f = C0493a.ADVERTISING;
                    break;
                case ADVERTISING:
                    jeVar.f254f = C0493a.DEVICE;
                    break;
                case DEVICE:
                    jeVar.f254f = C0493a.REPORTED_IDS;
                    break;
                case REPORTED_IDS:
                    jeVar.f254f = C0493a.FINISHED;
                    break;
                default:
                    break;
            }
            try {
                switch (jeVar.f254f) {
                    case ADVERTISING:
                        jeVar.m84e();
                        break;
                    case DEVICE:
                        String str;
                        lr.m312b();
                        Object string = Secure.getString(jr.m114a().f293a.getContentResolver(), "android_id");
                        Object obj = null;
                        if (!TextUtils.isEmpty(string)) {
                            if (!jeVar.f252d.contains(string.toLowerCase(Locale.US))) {
                                obj = 1;
                            }
                        }
                        if (obj == null) {
                            str = null;
                        } else {
                            str = "AND".concat(String.valueOf(string));
                        }
                        if (TextUtils.isEmpty(str)) {
                            str = m85f();
                            if (TextUtils.isEmpty(str)) {
                                str = jeVar.m86g();
                                if (TextUtils.isEmpty(str)) {
                                    long doubleToLongBits = Double.doubleToLongBits(Math.random()) + (37 * (System.nanoTime() + (lr.m319i(lo.m282a(jr.m114a().f293a)) * 37)));
                                    StringBuilder stringBuilder = new StringBuilder("ID");
                                    stringBuilder.append(Long.toString(doubleToLongBits, 16));
                                    str = stringBuilder.toString();
                                }
                                if (!TextUtils.isEmpty(str)) {
                                    File fileStreamPath = jr.m114a().f293a.getFileStreamPath(".flurryb.");
                                    if (lq.m296a(fileStreamPath)) {
                                        m81a(str, fileStreamPath);
                                    }
                                }
                            }
                        }
                        jeVar.f256h = str;
                        break;
                    case REPORTED_IDS:
                        jeVar.m87h();
                        break;
                    default:
                        break;
                }
            } catch (Exception e) {
                String str2 = f249b;
                StringBuilder stringBuilder2 = new StringBuilder("Exception during id fetch:");
                stringBuilder2.append(jeVar.f254f);
                stringBuilder2.append(", ");
                stringBuilder2.append(e);
                kf.m176a(4, str2, stringBuilder2.toString());
            }
        }
        kb.m151a().m155a(new jf());
    }
}
