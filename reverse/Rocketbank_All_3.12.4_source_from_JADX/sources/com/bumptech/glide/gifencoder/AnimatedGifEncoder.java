package com.bumptech.glide.gifencoder;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.io.IOException;
import java.io.OutputStream;

public final class AnimatedGifEncoder {
    private boolean closeStream = false;
    private int colorDepth;
    private byte[] colorTab;
    private int delay = 0;
    private int dispose = -1;
    private boolean firstFrame = true;
    private boolean hasTransparentPixels;
    private int height;
    private Bitmap image;
    private byte[] indexedPixels;
    private OutputStream out;
    private int palSize = 7;
    private byte[] pixels;
    private int repeat = -1;
    private int sample = 10;
    private boolean sizeSet = false;
    private boolean started = false;
    private int transIndex;
    private Integer transparent = null;
    private boolean[] usedEntry = new boolean[256];
    private int width;

    public final void setDelay(int i) {
        this.delay = Math.round(((float) i) / 1092616192);
    }

    public final boolean addFrame(android.graphics.Bitmap r13) {
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
        r12 = this;
        r0 = 0;
        if (r13 == 0) goto L_0x0203;
    L_0x0003:
        r1 = r12.started;
        if (r1 != 0) goto L_0x0009;
    L_0x0007:
        goto L_0x0203;
    L_0x0009:
        r1 = 1;
        r2 = r12.sizeSet;	 Catch:{ IOException -> 0x0202 }
        r3 = 240; // 0xf0 float:3.36E-43 double:1.186E-321;	 Catch:{ IOException -> 0x0202 }
        if (r2 != 0) goto L_0x0034;	 Catch:{ IOException -> 0x0202 }
    L_0x0010:
        r2 = r13.getWidth();	 Catch:{ IOException -> 0x0202 }
        r4 = r13.getHeight();	 Catch:{ IOException -> 0x0202 }
        r5 = r12.started;	 Catch:{ IOException -> 0x0202 }
        if (r5 == 0) goto L_0x0020;	 Catch:{ IOException -> 0x0202 }
    L_0x001c:
        r5 = r12.firstFrame;	 Catch:{ IOException -> 0x0202 }
        if (r5 == 0) goto L_0x0034;	 Catch:{ IOException -> 0x0202 }
    L_0x0020:
        r12.width = r2;	 Catch:{ IOException -> 0x0202 }
        r12.height = r4;	 Catch:{ IOException -> 0x0202 }
        r2 = r12.width;	 Catch:{ IOException -> 0x0202 }
        if (r2 > 0) goto L_0x002c;	 Catch:{ IOException -> 0x0202 }
    L_0x0028:
        r2 = 320; // 0x140 float:4.48E-43 double:1.58E-321;	 Catch:{ IOException -> 0x0202 }
        r12.width = r2;	 Catch:{ IOException -> 0x0202 }
    L_0x002c:
        r2 = r12.height;	 Catch:{ IOException -> 0x0202 }
        if (r2 > 0) goto L_0x0032;	 Catch:{ IOException -> 0x0202 }
    L_0x0030:
        r12.height = r3;	 Catch:{ IOException -> 0x0202 }
    L_0x0032:
        r12.sizeSet = r1;	 Catch:{ IOException -> 0x0202 }
    L_0x0034:
        r12.image = r13;	 Catch:{ IOException -> 0x0202 }
        r13 = r12.image;	 Catch:{ IOException -> 0x0202 }
        r10 = r13.getWidth();	 Catch:{ IOException -> 0x0202 }
        r13 = r12.image;	 Catch:{ IOException -> 0x0202 }
        r11 = r13.getHeight();	 Catch:{ IOException -> 0x0202 }
        r13 = r12.width;	 Catch:{ IOException -> 0x0202 }
        if (r10 != r13) goto L_0x004a;	 Catch:{ IOException -> 0x0202 }
    L_0x0046:
        r13 = r12.height;	 Catch:{ IOException -> 0x0202 }
        if (r11 == r13) goto L_0x0060;	 Catch:{ IOException -> 0x0202 }
    L_0x004a:
        r13 = r12.width;	 Catch:{ IOException -> 0x0202 }
        r2 = r12.height;	 Catch:{ IOException -> 0x0202 }
        r4 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ IOException -> 0x0202 }
        r13 = android.graphics.Bitmap.createBitmap(r13, r2, r4);	 Catch:{ IOException -> 0x0202 }
        r2 = new android.graphics.Canvas;	 Catch:{ IOException -> 0x0202 }
        r2.<init>(r13);	 Catch:{ IOException -> 0x0202 }
        r4 = 0;	 Catch:{ IOException -> 0x0202 }
        r5 = 0;	 Catch:{ IOException -> 0x0202 }
        r2.drawBitmap(r13, r5, r5, r4);	 Catch:{ IOException -> 0x0202 }
        r12.image = r13;	 Catch:{ IOException -> 0x0202 }
    L_0x0060:
        r13 = r10 * r11;	 Catch:{ IOException -> 0x0202 }
        r13 = new int[r13];	 Catch:{ IOException -> 0x0202 }
        r4 = r12.image;	 Catch:{ IOException -> 0x0202 }
        r6 = 0;	 Catch:{ IOException -> 0x0202 }
        r8 = 0;	 Catch:{ IOException -> 0x0202 }
        r9 = 0;	 Catch:{ IOException -> 0x0202 }
        r5 = r13;	 Catch:{ IOException -> 0x0202 }
        r7 = r10;	 Catch:{ IOException -> 0x0202 }
        r4.getPixels(r5, r6, r7, r8, r9, r10, r11);	 Catch:{ IOException -> 0x0202 }
        r2 = r13.length;	 Catch:{ IOException -> 0x0202 }
        r4 = 3;	 Catch:{ IOException -> 0x0202 }
        r2 = r2 * r4;	 Catch:{ IOException -> 0x0202 }
        r2 = new byte[r2];	 Catch:{ IOException -> 0x0202 }
        r12.pixels = r2;	 Catch:{ IOException -> 0x0202 }
        r12.hasTransparentPixels = r0;	 Catch:{ IOException -> 0x0202 }
        r2 = r13.length;	 Catch:{ IOException -> 0x0202 }
        r5 = r0;	 Catch:{ IOException -> 0x0202 }
        r6 = r5;	 Catch:{ IOException -> 0x0202 }
        r7 = r6;	 Catch:{ IOException -> 0x0202 }
    L_0x007b:
        if (r5 >= r2) goto L_0x00a0;	 Catch:{ IOException -> 0x0202 }
    L_0x007d:
        r8 = r13[r5];	 Catch:{ IOException -> 0x0202 }
        if (r8 != 0) goto L_0x0083;	 Catch:{ IOException -> 0x0202 }
    L_0x0081:
        r6 = r6 + 1;	 Catch:{ IOException -> 0x0202 }
    L_0x0083:
        r9 = r12.pixels;	 Catch:{ IOException -> 0x0202 }
        r10 = r7 + 1;	 Catch:{ IOException -> 0x0202 }
        r11 = (byte) r8;	 Catch:{ IOException -> 0x0202 }
        r9[r7] = r11;	 Catch:{ IOException -> 0x0202 }
        r7 = r12.pixels;	 Catch:{ IOException -> 0x0202 }
        r9 = r10 + 1;	 Catch:{ IOException -> 0x0202 }
        r11 = r8 >> 8;	 Catch:{ IOException -> 0x0202 }
        r11 = (byte) r11;	 Catch:{ IOException -> 0x0202 }
        r7[r10] = r11;	 Catch:{ IOException -> 0x0202 }
        r7 = r12.pixels;	 Catch:{ IOException -> 0x0202 }
        r10 = r9 + 1;	 Catch:{ IOException -> 0x0202 }
        r8 = r8 >> 16;	 Catch:{ IOException -> 0x0202 }
        r8 = (byte) r8;	 Catch:{ IOException -> 0x0202 }
        r7[r9] = r8;	 Catch:{ IOException -> 0x0202 }
        r5 = r5 + 1;	 Catch:{ IOException -> 0x0202 }
        r7 = r10;	 Catch:{ IOException -> 0x0202 }
        goto L_0x007b;	 Catch:{ IOException -> 0x0202 }
    L_0x00a0:
        r6 = r6 * 100;	 Catch:{ IOException -> 0x0202 }
        r5 = (double) r6;	 Catch:{ IOException -> 0x0202 }
        r7 = (double) r2;	 Catch:{ IOException -> 0x0202 }
        r5 = r5 / r7;	 Catch:{ IOException -> 0x0202 }
        r7 = 4616189618054758400; // 0x4010000000000000 float:0.0 double:4.0;	 Catch:{ IOException -> 0x0202 }
        r13 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));	 Catch:{ IOException -> 0x0202 }
        if (r13 <= 0) goto L_0x00ad;	 Catch:{ IOException -> 0x0202 }
    L_0x00ab:
        r13 = r1;	 Catch:{ IOException -> 0x0202 }
        goto L_0x00ae;	 Catch:{ IOException -> 0x0202 }
    L_0x00ad:
        r13 = r0;	 Catch:{ IOException -> 0x0202 }
    L_0x00ae:
        r12.hasTransparentPixels = r13;	 Catch:{ IOException -> 0x0202 }
        r13 = "AnimatedGifEncoder";	 Catch:{ IOException -> 0x0202 }
        r13 = android.util.Log.isLoggable(r13, r4);	 Catch:{ IOException -> 0x0202 }
        if (r13 == 0) goto L_0x00d0;	 Catch:{ IOException -> 0x0202 }
    L_0x00b8:
        r13 = "AnimatedGifEncoder";	 Catch:{ IOException -> 0x0202 }
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0202 }
        r7 = "got pixels for frame with ";	 Catch:{ IOException -> 0x0202 }
        r2.<init>(r7);	 Catch:{ IOException -> 0x0202 }
        r2.append(r5);	 Catch:{ IOException -> 0x0202 }
        r5 = "% transparent pixels";	 Catch:{ IOException -> 0x0202 }
        r2.append(r5);	 Catch:{ IOException -> 0x0202 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x0202 }
        android.util.Log.d(r13, r2);	 Catch:{ IOException -> 0x0202 }
    L_0x00d0:
        r12.analyzePixels();	 Catch:{ IOException -> 0x0202 }
        r13 = r12.firstFrame;	 Catch:{ IOException -> 0x0202 }
        r2 = 33;	 Catch:{ IOException -> 0x0202 }
        r5 = 255; // 0xff float:3.57E-43 double:1.26E-321;	 Catch:{ IOException -> 0x0202 }
        if (r13 == 0) goto L_0x014c;	 Catch:{ IOException -> 0x0202 }
    L_0x00db:
        r13 = r12.width;	 Catch:{ IOException -> 0x0202 }
        r6 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r7 = r13 & 255;	 Catch:{ IOException -> 0x0202 }
        r6.write(r7);	 Catch:{ IOException -> 0x0202 }
        r6 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 >> 8;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 & r5;	 Catch:{ IOException -> 0x0202 }
        r6.write(r13);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.height;	 Catch:{ IOException -> 0x0202 }
        r6 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r7 = r13 & 255;	 Catch:{ IOException -> 0x0202 }
        r6.write(r7);	 Catch:{ IOException -> 0x0202 }
        r6 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 >> 8;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 & r5;	 Catch:{ IOException -> 0x0202 }
        r6.write(r13);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r6 = r12.palSize;	 Catch:{ IOException -> 0x0202 }
        r3 = r3 | r6;	 Catch:{ IOException -> 0x0202 }
        r13.write(r3);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r0);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r0);	 Catch:{ IOException -> 0x0202 }
        r12.writePalette();	 Catch:{ IOException -> 0x0202 }
        r13 = r12.repeat;	 Catch:{ IOException -> 0x0202 }
        if (r13 < 0) goto L_0x014c;	 Catch:{ IOException -> 0x0202 }
    L_0x0116:
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r2);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r5);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r3 = 11;	 Catch:{ IOException -> 0x0202 }
        r13.write(r3);	 Catch:{ IOException -> 0x0202 }
        r13 = "NETSCAPE2.0";	 Catch:{ IOException -> 0x0202 }
        r12.writeString(r13);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r4);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r1);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.repeat;	 Catch:{ IOException -> 0x0202 }
        r3 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r4 = r13 & 255;	 Catch:{ IOException -> 0x0202 }
        r3.write(r4);	 Catch:{ IOException -> 0x0202 }
        r3 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 >> 8;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 & r5;	 Catch:{ IOException -> 0x0202 }
        r3.write(r13);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r0);	 Catch:{ IOException -> 0x0202 }
    L_0x014c:
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r2);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r2 = 249; // 0xf9 float:3.49E-43 double:1.23E-321;	 Catch:{ IOException -> 0x0202 }
        r13.write(r2);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r2 = 4;	 Catch:{ IOException -> 0x0202 }
        r13.write(r2);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.hasTransparentPixels;	 Catch:{ IOException -> 0x0202 }
        r2 = 2;	 Catch:{ IOException -> 0x0202 }
        if (r13 != 0) goto L_0x0166;	 Catch:{ IOException -> 0x0202 }
    L_0x0163:
        r13 = r0;	 Catch:{ IOException -> 0x0202 }
        r3 = r13;	 Catch:{ IOException -> 0x0202 }
        goto L_0x0168;	 Catch:{ IOException -> 0x0202 }
    L_0x0166:
        r3 = r1;	 Catch:{ IOException -> 0x0202 }
        r13 = r2;	 Catch:{ IOException -> 0x0202 }
    L_0x0168:
        r4 = r12.dispose;	 Catch:{ IOException -> 0x0202 }
        if (r4 < 0) goto L_0x0170;	 Catch:{ IOException -> 0x0202 }
    L_0x016c:
        r13 = r12.dispose;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 & 7;	 Catch:{ IOException -> 0x0202 }
    L_0x0170:
        r13 = r13 << r2;	 Catch:{ IOException -> 0x0202 }
        r2 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 | r0;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 | r3;	 Catch:{ IOException -> 0x0202 }
        r2.write(r13);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.delay;	 Catch:{ IOException -> 0x0202 }
        r2 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r3 = r13 & 255;	 Catch:{ IOException -> 0x0202 }
        r2.write(r3);	 Catch:{ IOException -> 0x0202 }
        r2 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 >> 8;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 & r5;	 Catch:{ IOException -> 0x0202 }
        r2.write(r13);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r2 = r12.transIndex;	 Catch:{ IOException -> 0x0202 }
        r13.write(r2);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r0);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r2 = 44;	 Catch:{ IOException -> 0x0202 }
        r13.write(r2);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r0);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r0);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r0);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r0);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.width;	 Catch:{ IOException -> 0x0202 }
        r2 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r3 = r13 & 255;	 Catch:{ IOException -> 0x0202 }
        r2.write(r3);	 Catch:{ IOException -> 0x0202 }
        r2 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 >> 8;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 & r5;	 Catch:{ IOException -> 0x0202 }
        r2.write(r13);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.height;	 Catch:{ IOException -> 0x0202 }
        r2 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r3 = r13 & 255;	 Catch:{ IOException -> 0x0202 }
        r2.write(r3);	 Catch:{ IOException -> 0x0202 }
        r2 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 >> 8;	 Catch:{ IOException -> 0x0202 }
        r13 = r13 & r5;	 Catch:{ IOException -> 0x0202 }
        r2.write(r13);	 Catch:{ IOException -> 0x0202 }
        r13 = r12.firstFrame;	 Catch:{ IOException -> 0x0202 }
        if (r13 == 0) goto L_0x01dc;	 Catch:{ IOException -> 0x0202 }
    L_0x01d6:
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.write(r0);	 Catch:{ IOException -> 0x0202 }
        goto L_0x01e6;	 Catch:{ IOException -> 0x0202 }
    L_0x01dc:
        r13 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r2 = 128; // 0x80 float:1.794E-43 double:6.32E-322;	 Catch:{ IOException -> 0x0202 }
        r3 = r12.palSize;	 Catch:{ IOException -> 0x0202 }
        r2 = r2 | r3;	 Catch:{ IOException -> 0x0202 }
        r13.write(r2);	 Catch:{ IOException -> 0x0202 }
    L_0x01e6:
        r13 = r12.firstFrame;	 Catch:{ IOException -> 0x0202 }
        if (r13 != 0) goto L_0x01ed;	 Catch:{ IOException -> 0x0202 }
    L_0x01ea:
        r12.writePalette();	 Catch:{ IOException -> 0x0202 }
    L_0x01ed:
        r13 = new com.bumptech.glide.gifencoder.LZWEncoder;	 Catch:{ IOException -> 0x0202 }
        r2 = r12.width;	 Catch:{ IOException -> 0x0202 }
        r3 = r12.height;	 Catch:{ IOException -> 0x0202 }
        r4 = r12.indexedPixels;	 Catch:{ IOException -> 0x0202 }
        r5 = r12.colorDepth;	 Catch:{ IOException -> 0x0202 }
        r13.<init>(r2, r3, r4, r5);	 Catch:{ IOException -> 0x0202 }
        r2 = r12.out;	 Catch:{ IOException -> 0x0202 }
        r13.encode(r2);	 Catch:{ IOException -> 0x0202 }
        r12.firstFrame = r0;	 Catch:{ IOException -> 0x0202 }
        r0 = r1;
    L_0x0202:
        return r0;
    L_0x0203:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifencoder.AnimatedGifEncoder.addFrame(android.graphics.Bitmap):boolean");
    }

    public final boolean finish() {
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
        r4 = this;
        r0 = r4.started;
        r1 = 0;
        if (r0 != 0) goto L_0x0006;
    L_0x0005:
        return r1;
    L_0x0006:
        r4.started = r1;
        r0 = 1;
        r2 = r4.out;	 Catch:{ IOException -> 0x0017 }
        r3 = 59;	 Catch:{ IOException -> 0x0017 }
        r2.write(r3);	 Catch:{ IOException -> 0x0017 }
        r2 = r4.out;	 Catch:{ IOException -> 0x0017 }
        r2.flush();	 Catch:{ IOException -> 0x0017 }
        r2 = r0;
        goto L_0x0018;
    L_0x0017:
        r2 = r1;
    L_0x0018:
        r4.transIndex = r1;
        r3 = 0;
        r4.out = r3;
        r4.image = r3;
        r4.pixels = r3;
        r4.indexedPixels = r3;
        r4.colorTab = r3;
        r4.closeStream = r1;
        r4.firstFrame = r0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifencoder.AnimatedGifEncoder.finish():boolean");
    }

    public final boolean start(java.io.OutputStream r5) {
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
        r4 = this;
        r0 = 0;
        if (r5 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r4.closeStream = r0;
        r4.out = r5;
        r5 = "GIF89a";	 Catch:{ IOException -> 0x001f }
        r1 = r0;	 Catch:{ IOException -> 0x001f }
    L_0x000b:
        r2 = r5.length();	 Catch:{ IOException -> 0x001f }
        if (r1 >= r2) goto L_0x001e;	 Catch:{ IOException -> 0x001f }
    L_0x0011:
        r2 = r4.out;	 Catch:{ IOException -> 0x001f }
        r3 = r5.charAt(r1);	 Catch:{ IOException -> 0x001f }
        r3 = (byte) r3;	 Catch:{ IOException -> 0x001f }
        r2.write(r3);	 Catch:{ IOException -> 0x001f }
        r1 = r1 + 1;
        goto L_0x000b;
    L_0x001e:
        r0 = 1;
    L_0x001f:
        r4.started = r0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifencoder.AnimatedGifEncoder.start(java.io.OutputStream):boolean");
    }

    private void analyzePixels() {
        int i = 0;
        int length = this.pixels.length;
        int i2 = length / 3;
        this.indexedPixels = new byte[i2];
        NeuQuant neuQuant = new NeuQuant(this.pixels, length, this.sample);
        neuQuant.learn();
        neuQuant.unbiasnet();
        neuQuant.inxbuild();
        this.colorTab = neuQuant.colorMap();
        for (length = 0; length < this.colorTab.length; length += 3) {
            byte b = this.colorTab[length];
            byte[] bArr = this.colorTab;
            int i3 = length + 2;
            bArr[length] = bArr[i3];
            this.colorTab[i3] = b;
            this.usedEntry[length / 3] = false;
        }
        length = 0;
        int i4 = length;
        while (length < i2) {
            i3 = i4 + 1;
            int i5 = i3 + 1;
            int i6 = i5 + 1;
            i4 = neuQuant.map(this.pixels[i4] & 255, this.pixels[i3] & 255, this.pixels[i5] & 255);
            this.usedEntry[i4] = true;
            this.indexedPixels[length] = (byte) i4;
            length++;
            i4 = i6;
        }
        this.pixels = null;
        this.colorDepth = 8;
        this.palSize = 7;
        if (this.hasTransparentPixels) {
            if (this.colorTab == null) {
                length = -1;
            } else {
                length = Color.red(0);
                i2 = Color.green(0);
                int blue = Color.blue(0);
                int length2 = this.colorTab.length;
                i3 = 16777216;
                i4 = 0;
                while (i < length2) {
                    i6 = i + 1;
                    i = length - (this.colorTab[i] & 255);
                    int i7 = i6 + 1;
                    i5 = i2 - (this.colorTab[i6] & 255);
                    i6 = blue - (this.colorTab[i7] & 255);
                    i = ((i * i) + (i5 * i5)) + (i6 * i6);
                    i5 = i7 / 3;
                    if (this.usedEntry[i5] && i < r6) {
                        i3 = i;
                        i4 = i5;
                    }
                    i = i7 + 1;
                }
                length = i4;
            }
            this.transIndex = length;
        }
    }

    private void writePalette() throws IOException {
        this.out.write(this.colorTab, 0, this.colorTab.length);
        int length = 768 - this.colorTab.length;
        for (int i = 0; i < length; i++) {
            this.out.write(0);
        }
    }

    private void writeString(String str) throws IOException {
        for (int i = 0; i < str.length(); i++) {
            this.out.write((byte) str.charAt(i));
        }
    }
}
