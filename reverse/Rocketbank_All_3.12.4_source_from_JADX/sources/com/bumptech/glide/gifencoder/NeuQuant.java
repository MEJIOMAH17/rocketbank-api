package com.bumptech.glide.gifencoder;

final class NeuQuant {
    protected int alphadec;
    protected int[] bias = new int[256];
    protected int[] freq = new int[256];
    protected int lengthcount;
    protected int[] netindex = new int[256];
    protected int[][] network;
    protected int[] radpower = new int[32];
    protected int samplefac;
    protected byte[] thepicture;

    public NeuQuant(byte[] bArr, int i, int i2) {
        this.thepicture = bArr;
        this.lengthcount = i;
        this.samplefac = i2;
        this.network = new int[256][];
        for (i = 0; i < 256; i++) {
            this.network[i] = new int[4];
            i2 = this.network[i];
            int i3 = (i << 12) / 256;
            i2[2] = i3;
            i2[1] = i3;
            i2[0] = i3;
            this.freq[i] = 256;
            this.bias[i] = null;
        }
    }

    public final byte[] colorMap() {
        int i;
        byte[] bArr = new byte[768];
        int[] iArr = new int[256];
        for (i = 0; i < 256; i++) {
            iArr[this.network[i][3]] = i;
        }
        i = 0;
        int i2 = i;
        while (i < 256) {
            int i3 = iArr[i];
            int i4 = i2 + 1;
            bArr[i2] = (byte) this.network[i3][0];
            i2 = i4 + 1;
            bArr[i4] = (byte) this.network[i3][1];
            i4 = i2 + 1;
            bArr[i2] = (byte) this.network[i3][2];
            i++;
            i2 = i4;
        }
        return bArr;
    }

    public final void inxbuild() {
        int i = 0;
        int i2 = i;
        int i3 = i2;
        while (i < 256) {
            int i4;
            int[] iArr = this.network[i];
            int i5 = i + 1;
            int i6 = i;
            int i7 = iArr[1];
            for (i4 = i5; i4 < 256; i4++) {
                int[] iArr2 = this.network[i4];
                if (iArr2[1] < i7) {
                    i7 = iArr2[1];
                    i6 = i4;
                }
            }
            int[] iArr3 = this.network[i6];
            if (i != i6) {
                i4 = iArr3[0];
                iArr3[0] = iArr[0];
                iArr[0] = i4;
                i4 = iArr3[1];
                iArr3[1] = iArr[1];
                iArr[1] = i4;
                i6 = iArr3[2];
                iArr3[2] = iArr[2];
                iArr[2] = i6;
                i6 = iArr3[3];
                iArr3[3] = iArr[3];
                iArr[3] = i6;
            }
            if (i7 != i2) {
                this.netindex[i2] = (i3 + i) >> 1;
                while (true) {
                    i2++;
                    if (i2 >= i7) {
                        break;
                    }
                    this.netindex[i2] = i;
                }
                i3 = i;
                i2 = i7;
            }
            i = i5;
        }
        this.netindex[i2] = (i3 + 255) >> 1;
        for (i2++; i2 < 256; i2++) {
            this.netindex[i2] = 255;
        }
    }

