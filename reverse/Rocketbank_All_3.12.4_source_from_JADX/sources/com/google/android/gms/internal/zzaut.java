package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzauu.zzb;
import com.google.android.gms.internal.zzauu.zzc;
import com.google.android.gms.internal.zzauu.zzd;
import com.google.android.gms.internal.zzauu.zze;
import com.google.android.gms.internal.zzauu.zzf;
import com.google.android.gms.internal.zzauw.zza;
import com.google.android.gms.internal.zzauw.zzg;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.security.auth.x500.X500Principal;

public class zzaut extends zzauh {
    private final AtomicLong zzbwk = new AtomicLong(0);
    private int zzbwl;

    zzaut(zzaue zzaue) {
        super(zzaue);
    }

    public static java.lang.Object zzI(java.lang.Object r4) {
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
        if (r4 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ all -> 0x0032 }
        r1.<init>();	 Catch:{ all -> 0x0032 }
        r2 = new java.io.ObjectOutputStream;	 Catch:{ all -> 0x0032 }
        r2.<init>(r1);	 Catch:{ all -> 0x0032 }
        r2.writeObject(r4);	 Catch:{ all -> 0x002f }
        r2.flush();	 Catch:{ all -> 0x002f }
        r4 = new java.io.ObjectInputStream;	 Catch:{ all -> 0x002f }
        r3 = new java.io.ByteArrayInputStream;	 Catch:{ all -> 0x002f }
        r1 = r1.toByteArray();	 Catch:{ all -> 0x002f }
        r3.<init>(r1);	 Catch:{ all -> 0x002f }
        r4.<init>(r3);	 Catch:{ all -> 0x002f }
        r1 = r4.readObject();	 Catch:{ all -> 0x002d }
        r2.close();	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
        r4.close();	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
        return r1;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
    L_0x002d:
        r1 = move-exception;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
        goto L_0x0035;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
    L_0x002f:
        r1 = move-exception;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
        r4 = r0;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
        goto L_0x0035;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
    L_0x0032:
        r1 = move-exception;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
        r4 = r0;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
        r2 = r4;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
    L_0x0035:
        if (r2 == 0) goto L_0x003a;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
    L_0x0037:
        r2.close();	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
    L_0x003a:
        if (r4 == 0) goto L_0x003f;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
    L_0x003c:
        r4.close();	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
    L_0x003f:
        throw r1;	 Catch:{ IOException -> 0x0040, IOException -> 0x0040 }
    L_0x0040:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaut.zzI(java.lang.Object):java.lang.Object");
    }

