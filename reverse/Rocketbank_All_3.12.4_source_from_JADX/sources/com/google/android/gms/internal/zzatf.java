package com.google.android.gms.internal;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzatx.zza;
import com.google.android.gms.internal.zzauu.zzb;
import com.google.android.gms.internal.zzauu.zzc;
import com.google.android.gms.internal.zzauu.zze;
import com.google.android.gms.internal.zzauu.zzf;
import com.google.android.gms.internal.zzauw.zzg;
import com.google.android.gms.measurement.AppMeasurement;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

class zzatf extends zzauh {
    zzatf(zzaue zzaue) {
        super(zzaue);
    }

    private Boolean zza(zzb zzb, zzauw.zzb zzb2, long j) {
        if (zzb.zzbwv != null) {
            Boolean zza = zza(j, zzb.zzbwv);
            if (zza == null) {
                return null;
            }
            if (!zza.booleanValue()) {
                return Boolean.FALSE;
            }
        }
        Set hashSet = new HashSet();
        int i = 0;
        for (zzc zzc : zzb.zzbwt) {
            if (TextUtils.isEmpty(zzc.zzbwA)) {
                zzKl().zzMb().zzj("null or empty param name in filter. event", zzb2.name);
                return null;
            }
            hashSet.add(zzc.zzbwA);
        }
        Map arrayMap = new ArrayMap();
        for (zzauw.zzc zzc2 : zzb2.zzbxb) {
            Object obj;
            if (hashSet.contains(zzc2.name)) {
                Object obj2;
                if (zzc2.zzbxf != null) {
                    obj2 = zzc2.name;
                    obj = zzc2.zzbxf;
                } else if (zzc2.zzbwi != null) {
                    obj2 = zzc2.name;
                    obj = zzc2.zzbwi;
                } else if (zzc2.zzaGV != null) {
                    obj2 = zzc2.name;
                    obj = zzc2.zzaGV;
                } else {
                    zzKl().zzMb().zze("Unknown value for param. event, param", zzb2.name, zzc2.name);
                    return null;
                }
                arrayMap.put(obj2, obj);
            }
        }
        zzc[] zzcArr = zzb.zzbwt;
        int length = zzcArr.length;
        while (i < length) {
            zzc zzc3 = zzcArr[i];
            boolean equals = Boolean.TRUE.equals(zzc3.zzbwz);
            CharSequence charSequence = zzc3.zzbwA;
            if (TextUtils.isEmpty(charSequence)) {
                zzKl().zzMb().zzj("Event has empty param name. event", zzb2.name);
                return null;
            }
            obj = arrayMap.get(charSequence);
            Boolean zza2;
            if (obj instanceof Long) {
                if (zzc3.zzbwy == null) {
                    zzKl().zzMb().zze("No number filter for long param. event, param", zzb2.name, charSequence);
                    return null;
                }
                zza2 = zza(((Long) obj).longValue(), zzc3.zzbwy);
                if (zza2 == null) {
                    return null;
                }
                if (((zza2.booleanValue() ^ 1) ^ equals) != 0) {
                    return Boolean.FALSE;
                }
            } else if (obj instanceof Double) {
                if (zzc3.zzbwy == null) {
                    zzKl().zzMb().zze("No number filter for double param. event, param", zzb2.name, charSequence);
                    return null;
                }
                zza2 = zza(((Double) obj).doubleValue(), zzc3.zzbwy);
                if (zza2 == null) {
                    return null;
                }
                if (((zza2.booleanValue() ^ 1) ^ equals) != 0) {
                    return Boolean.FALSE;
                }
            } else if (obj instanceof String) {
                if (zzc3.zzbwx != null) {
                    zza2 = zza((String) obj, zzc3.zzbwx);
                } else if (zzc3.zzbwy != null) {
                    String str = (String) obj;
                    if (zzaut.zzgf(str)) {
                        zza2 = zza(str, zzc3.zzbwy);
                    } else {
                        zzKl().zzMb().zze("Invalid param value for number filter. event, param", zzb2.name, charSequence);
                        return null;
                    }
                } else {
                    zzKl().zzMb().zze("No filter for String param. event, param", zzb2.name, charSequence);
                    return null;
                }
                if (zza2 == null) {
                    return null;
                }
                if (((zza2.booleanValue() ^ 1) ^ equals) != 0) {
                    return Boolean.FALSE;
                }
            } else if (obj == null) {
                zzKl().zzMf().zze("Missing param for filter. event, param", zzb2.name, charSequence);
                return Boolean.FALSE;
            } else {
                zzKl().zzMb().zze("Unknown param type. event, param", zzb2.name, charSequence);
                return null;
            }
            i++;
        }
        return Boolean.TRUE;
    }

