package com.google.firebase.messaging;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.widget.ListViewCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.zzbyp.zza;
import com.google.android.gms.internal.zzbyp.zzb;
import com.google.android.gms.measurement.AppMeasurement;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Method;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import okhttp3.ConnectionSpec;
import okhttp3.internal.Internal;

public final class zzc {
    private final List<ConnectionSpec> connectionSpecs;
    private boolean isFallback;
    private boolean isFallbackPossible;
    private int nextModeIndex = 0;

    private static com.google.android.gms.internal.zzbyp.zzb zzU(byte[] r0) {
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
        r0 = com.google.android.gms.internal.zzbyp.zzb.zzal(r0);	 Catch:{ zzbyi -> 0x0005 }
        return r0;
    L_0x0005:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zzc.zzU(byte[]):com.google.android.gms.internal.zzbyp$zzb");
    }

    private static List<Object> zzb(AppMeasurement appMeasurement, String str) {
        List<Object> list;
        ArrayList arrayList = new ArrayList();
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getConditionalUserProperties", new Class[]{String.class, String.class});
            declaredMethod.setAccessible(true);
            list = (List) declaredMethod.invoke(appMeasurement, new Object[]{str, ""});
        } catch (Throwable e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            list = arrayList;
        }
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            int size = list.size();
            StringBuilder stringBuilder = new StringBuilder(55 + String.valueOf(str).length());
            stringBuilder.append("Number of currently set _Es for origin: ");
            stringBuilder.append(str);
            stringBuilder.append(" is ");
            stringBuilder.append(size);
            Log.v("FirebaseAbtUtil", stringBuilder.toString());
        }
        return list;
    }

    private static com.google.android.gms.measurement.AppMeasurement zzbj(android.content.Context r0) {
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
        r0 = com.google.android.gms.measurement.AppMeasurement.getInstance(r0);	 Catch:{ NoClassDefFoundError -> 0x0005 }
        return r0;
    L_0x0005:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zzc.zzbj(android.content.Context):com.google.android.gms.measurement.AppMeasurement");
    }

    private static int zzc(AppMeasurement appMeasurement, String str) {
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getMaxUserProperties", new Class[]{String.class});
            declaredMethod.setAccessible(true);
            return ((Integer) declaredMethod.invoke(appMeasurement, new Object[]{str})).intValue();
        } catch (Throwable e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            return 20;
        }
    }

    private static boolean zzco(android.content.Context r2) {
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
        r2 = zzbj(r2);
        r0 = 0;
        r1 = 2;
        if (r2 != 0) goto L_0x0018;
    L_0x0008:
        r2 = "FirebaseAbtUtil";
        r2 = android.util.Log.isLoggable(r2, r1);
        if (r2 == 0) goto L_0x0017;
    L_0x0010:
        r2 = "FirebaseAbtUtil";
        r1 = "Firebase Analytics not available";
        android.util.Log.v(r2, r1);
    L_0x0017:
        return r0;
    L_0x0018:
        r2 = "com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty";	 Catch:{ ClassNotFoundException -> 0x001f }
        java.lang.Class.forName(r2);	 Catch:{ ClassNotFoundException -> 0x001f }
        r2 = 1;
        return r2;
    L_0x001f:
        r2 = "FirebaseAbtUtil";
        r2 = android.util.Log.isLoggable(r2, r1);
        if (r2 == 0) goto L_0x002e;
    L_0x0027:
        r2 = "FirebaseAbtUtil";
        r1 = "Firebase Analytics library is missing support for abt. Please update to a more recent version.";
        android.util.Log.v(r2, r1);
    L_0x002e:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.zzc.zzco(android.content.Context):boolean");
    }

    public static void zza$30cbbb43$5a307c8f(Context context, String str, byte[] bArr, ListViewCompat listViewCompat) {
        Context context2 = context;
        String str2 = str;
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String str3 = "FirebaseAbtUtil";
            String str4 = "_SE called by ";
            String valueOf = String.valueOf(str);
            Log.v(str3, valueOf.length() != 0 ? str4.concat(valueOf) : new String(str4));
        }
        if (zzco(context)) {
            AppMeasurement zzbj = zzbj(context);
            zzb zzU = zzU(bArr);
            if (zzU == null) {
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    Log.v("FirebaseAbtUtil", "_SE failed; either _P was not set, or we couldn't deserialize the _P.");
                }
                return;
            }
            try {
                Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
                Object obj = null;
                for (Object next : zzb(zzbj, str2)) {
                    String str5 = (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mName").get(next);
                    String str6 = (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mValue").get(next);
                    long longValue = ((Long) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mCreationTimestamp").get(next)).longValue();
                    if (zzU.zzcxG.equals(str5) && zzU.zzcxH.equals(str6)) {
                        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                            StringBuilder stringBuilder = new StringBuilder((23 + String.valueOf(str5).length()) + String.valueOf(str6).length());
                            stringBuilder.append("_E is already set. [");
                            stringBuilder.append(str5);
                            stringBuilder.append(", ");
                            stringBuilder.append(str6);
                            stringBuilder.append("]");
                            Log.v("FirebaseAbtUtil", stringBuilder.toString());
                        }
                        obj = 1;
                    } else {
                        StringBuilder stringBuilder2;
                        Object obj2;
                        String zzVf;
                        zza[] zzaArr = zzU.zzcxS;
                        int length = zzaArr.length;
                        int i = 0;
                        while (i < length) {
                            if (zzaArr[i].zzcxG.equals(str5)) {
                                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                    stringBuilder2 = new StringBuilder((33 + String.valueOf(str5).length()) + String.valueOf(str6).length());
                                    stringBuilder2.append("_E is found in the _OE list. [");
                                    stringBuilder2.append(str5);
                                    stringBuilder2.append(", ");
                                    stringBuilder2.append(str6);
                                    stringBuilder2.append("]");
                                    Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                                }
                                obj2 = 1;
                                if (obj2 != null) {
                                    if (zzU.zzcxI > longValue) {
                                        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                            stringBuilder2 = new StringBuilder((115 + String.valueOf(str5).length()) + String.valueOf(str6).length());
                                            stringBuilder2.append("Clearing _E as it was not in the _OE list, andits start time is older than the start time of the _E to be set. [");
                                            stringBuilder2.append(str5);
                                            stringBuilder2.append(", ");
                                            stringBuilder2.append(str6);
                                            stringBuilder2.append("]");
                                            Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                                        }
                                        zzVf = (zzU != null || TextUtils.isEmpty(zzU.zzcxO)) ? listViewCompat.zzVf() : zzU.zzcxO;
                                        zza(context2, str2, str5, str6, zzVf);
                                    } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                        stringBuilder2 = new StringBuilder((109 + String.valueOf(str5).length()) + String.valueOf(str6).length());
                                        stringBuilder2.append("_E was not found in the _OE list, but not clearing it as it has a new start time than the _E to be set.  [");
                                        stringBuilder2.append(str5);
                                        stringBuilder2.append(", ");
                                        stringBuilder2.append(str6);
                                        stringBuilder2.append("]");
                                        Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                                    }
                                }
                            } else {
                                i++;
                            }
                        }
                        obj2 = null;
                        if (obj2 != null) {
                            if (zzU.zzcxI > longValue) {
                                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                    stringBuilder2 = new StringBuilder((115 + String.valueOf(str5).length()) + String.valueOf(str6).length());
                                    stringBuilder2.append("Clearing _E as it was not in the _OE list, andits start time is older than the start time of the _E to be set. [");
                                    stringBuilder2.append(str5);
                                    stringBuilder2.append(", ");
                                    stringBuilder2.append(str6);
                                    stringBuilder2.append("]");
                                    Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                                }
                                if (zzU != null) {
                                }
                                zza(context2, str2, str5, str6, zzVf);
                            } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                stringBuilder2 = new StringBuilder((109 + String.valueOf(str5).length()) + String.valueOf(str6).length());
                                stringBuilder2.append("_E was not found in the _OE list, but not clearing it as it has a new start time than the _E to be set.  [");
                                stringBuilder2.append(str5);
                                stringBuilder2.append(", ");
                                stringBuilder2.append(str6);
                                stringBuilder2.append("]");
                                Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                            }
                        }
                    }
                }
                if (obj != null) {
                    if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        str2 = String.valueOf(zzU.zzcxG);
                        str3 = String.valueOf(zzU.zzcxH);
                        StringBuilder stringBuilder3 = new StringBuilder((44 + String.valueOf(str2).length()) + String.valueOf(str3).length());
                        stringBuilder3.append("_E is already set. Not setting it again [");
                        stringBuilder3.append(str2);
                        stringBuilder3.append(", ");
                        stringBuilder3.append(str3);
                        stringBuilder3.append("]");
                        Log.v("FirebaseAbtUtil", stringBuilder3.toString());
                    }
                    return;
                }
                zza$664f4a8d$6b8a4cbf(zzbj, context2, str2, zzU, listViewCompat);
            } catch (Throwable e) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            }
        }
    }

    private static void zza$664f4a8d$6b8a4cbf(AppMeasurement appMeasurement, Context context, String str, zzb zzb, ListViewCompat listViewCompat) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(zzb.zzcxG);
            String valueOf2 = String.valueOf(zzb.zzcxH);
            StringBuilder stringBuilder = new StringBuilder((7 + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
            stringBuilder.append("_SEI: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" ");
            stringBuilder.append(valueOf2);
            Log.v("FirebaseAbtUtil", stringBuilder.toString());
        }
        try {
            Object obj;
            StringBuilder stringBuilder2;
            String zzVf;
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            List zzb2 = zzb(appMeasurement, str);
            if (zzb(appMeasurement, str).size() >= zzc(appMeasurement, str)) {
                if ((zzb.zzcxR != 0 ? zzb.zzcxR : 1) == 1) {
                    obj = zzb2.get(0);
                    valueOf2 = (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mName").get(obj);
                    valueOf = (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mValue").get(obj);
                    if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        stringBuilder2 = new StringBuilder(38 + String.valueOf(valueOf2).length());
                        stringBuilder2.append("Clearing _E due to overflow policy: [");
                        stringBuilder2.append(valueOf2);
                        stringBuilder2.append("]");
                        Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                    }
                    zzVf = (zzb == null || TextUtils.isEmpty(zzb.zzcxO)) ? listViewCompat.zzVf() : zzb.zzcxO;
                    zza(context, str, valueOf2, valueOf, zzVf);
                } else {
                    if (Log.isLoggable("FirebaseAbtUtil", 2) != null) {
                        context = String.valueOf(zzb.zzcxG);
                        str = String.valueOf(zzb.zzcxH);
                        listViewCompat = new StringBuilder((44 + String.valueOf(context).length()) + String.valueOf(str).length());
                        listViewCompat.append("_E won't be set due to overflow policy. [");
                        listViewCompat.append(context);
                        listViewCompat.append(", ");
                        listViewCompat.append(str);
                        listViewCompat.append("]");
                        Log.v("FirebaseAbtUtil", listViewCompat.toString());
                    }
                    return;
                }
            }
            for (Object obj2 : zzb2) {
                valueOf2 = (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mName").get(obj2);
                valueOf = (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mValue").get(obj2);
                if (valueOf2.equals(zzb.zzcxG) && !valueOf.equals(zzb.zzcxH) && Log.isLoggable("FirebaseAbtUtil", 2)) {
                    stringBuilder2 = new StringBuilder((77 + String.valueOf(valueOf2).length()) + String.valueOf(valueOf).length());
                    stringBuilder2.append("Clearing _E, as only one _V of the same _E can be set atany given time: [");
                    stringBuilder2.append(valueOf2);
                    stringBuilder2.append(", ");
                    stringBuilder2.append(valueOf);
                    stringBuilder2.append("].");
                    Log.v("FirebaseAbtUtil", stringBuilder2.toString());
                    zzVf = (zzb == null || TextUtils.isEmpty(zzb.zzcxO)) ? listViewCompat.zzVf() : zzb.zzcxO;
                    zza(context, str, valueOf2, valueOf, zzVf);
                }
            }
            if (zza$4ad47b11(zzb, str, listViewCompat) == null) {
                if (Log.isLoggable("FirebaseAbtUtil", 2) != null) {
                    context = String.valueOf(zzb.zzcxG);
                    str = String.valueOf(zzb.zzcxH);
                    listViewCompat = new StringBuilder((42 + String.valueOf(context).length()) + String.valueOf(str).length());
                    listViewCompat.append("Could not create _CUP for: [");
                    listViewCompat.append(context);
                    listViewCompat.append(", ");
                    listViewCompat.append(str);
                    listViewCompat.append("]. Skipping.");
                    Log.v("FirebaseAbtUtil", listViewCompat.toString());
                }
                return;
            }
            String valueOf3;
            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                valueOf3 = String.valueOf(zzb.zzcxG);
                valueOf = String.valueOf(zzb.zzcxH);
                valueOf2 = String.valueOf(zzb.zzcxJ);
                StringBuilder stringBuilder3 = new StringBuilder(((27 + String.valueOf(valueOf3).length()) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
                stringBuilder3.append("Setting _CUP for _E: [");
                stringBuilder3.append(valueOf3);
                stringBuilder3.append(", ");
                stringBuilder3.append(valueOf);
                stringBuilder3.append(", ");
                stringBuilder3.append(valueOf2);
                stringBuilder3.append("]");
                Log.v("FirebaseAbtUtil", stringBuilder3.toString());
            }
            try {
                Method declaredMethod = AppMeasurement.class.getDeclaredMethod("setConditionalUserProperty", new Class[]{Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty")});
                declaredMethod.setAccessible(true);
                listViewCompat = !TextUtils.isEmpty(zzb.zzcxM) ? zzb.zzcxM : listViewCompat.zzVb();
                valueOf3 = zzb.zzcxG;
                zzb = zzb.zzcxH;
                Bundle bundle = new Bundle();
                bundle.putString(valueOf3, zzb);
                appMeasurement.logEventInternal(str, listViewCompat, bundle);
                declaredMethod.invoke(appMeasurement, new Object[]{context});
            } catch (AppMeasurement appMeasurement2) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", appMeasurement2);
            }
        } catch (AppMeasurement appMeasurement22) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", appMeasurement22);
        }
    }

    private static Object zza$4ad47b11(zzb zzb, String str, ListViewCompat listViewCompat) {
        Object newInstance;
        Object obj = null;
        try {
            Class cls = Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            String str2 = zzb.zzcxG;
            String str3 = zzb.zzcxH;
            Bundle bundle = new Bundle();
            bundle.putString(str2, str3);
            newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            try {
                cls.getField("mOrigin").set(newInstance, str);
                cls.getField("mCreationTimestamp").set(newInstance, Long.valueOf(zzb.zzcxI));
                cls.getField("mName").set(newInstance, zzb.zzcxG);
                cls.getField("mValue").set(newInstance, zzb.zzcxH);
                if (TextUtils.isEmpty(zzb.zzcxJ) == null) {
                    obj = zzb.zzcxJ;
                }
                cls.getField("mTriggerEventName").set(newInstance, obj);
                cls.getField("mTimedOutEventName").set(newInstance, !TextUtils.isEmpty(zzb.zzcxP) ? zzb.zzcxP : listViewCompat.zzVd());
                cls.getField("mTimedOutEventParams").set(newInstance, bundle);
                cls.getField("mTriggerTimeout").set(newInstance, Integer.valueOf(zzb.zzcxK));
                cls.getField("mTriggeredEventName").set(newInstance, !TextUtils.isEmpty(zzb.zzcxN) ? zzb.zzcxN : listViewCompat.zzVc());
                cls.getField("mTriggeredEventParams").set(newInstance, bundle);
                cls.getField("mTimeToLive").set(newInstance, Integer.valueOf(zzb.zzcxL));
                cls.getField("mExpiredEventName").set(newInstance, !TextUtils.isEmpty(zzb.zzcxQ) ? zzb.zzcxQ : listViewCompat.zzVe());
                cls.getField("mExpiredEventParams").set(newInstance, bundle);
            } catch (ClassNotFoundException e) {
                zzb = e;
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", zzb);
                return newInstance;
            }
        } catch (ClassNotFoundException e2) {
            zzb = e2;
            newInstance = null;
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", zzb);
            return newInstance;
        }
        return newInstance;
    }

    private static void zza(Context context, String str, String str2, String str3, String str4) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String str5 = "FirebaseAbtUtil";
            String str6 = "_CE(experimentId) called by ";
            str = String.valueOf(str);
            Log.v(str5, str.length() != 0 ? str6.concat(str) : new String(str6));
        }
        if (zzco(context) != null) {
            context = zzbj(context);
            try {
                str = AppMeasurement.class.getDeclaredMethod("clearConditionalUserProperty", new Class[]{String.class, String.class, Bundle.class});
                str.setAccessible(true);
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    StringBuilder stringBuilder = new StringBuilder((17 + String.valueOf(str2).length()) + String.valueOf(str3).length());
                    stringBuilder.append("Clearing _E: [");
                    stringBuilder.append(str2);
                    stringBuilder.append(", ");
                    stringBuilder.append(str3);
                    stringBuilder.append("]");
                    Log.v("FirebaseAbtUtil", stringBuilder.toString());
                }
                Object[] objArr = new Object[3];
                objArr[0] = str2;
                objArr[1] = str4;
                str4 = new Bundle();
                str4.putString(str2, str3);
                objArr[2] = str4;
                str.invoke(context, objArr);
            } catch (Context context2) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", context2);
            }
        }
    }

    public zzc(List<ConnectionSpec> list) {
        this.connectionSpecs = list;
    }

    public final ConnectionSpec configureSecureSocket(SSLSocket sSLSocket) throws IOException {
        ConnectionSpec connectionSpec;
        int size = this.connectionSpecs.size();
        for (int i = this.nextModeIndex; i < size; i++) {
            connectionSpec = (ConnectionSpec) this.connectionSpecs.get(i);
            if (connectionSpec.isCompatible(sSLSocket)) {
                this.nextModeIndex = i + 1;
                break;
            }
        }
        connectionSpec = null;
        if (connectionSpec == null) {
            StringBuilder stringBuilder = new StringBuilder("Unable to find acceptable protocols. isFallback=");
            stringBuilder.append(this.isFallback);
            stringBuilder.append(", modes=");
            stringBuilder.append(this.connectionSpecs);
            stringBuilder.append(", supported protocols=");
            stringBuilder.append(Arrays.toString(sSLSocket.getEnabledProtocols()));
            throw new UnknownServiceException(stringBuilder.toString());
        }
        this.isFallbackPossible = isFallbackPossible(sSLSocket);
        Internal.instance.apply(connectionSpec, sSLSocket, this.isFallback);
        return connectionSpec;
    }

    public final boolean connectionFailed(IOException iOException) {
        this.isFallback = true;
        if (!this.isFallbackPossible || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        if (!z) {
            if ((iOException instanceof SSLProtocolException) == null) {
                return false;
            }
        }
        return true;
    }

    private boolean isFallbackPossible(SSLSocket sSLSocket) {
        for (int i = this.nextModeIndex; i < this.connectionSpecs.size(); i++) {
            if (((ConnectionSpec) this.connectionSpecs.get(i)).isCompatible(sSLSocket)) {
                return true;
            }
        }
        return null;
    }
}
