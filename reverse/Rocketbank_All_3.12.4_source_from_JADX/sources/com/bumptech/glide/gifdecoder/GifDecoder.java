package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class GifDecoder {
    private static final Config BITMAP_CONFIG = Config.ARGB_8888;
    private static final String TAG = "GifDecoder";
    private int[] act;
    private BitmapProvider bitmapProvider;
    private final byte[] block = new byte[256];
    private byte[] data;
    private int framePointer;
    private GifHeader header;
    private byte[] mainPixels;
    private int[] mainScratch;
    private final int[] pct = new int[256];
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;

    public interface BitmapProvider {
        Bitmap obtain(int i, int i2, Config config);

        void release(Bitmap bitmap);
    }

    public GifDecoder(BitmapProvider bitmapProvider) {
        this.bitmapProvider = bitmapProvider;
        this.header = new GifHeader();
    }

    public final void advance() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    public final int getDelay(int i) {
        return (i < 0 || i >= this.header.frameCount) ? -1 : ((GifFrame) this.header.frames.get(i)).delay;
    }

    public final int getNextDelay() {
        if (this.header.frameCount > 0) {
            if (this.framePointer >= 0) {
                return getDelay(this.framePointer);
            }
        }
        return -1;
    }

    public final int getFrameCount() {
        return this.header.frameCount;
    }

    public final int getCurrentFrameIndex() {
        return this.framePointer;
    }

    public final int getTotalIterationCount() {
        if (this.header.loopCount == -1) {
            return 1;
        }
        if (this.header.loopCount == 0) {
            return 0;
        }
        return this.header.loopCount + 1;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized android.graphics.Bitmap getNextFrame() {
        /*
        r7 = this;
        monitor-enter(r7);
        r0 = r7.header;	 Catch:{ all -> 0x00c4 }
        r0 = r0.frameCount;	 Catch:{ all -> 0x00c4 }
        r1 = 3;
        r2 = 1;
        if (r0 <= 0) goto L_0x000d;
    L_0x0009:
        r0 = r7.framePointer;	 Catch:{ all -> 0x00c4 }
        if (r0 >= 0) goto L_0x0038;
    L_0x000d:
        r0 = TAG;	 Catch:{ all -> 0x00c4 }
        r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00c4 }
        if (r0 == 0) goto L_0x0036;
    L_0x0015:
        r0 = TAG;	 Catch:{ all -> 0x00c4 }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c4 }
        r4 = "unable to decode frame, frameCount=";
        r3.<init>(r4);	 Catch:{ all -> 0x00c4 }
        r4 = r7.header;	 Catch:{ all -> 0x00c4 }
        r4 = r4.frameCount;	 Catch:{ all -> 0x00c4 }
        r3.append(r4);	 Catch:{ all -> 0x00c4 }
        r4 = " framePointer=";
        r3.append(r4);	 Catch:{ all -> 0x00c4 }
        r4 = r7.framePointer;	 Catch:{ all -> 0x00c4 }
        r3.append(r4);	 Catch:{ all -> 0x00c4 }
        r3 = r3.toString();	 Catch:{ all -> 0x00c4 }
        android.util.Log.d(r0, r3);	 Catch:{ all -> 0x00c4 }
    L_0x0036:
        r7.status = r2;	 Catch:{ all -> 0x00c4 }
    L_0x0038:
        r0 = r7.status;	 Catch:{ all -> 0x00c4 }
        r3 = 0;
        if (r0 == r2) goto L_0x00a5;
    L_0x003d:
        r0 = r7.status;	 Catch:{ all -> 0x00c4 }
        r4 = 2;
        if (r0 != r4) goto L_0x0043;
    L_0x0042:
        goto L_0x00a5;
    L_0x0043:
        r0 = 0;
        r7.status = r0;	 Catch:{ all -> 0x00c4 }
        r4 = r7.header;	 Catch:{ all -> 0x00c4 }
        r4 = r4.frames;	 Catch:{ all -> 0x00c4 }
        r5 = r7.framePointer;	 Catch:{ all -> 0x00c4 }
        r4 = r4.get(r5);	 Catch:{ all -> 0x00c4 }
        r4 = (com.bumptech.glide.gifdecoder.GifFrame) r4;	 Catch:{ all -> 0x00c4 }
        r5 = r7.framePointer;	 Catch:{ all -> 0x00c4 }
        r5 = r5 - r2;
        if (r5 < 0) goto L_0x0062;
    L_0x0057:
        r6 = r7.header;	 Catch:{ all -> 0x00c4 }
        r6 = r6.frames;	 Catch:{ all -> 0x00c4 }
        r5 = r6.get(r5);	 Catch:{ all -> 0x00c4 }
        r5 = (com.bumptech.glide.gifdecoder.GifFrame) r5;	 Catch:{ all -> 0x00c4 }
        goto L_0x0063;
    L_0x0062:
        r5 = r3;
    L_0x0063:
        r6 = r4.lct;	 Catch:{ all -> 0x00c4 }
        if (r6 == 0) goto L_0x006a;
    L_0x0067:
        r6 = r4.lct;	 Catch:{ all -> 0x00c4 }
        goto L_0x006e;
    L_0x006a:
        r6 = r7.header;	 Catch:{ all -> 0x00c4 }
        r6 = r6.gct;	 Catch:{ all -> 0x00c4 }
    L_0x006e:
        r7.act = r6;	 Catch:{ all -> 0x00c4 }
        r6 = r7.act;	 Catch:{ all -> 0x00c4 }
        if (r6 != 0) goto L_0x0087;
    L_0x0074:
        r0 = TAG;	 Catch:{ all -> 0x00c4 }
        r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00c4 }
        if (r0 == 0) goto L_0x0083;
    L_0x007c:
        r0 = TAG;	 Catch:{ all -> 0x00c4 }
        r1 = "No Valid Color Table";
        android.util.Log.d(r0, r1);	 Catch:{ all -> 0x00c4 }
    L_0x0083:
        r7.status = r2;	 Catch:{ all -> 0x00c4 }
        monitor-exit(r7);
        return r3;
    L_0x0087:
        r1 = r4.transparency;	 Catch:{ all -> 0x00c4 }
        if (r1 == 0) goto L_0x009f;
    L_0x008b:
        r1 = r7.act;	 Catch:{ all -> 0x00c4 }
        r2 = r7.pct;	 Catch:{ all -> 0x00c4 }
        r3 = r7.act;	 Catch:{ all -> 0x00c4 }
        r3 = r3.length;	 Catch:{ all -> 0x00c4 }
        java.lang.System.arraycopy(r1, r0, r2, r0, r3);	 Catch:{ all -> 0x00c4 }
        r1 = r7.pct;	 Catch:{ all -> 0x00c4 }
        r7.act = r1;	 Catch:{ all -> 0x00c4 }
        r1 = r7.act;	 Catch:{ all -> 0x00c4 }
        r2 = r4.transIndex;	 Catch:{ all -> 0x00c4 }
        r1[r2] = r0;	 Catch:{ all -> 0x00c4 }
    L_0x009f:
        r0 = r7.setPixels(r4, r5);	 Catch:{ all -> 0x00c4 }
        monitor-exit(r7);
        return r0;
    L_0x00a5:
        r0 = TAG;	 Catch:{ all -> 0x00c4 }
        r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00c4 }
        if (r0 == 0) goto L_0x00c2;
    L_0x00ad:
        r0 = TAG;	 Catch:{ all -> 0x00c4 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c4 }
        r2 = "Unable to decode frame, status=";
        r1.<init>(r2);	 Catch:{ all -> 0x00c4 }
        r2 = r7.status;	 Catch:{ all -> 0x00c4 }
        r1.append(r2);	 Catch:{ all -> 0x00c4 }
        r1 = r1.toString();	 Catch:{ all -> 0x00c4 }
        android.util.Log.d(r0, r1);	 Catch:{ all -> 0x00c4 }
    L_0x00c2:
        monitor-exit(r7);
        return r3;
    L_0x00c4:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.GifDecoder.getNextFrame():android.graphics.Bitmap");
    }

    public final void clear() {
        this.header = null;
        this.data = null;
        this.mainPixels = null;
        this.mainScratch = null;
        if (this.previousImage != null) {
            this.bitmapProvider.release(this.previousImage);
        }
        this.previousImage = null;
        this.rawData = null;
    }

    public final void setData(GifHeader gifHeader, byte[] bArr) {
        this.header = gifHeader;
        this.data = bArr;
        this.status = 0;
        this.framePointer = -1;
        this.rawData = ByteBuffer.wrap(bArr);
        this.rawData.rewind();
        this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        this.savePrevious = false;
        for (GifFrame gifFrame : gifHeader.frames) {
            if (gifFrame.dispose == 3) {
                this.savePrevious = 1;
                break;
            }
        }
        this.mainPixels = new byte[(gifHeader.width * gifHeader.height)];
        this.mainScratch = new int[(gifHeader.width * gifHeader.height)];
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.Bitmap setPixels(com.bumptech.glide.gifdecoder.GifFrame r34, com.bumptech.glide.gifdecoder.GifFrame r35) {
        /*
        r33 = this;
        r0 = r33;
        r1 = r34;
        r2 = r35;
        r3 = r0.header;
        r3 = r3.width;
        r4 = r0.header;
        r12 = r4.height;
        r13 = r0.mainScratch;
        r14 = 0;
        if (r2 != 0) goto L_0x0016;
    L_0x0013:
        java.util.Arrays.fill(r13, r14);
    L_0x0016:
        r15 = 3;
        r11 = 2;
        if (r2 == 0) goto L_0x0066;
    L_0x001a:
        r4 = r2.dispose;
        if (r4 <= 0) goto L_0x0066;
    L_0x001e:
        r4 = r2.dispose;
        if (r4 != r11) goto L_0x0050;
    L_0x0022:
        r4 = r1.transparency;
        if (r4 != 0) goto L_0x0036;
    L_0x0026:
        r4 = r0.header;
        r4 = r4.bgColor;
        r5 = r1.lct;
        if (r5 == 0) goto L_0x0037;
    L_0x002e:
        r5 = r0.header;
        r5 = r5.bgIndex;
        r6 = r1.transIndex;
        if (r5 != r6) goto L_0x0037;
    L_0x0036:
        r4 = r14;
    L_0x0037:
        r5 = r2.iy;
        r5 = r5 * r3;
        r6 = r2.ix;
        r5 = r5 + r6;
        r6 = r2.ih;
        r6 = r6 * r3;
        r6 = r6 + r5;
    L_0x0041:
        if (r5 >= r6) goto L_0x0066;
    L_0x0043:
        r7 = r2.iw;
        r7 = r7 + r5;
        r8 = r5;
    L_0x0047:
        if (r8 >= r7) goto L_0x004e;
    L_0x0049:
        r13[r8] = r4;
        r8 = r8 + 1;
        goto L_0x0047;
    L_0x004e:
        r5 = r5 + r3;
        goto L_0x0041;
    L_0x0050:
        r2 = r2.dispose;
        if (r2 != r15) goto L_0x0066;
    L_0x0054:
        r2 = r0.previousImage;
        if (r2 == 0) goto L_0x0066;
    L_0x0058:
        r4 = r0.previousImage;
        r6 = 0;
        r8 = 0;
        r9 = 0;
        r5 = r13;
        r7 = r3;
        r10 = r3;
        r2 = r11;
        r11 = r12;
        r4.getPixels(r5, r6, r7, r8, r9, r10, r11);
        goto L_0x0067;
    L_0x0066:
        r2 = r11;
    L_0x0067:
        if (r1 == 0) goto L_0x0070;
    L_0x0069:
        r4 = r0.rawData;
        r5 = r1.bufferFrameStart;
        r4.position(r5);
    L_0x0070:
        if (r1 != 0) goto L_0x007c;
    L_0x0072:
        r4 = r0.header;
        r4 = r4.width;
        r5 = r0.header;
        r5 = r5.height;
    L_0x007a:
        r4 = r4 * r5;
        goto L_0x0081;
    L_0x007c:
        r4 = r1.iw;
        r5 = r1.ih;
        goto L_0x007a;
    L_0x0081:
        r5 = r0.mainPixels;
        if (r5 == 0) goto L_0x008a;
    L_0x0085:
        r5 = r0.mainPixels;
        r5 = r5.length;
        if (r5 >= r4) goto L_0x008e;
    L_0x008a:
        r5 = new byte[r4];
        r0.mainPixels = r5;
    L_0x008e:
        r5 = r0.prefix;
        r6 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        if (r5 != 0) goto L_0x0098;
    L_0x0094:
        r5 = new short[r6];
        r0.prefix = r5;
    L_0x0098:
        r5 = r0.suffix;
        if (r5 != 0) goto L_0x00a0;
    L_0x009c:
        r5 = new byte[r6];
        r0.suffix = r5;
    L_0x00a0:
        r5 = r0.pixelStack;
        if (r5 != 0) goto L_0x00aa;
    L_0x00a4:
        r5 = 4097; // 0x1001 float:5.741E-42 double:2.024E-320;
        r5 = new byte[r5];
        r0.pixelStack = r5;
    L_0x00aa:
        r5 = r33.read();
        r11 = 1;
        r7 = r11 << r5;
        r8 = r7 + 1;
        r9 = r7 + 2;
        r5 = r5 + r11;
        r10 = r11 << r5;
        r10 = r10 - r11;
        r2 = r14;
    L_0x00ba:
        if (r2 >= r7) goto L_0x00cb;
    L_0x00bc:
        r6 = r0.prefix;
        r6[r2] = r14;
        r6 = r0.suffix;
        r14 = (byte) r2;
        r6[r2] = r14;
        r2 = r2 + 1;
        r6 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r14 = 0;
        goto L_0x00ba;
    L_0x00cb:
        r2 = -1;
        r25 = r2;
        r24 = r5;
        r22 = r9;
        r23 = r10;
        r6 = 0;
        r14 = 0;
        r16 = 0;
        r17 = 0;
        r18 = 0;
        r19 = 0;
        r20 = 0;
        r21 = 0;
    L_0x00e2:
        r26 = 8;
        if (r6 >= r4) goto L_0x01ef;
    L_0x00e6:
        if (r14 != 0) goto L_0x00f4;
    L_0x00e8:
        r14 = r33.readBlock();
        if (r14 > 0) goto L_0x00f2;
    L_0x00ee:
        r0.status = r15;
        goto L_0x01ef;
    L_0x00f2:
        r19 = 0;
    L_0x00f4:
        r15 = r0.block;
        r15 = r15[r19];
        r15 = r15 & 255;
        r15 = r15 << r17;
        r18 = r18 + r15;
        r17 = r17 + 8;
        r19 = r19 + 1;
        r14 = r14 + r2;
        r27 = r5;
        r5 = r20;
        r11 = r22;
        r15 = r24;
        r2 = r25;
        r32 = r16;
        r16 = r6;
        r6 = r17;
        r17 = r32;
    L_0x0115:
        if (r6 < r15) goto L_0x01d8;
    L_0x0117:
        r28 = r9;
        r9 = r18 & r23;
        r18 = r18 >> r15;
        r6 = r6 - r15;
        if (r9 != r7) goto L_0x0129;
    L_0x0120:
        r23 = r10;
        r15 = r27;
        r9 = r28;
        r11 = r9;
        r2 = -1;
        goto L_0x0115;
    L_0x0129:
        if (r9 <= r11) goto L_0x0134;
    L_0x012b:
        r29 = r6;
        r6 = 3;
        r0.status = r6;
    L_0x0130:
        r30 = r7;
        goto L_0x01c3;
    L_0x0134:
        r29 = r6;
        r6 = 3;
        if (r9 == r8) goto L_0x0130;
    L_0x0139:
        r6 = -1;
        if (r2 != r6) goto L_0x014f;
    L_0x013c:
        r2 = r0.pixelStack;
        r5 = r21 + 1;
        r6 = r0.suffix;
        r6 = r6[r9];
        r2[r21] = r6;
        r21 = r5;
        r2 = r9;
        r5 = r2;
        r9 = r28;
        r6 = r29;
        goto L_0x0115;
    L_0x014f:
        if (r9 < r11) goto L_0x015a;
    L_0x0151:
        r6 = r0.pixelStack;
        r20 = r21 + 1;
        r5 = (byte) r5;
        r6[r21] = r5;
        r5 = r2;
        goto L_0x015d;
    L_0x015a:
        r5 = r9;
        r20 = r21;
    L_0x015d:
        if (r5 < r7) goto L_0x0174;
    L_0x015f:
        r6 = r0.pixelStack;
        r21 = r20 + 1;
        r30 = r7;
        r7 = r0.suffix;
        r7 = r7[r5];
        r6[r20] = r7;
        r6 = r0.prefix;
        r5 = r6[r5];
        r20 = r21;
        r7 = r30;
        goto L_0x015d;
    L_0x0174:
        r30 = r7;
        r6 = r0.suffix;
        r5 = r6[r5];
        r5 = r5 & 255;
        r6 = r0.pixelStack;
        r7 = r20 + 1;
        r31 = r7;
        r7 = (byte) r5;
        r6[r20] = r7;
        r6 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        if (r11 >= r6) goto L_0x01a3;
    L_0x0189:
        r6 = r0.prefix;
        r2 = (short) r2;
        r6[r11] = r2;
        r2 = r0.suffix;
        r2[r11] = r7;
        r11 = r11 + 1;
        r2 = r11 & r23;
        if (r2 != 0) goto L_0x01a1;
    L_0x0198:
        r6 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        if (r11 >= r6) goto L_0x01a3;
    L_0x019c:
        r15 = r15 + 1;
        r23 = r23 + r11;
        goto L_0x01a3;
    L_0x01a1:
        r6 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
    L_0x01a3:
        r21 = r31;
    L_0x01a5:
        if (r21 <= 0) goto L_0x01ba;
    L_0x01a7:
        r21 = r21 + -1;
        r2 = r0.mainPixels;
        r7 = r17 + 1;
        r6 = r0.pixelStack;
        r6 = r6[r21];
        r2[r17] = r6;
        r16 = r16 + 1;
        r17 = r7;
        r6 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        goto L_0x01a5;
    L_0x01ba:
        r2 = r9;
        r9 = r28;
        r6 = r29;
        r7 = r30;
        goto L_0x0115;
    L_0x01c3:
        r25 = r2;
        r20 = r5;
        r22 = r11;
        r24 = r15;
        r6 = r16;
        r16 = r17;
        r5 = r27;
        r9 = r28;
        r17 = r29;
        r7 = r30;
        goto L_0x01ea;
    L_0x01d8:
        r29 = r6;
        r25 = r2;
        r20 = r5;
        r22 = r11;
        r24 = r15;
        r6 = r16;
        r16 = r17;
        r5 = r27;
        r17 = r29;
    L_0x01ea:
        r2 = -1;
        r11 = 1;
        r15 = 3;
        goto L_0x00e2;
    L_0x01ef:
        r2 = r16;
    L_0x01f1:
        if (r2 >= r4) goto L_0x01fb;
    L_0x01f3:
        r5 = r0.mainPixels;
        r6 = 0;
        r5[r2] = r6;
        r2 = r2 + 1;
        goto L_0x01f1;
    L_0x01fb:
        r6 = 0;
        r11 = r6;
        r2 = 1;
    L_0x01fe:
        r4 = r1.ih;
        if (r6 >= r4) goto L_0x025c;
    L_0x0202:
        r4 = r1.interlace;
        if (r4 == 0) goto L_0x021d;
    L_0x0206:
        r4 = r1.ih;
        r5 = 4;
        if (r11 < r4) goto L_0x021a;
    L_0x020b:
        r2 = r2 + 1;
        switch(r2) {
            case 2: goto L_0x0219;
            case 3: goto L_0x0215;
            case 4: goto L_0x0211;
            default: goto L_0x0210;
        };
    L_0x0210:
        goto L_0x021a;
    L_0x0211:
        r11 = 1;
        r26 = 2;
        goto L_0x021a;
    L_0x0215:
        r26 = r5;
        r11 = 2;
        goto L_0x021a;
    L_0x0219:
        r11 = r5;
    L_0x021a:
        r4 = r11 + r26;
        goto L_0x021f;
    L_0x021d:
        r4 = r11;
        r11 = r6;
    L_0x021f:
        r5 = r1.iy;
        r11 = r11 + r5;
        r5 = r0.header;
        r5 = r5.height;
        if (r11 >= r5) goto L_0x0258;
    L_0x0228:
        r5 = r0.header;
        r5 = r5.width;
        r11 = r11 * r5;
        r5 = r1.ix;
        r5 = r5 + r11;
        r7 = r1.iw;
        r7 = r7 + r5;
        r8 = r0.header;
        r8 = r8.width;
        r8 = r8 + r11;
        if (r8 >= r7) goto L_0x023f;
    L_0x023a:
        r7 = r0.header;
        r7 = r7.width;
        r7 = r7 + r11;
    L_0x023f:
        r8 = r1.iw;
        r8 = r8 * r6;
    L_0x0242:
        if (r5 >= r7) goto L_0x0258;
    L_0x0244:
        r9 = r0.mainPixels;
        r10 = r8 + 1;
        r8 = r9[r8];
        r8 = r8 & 255;
        r9 = r0.act;
        r8 = r9[r8];
        if (r8 == 0) goto L_0x0254;
    L_0x0252:
        r13[r5] = r8;
    L_0x0254:
        r5 = r5 + 1;
        r8 = r10;
        goto L_0x0242;
    L_0x0258:
        r6 = r6 + 1;
        r11 = r4;
        goto L_0x01fe;
    L_0x025c:
        r2 = r0.savePrevious;
        if (r2 == 0) goto L_0x027f;
    L_0x0260:
        r2 = r1.dispose;
        if (r2 == 0) goto L_0x0269;
    L_0x0264:
        r1 = r1.dispose;
        r2 = 1;
        if (r1 != r2) goto L_0x027f;
    L_0x0269:
        r1 = r0.previousImage;
        if (r1 != 0) goto L_0x0273;
    L_0x026d:
        r1 = r33.getNextBitmap();
        r0.previousImage = r1;
    L_0x0273:
        r4 = r0.previousImage;
        r6 = 0;
        r8 = 0;
        r9 = 0;
        r5 = r13;
        r7 = r3;
        r10 = r3;
        r11 = r12;
        r4.setPixels(r5, r6, r7, r8, r9, r10, r11);
    L_0x027f:
        r1 = r33.getNextBitmap();
        r6 = 0;
        r8 = 0;
        r9 = 0;
        r4 = r1;
        r5 = r13;
        r7 = r3;
        r10 = r3;
        r11 = r12;
        r4.setPixels(r5, r6, r7, r8, r9, r10, r11);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.GifDecoder.setPixels(com.bumptech.glide.gifdecoder.GifFrame, com.bumptech.glide.gifdecoder.GifFrame):android.graphics.Bitmap");
    }

    private int read() {
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
        r1 = this;
        r0 = r1.rawData;	 Catch:{ Exception -> 0x0009 }
        r0 = r0.get();	 Catch:{ Exception -> 0x0009 }
        r0 = r0 & 255;
        goto L_0x000d;
    L_0x0009:
        r0 = 1;
        r1.status = r0;
        r0 = 0;
    L_0x000d:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.GifDecoder.read():int");
    }

    private int readBlock() {
        int read = read();
        int i = 0;
        if (read > 0) {
            while (i < read) {
                int i2 = read - i;
                try {
                    this.rawData.get(this.block, i, i2);
                    i += i2;
                } catch (Throwable e) {
                    Log.w(TAG, "Error Reading Block", e);
                    this.status = 1;
                }
            }
        }
        return i;
    }

    private Bitmap getNextBitmap() {
        Bitmap obtain = this.bitmapProvider.obtain(this.header.width, this.header.height, BITMAP_CONFIG);
        if (obtain == null) {
            obtain = Bitmap.createBitmap(this.header.width, this.header.height, BITMAP_CONFIG);
        }
        if (VERSION.SDK_INT >= 12) {
            obtain.setHasAlpha(true);
        }
        return obtain;
    }
}