    private Boolean zza(zze zze, zzg zzg) {
        zza zzMb;
        String str;
        zzc zzc = zze.zzbwI;
        if (zzc == null) {
            zzMb = zzKl().zzMb();
            str = "Missing property filter. property";
        } else {
            Boolean zza;
            boolean equals = Boolean.TRUE.equals(zzc.zzbwz);
            if (zzg.zzbxf != null) {
                if (zzc.zzbwy == null) {
                    zzMb = zzKl().zzMb();
                    str = "No number filter for long property. property";
                } else {
                    zza = zza(zzg.zzbxf.longValue(), zzc.zzbwy);
                }
            } else if (zzg.zzbwi != null) {
                if (zzc.zzbwy == null) {
                    zzMb = zzKl().zzMb();
                    str = "No number filter for double property. property";
                } else {
                    zza = zza(zzg.zzbwi.doubleValue(), zzc.zzbwy);
                }
            } else if (zzg.zzaGV == null) {
                zzMb = zzKl().zzMb();
                str = "User property has no value, property";
            } else if (zzc.zzbwx != null) {
                zza = zza(zzg.zzaGV, zzc.zzbwx);
            } else if (zzc.zzbwy == null) {
                zzKl().zzMb().zzj("No string or number filter defined. property", zzg.name);
                return null;
            } else if (zzaut.zzgf(zzg.zzaGV)) {
                zza = zza(zzg.zzaGV, zzc.zzbwy);
            } else {
                zzKl().zzMb().zze("Invalid user property value for Numeric number filter. property, value", zzg.name, zzg.zzaGV);
                return null;
            }
            return zza(zza, equals);
        }
        zzMb.zzj(str, zzg.name);
        return null;
    }

    static Boolean zza(Boolean bool, boolean z) {
        return bool == null ? null : Boolean.valueOf(bool.booleanValue() ^ z);
    }

