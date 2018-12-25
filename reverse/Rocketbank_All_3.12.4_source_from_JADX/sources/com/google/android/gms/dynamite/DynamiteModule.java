package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzd;
import dalvik.system.PathClassLoader;
import java.util.HashMap;

public final class DynamiteModule {
    private static Boolean zzaRO;
    private static zza zzaRP;
    private static zzb zzaRQ;
    private static final HashMap<String, byte[]> zzaRR = new HashMap();
    private static String zzaRS;
    private static final zza zzaRT = new C11741();
    public static final zzb zzaRU = new C11752();
    public static final zzb zzaRV = new C11763();
    public static final zzb zzaRW = new C11774();
    public static final zzb zzaRX = new C11785();
    public static final zzb zzaRY = new C11796();
    private final Context zzaRZ;

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$8 */
    class C05468 extends PathClassLoader {
        C05468(String str, ClassLoader classLoader) {
            super(str, classLoader);
        }

        protected final java.lang.Class<?> loadClass(java.lang.String r2, boolean r3) throws java.lang.ClassNotFoundException {
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
            r1 = this;
            r0 = "java.";
            r0 = r2.startsWith(r0);
            if (r0 != 0) goto L_0x0015;
        L_0x0008:
            r0 = "android.";
            r0 = r2.startsWith(r0);
            if (r0 != 0) goto L_0x0015;
        L_0x0010:
            r0 = r1.findClass(r2);	 Catch:{ ClassNotFoundException -> 0x0015 }
            return r0;
        L_0x0015:
            r2 = super.loadClass(r2, r3);
            return r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.8.loadClass(java.lang.String, boolean):java.lang.Class<?>");
        }
    }

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    public static class zza extends Exception {
        private zza(String str) {
            super(str);
        }

        private zza(String str, Throwable th) {
            super(str, th);
        }
    }

    public interface zzb {

        public interface zza {
            int zzI(Context context, String str);

            int zzb(Context context, String str, boolean z) throws zza;
        }

        public static class zzb {
            public int zzaSb = 0;
            public int zzaSc = 0;
            public int zzaSd = 0;
        }

        zzb zza(Context context, String str, zza zza) throws zza;
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$1 */
    class C11741 implements zza {
        C11741() {
        }

        public final int zzI(Context context, String str) {
            return DynamiteModule.zzI(context, str);
        }

