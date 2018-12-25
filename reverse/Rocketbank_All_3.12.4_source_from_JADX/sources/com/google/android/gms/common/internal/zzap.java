package com.google.android.gms.common.internal;

public class zzap {
    public static java.lang.String zza(java.lang.String r3, java.lang.String r4, android.content.Context r5, android.util.AttributeSet r6, boolean r7, boolean r8, java.lang.String r9) {
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
        if (r6 != 0) goto L_0x0004;
    L_0x0002:
        r3 = 0;
        goto L_0x0008;
    L_0x0004:
        r3 = r6.getAttributeValue(r3, r4);
    L_0x0008:
        if (r3 == 0) goto L_0x00c1;
    L_0x000a:
        r6 = "@string/";
        r6 = r3.startsWith(r6);
        if (r6 == 0) goto L_0x00c1;
    L_0x0012:
        if (r7 == 0) goto L_0x00c1;
    L_0x0014:
        r6 = 8;
        r7 = r3.substring(r6);
        r0 = r5.getPackageName();
        r1 = new android.util.TypedValue;
        r1.<init>();
        r5 = r5.getResources();	 Catch:{ NotFoundException -> 0x0052 }
        r2 = java.lang.String.valueOf(r0);	 Catch:{ NotFoundException -> 0x0052 }
        r2 = r2.length();	 Catch:{ NotFoundException -> 0x0052 }
        r6 = r6 + r2;	 Catch:{ NotFoundException -> 0x0052 }
        r2 = java.lang.String.valueOf(r7);	 Catch:{ NotFoundException -> 0x0052 }
        r2 = r2.length();	 Catch:{ NotFoundException -> 0x0052 }
        r6 = r6 + r2;	 Catch:{ NotFoundException -> 0x0052 }
        r2 = new java.lang.StringBuilder;	 Catch:{ NotFoundException -> 0x0052 }
        r2.<init>(r6);	 Catch:{ NotFoundException -> 0x0052 }
        r2.append(r0);	 Catch:{ NotFoundException -> 0x0052 }
        r6 = ":string/";	 Catch:{ NotFoundException -> 0x0052 }
        r2.append(r6);	 Catch:{ NotFoundException -> 0x0052 }
        r2.append(r7);	 Catch:{ NotFoundException -> 0x0052 }
        r6 = r2.toString();	 Catch:{ NotFoundException -> 0x0052 }
        r7 = 1;	 Catch:{ NotFoundException -> 0x0052 }
        r5.getValue(r6, r1, r7);	 Catch:{ NotFoundException -> 0x0052 }
        goto L_0x0082;
    L_0x0052:
        r5 = 30;
        r6 = java.lang.String.valueOf(r4);
        r6 = r6.length();
        r5 = r5 + r6;
        r6 = java.lang.String.valueOf(r3);
        r6 = r6.length();
        r5 = r5 + r6;
        r6 = new java.lang.StringBuilder;
        r6.<init>(r5);
        r5 = "Could not find resource for ";
        r6.append(r5);
        r6.append(r4);
        r5 = ": ";
        r6.append(r5);
        r6.append(r3);
        r5 = r6.toString();
        android.util.Log.w(r9, r5);
    L_0x0082:
        r5 = r1.string;
        if (r5 == 0) goto L_0x008d;
    L_0x0086:
        r3 = r1.string;
        r3 = r3.toString();
        goto L_0x00c1;
    L_0x008d:
        r5 = java.lang.String.valueOf(r1);
        r6 = 28;
        r7 = java.lang.String.valueOf(r4);
        r7 = r7.length();
        r6 = r6 + r7;
        r7 = java.lang.String.valueOf(r5);
        r7 = r7.length();
        r6 = r6 + r7;
        r7 = new java.lang.StringBuilder;
        r7.<init>(r6);
        r6 = "Resource ";
        r7.append(r6);
        r7.append(r4);
        r6 = " was not a string: ";
        r7.append(r6);
        r7.append(r5);
        r5 = r7.toString();
        android.util.Log.w(r9, r5);
    L_0x00c1:
        if (r8 == 0) goto L_0x00e9;
    L_0x00c3:
        if (r3 != 0) goto L_0x00e9;
    L_0x00c5:
        r5 = 33;
        r6 = java.lang.String.valueOf(r4);
        r6 = r6.length();
        r5 = r5 + r6;
        r6 = new java.lang.StringBuilder;
        r6.<init>(r5);
        r5 = "Required XML attribute \"";
        r6.append(r5);
        r6.append(r4);
        r4 = "\" missing";
        r6.append(r4);
        r4 = r6.toString();
        android.util.Log.w(r9, r4);
    L_0x00e9:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzap.zza(java.lang.String, java.lang.String, android.content.Context, android.util.AttributeSet, boolean, boolean, java.lang.String):java.lang.String");
    }
}