    private Object zza(int i, Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf((long) ((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf((long) ((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf((long) ((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if (!((obj instanceof String) || (obj instanceof Character))) {
                if (!(obj instanceof CharSequence)) {
                    return null;
                }
            }
            return zza(String.valueOf(obj), i, z);
        }
    }

    public static String zza(zzb zzb) {
        if (zzb == null) {
            return "null";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("\nevent_filter {\n");
        int i = 0;
        zza(stringBuilder, 0, "filter_id", zzb.zzbwr);
        zza(stringBuilder, 0, "event_name", zzb.zzbws);
        zza(stringBuilder, 1, "event_count_filter", zzb.zzbwv);
        stringBuilder.append("  filters {\n");
        zzc[] zzcArr = zzb.zzbwt;
        int length = zzcArr.length;
        while (i < length) {
            zza(stringBuilder, 2, zzcArr[i]);
            i++;
        }
        zza(stringBuilder, 1);
        stringBuilder.append("}\n}\n");
        return stringBuilder.toString();
    }

    public static String zza(zze zze) {
        if (zze == null) {
            return "null";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("\nproperty_filter {\n");
        zza(stringBuilder, 0, "filter_id", zze.zzbwr);
        zza(stringBuilder, 0, "property_name", zze.zzbwH);
        zza(stringBuilder, 1, zze.zzbwI);
        stringBuilder.append("}\n");
        return stringBuilder.toString();
    }

    private static void zza(StringBuilder stringBuilder, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            stringBuilder.append("  ");
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, zzc zzc) {
        if (zzc != null) {
            zza(stringBuilder, i);
            stringBuilder.append("filter {\n");
            zza(stringBuilder, i, "complement", zzc.zzbwz);
            zza(stringBuilder, i, "param_name", zzc.zzbwA);
            int i2 = i + 1;
            zza(stringBuilder, i2, "string_filter", zzc.zzbwx);
            zza(stringBuilder, i2, "number_filter", zzc.zzbwy);
            zza(stringBuilder, i);
            stringBuilder.append("}\n");
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, zzauw.zze zze) {
        if (zze != null) {
            zza(stringBuilder, i);
            stringBuilder.append("bundle {\n");
            zza(stringBuilder, i, "protocol_version", zze.zzbxi);
            zza(stringBuilder, i, "platform", zze.zzbxq);
            zza(stringBuilder, i, "gmp_version", zze.zzbxu);
            zza(stringBuilder, i, "uploading_gmp_version", zze.zzbxv);
            zza(stringBuilder, i, "config_version", zze.zzbxH);
            zza(stringBuilder, i, "gmp_app_id", zze.zzbqK);
            zza(stringBuilder, i, "app_id", zze.zzaS);
            zza(stringBuilder, i, "app_version", zze.zzbhN);
            zza(stringBuilder, i, "app_version_major", zze.zzbxD);
            zza(stringBuilder, i, "app_version_minor", zze.zzbxE);
            zza(stringBuilder, i, "app_version_release", zze.zzbxF);
            zza(stringBuilder, i, "firebase_instance_id", zze.zzbqS);
            zza(stringBuilder, i, "dev_cert_hash", zze.zzbxz);
            zza(stringBuilder, i, "app_store", zze.zzbqL);
            zza(stringBuilder, i, "upload_timestamp_millis", zze.zzbxl);
            zza(stringBuilder, i, "start_timestamp_millis", zze.zzbxm);
            zza(stringBuilder, i, "end_timestamp_millis", zze.zzbxn);
            zza(stringBuilder, i, "previous_bundle_start_timestamp_millis", zze.zzbxo);
            zza(stringBuilder, i, "previous_bundle_end_timestamp_millis", zze.zzbxp);
            zza(stringBuilder, i, "app_instance_id", zze.zzbxy);
            zza(stringBuilder, i, "resettable_device_id", zze.zzbxw);
            zza(stringBuilder, i, "device_id", zze.zzbxG);
            zza(stringBuilder, i, "limited_ad_tracking", zze.zzbxx);
            zza(stringBuilder, i, "os_version", zze.zzbb);
            zza(stringBuilder, i, "device_model", zze.zzbxr);
            zza(stringBuilder, i, "user_default_language", zze.zzbxs);
            zza(stringBuilder, i, "time_zone_offset_minutes", zze.zzbxt);
            zza(stringBuilder, i, "bundle_sequential_index", zze.zzbxA);
            zza(stringBuilder, i, "service_upload", zze.zzbxB);
            zza(stringBuilder, i, "health_monitor", zze.zzbqO);
            if (zze.zzbxI.longValue() != 0) {
                zza(stringBuilder, i, "android_id", zze.zzbxI);
            }
            zza(stringBuilder, i, zze.zzbxk);
            zza(stringBuilder, i, zze.zzbxC);
            zza(stringBuilder, i, zze.zzbxj);
            zza(stringBuilder, i);
            stringBuilder.append("}\n");
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, String str, zzd zzd) {
        if (zzd != null) {
            zza(stringBuilder, i);
            stringBuilder.append(str);
            stringBuilder.append(" {\n");
            if (zzd.zzbwB != null) {
                Object obj = "UNKNOWN_COMPARISON_TYPE";
                switch (zzd.zzbwB.intValue()) {
                    case 1:
                        obj = "LESS_THAN";
                        break;
                    case 2:
                        obj = "GREATER_THAN";
                        break;
                    case 3:
                        obj = "EQUAL";
                        break;
                    case 4:
                        obj = "BETWEEN";
                        break;
                    default:
                        break;
                }
                zza(stringBuilder, i, "comparison_type", obj);
            }
            zza(stringBuilder, i, "match_as_float", zzd.zzbwC);
            zza(stringBuilder, i, "comparison_value", zzd.zzbwD);
            zza(stringBuilder, i, "min_comparison_value", zzd.zzbwE);
            zza(stringBuilder, i, "max_comparison_value", zzd.zzbwF);
            zza(stringBuilder, i);
            stringBuilder.append("}\n");
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, String str, zzf zzf) {
        if (zzf != null) {
            zza(stringBuilder, i);
            stringBuilder.append(str);
            stringBuilder.append(" {\n");
            if (zzf.zzbwJ != null) {
                Object obj = "UNKNOWN_MATCH_TYPE";
                switch (zzf.zzbwJ.intValue()) {
                    case 1:
                        obj = "REGEXP";
                        break;
                    case 2:
                        obj = "BEGINS_WITH";
                        break;
                    case 3:
                        obj = "ENDS_WITH";
                        break;
                    case 4:
                        obj = "PARTIAL";
                        break;
                    case 5:
                        obj = "EXACT";
                        break;
                    case 6:
                        obj = "IN_LIST";
                        break;
                    default:
                        break;
                }
                zza(stringBuilder, i, "match_type", obj);
            }
            zza(stringBuilder, i, "expression", zzf.zzbwK);
            zza(stringBuilder, i, "case_sensitive", zzf.zzbwL);
            if (zzf.zzbwM.length > 0) {
                zza(stringBuilder, i + 1);
                stringBuilder.append("expression_list {\n");
                for (String str2 : zzf.zzbwM) {
                    zza(stringBuilder, i + 2);
                    stringBuilder.append(str2);
                    stringBuilder.append("\n");
                }
                stringBuilder.append("}\n");
            }
            zza(stringBuilder, i);
            stringBuilder.append("}\n");
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, String str, zzauw.zzf zzf) {
        if (zzf != null) {
            long[] jArr;
            int length;
            int i2;
            i++;
            zza(stringBuilder, i);
            stringBuilder.append(str);
            stringBuilder.append(" {\n");
            int i3 = 0;
            if (zzf.zzbxK != null) {
                zza(stringBuilder, i + 1);
                stringBuilder.append("results: ");
                jArr = zzf.zzbxK;
                length = jArr.length;
                int i4 = 0;
                i2 = i4;
                while (i4 < length) {
                    Long valueOf = Long.valueOf(jArr[i4]);
                    int i5 = i2 + 1;
                    if (i2 != 0) {
                        stringBuilder.append(", ");
                    }
                    stringBuilder.append(valueOf);
                    i4++;
                    i2 = i5;
                }
                stringBuilder.append('\n');
            }
            if (zzf.zzbxJ != null) {
                zza(stringBuilder, i + 1);
                stringBuilder.append("status: ");
                jArr = zzf.zzbxJ;
                int length2 = jArr.length;
                length = 0;
                while (i3 < length2) {
                    Long valueOf2 = Long.valueOf(jArr[i3]);
                    i2 = length + 1;
                    if (length != 0) {
                        stringBuilder.append(", ");
                    }
                    stringBuilder.append(valueOf2);
                    i3++;
                    length = i2;
                }
                stringBuilder.append('\n');
            }
            zza(stringBuilder, i);
            stringBuilder.append("}\n");
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, String str, Object obj) {
        if (obj != null) {
            zza(stringBuilder, i + 1);
            stringBuilder.append(str);
            stringBuilder.append(": ");
            stringBuilder.append(obj);
            stringBuilder.append('\n');
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, zza[] zzaArr) {
        if (zzaArr != null) {
            i++;
            for (zza zza : zzaArr) {
                if (zza != null) {
                    zza(stringBuilder, i);
                    stringBuilder.append("audience_membership {\n");
                    zza(stringBuilder, i, "audience_id", zza.zzbwn);
                    zza(stringBuilder, i, "new_audience", zza.zzbwZ);
                    zza(stringBuilder, i, "current_data", zza.zzbwX);
                    zza(stringBuilder, i, "previous_data", zza.zzbwY);
                    zza(stringBuilder, i);
                    stringBuilder.append("}\n");
                }
            }
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, zzauw.zzb[] zzbArr) {
        if (zzbArr != null) {
            i++;
            for (zzauw.zzb zzb : zzbArr) {
                if (zzb != null) {
                    zza(stringBuilder, i);
                    stringBuilder.append("event {\n");
                    zza(stringBuilder, i, "name", zzb.name);
                    zza(stringBuilder, i, "timestamp_millis", zzb.zzbxc);
                    zza(stringBuilder, i, "previous_timestamp_millis", zzb.zzbxd);
                    zza(stringBuilder, i, "count", zzb.count);
                    zza(stringBuilder, i, zzb.zzbxb);
                    zza(stringBuilder, i);
                    stringBuilder.append("}\n");
                }
            }
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, zzauw.zzc[] zzcArr) {
        if (zzcArr != null) {
            i++;
            for (zzauw.zzc zzc : zzcArr) {
                if (zzc != null) {
                    zza(stringBuilder, i);
                    stringBuilder.append("param {\n");
                    zza(stringBuilder, i, "name", zzc.name);
                    zza(stringBuilder, i, "string_value", zzc.zzaGV);
                    zza(stringBuilder, i, "int_value", zzc.zzbxf);
                    zza(stringBuilder, i, "double_value", zzc.zzbwi);
                    zza(stringBuilder, i);
                    stringBuilder.append("}\n");
                }
            }
        }
    }

    private static void zza(StringBuilder stringBuilder, int i, zzg[] zzgArr) {
        if (zzgArr != null) {
            i++;
            for (zzg zzg : zzgArr) {
                if (zzg != null) {
                    zza(stringBuilder, i);
                    stringBuilder.append("user_property {\n");
                    zza(stringBuilder, i, "set_timestamp_millis", zzg.zzbxM);
                    zza(stringBuilder, i, "name", zzg.name);
                    zza(stringBuilder, i, "string_value", zzg.zzaGV);
                    zza(stringBuilder, i, "int_value", zzg.zzbxf);
                    zza(stringBuilder, i, "double_value", zzg.zzbwi);
                    zza(stringBuilder, i);
                    stringBuilder.append("}\n");
                }
            }
        }
    }

    public static boolean zza(android.content.Context r3, java.lang.String r4, boolean r5) {
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
        r1 = r3.getPackageManager();	 Catch:{ NameNotFoundException -> 0x0020 }
        if (r1 != 0) goto L_0x0008;	 Catch:{ NameNotFoundException -> 0x0020 }
    L_0x0007:
        return r0;	 Catch:{ NameNotFoundException -> 0x0020 }
    L_0x0008:
        r2 = new android.content.ComponentName;	 Catch:{ NameNotFoundException -> 0x0020 }
        r2.<init>(r3, r4);	 Catch:{ NameNotFoundException -> 0x0020 }
        r3 = 2;	 Catch:{ NameNotFoundException -> 0x0020 }
        r3 = r1.getReceiverInfo(r2, r3);	 Catch:{ NameNotFoundException -> 0x0020 }
        if (r3 == 0) goto L_0x0020;	 Catch:{ NameNotFoundException -> 0x0020 }
    L_0x0014:
        r4 = r3.enabled;	 Catch:{ NameNotFoundException -> 0x0020 }
        if (r4 == 0) goto L_0x0020;	 Catch:{ NameNotFoundException -> 0x0020 }
    L_0x0018:
        if (r5 == 0) goto L_0x001e;	 Catch:{ NameNotFoundException -> 0x0020 }
    L_0x001a:
        r3 = r3.exported;	 Catch:{ NameNotFoundException -> 0x0020 }
        if (r3 == 0) goto L_0x0020;
    L_0x001e:
        r3 = 1;
        return r3;
    L_0x0020:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaut.zza(android.content.Context, java.lang.String, boolean):boolean");
    }

    public static boolean zza(long[] jArr, int i) {
        return i < (jArr.length << 6) && (jArr[i / 64] & (1 << (i % 64))) != 0;
    }

    public static long[] zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    jArr[i] = jArr[i] | (1 << i2);
                }
            }
        }
        return jArr;
    }

    public static boolean zzae(String str, String str2) {
        return (str == null && str2 == null) ? true : str == null ? false : str.equals(str2);
    }

    public static String zzb(zzauw.zzd zzd) {
        if (zzd == null) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("\nbatch {\n");
        if (zzd.zzbxg != null) {
            for (zzauw.zze zze : zzd.zzbxg) {
                if (zze != null) {
                    zza(stringBuilder, 1, zze);
                }
            }
        }
        stringBuilder.append("}\n");
        return stringBuilder.toString();
    }

    static java.security.MessageDigest zzch(java.lang.String r2) {
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
    L_0x0001:
        r1 = 2;
        if (r0 >= r1) goto L_0x000e;
    L_0x0004:
        r1 = java.security.MessageDigest.getInstance(r2);	 Catch:{ NoSuchAlgorithmException -> 0x000b }
        if (r1 == 0) goto L_0x000b;
    L_0x000a:
        return r1;
    L_0x000b:
        r0 = r0 + 1;
        goto L_0x0001;
    L_0x000e:
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaut.zzch(java.lang.String):java.security.MessageDigest");
    }

    static boolean zzfT(String str) {
        zzac.zzdr(str);
        if (str.charAt(0) == '_') {
            if (!str.equals("_ep")) {
                return false;
            }
        }
        return true;
    }

    private int zzgc(String str) {
        return "_ldl".equals(str) ? zzKn().zzKT() : zzKn().zzKS();
    }

    public static boolean zzgd(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    static boolean zzgf(String str) {
        return str != null && str.matches("(\\+|-)?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    static long zzy(byte[] bArr) {
        zzac.zzw(bArr);
        long j = null;
        zzac.zzav(bArr.length > 0);
        long j2 = 0;
        int length = bArr.length - 1;
        while (length >= 0 && length >= bArr.length - 8) {
            j += 8;
            length--;
            j2 += (((long) bArr[length]) & 255) << j;
        }
        return j2;
    }

    public static boolean zzy(android.content.Context r3, java.lang.String r4) {
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
        r1 = r3.getPackageManager();	 Catch:{ NameNotFoundException -> 0x001a }
        if (r1 != 0) goto L_0x0008;	 Catch:{ NameNotFoundException -> 0x001a }
    L_0x0007:
        return r0;	 Catch:{ NameNotFoundException -> 0x001a }
    L_0x0008:
        r2 = new android.content.ComponentName;	 Catch:{ NameNotFoundException -> 0x001a }
        r2.<init>(r3, r4);	 Catch:{ NameNotFoundException -> 0x001a }
        r3 = 4;	 Catch:{ NameNotFoundException -> 0x001a }
        r3 = r1.getServiceInfo(r2, r3);	 Catch:{ NameNotFoundException -> 0x001a }
        if (r3 == 0) goto L_0x001a;	 Catch:{ NameNotFoundException -> 0x001a }
    L_0x0014:
        r3 = r3.enabled;	 Catch:{ NameNotFoundException -> 0x001a }
        if (r3 == 0) goto L_0x001a;
    L_0x0018:
        r3 = 1;
        return r3;
    L_0x001a:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaut.zzy(android.content.Context, java.lang.String):boolean");
    }

    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public boolean zzA(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if (!("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra))) {
            if (!"android-app://com.google.appcrawler".equals(stringExtra)) {
                return false;
            }
        }
        return true;
    }

    public Bundle[] zzH(Object obj) {
        if (obj instanceof Bundle) {
            return new Bundle[]{(Bundle) obj};
        }
        Object[] copyOf;
        if (obj instanceof Parcelable[]) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            copyOf = Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
        } else if (!(obj instanceof ArrayList)) {
            return null;
        } else {
            ArrayList arrayList = (ArrayList) obj;
            copyOf = arrayList.toArray(new Bundle[arrayList.size()]);
        }
        return (Bundle[]) copyOf;
    }

    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    long zzM(Context context, String str) {
        zzmR();
        zzac.zzw(context);
        zzac.zzdr(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest zzch = zzch("MD5");
        if (zzch == null) {
            zzKl().zzLZ().log("Could not get MD5 instance");
            return -1;
        }
        if (packageManager != null) {
            try {
                if (!zzN(context, str)) {
                    PackageInfo packageInfo = zzadg.zzbi(context).getPackageInfo(getContext().getPackageName(), 64);
                    if (packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                        return zzy(zzch.digest(packageInfo.signatures[0].toByteArray()));
                    }
                    zzKl().zzMb().log("Could not get signatures");
                    return -1;
                }
            } catch (NameNotFoundException e) {
                zzKl().zzLZ().zzj("Package name not found", e);
            }
        }
        return 0;
    }

    Bundle zzN(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object zzk = zzk(str, bundle.get(str));
                if (zzk == null) {
                    zzKl().zzMb().zzj("Param value can't be null", str);
                } else {
                    zza(bundle2, str, zzk);
                }
            }
        }
        return bundle2;
    }

    boolean zzN(Context context, String str) {
        Object e;
        zzatx.zza zzLZ;
        String str2;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = zzadg.zzbi(context).getPackageInfo(str, 64);
            if (!(packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length <= 0)) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(packageInfo.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            }
        } catch (CertificateException e2) {
            e = e2;
            zzLZ = zzKl().zzLZ();
            str2 = "Error obtaining certificate";
            zzLZ.zzj(str2, e);
            return true;
        } catch (NameNotFoundException e3) {
            e = e3;
            zzLZ = zzKl().zzLZ();
            str2 = "Package name not found";
            zzLZ.zzj(str2, e);
            return true;
        }
        return true;
    }

    public long zzNk() {
        if (this.zzbwk.get() == 0) {
            long j;
            synchronized (this.zzbwk) {
                long nextLong = new Random(System.nanoTime() ^ zznR().currentTimeMillis()).nextLong();
                int i = this.zzbwl + 1;
                this.zzbwl = i;
                j = nextLong + ((long) i);
            }
            return j;
        }
        synchronized (this.zzbwk) {
            this.zzbwk.compareAndSet(-1, 1);
            nextLong = this.zzbwk.getAndIncrement();
        }
        return nextLong;
    }

    public int zza(String str, Object obj, boolean z) {
        if (z && !zza("param", str, zzKn().zzKR(), obj)) {
            return 17;
        }
        return zzgd(str) ? zza("param", str, zzKn().zzKQ(), obj, z) : zza("param", str, zzKn().zzKP(), obj, z) ? 0 : 4;
    }

    public Bundle zza(String str, Bundle bundle, List<String> list, boolean z, boolean z2) {
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        zzKn().zzKL();
        int i = 0;
        for (String str2 : bundle.keySet()) {
            int i2;
            if (list != null) {
                if (list.contains(str2)) {
                    i2 = 0;
                    if (i2 != 0) {
                        i2 = zza(str2, bundle.get(str2), z2);
                        if (i2 != 0 || "_ev".equals(str2)) {
                            if (zzfT(str2)) {
                                i++;
                                if (i > 25) {
                                    StringBuilder stringBuilder = new StringBuilder(48);
                                    stringBuilder.append("Event can't contain more then 25 params");
                                    zzKl().zzLZ().zze(stringBuilder.toString(), str, bundle);
                                    zzd(bundle2, 5);
                                }
                            }
                        } else if (zzd(bundle2, i2)) {
                            bundle2.putString("_ev", zza(str2, zzKn().zzKO(), true));
                            zzb(bundle2, bundle.get(str2));
                        }
                    } else if (zzd(bundle2, i2)) {
                        bundle2.putString("_ev", zza(str2, zzKn().zzKO(), true));
                        if (i2 == 3) {
                            zzb(bundle2, (Object) str2);
                        }
                    }
                    bundle2.remove(str2);
                }
            }
            i2 = z ? zzfY(str2) : 0;
            if (i2 == 0) {
                i2 = zzfZ(str2);
            }
            if (i2 != 0) {
                i2 = zza(str2, bundle.get(str2), z2);
                if (i2 != 0) {
                }
                if (zzfT(str2)) {
                    i++;
                    if (i > 25) {
                        StringBuilder stringBuilder2 = new StringBuilder(48);
                        stringBuilder2.append("Event can't contain more then 25 params");
                        zzKl().zzLZ().zze(stringBuilder2.toString(), str, bundle);
                        zzd(bundle2, 5);
                    }
                }
            } else if (zzd(bundle2, i2)) {
                bundle2.putString("_ev", zza(str2, zzKn().zzKO(), true));
                if (i2 == 3) {
                    zzb(bundle2, (Object) str2);
                }
            }
            bundle2.remove(str2);
        }
        return bundle2;
    }

    zzatq zza(String str, Bundle bundle, String str2, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (zzfV(str) != 0) {
            zzKl().zzLZ().zzj("Invalid conditional property event name", str);
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        bundle = zza(str, bundle2, com.google.android.gms.common.util.zzf.zzx("_o"), z2, false);
        if (z) {
            bundle = zzN(bundle);
        }
        return new zzatq(str, new zzato(bundle), str2, j);
    }

    public String zza(String str, int i, boolean z) {
        if (str.length() > i) {
            if (z) {
                return String.valueOf(str.substring(0, i)).concat("...");
            }
            str = null;
        }
        return str;
    }

    public void zza(int i, String str, String str2, int i2) {
        zza(null, i, str, str2, i2);
    }

    public void zza(Bundle bundle, String str, Object obj) {
        if (bundle != null) {
            if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof String) {
                bundle.putString(str, String.valueOf(obj));
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else {
                if (str != null) {
                    zzKl().zzMc().zze("Not putting event parameter. Invalid value type. name, type", str, obj != null ? obj.getClass().getSimpleName() : null);
                }
            }
        }
    }

    public void zza(zzauw.zzc zzc, Object obj) {
        zzac.zzw(obj);
        zzc.zzaGV = null;
        zzc.zzbxf = null;
        zzc.zzbwi = null;
        if (obj instanceof String) {
            zzc.zzaGV = (String) obj;
        } else if (obj instanceof Long) {
            zzc.zzbxf = (Long) obj;
        } else if (obj instanceof Double) {
            zzc.zzbwi = (Double) obj;
        } else {
            zzKl().zzLZ().zzj("Ignoring invalid (type) event param value", obj);
        }
    }

    public void zza(zzg zzg, Object obj) {
        zzac.zzw(obj);
        zzg.zzaGV = null;
        zzg.zzbxf = null;
        zzg.zzbwi = null;
        if (obj instanceof String) {
            zzg.zzaGV = (String) obj;
        } else if (obj instanceof Long) {
            zzg.zzbxf = (Long) obj;
        } else if (obj instanceof Double) {
            zzg.zzbwi = (Double) obj;
        } else {
            zzKl().zzLZ().zzj("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public void zza(String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        zzd(bundle, i);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", (long) i2);
        }
        this.zzbqb.zzKn().zzLh();
        this.zzbqb.zzKa().zze("auto", "_err", bundle);
    }

    boolean zza(String str, String str2, int i, Object obj) {
        int length;
        if (obj instanceof Parcelable[]) {
            length = ((Parcelable[]) obj).length;
        } else {
            if (obj instanceof ArrayList) {
                length = ((ArrayList) obj).size();
            }
            return true;
        }
        if (length > i) {
            zzKl().zzMb().zzd("Parameter array is too long; discarded. Value kind, name, array length", str, str2, Integer.valueOf(length));
            return false;
        }
        return true;
    }

    boolean zza(String str, String str2, int i, Object obj, boolean z) {
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if (!((obj instanceof String) || (obj instanceof Character))) {
            if (!(obj instanceof CharSequence)) {
                if ((obj instanceof Bundle) && z) {
                    return true;
                }
                if ((obj instanceof Parcelable[]) && z) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    int length = parcelableArr.length;
                    i = 0;
                    while (i < length) {
                        Object obj2 = parcelableArr[i];
                        if (obj2 instanceof Bundle) {
                            i++;
                        } else {
                            zzKl().zzMb().zze("All Parcelable[] elements must be of type Bundle. Value type, name", obj2.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                } else if (!(obj instanceof ArrayList) || !z) {
                    return false;
                } else {
                    Iterator it = ((ArrayList) obj).iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        if (!(next instanceof Bundle)) {
                            zzKl().zzMb().zze("All ArrayList elements must be of type Bundle. Value type, name", next.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                }
            }
        }
        String valueOf = String.valueOf(obj);
        if (valueOf.length() > i) {
            zzKl().zzMb().zzd("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
            return false;
        }
        return true;
    }

    byte[] zza(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            byte[] marshall = obtain.marshall();
            return marshall;
        } finally {
            obtain.recycle();
        }
    }

    public byte[] zza(zzauw.zzd zzd) {
        try {
            byte[] bArr = new byte[zzd.zzafB()];
            zzbyc zzah = zzbyc.zzah(bArr);
            zzd.zza(zzah);
            zzah.zzafo();
            return bArr;
        } catch (IOException e) {
            zzKl().zzLZ().zzj("Data loss. Failed to serialize batch", e);
            return null;
        }
    }

    boolean zzac(String str, String str2) {
        if (str2 == null) {
            zzKl().zzLZ().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            zzKl().zzLZ().zzj("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (Character.isLetter(codePointAt)) {
                int length = str2.length();
                codePointAt = Character.charCount(codePointAt);
                while (codePointAt < length) {
                    int codePointAt2 = str2.codePointAt(codePointAt);
                    if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                        codePointAt += Character.charCount(codePointAt2);
                    } else {
                        zzKl().zzLZ().zze("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        return false;
                    }
                }
                return true;
            }
            zzKl().zzLZ().zze("Name must start with a letter. Type, name", str, str2);
            return false;
        }
    }

    boolean zzad(String str, String str2) {
        if (str2 == null) {
            zzKl().zzLZ().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            zzKl().zzLZ().zzj("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (Character.isLetter(codePointAt) || codePointAt == 95) {
                int length = str2.length();
                codePointAt = Character.charCount(codePointAt);
                while (codePointAt < length) {
                    int codePointAt2 = str2.codePointAt(codePointAt);
                    if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                        codePointAt += Character.charCount(codePointAt2);
                    } else {
                        zzKl().zzLZ().zze("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        return false;
                    }
                }
                return true;
            }
            zzKl().zzLZ().zze("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
    }

    <T extends android.os.Parcelable> T zzb(byte[] r5, android.os.Parcelable.Creator<T> r6) {
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
        r4 = this;
        r0 = 0;
        if (r5 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = android.os.Parcel.obtain();
        r2 = r5.length;	 Catch:{ zza -> 0x001c }
        r3 = 0;	 Catch:{ zza -> 0x001c }
        r1.unmarshall(r5, r3, r2);	 Catch:{ zza -> 0x001c }
        r1.setDataPosition(r3);	 Catch:{ zza -> 0x001c }
        r5 = r6.createFromParcel(r1);	 Catch:{ zza -> 0x001c }
        r5 = (android.os.Parcelable) r5;	 Catch:{ zza -> 0x001c }
        r1.recycle();
        return r5;
    L_0x001a:
        r5 = move-exception;
        goto L_0x002d;
    L_0x001c:
        r5 = r4.zzKl();	 Catch:{ all -> 0x001a }
        r5 = r5.zzLZ();	 Catch:{ all -> 0x001a }
        r6 = "Failed to load parcelable from buffer";	 Catch:{ all -> 0x001a }
        r5.log(r6);	 Catch:{ all -> 0x001a }
        r1.recycle();
        return r0;
    L_0x002d:
        r1.recycle();
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaut.zzb(byte[], android.os.Parcelable$Creator):T");
    }

    public void zzb(Bundle bundle, Object obj) {
        zzac.zzw(bundle);
        if (obj == null) {
            return;
        }
        if ((obj instanceof String) || (obj instanceof CharSequence)) {
            bundle.putLong("_el", (long) String.valueOf(obj).length());
        }
    }

    boolean zzb(String str, int i, String str2) {
        if (str2 == null) {
            zzKl().zzLZ().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() <= i) {
            return true;
        } else {
            zzKl().zzLZ().zzd("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    public boolean zzbW(String str) {
        zzmR();
        if (zzadg.zzbi(getContext()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        zzKl().zzMe().zzj("Permission not granted", str);
        return false;
    }

    boolean zzc(String str, Map<String, String> map, String str2) {
        if (str2 == null) {
            zzKl().zzLZ().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.startsWith("firebase_")) {
            zzKl().zzLZ().zze("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        } else if (map == null || !map.containsKey(str2)) {
            return true;
        } else {
            zzKl().zzLZ().zze("Name is reserved. Type, name", str, str2);
            return false;
        }
    }

    public boolean zzd(Bundle bundle, int i) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", (long) i);
        return true;
    }

    boolean zzd(zzatq zzatq, zzatd zzatd) {
        zzac.zzw(zzatq);
        zzac.zzw(zzatd);
        if (!TextUtils.isEmpty(zzatd.zzbqK)) {
            return true;
        }
        zzKn().zzLh();
        return false;
    }

    public int zzfU(String str) {
        return !zzac(NotificationCompat.CATEGORY_EVENT, str) ? 2 : !zzc(NotificationCompat.CATEGORY_EVENT, AppMeasurement.zza.zzbqc, str) ? 13 : !zzb(NotificationCompat.CATEGORY_EVENT, zzKn().zzKM(), str) ? 2 : 0;
    }

    public int zzfV(String str) {
        return !zzad(NotificationCompat.CATEGORY_EVENT, str) ? 2 : !zzc(NotificationCompat.CATEGORY_EVENT, AppMeasurement.zza.zzbqc, str) ? 13 : !zzb(NotificationCompat.CATEGORY_EVENT, zzKn().zzKM(), str) ? 2 : 0;
    }

    public int zzfW(String str) {
        return !zzac("user property", str) ? 6 : !zzc("user property", AppMeasurement.zzg.zzbqh, str) ? 15 : !zzb("user property", zzKn().zzKN(), str) ? 6 : 0;
    }

    public int zzfX(String str) {
        return !zzad("user property", str) ? 6 : !zzc("user property", AppMeasurement.zzg.zzbqh, str) ? 15 : !zzb("user property", zzKn().zzKN(), str) ? 6 : 0;
    }

    public int zzfY(String str) {
        return !zzac("event param", str) ? 3 : !zzc("event param", null, str) ? 14 : !zzb("event param", zzKn().zzKO(), str) ? 3 : 0;
    }

    public int zzfZ(String str) {
        return !zzad("event param", str) ? 3 : !zzc("event param", null, str) ? 14 : !zzb("event param", zzKn().zzKO(), str) ? 3 : 0;
    }

    public boolean zzga(String str) {
        if (TextUtils.isEmpty(str)) {
            zzKl().zzLZ().log("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        } else if (zzgb(str)) {
            return true;
        } else {
            zzKl().zzLZ().zzj("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", str);
            return false;
        }
    }

    boolean zzgb(String str) {
        zzac.zzw(str);
        return str.matches("^1:\\d+:android:[a-f0-9]+$");
    }

    public boolean zzge(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String zzLD = zzKn().zzLD();
        zzKn().zzLh();
        return zzLD.equals(str);
    }

    boolean zzgg(String str) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(zzKi().zzZ(str, "measurement.upload.blacklist_internal"));
    }

    boolean zzgh(String str) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(zzKi().zzZ(str, "measurement.upload.blacklist_public"));
    }

    boolean zzgi(String str) {
        boolean z;
        zzac.zzdr(str);
        int hashCode = str.hashCode();
        if (hashCode != 94660) {
            if (hashCode != 95025) {
                if (hashCode == 95027) {
                    if (str.equals("_ui")) {
                        z = true;
                        switch (z) {
                            case false:
                            case true:
                            case true:
                                return true;
                            default:
                                return false;
                        }
                    }
                }
            } else if (str.equals("_ug")) {
                z = true;
                switch (z) {
                    case false:
                    case true:
                    case true:
                        return true;
                    default:
                        return false;
                }
            }
        } else if (str.equals("_in")) {
            z = false;
            switch (z) {
                case false:
                case true:
                case true:
                    return true;
                default:
                    return false;
            }
        }
        z = true;
        switch (z) {
            case false:
            case true:
            case true:
                return true;
            default:
                return false;
        }
    }

    public boolean zzh(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(zznR().currentTimeMillis() - j) > j2;
    }

    public Object zzk(String str, Object obj) {
        int zzKQ;
        boolean z;
        if ("_ev".equals(str)) {
            zzKQ = zzKn().zzKQ();
            z = true;
        } else {
            zzKQ = zzgd(str) ? zzKn().zzKQ() : zzKn().zzKP();
            z = false;
        }
        return zza(zzKQ, obj, z);
    }

    public byte[] zzk(byte[] bArr) throws IOException {
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            zzKl().zzLZ().zzj("Failed to gzip content", e);
            throw e;
        }
    }

    public int zzl(String str, Object obj) {
        return "_ldl".equals(str) ? zza("user property referrer", str, zzgc(str), obj, false) : zza("user property", str, zzgc(str), obj, false) ? 0 : 7;
    }

    public Object zzm(String str, Object obj) {
        int zzgc;
        boolean z;
        if ("_ldl".equals(str)) {
            zzgc = zzgc(str);
            z = true;
        } else {
            zzgc = zzgc(str);
            z = false;
        }
        return zza(zzgc, obj, z);
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                zzKl().zzMb().log("Utils falling back to Random for random id");
            }
        }
        this.zzbwk.set(nextLong);
    }

    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    public Bundle zzu(Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            Object queryParameter;
            Object queryParameter2;
            Object queryParameter3;
            Object queryParameter4;
            if (uri.isHierarchical()) {
                queryParameter = uri.getQueryParameter("utm_campaign");
                queryParameter2 = uri.getQueryParameter("utm_source");
                queryParameter3 = uri.getQueryParameter("utm_medium");
                queryParameter4 = uri.getQueryParameter("gclid");
            } else {
                queryParameter = null;
                queryParameter2 = queryParameter;
                queryParameter3 = queryParameter2;
                queryParameter4 = queryParameter3;
            }
            if (TextUtils.isEmpty(queryParameter) && TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3)) {
                if (TextUtils.isEmpty(queryParameter4)) {
                    return null;
                }
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString(Param.CAMPAIGN, queryParameter);
            }
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString("source", queryParameter2);
            }
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString(Param.MEDIUM, queryParameter3);
            }
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("gclid", queryParameter4);
            }
            queryParameter = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString(Param.TERM, queryParameter);
            }
            queryParameter = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString(Param.CONTENT, queryParameter);
            }
            queryParameter = uri.getQueryParameter(Param.ACLID);
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString(Param.ACLID, queryParameter);
            }
            queryParameter = uri.getQueryParameter(Param.CP1);
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString(Param.CP1, queryParameter);
            }
            Object queryParameter5 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("anid", queryParameter5);
            }
            return bundle;
        } catch (UnsupportedOperationException e) {
            zzKl().zzMb().zzj("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }

    public byte[] zzx(byte[] bArr) throws IOException {
        try {
            InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            zzKl().zzLZ().zzj("Failed to ungzip content", e);
            throw e;
        }
    }

    public long zzz(byte[] bArr) {
        zzac.zzw(bArr);
        zzmR();
        MessageDigest zzch = zzch("MD5");
        if (zzch != null) {
            return zzy(zzch.digest(bArr));
        }
        zzKl().zzLZ().log("Failed to get MD5");
        return 0;
    }
}