    public final void learn() {
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
        r30 = this;
        r0 = r30;
        r1 = r0.lengthcount;
        r2 = 1509; // 0x5e5 float:2.115E-42 double:7.455E-321;
        r3 = 1;
        if (r1 >= r2) goto L_0x000b;
    L_0x0009:
        r0.samplefac = r3;
    L_0x000b:
        r1 = r0.samplefac;
        r1 = r1 - r3;
        r4 = 3;
        r1 = r1 / r4;
        r5 = 30;
        r5 = r5 + r1;
        r0.alphadec = r5;
        r1 = r0.thepicture;
        r5 = r0.lengthcount;
        r6 = r0.lengthcount;
        r7 = r0.samplefac;
        r7 = r7 * r4;
        r6 = r6 / r7;
        r7 = r6 / 100;
        r8 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        r10 = 0;
    L_0x0024:
        r11 = 32;
        r12 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        if (r10 >= r11) goto L_0x0039;
    L_0x002a:
        r11 = r0.radpower;
        r13 = r10 * r10;
        r13 = 1024 - r13;
        r13 = r13 << 8;
        r13 = r13 / r12;
        r12 = r12 * r13;
        r11[r10] = r12;
        r10 = r10 + 1;
        goto L_0x0024;
    L_0x0039:
        r10 = r0.lengthcount;
        if (r10 >= r2) goto L_0x003f;
    L_0x003d:
        r2 = r4;
        goto L_0x0059;
    L_0x003f:
        r4 = r0.lengthcount;
        r4 = r4 % 499;
        if (r4 == 0) goto L_0x0048;
    L_0x0045:
        r2 = 1497; // 0x5d9 float:2.098E-42 double:7.396E-321;
        goto L_0x0059;
    L_0x0048:
        r4 = r0.lengthcount;
        r4 = r4 % 491;
        if (r4 == 0) goto L_0x0051;
    L_0x004e:
        r2 = 1473; // 0x5c1 float:2.064E-42 double:7.28E-321;
        goto L_0x0059;
    L_0x0051:
        r4 = r0.lengthcount;
        r4 = r4 % 487;
        if (r4 == 0) goto L_0x0059;
    L_0x0057:
        r2 = 1461; // 0x5b5 float:2.047E-42 double:7.22E-321;
    L_0x0059:
        r13 = r7;
        r10 = r8;
        r8 = r12;
        r4 = 0;
        r7 = 0;
    L_0x005e:
        if (r4 >= r6) goto L_0x0213;
    L_0x0060:
        r14 = r1[r7];
        r14 = r14 & 255;
        r14 = r14 << 4;
        r15 = r7 + 1;
        r15 = r1[r15];
        r15 = r15 & 255;
        r15 = r15 << 4;
        r16 = r7 + 2;
        r12 = r1[r16];
        r12 = r12 & 255;
        r12 = r12 << 4;
        r16 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r21 = r16;
        r22 = r21;
        r3 = 0;
        r16 = -1;
        r20 = -1;
    L_0x0082:
        r9 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        r24 = 2;
        if (r3 >= r9) goto L_0x00e4;
    L_0x0088:
        r9 = r0.network;
        r9 = r9[r3];
        r23 = 0;
        r25 = r9[r23];
        r26 = r1;
        r1 = r25 - r14;
        if (r1 >= 0) goto L_0x0097;
    L_0x0096:
        r1 = -r1;
    L_0x0097:
        r18 = 1;
        r25 = r9[r18];
        r27 = r6;
        r6 = r25 - r15;
        if (r6 >= 0) goto L_0x00a2;
    L_0x00a1:
        r6 = -r6;
    L_0x00a2:
        r1 = r1 + r6;
        r6 = r9[r24];
        r6 = r6 - r12;
        if (r6 >= 0) goto L_0x00a9;
    L_0x00a8:
        r6 = -r6;
    L_0x00a9:
        r1 = r1 + r6;
        r6 = r21;
        if (r1 >= r6) goto L_0x00b3;
    L_0x00ae:
        r21 = r1;
        r16 = r3;
        goto L_0x00b5;
    L_0x00b3:
        r21 = r6;
    L_0x00b5:
        r6 = r0.bias;
        r6 = r6[r3];
        r6 = r6 >> 12;
        r1 = r1 - r6;
        r6 = r22;
        if (r1 >= r6) goto L_0x00c5;
    L_0x00c0:
        r22 = r1;
        r20 = r3;
        goto L_0x00c7;
    L_0x00c5:
        r22 = r6;
    L_0x00c7:
        r1 = r0.freq;
        r1 = r1[r3];
        r1 = r1 >> 10;
        r6 = r0.freq;
        r9 = r6[r3];
        r9 = r9 - r1;
        r6[r3] = r9;
        r6 = r0.bias;
        r9 = r6[r3];
        r1 = r1 << 10;
        r9 = r9 + r1;
        r6[r3] = r9;
        r3 = r3 + 1;
        r1 = r26;
        r6 = r27;
        goto L_0x0082;
    L_0x00e4:
        r26 = r1;
        r27 = r6;
        r1 = r0.freq;
        r3 = r1[r16];
        r3 = r3 + 64;
        r1[r16] = r3;
        r1 = r0.bias;
        r3 = r1[r16];
        r6 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;
        r3 = r3 - r6;
        r1[r16] = r3;
        r1 = r0.network;
        r1 = r1[r20];
        r3 = 0;
        r6 = r1[r3];
        r16 = r1[r3];
        r16 = r16 - r14;
        r9 = r8 * r16;
        r3 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r9 = r9 / r3;
        r6 = r6 - r9;
        r9 = 0;
        r1[r9] = r6;
        r6 = 1;
        r9 = r1[r6];
        r16 = r1[r6];
        r16 = r16 - r15;
        r6 = r8 * r16;
        r6 = r6 / r3;
        r9 = r9 - r6;
        r6 = 1;
        r1[r6] = r9;
        r6 = r1[r24];
        r9 = r1[r24];
        r9 = r9 - r12;
        r9 = r9 * r8;
        r9 = r9 / r3;
        r6 = r6 - r9;
        r1[r24] = r6;
        if (r11 == 0) goto L_0x01c9;
    L_0x0127:
        r1 = r20 - r11;
        r6 = -1;
        if (r1 >= r6) goto L_0x012d;
    L_0x012c:
        r1 = r6;
    L_0x012d:
        r9 = r20 + r11;
        r6 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        if (r9 <= r6) goto L_0x0134;
    L_0x0133:
        goto L_0x0135;
    L_0x0134:
        r6 = r9;
    L_0x0135:
        r9 = r20 + 1;
        r20 = r20 + -1;
        r3 = r20;
        r16 = 1;
    L_0x013d:
        if (r9 < r6) goto L_0x0141;
    L_0x013f:
        if (r3 <= r1) goto L_0x01c9;
    L_0x0141:
        r28 = r11;
        r11 = r0.radpower;
        r17 = r16 + 1;
        r11 = r11[r16];
        r16 = 262144; // 0x40000 float:3.67342E-40 double:1.295163E-318;
        if (r9 >= r6) goto L_0x0184;
    L_0x014d:
        r29 = r6;
        r6 = r0.network;
        r19 = r9 + 1;
        r6 = r6[r9];
        r9 = 0;
        r20 = r6[r9];	 Catch:{ Exception -> 0x0181 }
        r21 = r6[r9];	 Catch:{ Exception -> 0x0181 }
        r21 = r21 - r14;	 Catch:{ Exception -> 0x0181 }
        r21 = r21 * r11;	 Catch:{ Exception -> 0x0181 }
        r21 = r21 / r16;	 Catch:{ Exception -> 0x0181 }
        r20 = r20 - r21;	 Catch:{ Exception -> 0x0181 }
        r6[r9] = r20;	 Catch:{ Exception -> 0x0181 }
        r9 = 1;	 Catch:{ Exception -> 0x0181 }
        r18 = r6[r9];	 Catch:{ Exception -> 0x0181 }
        r20 = r6[r9];	 Catch:{ Exception -> 0x0181 }
        r20 = r20 - r15;	 Catch:{ Exception -> 0x0181 }
        r20 = r20 * r11;	 Catch:{ Exception -> 0x0181 }
        r20 = r20 / r16;	 Catch:{ Exception -> 0x0181 }
        r18 = r18 - r20;	 Catch:{ Exception -> 0x0181 }
        r6[r9] = r18;	 Catch:{ Exception -> 0x0181 }
        r9 = r6[r24];	 Catch:{ Exception -> 0x0181 }
        r20 = r6[r24];	 Catch:{ Exception -> 0x0181 }
        r20 = r20 - r12;	 Catch:{ Exception -> 0x0181 }
        r20 = r20 * r11;	 Catch:{ Exception -> 0x0181 }
        r20 = r20 / r16;	 Catch:{ Exception -> 0x0181 }
        r9 = r9 - r20;	 Catch:{ Exception -> 0x0181 }
        r6[r24] = r9;	 Catch:{ Exception -> 0x0181 }
    L_0x0181:
        r9 = r19;
        goto L_0x0186;
    L_0x0184:
        r29 = r6;
    L_0x0186:
        if (r3 <= r1) goto L_0x01bf;
    L_0x0188:
        r6 = r0.network;
        r19 = r3 + -1;
        r3 = r6[r3];
        r23 = 0;
        r6 = r3[r23];	 Catch:{ Exception -> 0x01ba }
        r20 = r3[r23];	 Catch:{ Exception -> 0x01ba }
        r20 = r20 - r14;	 Catch:{ Exception -> 0x01ba }
        r20 = r20 * r11;	 Catch:{ Exception -> 0x01ba }
        r20 = r20 / r16;	 Catch:{ Exception -> 0x01ba }
        r6 = r6 - r20;	 Catch:{ Exception -> 0x01ba }
        r3[r23] = r6;	 Catch:{ Exception -> 0x01ba }
        r6 = 1;	 Catch:{ Exception -> 0x01ba }
        r18 = r3[r6];	 Catch:{ Exception -> 0x01ba }
        r20 = r3[r6];	 Catch:{ Exception -> 0x01ba }
        r20 = r20 - r15;	 Catch:{ Exception -> 0x01ba }
        r20 = r20 * r11;	 Catch:{ Exception -> 0x01ba }
        r20 = r20 / r16;	 Catch:{ Exception -> 0x01ba }
        r18 = r18 - r20;	 Catch:{ Exception -> 0x01ba }
        r3[r6] = r18;	 Catch:{ Exception -> 0x01ba }
        r6 = r3[r24];	 Catch:{ Exception -> 0x01ba }
        r20 = r3[r24];	 Catch:{ Exception -> 0x01ba }
        r20 = r20 - r12;	 Catch:{ Exception -> 0x01ba }
        r11 = r11 * r20;	 Catch:{ Exception -> 0x01ba }
        r11 = r11 / r16;	 Catch:{ Exception -> 0x01ba }
        r6 = r6 - r11;	 Catch:{ Exception -> 0x01ba }
        r3[r24] = r6;	 Catch:{ Exception -> 0x01ba }
    L_0x01ba:
        r16 = r17;
        r3 = r19;
        goto L_0x01c3;
    L_0x01bf:
        r23 = 0;
        r16 = r17;
    L_0x01c3:
        r11 = r28;
        r6 = r29;
        goto L_0x013d;
    L_0x01c9:
        r28 = r11;
        r23 = 0;
        r7 = r7 + r2;
        if (r7 < r5) goto L_0x01d3;
    L_0x01d0:
        r1 = r0.lengthcount;
        r7 = r7 - r1;
    L_0x01d3:
        r4 = r4 + 1;
        if (r13 != 0) goto L_0x01d8;
    L_0x01d7:
        r13 = 1;
    L_0x01d8:
        r1 = r4 % r13;
        if (r1 != 0) goto L_0x0208;
    L_0x01dc:
        r1 = r0.alphadec;
        r1 = r8 / r1;
        r8 = r8 - r1;
        r1 = r10 / 30;
        r10 = r10 - r1;
        r9 = r10 >> 6;
        r1 = 1;
        if (r9 > r1) goto L_0x01ec;
    L_0x01e9:
        r11 = r23;
        goto L_0x01ed;
    L_0x01ec:
        r11 = r9;
    L_0x01ed:
        r3 = r23;
    L_0x01ef:
        if (r3 >= r11) goto L_0x0202;
    L_0x01f1:
        r6 = r0.radpower;
        r9 = r11 * r11;
        r12 = r3 * r3;
        r12 = r9 - r12;
        r12 = r12 << 8;
        r12 = r12 / r9;
        r12 = r12 * r8;
        r6[r3] = r12;
        r3 = r3 + 1;
        goto L_0x01ef;
    L_0x0202:
        r3 = r1;
        r1 = r26;
        r6 = r27;
        goto L_0x020f;
    L_0x0208:
        r1 = r26;
        r6 = r27;
        r11 = r28;
        r3 = 1;
    L_0x020f:
        r12 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        goto L_0x005e;
    L_0x0213:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifencoder.NeuQuant.learn():void");
    }

