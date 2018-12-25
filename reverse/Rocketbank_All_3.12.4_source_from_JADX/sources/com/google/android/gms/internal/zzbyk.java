package com.google.android.gms.internal;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import java.lang.reflect.InvocationTargetException;
import kotlin.text.Typography;

public final class zzbyk {
    private static void zza(java.lang.String r11, java.lang.Object r12, java.lang.StringBuffer r13, java.lang.StringBuffer r14) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
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
        if (r12 == 0) goto L_0x0141;
    L_0x0002:
        r0 = r12 instanceof com.google.android.gms.internal.zzbyj;
        if (r0 == 0) goto L_0x0108;
    L_0x0006:
        r0 = r13.length();
        if (r11 == 0) goto L_0x0020;
    L_0x000c:
        r14.append(r13);
        r1 = zzkv(r11);
        r14.append(r1);
        r1 = " <\n";
        r14.append(r1);
        r1 = "  ";
        r13.append(r1);
    L_0x0020:
        r1 = r12.getClass();
        r2 = r1.getFields();
        r3 = 0;
        r4 = r2.length;
        r5 = r3;
    L_0x002b:
        if (r5 >= r4) goto L_0x008b;
    L_0x002d:
        r6 = r2[r5];
        r7 = r6.getModifiers();
        r8 = r6.getName();
        r9 = "cachedSize";
        r9 = r9.equals(r8);
        if (r9 != 0) goto L_0x0088;
    L_0x003f:
        r9 = r7 & 1;
        r10 = 1;
        if (r9 != r10) goto L_0x0088;
    L_0x0044:
        r7 = r7 & 8;
        r9 = 8;
        if (r7 == r9) goto L_0x0088;
    L_0x004a:
        r7 = "_";
        r7 = r8.startsWith(r7);
        if (r7 != 0) goto L_0x0088;
    L_0x0052:
        r7 = "_";
        r7 = r8.endsWith(r7);
        if (r7 != 0) goto L_0x0088;
    L_0x005a:
        r7 = r6.getType();
        r6 = r6.get(r12);
        r9 = r7.isArray();
        if (r9 == 0) goto L_0x0085;
    L_0x0068:
        r7 = r7.getComponentType();
        r9 = java.lang.Byte.TYPE;
        if (r7 == r9) goto L_0x0085;
    L_0x0070:
        if (r6 != 0) goto L_0x0074;
    L_0x0072:
        r7 = r3;
        goto L_0x0078;
    L_0x0074:
        r7 = java.lang.reflect.Array.getLength(r6);
    L_0x0078:
        r9 = r3;
    L_0x0079:
        if (r9 >= r7) goto L_0x0088;
    L_0x007b:
        r10 = java.lang.reflect.Array.get(r6, r9);
        zza(r8, r10, r13, r14);
        r9 = r9 + 1;
        goto L_0x0079;
    L_0x0085:
        zza(r8, r6, r13, r14);
    L_0x0088:
        r5 = r5 + 1;
        goto L_0x002b;
    L_0x008b:
        r2 = r1.getMethods();
        r4 = r2.length;
        r5 = r3;
    L_0x0091:
        if (r5 >= r4) goto L_0x00fa;
    L_0x0093:
        r6 = r2[r5];
        r6 = r6.getName();
        r7 = "set";
        r7 = r6.startsWith(r7);
        if (r7 == 0) goto L_0x00f7;
    L_0x00a1:
        r7 = 3;
        r6 = r6.substring(r7);
        r7 = "has";	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r8 = java.lang.String.valueOf(r6);	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r9 = r8.length();	 Catch:{ NoSuchMethodException -> 0x00f7 }
        if (r9 == 0) goto L_0x00b7;	 Catch:{ NoSuchMethodException -> 0x00f7 }
    L_0x00b2:
        r7 = r7.concat(r8);	 Catch:{ NoSuchMethodException -> 0x00f7 }
        goto L_0x00bd;	 Catch:{ NoSuchMethodException -> 0x00f7 }
    L_0x00b7:
        r8 = new java.lang.String;	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r8.<init>(r7);	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r7 = r8;	 Catch:{ NoSuchMethodException -> 0x00f7 }
    L_0x00bd:
        r8 = new java.lang.Class[r3];	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r7 = r1.getMethod(r7, r8);	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r8 = new java.lang.Object[r3];
        r7 = r7.invoke(r12, r8);
        r7 = (java.lang.Boolean) r7;
        r7 = r7.booleanValue();
        if (r7 == 0) goto L_0x00f7;
    L_0x00d1:
        r7 = "get";	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r8 = java.lang.String.valueOf(r6);	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r9 = r8.length();	 Catch:{ NoSuchMethodException -> 0x00f7 }
        if (r9 == 0) goto L_0x00e2;	 Catch:{ NoSuchMethodException -> 0x00f7 }
    L_0x00dd:
        r7 = r7.concat(r8);	 Catch:{ NoSuchMethodException -> 0x00f7 }
        goto L_0x00e8;	 Catch:{ NoSuchMethodException -> 0x00f7 }
    L_0x00e2:
        r8 = new java.lang.String;	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r8.<init>(r7);	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r7 = r8;	 Catch:{ NoSuchMethodException -> 0x00f7 }
    L_0x00e8:
        r8 = new java.lang.Class[r3];	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r7 = r1.getMethod(r7, r8);	 Catch:{ NoSuchMethodException -> 0x00f7 }
        r8 = new java.lang.Object[r3];
        r7 = r7.invoke(r12, r8);
        zza(r6, r7, r13, r14);
    L_0x00f7:
        r5 = r5 + 1;
        goto L_0x0091;
    L_0x00fa:
        if (r11 == 0) goto L_0x0107;
    L_0x00fc:
        r13.setLength(r0);
        r14.append(r13);
        r11 = ">\n";
        r14.append(r11);
    L_0x0107:
        return;
    L_0x0108:
        r11 = zzkv(r11);
        r14.append(r13);
        r14.append(r11);
        r11 = ": ";
        r14.append(r11);
        r11 = r12 instanceof java.lang.String;
        if (r11 == 0) goto L_0x012f;
    L_0x011b:
        r12 = (java.lang.String) r12;
        r11 = zzcF(r12);
        r12 = "\"";
        r14.append(r12);
        r14.append(r11);
        r11 = "\"";
        r14.append(r11);
        goto L_0x013c;
    L_0x012f:
        r11 = r12 instanceof byte[];
        if (r11 == 0) goto L_0x0139;
    L_0x0133:
        r12 = (byte[]) r12;
        zza(r12, r14);
        goto L_0x013c;
    L_0x0139:
        r14.append(r12);
    L_0x013c:
        r11 = "\n";
        r14.append(r11);
    L_0x0141:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbyk.zza(java.lang.String, java.lang.Object, java.lang.StringBuffer, java.lang.StringBuffer):void");
    }

    private static void zza(byte[] bArr, StringBuffer stringBuffer) {
        if (bArr == null) {
            stringBuffer.append("\"\"");
            return;
        }
        stringBuffer.append(Typography.quote);
        for (byte b : bArr) {
            int i = b & 255;
            if (i != 92) {
                if (i != 34) {
                    if (i < 32 || i >= 127) {
                        stringBuffer.append(String.format("\\%03o", new Object[]{Integer.valueOf(i)}));
                    } else {
                        stringBuffer.append((char) i);
                    }
                }
            }
            stringBuffer.append('\\');
            stringBuffer.append((char) i);
        }
        stringBuffer.append(Typography.quote);
    }

    private static String zzcF(String str) {
        if (!str.startsWith("http") && str.length() > Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            str = String.valueOf(str.substring(0, Callback.DEFAULT_DRAG_ANIMATION_DURATION)).concat("[...]");
        }
        return zzdy(str);
    }

    private static String zzdy(String str) {
        int length = str.length();
        StringBuilder stringBuilder = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < ' ' || charAt > '~' || charAt == Typography.quote || charAt == '\'') {
                stringBuilder.append(String.format("\\u%04x", new Object[]{Integer.valueOf(charAt)}));
            } else {
                stringBuilder.append(charAt);
            }
        }
        return stringBuilder.toString();
    }

    public static <T extends zzbyj> String zzg(T t) {
        String str;
        String valueOf;
        if (t == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            zza(null, t, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e) {
            str = "Error printing proto: ";
            valueOf = String.valueOf(e.getMessage());
            return valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
        } catch (InvocationTargetException e2) {
            str = "Error printing proto: ";
            valueOf = String.valueOf(e2.getMessage());
            return valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
        }
    }

    private static String zzkv(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (i != 0) {
                if (Character.isUpperCase(charAt)) {
                    stringBuffer.append('_');
                }
                stringBuffer.append(charAt);
            }
            charAt = Character.toLowerCase(charAt);
            stringBuffer.append(charAt);
        }
        return stringBuffer.toString();
    }
}