        public final int zzb(Context context, String str, boolean z) throws zza {
            return DynamiteModule.zzb(context, str, z);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$2 */
    class C11752 implements zzb {
        C11752() {
        }

        public final zzb zza(Context context, String str, zza zza) throws zza {
            zzb zzb = new zzb();
            zzb.zzaSc = zza.zzb(context, str, true);
            if (zzb.zzaSc != 0) {
                zzb.zzaSd = 1;
                return zzb;
            }
            zzb.zzaSb = zza.zzI(context, str);
            if (zzb.zzaSb != 0) {
                zzb.zzaSd = -1;
            }
            return zzb;
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$3 */
    class C11763 implements zzb {
        C11763() {
        }

        public final zzb zza(Context context, String str, zza zza) throws zza {
            zzb zzb = new zzb();
            zzb.zzaSb = zza.zzI(context, str);
            if (zzb.zzaSb != 0) {
                zzb.zzaSd = -1;
                return zzb;
            }
            zzb.zzaSc = zza.zzb(context, str, true);
            if (zzb.zzaSc != 0) {
                zzb.zzaSd = 1;
            }
            return zzb;
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$4 */
    class C11774 implements zzb {
        C11774() {
        }

        public final zzb zza(Context context, String str, zza zza) throws zza {
            int i;
            zzb zzb = new zzb();
            zzb.zzaSb = zza.zzI(context, str);
            zzb.zzaSc = zza.zzb(context, str, true);
            if (zzb.zzaSb == 0 && zzb.zzaSc == 0) {
                i = 0;
            } else if (zzb.zzaSb >= zzb.zzaSc) {
                i = -1;
            } else {
                zzb.zzaSd = 1;
                return zzb;
            }
            zzb.zzaSd = i;
            return zzb;
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$5 */
    class C11785 implements zzb {
        C11785() {
        }

        public final com.google.android.gms.dynamite.DynamiteModule.zzb.zzb zza(android.content.Context r3, java.lang.String r4, com.google.android.gms.dynamite.DynamiteModule.zzb.zza r5) throws com.google.android.gms.dynamite.DynamiteModule.zza {
            /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:12:0x0029 in {4, 6, 10, 11} preds:[]
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:129)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:38)
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
            r2 = this;
            r0 = new com.google.android.gms.dynamite.DynamiteModule$zzb$zzb;
            r0.<init>();
            r1 = r5.zzI(r3, r4);
            r0.zzaSb = r1;
            r1 = 1;
            r3 = r5.zzb(r3, r4, r1);
            r0.zzaSc = r3;
            r3 = r0.zzaSb;
            if (r3 != 0) goto L_0x001e;
        L_0x0016:
            r3 = r0.zzaSc;
            if (r3 != 0) goto L_0x001e;
        L_0x001a:
            r3 = 0;
        L_0x001b:
            r0.zzaSd = r3;
            return r0;
        L_0x001e:
            r3 = r0.zzaSc;
            r4 = r0.zzaSb;
            if (r3 < r4) goto L_0x0027;
        L_0x0024:
            r0.zzaSd = r1;
            return r0;
        L_0x0027:
            r3 = -1;
            goto L_0x001b;
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.5.zza(android.content.Context, java.lang.String, com.google.android.gms.dynamite.DynamiteModule$zzb$zza):com.google.android.gms.dynamite.DynamiteModule$zzb$zzb");
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$6 */
    class C11796 implements zzb {
        C11796() {
        }

        public final zzb zza(Context context, String str, zza zza) throws zza {
            zzb zzb = new zzb();
            zzb.zzaSb = zza.zzI(context, str);
            zzb.zzaSc = zzb.zzaSb != 0 ? zza.zzb(context, str, false) : zza.zzb(context, str, true);
            if (zzb.zzaSb == 0 && zzb.zzaSc == 0) {
                zzb.zzaSd = 0;
                return zzb;
            } else if (zzb.zzaSc >= zzb.zzaSb) {
                zzb.zzaSd = 1;
                return zzb;
            } else {
                zzb.zzaSd = -1;
                return zzb;
            }
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$7 */
    class C11807 implements zza {
        final /* synthetic */ int zzaSa;

        C11807(int i) {
            this.zzaSa = i;
        }

        public final int zzI(Context context, String str) {
            return this.zzaSa;
        }

        public final int zzb(Context context, String str, boolean z) {
            return 0;
        }
    }

    private DynamiteModule(Context context) {
        this.zzaRZ = (Context) zzac.zzw(context);
    }

    private static ClassLoader zzBT() {
        return new C05468(zzaRS, ClassLoader.getSystemClassLoader());
    }

    public static int zzI(android.content.Context r5, java.lang.String r6) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = 0;
        r5 = r5.getApplicationContext();	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r5 = r5.getClassLoader();	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = "com.google.android.gms.dynamite.descriptors.";	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r2 = "ModuleDescriptor";	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = 1;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4 = java.lang.String.valueOf(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4 = r4.length();	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = r3 + r4;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4 = java.lang.String.valueOf(r6);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4 = r4.length();	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = r3 + r4;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4 = java.lang.String.valueOf(r2);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4 = r4.length();	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = r3 + r4;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4.<init>(r3);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4.append(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4.append(r6);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = ".";	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4.append(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r4.append(r2);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = r4.toString();	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r5 = r5.loadClass(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = "MODULE_ID";	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = r5.getDeclaredField(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r2 = "MODULE_VERSION";	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r5 = r5.getDeclaredField(r2);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r2 = 0;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = r1.get(r2);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = r3.equals(r6);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        if (r3 != 0) goto L_0x00a3;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
    L_0x0063:
        r5 = "DynamiteModule";	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = r1.get(r2);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r2 = 51;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = java.lang.String.valueOf(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = r3.length();	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r2 = r2 + r3;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = java.lang.String.valueOf(r6);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = r3.length();	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r2 = r2 + r3;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3.<init>(r2);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r2 = "Module descriptor id '";	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3.append(r2);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3.append(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = "' didn't match expected id '";	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3.append(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3.append(r6);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = "'";	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r3.append(r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        r1 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        android.util.Log.e(r5, r1);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        return r0;	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
    L_0x00a3:
        r5 = r5.getInt(r2);	 Catch:{ ClassNotFoundException -> 0x00c9, Exception -> 0x00a8 }
        return r5;
    L_0x00a8:
        r5 = move-exception;
        r6 = "DynamiteModule";
        r1 = "Failed to load module descriptor class: ";
        r5 = r5.getMessage();
        r5 = java.lang.String.valueOf(r5);
        r2 = r5.length();
        if (r2 == 0) goto L_0x00c0;
    L_0x00bb:
        r5 = r1.concat(r5);
        goto L_0x00c5;
    L_0x00c0:
        r5 = new java.lang.String;
        r5.<init>(r1);
    L_0x00c5:
        android.util.Log.e(r6, r5);
        return r0;
    L_0x00c9:
        r5 = "DynamiteModule";
        r1 = 45;
        r2 = java.lang.String.valueOf(r6);
        r2 = r2.length();
        r1 = r1 + r2;
        r2 = new java.lang.StringBuilder;
        r2.<init>(r1);
        r1 = "Local module descriptor class for ";
        r2.append(r1);
        r2.append(r6);
        r6 = " not found.";
        r2.append(r6);
        r6 = r2.toString();
        android.util.Log.w(r5, r6);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzI(android.content.Context, java.lang.String):int");
    }

    public static int zzJ(Context context, String str) {
        return zzb(context, str, false);
    }

    private static DynamiteModule zzK(Context context, String str) {
        String str2 = "DynamiteModule";
        String str3 = "Selected local version of ";
        str = String.valueOf(str);
        Log.i(str2, str.length() != 0 ? str3.concat(str) : new String(str3));
        return new DynamiteModule(context.getApplicationContext());
    }

    private static Context zza(Context context, String str, byte[] bArr, zzb zzb) {
        try {
            return (Context) zzd.zzF(zzb.zza(zzd.zzA(context), str, bArr));
        } catch (Exception e) {
            str = "DynamiteModule";
            String str2 = "Failed to load DynamiteLoader: ";
            String valueOf = String.valueOf(e.toString());
            Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            return null;
        }
    }

    public static DynamiteModule zza(Context context, zzb zzb, String str) throws zza {
        int i;
        zzb zza = zzb.zza(context, str, zzaRT);
        int i2 = zza.zzaSb;
        int i3 = zza.zzaSc;
        StringBuilder stringBuilder = new StringBuilder((68 + String.valueOf(str).length()) + String.valueOf(str).length());
        stringBuilder.append("Considering local module ");
        stringBuilder.append(str);
        stringBuilder.append(":");
        stringBuilder.append(i2);
        stringBuilder.append(" and remote module ");
        stringBuilder.append(str);
        stringBuilder.append(":");
        stringBuilder.append(i3);
        Log.i("DynamiteModule", stringBuilder.toString());
        if (!(zza.zzaSd == 0 || (zza.zzaSd == -1 && zza.zzaSb == 0))) {
            if (zza.zzaSd != 1 || zza.zzaSc != 0) {
                if (zza.zzaSd == -1) {
                    return zzK(context, str);
                }
                if (zza.zzaSd == 1) {
                    try {
                        return zza(context, str, zza.zzaSc);
                    } catch (Throwable e) {
                        String str2 = "DynamiteModule";
                        String str3 = "Failed to load remote module: ";
                        String valueOf = String.valueOf(e.getMessage());
                        Log.w(str2, valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
                        if (zza.zzaSb != 0 && zzb.zza(context, str, new C11807(zza.zzaSb)).zzaSd == -1) {
                            return zzK(context, str);
                        }
                        throw new zza("Remote load failed. No local fallback found.", e);
                    }
                }
                i = zza.zzaSd;
                StringBuilder stringBuilder2 = new StringBuilder(47);
                stringBuilder2.append("VersionPolicy returned invalid code:");
                stringBuilder2.append(i);
                throw new zza(stringBuilder2.toString());
            }
        }
        i = zza.zzaSb;
        int i4 = zza.zzaSc;
        StringBuilder stringBuilder3 = new StringBuilder(91);
        stringBuilder3.append("No acceptable module found. Local version is ");
        stringBuilder3.append(i);
        stringBuilder3.append(" and remote version is ");
        stringBuilder3.append(i4);
        stringBuilder3.append(".");
        throw new zza(stringBuilder3.toString());
    }

    private static DynamiteModule zza(Context context, String str, int i) throws zza {
        synchronized (DynamiteModule.class) {
            Boolean bool = zzaRO;
        }
        if (bool != null) {
            return bool.booleanValue() ? zzc(context, str, i) : zzb(context, str, i);
        } else {
            throw new zza("Failed to determine which loading route to use.");
        }
    }

    private static void zza(ClassLoader classLoader) throws zza {
        try {
            zzaRQ = com.google.android.gms.dynamite.zzb.zza.zzcf((IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable e) {
            throw new zza("Failed to instantiate dynamite loader", e);
        }
    }

    public static int zzb(android.content.Context r6, java.lang.String r7, boolean r8) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = com.google.android.gms.dynamite.DynamiteModule.class;
        monitor-enter(r0);
        r1 = zzaRO;	 Catch:{ all -> 0x00e0 }
        if (r1 != 0) goto L_0x00ad;
    L_0x0007:
        r1 = r6.getApplicationContext();	 Catch:{ ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083 }
        r1 = r1.getClassLoader();	 Catch:{ ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083 }
        r2 = com.google.android.gms.dynamite.DynamiteModule.DynamiteLoaderClassLoader.class;	 Catch:{ ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083 }
        r2 = r2.getName();	 Catch:{ ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083 }
        r1 = r1.loadClass(r2);	 Catch:{ ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083 }
        r2 = "sClassLoader";	 Catch:{ ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083 }
        r2 = r1.getDeclaredField(r2);	 Catch:{ ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083 }
        monitor-enter(r1);	 Catch:{ ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083 }
        r3 = 0;
        r4 = r2.get(r3);	 Catch:{ all -> 0x0080 }
        r4 = (java.lang.ClassLoader) r4;	 Catch:{ all -> 0x0080 }
        if (r4 == 0) goto L_0x0038;	 Catch:{ all -> 0x0080 }
    L_0x0029:
        r2 = java.lang.ClassLoader.getSystemClassLoader();	 Catch:{ all -> 0x0080 }
        if (r4 != r2) goto L_0x0032;	 Catch:{ all -> 0x0080 }
    L_0x002f:
        r2 = java.lang.Boolean.FALSE;	 Catch:{ all -> 0x0080 }
        goto L_0x007d;
    L_0x0032:
        zza(r4);	 Catch:{ zza -> 0x0035 }
    L_0x0035:
        r2 = java.lang.Boolean.TRUE;	 Catch:{ all -> 0x0080 }
        goto L_0x007d;	 Catch:{ all -> 0x0080 }
    L_0x0038:
        r4 = "com.google.android.gms";	 Catch:{ all -> 0x0080 }
        r5 = r6.getApplicationContext();	 Catch:{ all -> 0x0080 }
        r5 = r5.getPackageName();	 Catch:{ all -> 0x0080 }
        r4 = r4.equals(r5);	 Catch:{ all -> 0x0080 }
        if (r4 == 0) goto L_0x0050;	 Catch:{ all -> 0x0080 }
    L_0x0048:
        r4 = java.lang.ClassLoader.getSystemClassLoader();	 Catch:{ all -> 0x0080 }
        r2.set(r3, r4);	 Catch:{ all -> 0x0080 }
        goto L_0x002f;
    L_0x0050:
        r4 = zzd(r6, r7, r8);	 Catch:{ zza -> 0x0075 }
        r5 = zzaRS;	 Catch:{ zza -> 0x0075 }
        if (r5 == 0) goto L_0x0072;	 Catch:{ zza -> 0x0075 }
    L_0x0058:
        r5 = zzaRS;	 Catch:{ zza -> 0x0075 }
        r5 = r5.isEmpty();	 Catch:{ zza -> 0x0075 }
        if (r5 == 0) goto L_0x0061;	 Catch:{ zza -> 0x0075 }
    L_0x0060:
        goto L_0x0072;	 Catch:{ zza -> 0x0075 }
    L_0x0061:
        r5 = zzBT();	 Catch:{ zza -> 0x0075 }
        zza(r5);	 Catch:{ zza -> 0x0075 }
        r2.set(r3, r5);	 Catch:{ zza -> 0x0075 }
        r5 = java.lang.Boolean.TRUE;	 Catch:{ zza -> 0x0075 }
        zzaRO = r5;	 Catch:{ zza -> 0x0075 }
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
        monitor-exit(r0);	 Catch:{ all -> 0x00e0 }
        return r4;
    L_0x0072:
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
        monitor-exit(r0);	 Catch:{ all -> 0x00e0 }
        return r4;
    L_0x0075:
        r4 = java.lang.ClassLoader.getSystemClassLoader();	 Catch:{ all -> 0x0080 }
        r2.set(r3, r4);	 Catch:{ all -> 0x0080 }
        goto L_0x002f;	 Catch:{ all -> 0x0080 }
    L_0x007d:
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
        r1 = r2;	 Catch:{ all -> 0x0080 }
        goto L_0x00ab;	 Catch:{ all -> 0x0080 }
    L_0x0080:
        r2 = move-exception;	 Catch:{ all -> 0x0080 }
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
        throw r2;	 Catch:{ ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083, ClassNotFoundException -> 0x0083 }
    L_0x0083:
        r1 = move-exception;
        r2 = "DynamiteModule";	 Catch:{ all -> 0x00e0 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x00e0 }
        r3 = 30;	 Catch:{ all -> 0x00e0 }
        r4 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x00e0 }
        r4 = r4.length();	 Catch:{ all -> 0x00e0 }
        r3 = r3 + r4;	 Catch:{ all -> 0x00e0 }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00e0 }
        r4.<init>(r3);	 Catch:{ all -> 0x00e0 }
        r3 = "Failed to load module via V2: ";	 Catch:{ all -> 0x00e0 }
        r4.append(r3);	 Catch:{ all -> 0x00e0 }
        r4.append(r1);	 Catch:{ all -> 0x00e0 }
        r1 = r4.toString();	 Catch:{ all -> 0x00e0 }
        android.util.Log.w(r2, r1);	 Catch:{ all -> 0x00e0 }
        r1 = java.lang.Boolean.FALSE;	 Catch:{ all -> 0x00e0 }
    L_0x00ab:
        zzaRO = r1;	 Catch:{ all -> 0x00e0 }
    L_0x00ad:
        monitor-exit(r0);	 Catch:{ all -> 0x00e0 }
        r0 = r1.booleanValue();
        if (r0 == 0) goto L_0x00db;
    L_0x00b4:
        r6 = zzd(r6, r7, r8);	 Catch:{ zza -> 0x00b9 }
        return r6;
    L_0x00b9:
        r6 = move-exception;
        r7 = "DynamiteModule";
        r8 = "Failed to retrieve remote module version: ";
        r6 = r6.getMessage();
        r6 = java.lang.String.valueOf(r6);
        r0 = r6.length();
        if (r0 == 0) goto L_0x00d1;
    L_0x00cc:
        r6 = r8.concat(r6);
        goto L_0x00d6;
    L_0x00d1:
        r6 = new java.lang.String;
        r6.<init>(r8);
    L_0x00d6:
        android.util.Log.w(r7, r6);
        r6 = 0;
        return r6;
    L_0x00db:
        r6 = zzc(r6, r7, r8);
        return r6;
    L_0x00e0:
        r6 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00e0 }
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzb(android.content.Context, java.lang.String, boolean):int");
    }

    private static DynamiteModule zzb(Context context, String str, int i) throws zza {
        StringBuilder stringBuilder = new StringBuilder(51 + String.valueOf(str).length());
        stringBuilder.append("Selected remote version of ");
        stringBuilder.append(str);
        stringBuilder.append(", version >= ");
        stringBuilder.append(i);
        Log.i("DynamiteModule", stringBuilder.toString());
        zza zzbm = zzbm(context);
        if (zzbm == null) {
            throw new zza("Failed to create IDynamiteLoader.");
        }
        try {
            IObjectWrapper zza = zzbm.zza(zzd.zzA(context), str, i);
            if (zzd.zzF(zza) != null) {
                return new DynamiteModule((Context) zzd.zzF(zza));
            }
            throw new zza("Failed to load remote module.");
        } catch (Throwable e) {
            throw new zza("Failed to load remote module.", e);
        }
    }

    private static zza zzbm(Context context) {
        synchronized (DynamiteModule.class) {
            zza zza;
            if (zzaRP != null) {
                zza = zzaRP;
                return zza;
            } else if (zze.zzuY().isGooglePlayServicesAvailable(context) != 0) {
                return null;
            } else {
                try {
                    zza = com.google.android.gms.dynamite.zza.zza.zzce((IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance());
                    if (zza != null) {
                        zzaRP = zza;
                        return zza;
                    }
                } catch (Exception e) {
                    String str = "DynamiteModule";
                    String str2 = "Failed to load IDynamiteLoader from GmsCore: ";
                    String valueOf = String.valueOf(e.getMessage());
                    Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                }
            }
        }
        return null;
    }

    private static int zzc(Context context, String str, boolean z) {
        zza zzbm = zzbm(context);
        if (zzbm == null) {
            return 0;
        }
        try {
            return zzbm.zza(zzd.zzA(context), str, z);
        } catch (RemoteException e) {
            str = "DynamiteModule";
            String str2 = "Failed to retrieve remote module version: ";
            String valueOf = String.valueOf(e.getMessage());
            Log.w(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            return 0;
        }
    }

    private static DynamiteModule zzc(Context context, String str, int i) throws zza {
        StringBuilder stringBuilder = new StringBuilder(51 + String.valueOf(str).length());
        stringBuilder.append("Selected remote version of ");
        stringBuilder.append(str);
        stringBuilder.append(", version >= ");
        stringBuilder.append(i);
        Log.i("DynamiteModule", stringBuilder.toString());
        synchronized (DynamiteModule.class) {
            HashMap hashMap = zzaRR;
            StringBuilder stringBuilder2 = new StringBuilder(12 + String.valueOf(str).length());
            stringBuilder2.append(str);
            stringBuilder2.append(":");
            stringBuilder2.append(i);
            byte[] bArr = (byte[]) hashMap.get(stringBuilder2.toString());
            zzb zzb = zzaRQ;
        }
        if (bArr == null) {
            throw new zza("Module implementation could not be found.");
        } else if (zzb == null) {
            throw new zza("DynamiteLoaderV2 was not cached.");
        } else {
            context = zza(context.getApplicationContext(), str, bArr, zzb);
            if (context != null) {
                return new DynamiteModule(context);
            }
            throw new zza("Failed to get module context");
        }
    }

    private static int zzd(Context context, String str, boolean z) throws zza {
        Throwable e;
        Cursor zze;
        try {
            zze = zze(context, str, z);
            if (zze != null) {
                try {
                    if (zze.moveToFirst()) {
                        int i = zze.getInt(0);
                        if (i > 0) {
                            synchronized (DynamiteModule.class) {
                                Object decode = Base64.decode(zze.getString(3), 0);
                                HashMap hashMap = zzaRR;
                                StringBuilder stringBuilder = new StringBuilder(12 + String.valueOf(str).length());
                                stringBuilder.append(str);
                                stringBuilder.append(":");
                                stringBuilder.append(i);
                                hashMap.put(stringBuilder.toString(), decode);
                                zzaRS = zze.getString(2);
                            }
                        }
                        if (zze != null) {
                            zze.close();
                        }
                        return i;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            }
            Log.w("DynamiteModule", "Failed to retrieve remote module version.");
            throw new zza("Failed to connect to dynamite module ContentResolver.");
        } catch (Exception e3) {
            e = e3;
            zze = null;
            try {
                if (e instanceof zza) {
                    throw e;
                }
                throw new zza("V2 version check failed", e);
            } catch (Throwable th) {
                e = th;
                if (zze != null) {
                    zze.close();
                }
                throw e;
            }
        } catch (Throwable th2) {
            e = th2;
            zze = null;
            if (zze != null) {
                zze.close();
            }
            throw e;
        }
    }

    public static Cursor zze(Context context, String str, boolean z) {
        String str2 = z ? "api_force_staging" : "api";
        String valueOf = String.valueOf("content://com.google.android.gms.chimera/");
        StringBuilder stringBuilder = new StringBuilder(((1 + String.valueOf(valueOf).length()) + String.valueOf(str2).length()) + String.valueOf(str).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(str2);
        stringBuilder.append("/");
        stringBuilder.append(str);
        return context.getContentResolver().query(Uri.parse(stringBuilder.toString()), null, null, null, null);
    }

    public final Context zzBS() {
        return this.zzaRZ;
    }

    public final IBinder zzdT(String str) throws zza {
        try {
            return (IBinder) this.zzaRZ.getClassLoader().loadClass(str).newInstance();
        } catch (Throwable e) {
            String str2 = "Failed to instantiate module class: ";
            str = String.valueOf(str);
            throw new zza(str.length() != 0 ? str2.concat(str) : new String(str2), e);
        }
    }
}