    public final int map(int i, int i2, int i3) {
        int i4 = this.netindex[i2];
        int i5 = i4 - 1;
        int i6 = 1000;
        int i7 = -1;
        while (true) {
            if (i4 >= 256) {
                if (i5 < 0) {
                    return i7;
                }
            }
            if (i4 < 256) {
                int[] iArr = this.network[i4];
                int i8 = iArr[1] - i2;
                if (i8 >= i6) {
                    i4 = 256;
                } else {
                    i4++;
                    if (i8 < 0) {
                        i8 = -i8;
                    }
                    int i9 = iArr[0] - i;
                    if (i9 < 0) {
                        i9 = -i9;
                    }
                    i8 += i9;
                    if (i8 < i6) {
                        i9 = iArr[2] - i3;
                        if (i9 < 0) {
                            i9 = -i9;
                        }
                        i8 += i9;
                        if (i8 < i6) {
                            i7 = iArr[3];
                            i6 = i8;
                        }
                    }
                }
            }
            if (i5 >= 0) {
                int[] iArr2 = this.network[i5];
                int i10 = i2 - iArr2[1];
                if (i10 >= i6) {
                    i5 = -1;
                } else {
                    i5--;
                    if (i10 < 0) {
                        i10 = -i10;
                    }
                    int i11 = iArr2[0] - i;
                    if (i11 < 0) {
                        i11 = -i11;
                    }
                    i10 += i11;
                    if (i10 < i6) {
                        int i12 = iArr2[2] - i3;
                        if (i12 < 0) {
                            i12 = -i12;
                        }
                        i12 += i10;
                        if (i12 < i6) {
                            i7 = iArr2[3];
                            i6 = i12;
                        }
                    }
                }
            }
        }
    }

    public final void unbiasnet() {
        for (int i = 0; i < 256; i++) {
            int[] iArr = this.network[i];
            iArr[0] = iArr[0] >> 4;
            iArr = this.network[i];
            iArr[1] = iArr[1] >> 4;
            iArr = this.network[i];
            iArr[2] = iArr[2] >> 4;
            this.network[i][3] = i;
        }
    }
}