    private Boolean zza(String str, int i, boolean z, String str2, List<String> list, String str3) {
        if (str == null) {
            return null;
        }
        boolean matches;
        if (i == 6) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z) {
            if (i != 1) {
                CharSequence toUpperCase = str.toUpperCase(Locale.ENGLISH);
            }
        }
        switch (i) {
            case 1:
                matches = Pattern.compile(str3, z ? 0 : 66).matcher(toUpperCase).matches();
                break;
            case 2:
                matches = toUpperCase.startsWith(str2);
                break;
            case 3:
                matches = toUpperCase.endsWith(str2);
                break;
            case 4:
                matches = toUpperCase.contains(str2);
                break;
            case 5:
                matches = toUpperCase.equals(str2);
                break;
            case 6:
                matches = list.contains(toUpperCase);
                break;
            default:
                return null;
        }
        return Boolean.valueOf(matches);
    }

    private Boolean zza(BigDecimal bigDecimal, int i, BigDecimal bigDecimal2, BigDecimal bigDecimal3, BigDecimal bigDecimal4, double d) {
        if (bigDecimal == null) {
            return null;
        }
        if (i == 4) {
            if (bigDecimal3 == null || bigDecimal4 == null) {
                return null;
            }
        } else if (bigDecimal2 == null) {
            return null;
        }
        boolean z = false;
        switch (i) {
            case 1:
                if (bigDecimal.compareTo(bigDecimal2) == -1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 2:
                if (bigDecimal.compareTo(bigDecimal2) == 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 3:
                if (d != 0.0d) {
                    if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                        z = true;
                    }
                    return Boolean.valueOf(z);
                }
                if (bigDecimal.compareTo(bigDecimal2) == 0) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 4:
                if (!(bigDecimal.compareTo(bigDecimal3) == -1 || bigDecimal.compareTo(bigDecimal4) == 1)) {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                return null;
        }
    }

    private List<String> zza(String[] strArr, boolean z) {
        if (z) {
            return Arrays.asList(strArr);
        }
        List<String> arrayList = new ArrayList();
        for (String toUpperCase : strArr) {
            arrayList.add(toUpperCase.toUpperCase(Locale.ENGLISH));
        }
        return arrayList;
    }

    public java.lang.Boolean zza(double r2, com.google.android.gms.internal.zzauu.zzd r4) {
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
        r1 = this;
        r0 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x000e }
        r0.<init>(r2);	 Catch:{ NumberFormatException -> 0x000e }
        r2 = java.lang.Math.ulp(r2);	 Catch:{ NumberFormatException -> 0x000e }
        r2 = r1.zza(r0, r4, r2);	 Catch:{ NumberFormatException -> 0x000e }
        return r2;
    L_0x000e:
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatf.zza(double, com.google.android.gms.internal.zzauu$zzd):java.lang.Boolean");
    }

    public java.lang.Boolean zza(long r2, com.google.android.gms.internal.zzauu.zzd r4) {
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
        r1 = this;
        r0 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x000c }
        r0.<init>(r2);	 Catch:{ NumberFormatException -> 0x000c }
        r2 = 0;	 Catch:{ NumberFormatException -> 0x000c }
        r2 = r1.zza(r0, r4, r2);	 Catch:{ NumberFormatException -> 0x000c }
        return r2;
    L_0x000c:
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatf.zza(long, com.google.android.gms.internal.zzauu$zzd):java.lang.Boolean");
    }

    public java.lang.Boolean zza(java.lang.String r5, com.google.android.gms.internal.zzauu.zzd r6) {
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
        r0 = com.google.android.gms.internal.zzaut.zzgf(r5);
        r1 = 0;
        if (r0 != 0) goto L_0x0008;
    L_0x0007:
        return r1;
    L_0x0008:
        r0 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x0014 }
        r0.<init>(r5);	 Catch:{ NumberFormatException -> 0x0014 }
        r2 = 0;	 Catch:{ NumberFormatException -> 0x0014 }
        r5 = r4.zza(r0, r6, r2);	 Catch:{ NumberFormatException -> 0x0014 }
        return r5;
    L_0x0014:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatf.zza(java.lang.String, com.google.android.gms.internal.zzauu$zzd):java.lang.Boolean");
    }

    Boolean zza(String str, zzf zzf) {
        zzac.zzw(zzf);
        if (str == null || zzf.zzbwJ == null || zzf.zzbwJ.intValue() == 0) {
            return null;
        }
        String toUpperCase;
        String str2;
        if (zzf.zzbwJ.intValue() == 6) {
            if (zzf.zzbwM == null || zzf.zzbwM.length == 0) {
                return null;
            }
        } else if (zzf.zzbwK == null) {
            return null;
        }
        int intValue = zzf.zzbwJ.intValue();
        boolean z = zzf.zzbwL != null && zzf.zzbwL.booleanValue();
        if (!(z || intValue == 1)) {
            if (intValue != 6) {
                toUpperCase = zzf.zzbwK.toUpperCase(Locale.ENGLISH);
                str2 = toUpperCase;
                return zza(str, intValue, z, str2, zzf.zzbwM != null ? null : zza(zzf.zzbwM, z), intValue != 1 ? str2 : null);
            }
        }
        toUpperCase = zzf.zzbwK;
        str2 = toUpperCase;
        if (zzf.zzbwM != null) {
        }
        if (intValue != 1) {
        }
        return zza(str, intValue, z, str2, zzf.zzbwM != null ? null : zza(zzf.zzbwM, z), intValue != 1 ? str2 : null);
    }

    java.lang.Boolean zza(java.math.BigDecimal r12, com.google.android.gms.internal.zzauu.zzd r13, double r14) {
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
        r11 = this;
        com.google.android.gms.common.internal.zzac.zzw(r13);
        r0 = r13.zzbwB;
        r1 = 0;
        if (r0 == 0) goto L_0x0075;
    L_0x0008:
        r0 = r13.zzbwB;
        r0 = r0.intValue();
        if (r0 != 0) goto L_0x0011;
    L_0x0010:
        return r1;
    L_0x0011:
        r0 = r13.zzbwB;
        r0 = r0.intValue();
        r2 = 4;
        if (r0 != r2) goto L_0x0023;
    L_0x001a:
        r0 = r13.zzbwE;
        if (r0 == 0) goto L_0x0022;
    L_0x001e:
        r0 = r13.zzbwF;
        if (r0 != 0) goto L_0x0028;
    L_0x0022:
        return r1;
    L_0x0023:
        r0 = r13.zzbwD;
        if (r0 != 0) goto L_0x0028;
    L_0x0027:
        return r1;
    L_0x0028:
        r0 = r13.zzbwB;
        r5 = r0.intValue();
        r0 = r13.zzbwB;
        r0 = r0.intValue();
        if (r0 != r2) goto L_0x005a;
    L_0x0036:
        r0 = r13.zzbwE;
        r0 = com.google.android.gms.internal.zzaut.zzgf(r0);
        if (r0 == 0) goto L_0x0059;
    L_0x003e:
        r0 = r13.zzbwF;
        r0 = com.google.android.gms.internal.zzaut.zzgf(r0);
        if (r0 != 0) goto L_0x0047;
    L_0x0046:
        return r1;
    L_0x0047:
        r0 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x0059 }
        r2 = r13.zzbwE;	 Catch:{ NumberFormatException -> 0x0059 }
        r0.<init>(r2);	 Catch:{ NumberFormatException -> 0x0059 }
        r2 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x0059 }
        r13 = r13.zzbwF;	 Catch:{ NumberFormatException -> 0x0059 }
        r2.<init>(r13);	 Catch:{ NumberFormatException -> 0x0059 }
        r7 = r0;
        r6 = r1;
        r8 = r2;
        goto L_0x006d;
    L_0x0059:
        return r1;
    L_0x005a:
        r0 = r13.zzbwD;
        r0 = com.google.android.gms.internal.zzaut.zzgf(r0);
        if (r0 != 0) goto L_0x0063;
    L_0x0062:
        return r1;
    L_0x0063:
        r0 = new java.math.BigDecimal;	 Catch:{ NumberFormatException -> 0x0075 }
        r13 = r13.zzbwD;	 Catch:{ NumberFormatException -> 0x0075 }
        r0.<init>(r13);	 Catch:{ NumberFormatException -> 0x0075 }
        r6 = r0;
        r7 = r1;
        r8 = r7;
    L_0x006d:
        r3 = r11;
        r4 = r12;
        r9 = r14;
        r12 = r3.zza(r4, r5, r6, r7, r8, r9);
        return r12;
    L_0x0075:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatf.zza(java.math.BigDecimal, com.google.android.gms.internal.zzauu$zzd, double):java.lang.Boolean");
    }

    void zza(String str, zzauu.zza[] zzaArr) {
        zzac.zzw(zzaArr);
        for (zzauu.zza zza : zzaArr) {
            for (zzb zzb : zza.zzbwp) {
                String str2 = (String) AppMeasurement.zza.zzbqc.get(zzb.zzbws);
                if (str2 != null) {
                    zzb.zzbws = str2;
                }
                for (zzc zzc : zzb.zzbwt) {
                    String str3 = (String) AppMeasurement.zze.zzbqd.get(zzc.zzbwA);
                    if (str3 != null) {
                        zzc.zzbwA = str3;
                    }
                }
            }
            for (zze zze : zza.zzbwo) {
                String str4 = (String) AppMeasurement.zzg.zzbqh.get(zze.zzbwH);
                if (str4 != null) {
                    zze.zzbwH = str4;
                }
            }
        }
        zzKg().zzb(str, zzaArr);
    }

    zzauw.zza[] zza(String str, zzauw.zzb[] zzbArr, zzg[] zzgArr) {
        Iterator it;
        int intValue;
        BitSet bitSet;
        int i;
        Map map;
        int i2;
        int intValue2;
        Map map2;
        Map map3;
        Object obj;
        Map map4;
        zzatf zzatf = this;
        String str2 = str;
        zzauw.zzb[] zzbArr2 = zzbArr;
        zzg[] zzgArr2 = zzgArr;
        zzac.zzdr(str);
        Set hashSet = new HashSet();
        Map arrayMap = new ArrayMap();
        Map arrayMap2 = new ArrayMap();
        Map arrayMap3 = new ArrayMap();
        Map zzfy = zzKg().zzfy(str2);
        if (zzfy != null) {
            it = zzfy.keySet().iterator();
            while (it.hasNext()) {
                Map map5;
                Iterator it2;
                intValue = ((Integer) it.next()).intValue();
                zzauw.zzf zzf = (zzauw.zzf) zzfy.get(Integer.valueOf(intValue));
                bitSet = (BitSet) arrayMap2.get(Integer.valueOf(intValue));
                BitSet bitSet2 = (BitSet) arrayMap3.get(Integer.valueOf(intValue));
                if (bitSet == null) {
                    bitSet = new BitSet();
                    arrayMap2.put(Integer.valueOf(intValue), bitSet);
                    bitSet2 = new BitSet();
                    arrayMap3.put(Integer.valueOf(intValue), bitSet2);
                }
                i = 0;
                while (i < (zzf.zzbxJ.length << 6)) {
                    if (zzaut.zza(zzf.zzbxJ, i)) {
                        map5 = zzfy;
                        it2 = it;
                        map = arrayMap3;
                        zzKl().zzMf().zze("Filter already evaluated. audience ID, filter ID", Integer.valueOf(intValue), Integer.valueOf(i));
                        bitSet2.set(i);
                        if (zzaut.zza(zzf.zzbxK, i)) {
                            bitSet.set(i);
                        }
                    } else {
                        map5 = zzfy;
                        it2 = it;
                        map = arrayMap3;
                    }
                    i++;
                    zzfy = map5;
                    it = it2;
                    arrayMap3 = map;
                }
                map5 = zzfy;
                it2 = it;
                map = arrayMap3;
                zzauw.zza zza = new zzauw.zza();
                arrayMap.put(Integer.valueOf(intValue), zza);
                zza.zzbwZ = Boolean.FALSE;
                zza.zzbwY = zzf;
                zza.zzbwX = new zzauw.zzf();
                zza.zzbwX.zzbxK = zzaut.zza(bitSet);
                zza.zzbwX.zzbxJ = zzaut.zza(bitSet2);
                zzfy = map5;
                it = it2;
            }
        }
        map = arrayMap3;
        if (zzbArr2 != null) {
            ArrayMap arrayMap4 = new ArrayMap();
            i = zzbArr2.length;
            i2 = 0;
            while (i2 < i) {
                int i3;
                ArrayMap arrayMap5;
                int i4;
                zzauw.zzb zzb;
                Map map6;
                Map map7;
                zzauw.zzb zzb2 = zzbArr2[i2];
                zzatn zzQ = zzKg().zzQ(str2, zzb2.name);
                if (zzQ == null) {
                    zzKl().zzMb().zze("Event aggregate wasn't created during raw event logging. appId, event", zzatx.zzfE(str), zzb2.name);
                    i3 = i2;
                    arrayMap5 = arrayMap4;
                    i4 = i;
                    zzb = zzb2;
                    map6 = map;
                    zzQ = new zzatn(str2, zzb2.name, 1, 1, zzb2.zzbxc.longValue());
                } else {
                    i3 = i2;
                    zzb = zzb2;
                    arrayMap5 = arrayMap4;
                    i4 = i;
                    map6 = map;
                    zzQ = zzQ.zzLV();
                }
                zzKg().zza(zzQ);
                long j = zzQ.zzbrB;
                Map map8 = arrayMap5;
                Map map9 = (Map) map8.get(zzb.name);
                if (map9 == null) {
                    map9 = zzKg().zzV(str2, zzb.name);
                    if (map9 == null) {
                        map9 = new ArrayMap();
                    }
                    map8.put(zzb.name, map9);
                }
                Iterator it3 = map9.keySet().iterator();
                while (it3.hasNext()) {
                    intValue2 = ((Integer) it3.next()).intValue();
                    if (hashSet.contains(Integer.valueOf(intValue2))) {
                        zzKl().zzMf().zzj("Skipping failed audience ID", Integer.valueOf(intValue2));
                    } else {
                        Iterator it4;
                        BitSet bitSet3 = (BitSet) arrayMap2.get(Integer.valueOf(intValue2));
                        BitSet bitSet4 = (BitSet) map6.get(Integer.valueOf(intValue2));
                        if (((zzauw.zza) arrayMap.get(Integer.valueOf(intValue2))) == null) {
                            zzauw.zza zza2 = new zzauw.zza();
                            arrayMap.put(Integer.valueOf(intValue2), zza2);
                            zza2.zzbwZ = Boolean.TRUE;
                            bitSet3 = new BitSet();
                            arrayMap2.put(Integer.valueOf(intValue2), bitSet3);
                            bitSet4 = new BitSet();
                            map6.put(Integer.valueOf(intValue2), bitSet4);
                        }
                        Iterator it5 = ((List) map9.get(Integer.valueOf(intValue2))).iterator();
                        while (it5.hasNext()) {
                            Iterator it6;
                            zza zzMf;
                            String str3;
                            Object valueOf;
                            Map map10 = map9;
                            zzb zzb3 = (zzb) it5.next();
                            map7 = map8;
                            it4 = it3;
                            if (zzKl().zzak(2)) {
                                it6 = it5;
                                map2 = map6;
                                map3 = arrayMap2;
                                zzKl().zzMf().zzd("Evaluating filter. audience, filter, event", Integer.valueOf(intValue2), zzb3.zzbwr, zzb3.zzbws);
                                zzKl().zzMf().zzj("Filter definition", zzaut.zza(zzb3));
                            } else {
                                it6 = it5;
                                map2 = map6;
                                map3 = arrayMap2;
                            }
                            if (zzb3.zzbwr != null) {
                                if (zzb3.zzbwr.intValue() <= 256) {
                                    if (bitSet3.get(zzb3.zzbwr.intValue())) {
                                        zzMf = zzKl().zzMf();
                                        str3 = "Event filter already evaluated true. audience ID, filter ID";
                                        valueOf = Integer.valueOf(intValue2);
                                        obj = zzb3.zzbwr;
                                        zzMf.zze(str3, valueOf, obj);
                                        map9 = map10;
                                        map8 = map7;
                                        it3 = it4;
                                        it5 = it6;
                                        map6 = map2;
                                        arrayMap2 = map3;
                                    } else {
                                        Boolean zza3 = zza(zzb3, zzb, j);
                                        zzKl().zzMf().zzj("Event filter result", zza3 == null ? "null" : zza3);
                                        if (zza3 == null) {
                                            hashSet.add(Integer.valueOf(intValue2));
                                        } else {
                                            bitSet4.set(zzb3.zzbwr.intValue());
                                            if (zza3.booleanValue()) {
                                                bitSet3.set(zzb3.zzbwr.intValue());
                                            }
                                        }
                                        map9 = map10;
                                        map8 = map7;
                                        it3 = it4;
                                        it5 = it6;
                                        map6 = map2;
                                        arrayMap2 = map3;
                                    }
                                }
                            }
                            zzMf = zzKl().zzMb();
                            str3 = "Invalid event filter ID. appId, id";
                            valueOf = zzatx.zzfE(str);
                            obj = String.valueOf(zzb3.zzbwr);
                            zzMf.zze(str3, valueOf, obj);
                            map9 = map10;
                            map8 = map7;
                            it3 = it4;
                            it5 = it6;
                            map6 = map2;
                            arrayMap2 = map3;
                        }
                        it4 = it3;
                    }
                }
                map7 = map8;
                map3 = arrayMap2;
                i2 = i3 + 1;
                i = i4;
                Map map11 = map7;
                map = map6;
                zzbArr2 = zzbArr;
                zzgArr2 = zzgArr;
            }
        }
        map3 = arrayMap2;
        map2 = map;
        Object obj2 = 256;
        zzg[] zzgArr3 = zzgArr2;
        if (zzgArr3 != null) {
            Map arrayMap6 = new ArrayMap();
            intValue = zzgArr3.length;
            i2 = 0;
            while (i2 < intValue) {
                Map map12;
                int i5;
                zzg zzg = zzgArr3[i2];
                Map map13 = (Map) arrayMap6.get(zzg.name);
                if (map13 == null) {
                    map13 = zzKg().zzW(str2, zzg.name);
                    if (map13 == null) {
                        map13 = new ArrayMap();
                    }
                    arrayMap6.put(zzg.name, map13);
                }
                Iterator it7 = map13.keySet().iterator();
                while (it7.hasNext()) {
                    int intValue3 = ((Integer) it7.next()).intValue();
                    if (hashSet.contains(Integer.valueOf(intValue3))) {
                        zzKl().zzMf().zzj("Skipping failed audience ID", Integer.valueOf(intValue3));
                    } else {
                        arrayMap2 = map3;
                        BitSet bitSet5 = (BitSet) arrayMap2.get(Integer.valueOf(intValue3));
                        zzfy = map2;
                        bitSet = (BitSet) zzfy.get(Integer.valueOf(intValue3));
                        if (((zzauw.zza) arrayMap.get(Integer.valueOf(intValue3))) == null) {
                            zzauw.zza zza4 = new zzauw.zza();
                            arrayMap.put(Integer.valueOf(intValue3), zza4);
                            zza4.zzbwZ = Boolean.TRUE;
                            bitSet5 = new BitSet();
                            arrayMap2.put(Integer.valueOf(intValue3), bitSet5);
                            bitSet = new BitSet();
                            zzfy.put(Integer.valueOf(intValue3), bitSet);
                        }
                        Iterator it8 = ((List) map13.get(Integer.valueOf(intValue3))).iterator();
                        while (it8.hasNext()) {
                            Iterator it9;
                            Iterator it10;
                            map12 = arrayMap6;
                            zze zze = (zze) it8.next();
                            i5 = intValue;
                            Map map14 = map13;
                            if (zzKl().zzak(2)) {
                                it9 = it7;
                                it10 = it8;
                                map4 = zzfy;
                                zzKl().zzMf().zzd("Evaluating filter. audience, filter, property", Integer.valueOf(intValue3), zze.zzbwr, zze.zzbwH);
                                zzKl().zzMf().zzj("Filter definition", zzaut.zza(zze));
                            } else {
                                map4 = zzfy;
                                it9 = it7;
                                it10 = it8;
                            }
                            if (zze.zzbwr != null) {
                                obj = 256;
                                if (zze.zzbwr.intValue() <= 256) {
                                    if (bitSet5.get(zze.zzbwr.intValue())) {
                                        zzKl().zzMf().zze("Property filter already evaluated true. audience ID, filter ID", Integer.valueOf(intValue3), zze.zzbwr);
                                    } else {
                                        Boolean zza5 = zza(zze, zzg);
                                        zzKl().zzMf().zzj("Property filter result", zza5 == null ? "null" : zza5);
                                        if (zza5 == null) {
                                            hashSet.add(Integer.valueOf(intValue3));
                                        } else {
                                            bitSet.set(zze.zzbwr.intValue());
                                            if (zza5.booleanValue()) {
                                                bitSet5.set(zze.zzbwr.intValue());
                                            }
                                        }
                                    }
                                    arrayMap6 = map12;
                                    intValue = i5;
                                    map13 = map14;
                                    it7 = it9;
                                    it8 = it10;
                                    zzfy = map4;
                                }
                            } else {
                                obj = 256;
                            }
                            zzKl().zzMb().zze("Invalid property filter ID. appId, id", zzatx.zzfE(str), String.valueOf(zze.zzbwr));
                            hashSet.add(Integer.valueOf(intValue3));
                            obj2 = obj;
                            map3 = arrayMap2;
                            arrayMap6 = map12;
                            intValue = i5;
                            map13 = map14;
                            it7 = it9;
                            map2 = map4;
                            zzgArr3 = zzgArr;
                        }
                        map2 = zzfy;
                        map3 = arrayMap2;
                        zzgArr3 = zzgArr;
                        obj2 = 256;
                    }
                }
                map12 = arrayMap6;
                i5 = intValue;
                obj = obj2;
                map4 = map2;
                arrayMap2 = map3;
                i2++;
                intValue = i5;
                zzgArr3 = zzgArr;
            }
        }
        map4 = map2;
        arrayMap2 = map3;
        zzauw.zza[] zzaArr = new zzauw.zza[arrayMap2.size()];
        intValue = 0;
        for (Integer intValue4 : arrayMap2.keySet()) {
            i2 = intValue4.intValue();
            if (!hashSet.contains(Integer.valueOf(i2))) {
                zza4 = (zzauw.zza) arrayMap.get(Integer.valueOf(i2));
                if (zza4 == null) {
                    zza4 = new zzauw.zza();
                }
                intValue2 = intValue + 1;
                zzaArr[intValue] = zza4;
                zza4.zzbwn = Integer.valueOf(i2);
                zza4.zzbwX = new zzauw.zzf();
                zza4.zzbwX.zzbxK = zzaut.zza((BitSet) arrayMap2.get(Integer.valueOf(i2)));
                zza4.zzbwX.zzbxJ = zzaut.zza((BitSet) map4.get(Integer.valueOf(i2)));
                zzKg().zza(str2, i2, zza4.zzbwX);
                intValue = intValue2;
            }
        }
        return (zzauw.zza[]) Arrays.copyOf(zzaArr, intValue);
    }

    protected void zzmS() {
    }
}
