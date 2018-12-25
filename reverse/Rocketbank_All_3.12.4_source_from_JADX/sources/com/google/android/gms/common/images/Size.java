package com.google.android.gms.common.images;

public final class Size {
    private final int zzrC;
    private final int zzrD;

    public Size(int i, int i2) {
        this.zzrC = i;
        this.zzrD = i2;
    }

    public static com.google.android.gms.common.images.Size parseSize(java.lang.String r3) throws java.lang.NumberFormatException {
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
        if (r3 != 0) goto L_0x000a;
    L_0x0002:
        r3 = new java.lang.IllegalArgumentException;
        r0 = "string must not be null";
        r3.<init>(r0);
        throw r3;
    L_0x000a:
        r0 = 42;
        r0 = r3.indexOf(r0);
        if (r0 >= 0) goto L_0x0018;
    L_0x0012:
        r0 = 120; // 0x78 float:1.68E-43 double:5.93E-322;
        r0 = r3.indexOf(r0);
    L_0x0018:
        if (r0 >= 0) goto L_0x001f;
    L_0x001a:
        r3 = zzdi(r3);
        throw r3;
    L_0x001f:
        r1 = new com.google.android.gms.common.images.Size;	 Catch:{ NumberFormatException -> 0x0038 }
        r2 = 0;	 Catch:{ NumberFormatException -> 0x0038 }
        r2 = r3.substring(r2, r0);	 Catch:{ NumberFormatException -> 0x0038 }
        r2 = java.lang.Integer.parseInt(r2);	 Catch:{ NumberFormatException -> 0x0038 }
        r0 = r0 + 1;	 Catch:{ NumberFormatException -> 0x0038 }
        r0 = r3.substring(r0);	 Catch:{ NumberFormatException -> 0x0038 }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ NumberFormatException -> 0x0038 }
        r1.<init>(r2, r0);	 Catch:{ NumberFormatException -> 0x0038 }
        return r1;
    L_0x0038:
        r3 = zzdi(r3);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.images.Size.parseSize(java.lang.String):com.google.android.gms.common.images.Size");
    }

    private static NumberFormatException zzdi(String str) {
        StringBuilder stringBuilder = new StringBuilder(16 + String.valueOf(str).length());
        stringBuilder.append("Invalid Size: \"");
        stringBuilder.append(str);
        stringBuilder.append("\"");
        throw new NumberFormatException(stringBuilder.toString());
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            return this.zzrC == size.zzrC && this.zzrD == size.zzrD;
        }
    }

    public final int getHeight() {
        return this.zzrD;
    }

    public final int getWidth() {
        return this.zzrC;
    }

    public final int hashCode() {
        return this.zzrD ^ ((this.zzrC << 16) | (this.zzrC >>> 16));
    }

    public final String toString() {
        int i = this.zzrC;
        int i2 = this.zzrD;
        StringBuilder stringBuilder = new StringBuilder(23);
        stringBuilder.append(i);
        stringBuilder.append("x");
        stringBuilder.append(i2);
        return stringBuilder.toString();
    }
}
