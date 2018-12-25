package android.support.v4.graphics;

import android.graphics.Bitmap;
import android.graphics.Path;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.Log;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.file.FileToStreamDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapperResourceDecoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;

@RestrictTo
public final class PathParser implements DataLoadProvider<ImageVideoWrapper, GifBitmapWrapper> {
    private final ResourceDecoder<File, GifBitmapWrapper> cacheDecoder;
    private final AnimatorUpdateListener<GifBitmapWrapper> encoder$8b2b29d$527e0935;
    private final ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> sourceDecoder;
    private final AnimatorUpdateListener<ImageVideoWrapper> sourceEncoder$527e0935;

    static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;

        ExtractFloatResult() {
        }
    }

    public static class PathDataNode {
        @RestrictTo
        public float[] mParams;
        @RestrictTo
        public char mType;

        PathDataNode(char c, float[] fArr) {
            this.mType = c;
            this.mParams = fArr;
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            this.mParams = PathParser.copyOfRange$7b60297f(pathDataNode.mParams, pathDataNode.mParams.length);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static void nodesToPath(android.support.v4.graphics.PathParser.PathDataNode[] r30, android.graphics.Path r31) {
            /*
            r0 = r30;
            r11 = r31;
            r12 = 6;
            r13 = new float[r12];
            r14 = 0;
            r1 = 109; // 0x6d float:1.53E-43 double:5.4E-322;
            r15 = r14;
        L_0x000b:
            r2 = r0.length;
            if (r15 >= r2) goto L_0x037f;
        L_0x000e:
            r2 = r0[r15];
            r10 = r2.mType;
            r2 = r0[r15];
            r9 = r2.mParams;
            r2 = r13[r14];
            r16 = 1;
            r3 = r13[r16];
            r17 = 2;
            r4 = r13[r17];
            r18 = 3;
            r5 = r13[r18];
            r19 = 4;
            r6 = r13[r19];
            r20 = 5;
            r7 = r13[r20];
            switch(r10) {
                case 65: goto L_0x0046;
                case 67: goto L_0x0043;
                case 72: goto L_0x0040;
                case 76: goto L_0x002f;
                case 77: goto L_0x002f;
                case 81: goto L_0x003d;
                case 83: goto L_0x003d;
                case 84: goto L_0x002f;
                case 86: goto L_0x0040;
                case 90: goto L_0x0032;
                case 97: goto L_0x0046;
                case 99: goto L_0x0043;
                case 104: goto L_0x0040;
                case 108: goto L_0x002f;
                case 109: goto L_0x002f;
                case 113: goto L_0x003d;
                case 115: goto L_0x003d;
                case 116: goto L_0x002f;
                case 118: goto L_0x0040;
                case 122: goto L_0x0032;
                default: goto L_0x002f;
            };
        L_0x002f:
            r21 = r17;
            goto L_0x0049;
        L_0x0032:
            r31.close();
            r11.moveTo(r6, r7);
            r2 = r6;
            r4 = r2;
            r3 = r7;
            r5 = r3;
            goto L_0x002f;
        L_0x003d:
            r21 = r19;
            goto L_0x0049;
        L_0x0040:
            r21 = r16;
            goto L_0x0049;
        L_0x0043:
            r21 = r12;
            goto L_0x0049;
        L_0x0046:
            r8 = 7;
            r21 = r8;
        L_0x0049:
            r22 = r6;
            r23 = r7;
            r8 = r14;
            r7 = r2;
            r6 = r3;
        L_0x0050:
            r2 = r9.length;
            if (r8 >= r2) goto L_0x0362;
        L_0x0053:
            r14 = 81;
            r2 = 116; // 0x74 float:1.63E-43 double:5.73E-322;
            r3 = 113; // 0x71 float:1.58E-43 double:5.6E-322;
            r26 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
            r12 = 0;
            switch(r10) {
                case 65: goto L_0x0313;
                case 67: goto L_0x02e6;
                case 72: goto L_0x02d4;
                case 76: goto L_0x02bd;
                case 77: goto L_0x0297;
                case 81: goto L_0x0272;
                case 83: goto L_0x022e;
                case 84: goto L_0x0201;
                case 86: goto L_0x01ef;
                case 97: goto L_0x01a1;
                case 99: goto L_0x0169;
                case 104: goto L_0x0154;
                case 108: goto L_0x013e;
                case 109: goto L_0x011a;
                case 113: goto L_0x00ec;
                case 115: goto L_0x00a8;
                case 116: goto L_0x007d;
                case 118: goto L_0x006b;
                default: goto L_0x005f;
            };
        L_0x005f:
            r0 = r6;
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r15 = r7;
            goto L_0x0353;
        L_0x006b:
            r1 = r9[r8];
            r11.rLineTo(r12, r1);
            r1 = r9[r8];
            r6 = r6 + r1;
            r28 = r8;
            r25 = r9;
            r29 = r10;
        L_0x0079:
            r27 = r15;
            goto L_0x0353;
        L_0x007d:
            if (r1 == r3) goto L_0x008a;
        L_0x007f:
            if (r1 == r2) goto L_0x008a;
        L_0x0081:
            if (r1 == r14) goto L_0x008a;
        L_0x0083:
            r2 = 84;
            if (r1 != r2) goto L_0x0088;
        L_0x0087:
            goto L_0x008a;
        L_0x0088:
            r1 = r12;
            goto L_0x008e;
        L_0x008a:
            r12 = r7 - r4;
            r1 = r6 - r5;
        L_0x008e:
            r2 = r9[r8];
            r3 = r8 + 1;
            r4 = r9[r3];
            r11.rQuadTo(r12, r1, r2, r4);
            r12 = r12 + r7;
            r1 = r1 + r6;
            r2 = r9[r8];
            r7 = r7 + r2;
            r2 = r9[r3];
            r6 = r6 + r2;
            r5 = r1;
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r4 = r12;
            goto L_0x0079;
        L_0x00a8:
            r2 = 99;
            if (r1 == r2) goto L_0x00bc;
        L_0x00ac:
            r2 = 115; // 0x73 float:1.61E-43 double:5.7E-322;
            if (r1 == r2) goto L_0x00bc;
        L_0x00b0:
            r2 = 67;
            if (r1 == r2) goto L_0x00bc;
        L_0x00b4:
            r2 = 83;
            if (r1 != r2) goto L_0x00b9;
        L_0x00b8:
            goto L_0x00bc;
        L_0x00b9:
            r2 = r12;
            r3 = r2;
            goto L_0x00c2;
        L_0x00bc:
            r1 = r7 - r4;
            r2 = r6 - r5;
            r3 = r2;
            r2 = r1;
        L_0x00c2:
            r4 = r9[r8];
            r12 = r8 + 1;
            r5 = r9[r12];
            r14 = r8 + 2;
            r24 = r9[r14];
            r25 = r8 + 3;
            r26 = r9[r25];
            r1 = r11;
            r0 = r6;
            r6 = r24;
            r27 = r15;
            r15 = r7;
            r7 = r26;
            r1.rCubicTo(r2, r3, r4, r5, r6, r7);
            r1 = r9[r8];
            r7 = r15 + r1;
            r1 = r9[r12];
            r6 = r0 + r1;
            r1 = r9[r14];
            r1 = r1 + r15;
            r2 = r9[r25];
            r0 = r0 + r2;
            goto L_0x0195;
        L_0x00ec:
            r0 = r6;
            r27 = r15;
            r15 = r7;
            r1 = r9[r8];
            r2 = r8 + 1;
            r3 = r9[r2];
            r4 = r8 + 2;
            r5 = r9[r4];
            r6 = r8 + 3;
            r7 = r9[r6];
            r11.rQuadTo(r1, r3, r5, r7);
            r1 = r9[r8];
            r7 = r15 + r1;
            r1 = r9[r2];
            r1 = r1 + r0;
            r2 = r9[r4];
            r2 = r2 + r15;
            r3 = r9[r6];
            r6 = r0 + r3;
            r5 = r1;
            r4 = r7;
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r7 = r2;
            goto L_0x0353;
        L_0x011a:
            r0 = r6;
            r27 = r15;
            r15 = r7;
            r1 = r9[r8];
            r7 = r15 + r1;
            r1 = r8 + 1;
            r2 = r9[r1];
            r6 = r0 + r2;
            if (r8 <= 0) goto L_0x0132;
        L_0x012a:
            r0 = r9[r8];
            r1 = r9[r1];
            r11.rLineTo(r0, r1);
            goto L_0x0161;
        L_0x0132:
            r0 = r9[r8];
            r1 = r9[r1];
            r11.rMoveTo(r0, r1);
            r23 = r6;
            r22 = r7;
            goto L_0x0161;
        L_0x013e:
            r0 = r6;
            r27 = r15;
            r15 = r7;
            r1 = r9[r8];
            r2 = r8 + 1;
            r3 = r9[r2];
            r11.rLineTo(r1, r3);
            r1 = r9[r8];
            r7 = r15 + r1;
            r1 = r9[r2];
            r6 = r0 + r1;
            goto L_0x0161;
        L_0x0154:
            r0 = r6;
            r27 = r15;
            r15 = r7;
            r1 = r9[r8];
            r11.rLineTo(r1, r12);
            r1 = r9[r8];
            r7 = r15 + r1;
        L_0x0161:
            r28 = r8;
            r25 = r9;
            r29 = r10;
            goto L_0x0353;
        L_0x0169:
            r0 = r6;
            r27 = r15;
            r15 = r7;
            r2 = r9[r8];
            r1 = r8 + 1;
            r3 = r9[r1];
            r12 = r8 + 2;
            r4 = r9[r12];
            r14 = r8 + 3;
            r5 = r9[r14];
            r24 = r8 + 4;
            r6 = r9[r24];
            r25 = r8 + 5;
            r7 = r9[r25];
            r1 = r11;
            r1.rCubicTo(r2, r3, r4, r5, r6, r7);
            r1 = r9[r12];
            r7 = r15 + r1;
            r1 = r9[r14];
            r6 = r0 + r1;
            r1 = r9[r24];
            r1 = r1 + r15;
            r2 = r9[r25];
            r0 = r0 + r2;
        L_0x0195:
            r5 = r6;
            r4 = r7;
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r6 = r0;
            r7 = r1;
            goto L_0x0353;
        L_0x01a1:
            r0 = r6;
            r27 = r15;
            r15 = r7;
            r14 = r8 + 5;
            r1 = r9[r14];
            r4 = r1 + r15;
            r24 = r8 + 6;
            r1 = r9[r24];
            r5 = r1 + r0;
            r6 = r9[r8];
            r1 = r8 + 1;
            r7 = r9[r1];
            r1 = r8 + 2;
            r25 = r9[r1];
            r1 = r8 + 3;
            r1 = r9[r1];
            r1 = (r1 > r12 ? 1 : (r1 == r12 ? 0 : -1));
            if (r1 == 0) goto L_0x01c6;
        L_0x01c3:
            r26 = r16;
            goto L_0x01c8;
        L_0x01c6:
            r26 = 0;
        L_0x01c8:
            r1 = r8 + 4;
            r1 = r9[r1];
            r1 = (r1 > r12 ? 1 : (r1 == r12 ? 0 : -1));
            if (r1 == 0) goto L_0x01d3;
        L_0x01d0:
            r12 = r16;
            goto L_0x01d4;
        L_0x01d3:
            r12 = 0;
        L_0x01d4:
            r1 = r11;
            r2 = r15;
            r3 = r0;
            r28 = r8;
            r8 = r25;
            r25 = r9;
            r9 = r26;
            r29 = r10;
            r10 = r12;
            drawArc(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10);
            r1 = r25[r14];
            r7 = r15 + r1;
            r1 = r25[r24];
            r6 = r0 + r1;
            goto L_0x0351;
        L_0x01ef:
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r15 = r7;
            r0 = r25[r28];
            r11.lineTo(r15, r0);
            r6 = r25[r28];
            goto L_0x0353;
        L_0x0201:
            r0 = r6;
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r15 = r7;
            if (r1 == r3) goto L_0x0215;
        L_0x020d:
            if (r1 == r2) goto L_0x0215;
        L_0x020f:
            if (r1 == r14) goto L_0x0215;
        L_0x0211:
            r2 = 84;
            if (r1 != r2) goto L_0x021d;
        L_0x0215:
            r7 = r15 * r26;
            r7 = r7 - r4;
            r6 = r0 * r26;
            r6 = r6 - r5;
            r0 = r6;
            r15 = r7;
        L_0x021d:
            r1 = r25[r28];
            r8 = r28 + 1;
            r2 = r25[r8];
            r11.quadTo(r15, r0, r1, r2);
            r7 = r25[r28];
            r6 = r25[r8];
            r5 = r0;
            r4 = r15;
            goto L_0x0353;
        L_0x022e:
            r0 = r6;
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r2 = 99;
            r15 = r7;
            if (r1 == r2) goto L_0x024c;
        L_0x023c:
            r2 = 115; // 0x73 float:1.61E-43 double:5.7E-322;
            if (r1 == r2) goto L_0x024c;
        L_0x0240:
            r2 = 67;
            if (r1 == r2) goto L_0x024c;
        L_0x0244:
            r2 = 83;
            if (r1 != r2) goto L_0x0249;
        L_0x0248:
            goto L_0x024c;
        L_0x0249:
            r3 = r0;
            r2 = r15;
            goto L_0x0254;
        L_0x024c:
            r7 = r15 * r26;
            r7 = r7 - r4;
            r6 = r0 * r26;
            r6 = r6 - r5;
            r3 = r6;
            r2 = r7;
        L_0x0254:
            r4 = r25[r28];
            r8 = r28 + 1;
            r5 = r25[r8];
            r0 = r28 + 2;
            r6 = r25[r0];
            r9 = r28 + 3;
            r7 = r25[r9];
            r1 = r11;
            r1.cubicTo(r2, r3, r4, r5, r6, r7);
            r1 = r25[r28];
            r2 = r25[r8];
            r7 = r25[r0];
            r6 = r25[r9];
            r4 = r1;
            r5 = r2;
            goto L_0x0353;
        L_0x0272:
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r0 = r25[r28];
            r8 = r28 + 1;
            r1 = r25[r8];
            r2 = r28 + 2;
            r3 = r25[r2];
            r4 = r28 + 3;
            r5 = r25[r4];
            r11.quadTo(r0, r1, r3, r5);
            r0 = r25[r28];
            r1 = r25[r8];
            r7 = r25[r2];
            r6 = r25[r4];
            r4 = r0;
            r5 = r1;
            goto L_0x0353;
        L_0x0297:
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r7 = r25[r28];
            r8 = r28 + 1;
            r6 = r25[r8];
            if (r28 <= 0) goto L_0x02b0;
        L_0x02a7:
            r0 = r25[r28];
            r1 = r25[r8];
            r11.lineTo(r0, r1);
            goto L_0x0353;
        L_0x02b0:
            r0 = r25[r28];
            r1 = r25[r8];
            r11.moveTo(r0, r1);
            r23 = r6;
            r22 = r7;
            goto L_0x0353;
        L_0x02bd:
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r0 = r25[r28];
            r8 = r28 + 1;
            r1 = r25[r8];
            r11.lineTo(r0, r1);
            r7 = r25[r28];
            r6 = r25[r8];
            goto L_0x0353;
        L_0x02d4:
            r0 = r6;
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r1 = r25[r28];
            r11.lineTo(r1, r0);
            r7 = r25[r28];
            goto L_0x0353;
        L_0x02e6:
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r2 = r25[r28];
            r8 = r28 + 1;
            r3 = r25[r8];
            r8 = r28 + 2;
            r4 = r25[r8];
            r0 = r28 + 3;
            r5 = r25[r0];
            r9 = r28 + 4;
            r6 = r25[r9];
            r10 = r28 + 5;
            r7 = r25[r10];
            r1 = r11;
            r1.cubicTo(r2, r3, r4, r5, r6, r7);
            r7 = r25[r9];
            r6 = r25[r10];
            r1 = r25[r8];
            r0 = r25[r0];
            r5 = r0;
            r4 = r1;
            goto L_0x0353;
        L_0x0313:
            r0 = r6;
            r28 = r8;
            r25 = r9;
            r29 = r10;
            r27 = r15;
            r15 = r7;
            r14 = r28 + 5;
            r4 = r25[r14];
            r24 = r28 + 6;
            r5 = r25[r24];
            r6 = r25[r28];
            r8 = r28 + 1;
            r7 = r25[r8];
            r8 = r28 + 2;
            r8 = r25[r8];
            r1 = r28 + 3;
            r1 = r25[r1];
            r1 = (r1 > r12 ? 1 : (r1 == r12 ? 0 : -1));
            if (r1 == 0) goto L_0x033a;
        L_0x0337:
            r9 = r16;
            goto L_0x033b;
        L_0x033a:
            r9 = 0;
        L_0x033b:
            r1 = r28 + 4;
            r1 = r25[r1];
            r1 = (r1 > r12 ? 1 : (r1 == r12 ? 0 : -1));
            if (r1 == 0) goto L_0x0346;
        L_0x0343:
            r10 = r16;
            goto L_0x0347;
        L_0x0346:
            r10 = 0;
        L_0x0347:
            r1 = r11;
            r2 = r15;
            r3 = r0;
            drawArc(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10);
            r7 = r25[r14];
            r6 = r25[r24];
        L_0x0351:
            r5 = r6;
            r4 = r7;
        L_0x0353:
            r8 = r28 + r21;
            r9 = r25;
            r15 = r27;
            r1 = r29;
            r10 = r1;
            r0 = r30;
            r12 = 6;
            r14 = 0;
            goto L_0x0050;
        L_0x0362:
            r0 = r6;
            r1 = r14;
            r27 = r15;
            r15 = r7;
            r13[r1] = r15;
            r13[r16] = r0;
            r13[r17] = r4;
            r13[r18] = r5;
            r13[r19] = r22;
            r13[r20] = r23;
            r0 = r30;
            r2 = r0[r27];
            r2 = r2.mType;
            r15 = r27 + 1;
            r1 = r2;
            r12 = 6;
            goto L_0x000b;
        L_0x037f:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.PathParser.PathDataNode.nodesToPath(android.support.v4.graphics.PathParser$PathDataNode[], android.graphics.Path):void");
        }

        public final void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            for (int i = 0; i < pathDataNode.mParams.length; i++) {
                this.mParams[i] = (pathDataNode.mParams[i] * (1.0f - f)) + (pathDataNode2.mParams[i] * f);
            }
        }

        private static void drawArc(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double toRadians;
            double cos;
            double d;
            double d2;
            double d3;
            double d4;
            double d5;
            double d6;
            double d7;
            double d8;
            double d9;
            double d10;
            double d11;
            double d12;
            double d13;
            double d14;
            float f8 = f;
            float f9 = f3;
            boolean z3 = z2;
            float f10 = f5;
            float f11 = f6;
            float f12 = f7;
            while (true) {
                toRadians = Math.toRadians((double) f12);
                cos = Math.cos(toRadians);
                double sin = Math.sin(toRadians);
                d = (double) f8;
                d2 = toRadians;
                toRadians = (double) f2;
                d3 = d;
                d = (double) f10;
                d4 = ((d * cos) + (toRadians * sin)) / d;
                d5 = toRadians;
                toRadians = (double) f11;
                float f13 = f10;
                float f14 = f11;
                d6 = ((((double) (-f8)) * sin) + (toRadians * cos)) / toRadians;
                d7 = (double) f4;
                d8 = ((((double) f9) * cos) + (d7 * sin)) / d;
                d9 = ((((double) (-f9)) * sin) + (d7 * cos)) / toRadians;
                d7 = d4 - d8;
                d10 = d6 - d9;
                d11 = (d4 + d8) / 2.0d;
                d12 = (d6 + d9) / 2.0d;
                d13 = sin;
                sin = (d7 * d7) + (d10 * d10);
                if (sin != 0.0d) {
                    d14 = cos;
                    cos = (1.0d / sin) - 0.25d;
                    if (cos >= 0.0d) {
                        break;
                    }
                    Log.w("PathParser", "Points are too far apart ".concat(String.valueOf(sin)));
                    f8 = (float) (Math.sqrt(sin) / 1.99999d);
                    f10 = f13 * f8;
                    f11 = f14 * f8;
                    f8 = f;
                    f9 = f3;
                    z3 = z2;
                    f12 = f7;
                } else {
                    Log.w("PathParser", " Points are coincident");
                    return;
                }
            }
            cos = Math.sqrt(cos);
            d7 *= cos;
            cos *= d10;
            boolean z4 = z2;
            if (z == z4) {
                d11 -= cos;
                d12 += d7;
            } else {
                d11 += cos;
                d12 -= d7;
            }
            d7 = Math.atan2(d6 - d12, d4 - d11);
            d9 = Math.atan2(d9 - d12, d8 - d11) - d7;
            if (z4 != (d9 >= 0.0d)) {
                d9 = d9 > 0.0d ? d9 - 6.283185307179586d : d9 + 6.283185307179586d;
            }
            d11 *= d;
            d12 *= toRadians;
            arcToBezier(path, (d11 * d14) - (d12 * d13), (d11 * d13) + (d12 * d14), d, toRadians, d3, d5, d2, d7, d9);
        }

        private static void arcToBezier(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            double d10 = d3;
            int ceil = (int) Math.ceil(Math.abs((d9 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d7);
            double sin = Math.sin(d7);
            double cos2 = Math.cos(d8);
            double sin2 = Math.sin(d8);
            double d11 = -d10;
            double d12 = d11 * cos;
            double d13 = d4 * sin;
            d11 *= sin;
            double d14 = d4 * cos;
            sin2 = (sin2 * d11) + (cos2 * d14);
            double d15 = d9 / ((double) ceil);
            int i = 0;
            double d16 = d6;
            double d17 = sin2;
            double d18 = (d12 * sin2) - (d13 * cos2);
            double d19 = d5;
            double d20 = d8;
            while (i < ceil) {
                double d21 = d11;
                d11 = d20 + d15;
                double sin3 = Math.sin(d11);
                double cos3 = Math.cos(d11);
                double d22 = d15;
                d15 = (d + ((d10 * cos) * cos3)) - (d13 * sin3);
                d10 = (d2 + ((d10 * sin) * cos3)) + (d14 * sin3);
                double d23 = (d12 * sin3) - (d13 * cos3);
                sin3 = (sin3 * d21) + (cos3 * d14);
                d20 = d11 - d20;
                double d24 = d14;
                d14 = Math.tan(d20 / 2.0d);
                double d25 = d11;
                d20 = (Math.sin(d20) * (Math.sqrt(4.0d + ((d14 * 3.0d) * d14)) - 1.0d)) / 3.0d;
                d11 = d19 + (d18 * d20);
                d14 = d16 + (d17 * d20);
                int i2 = ceil;
                double d26 = cos;
                double d27 = d15 - (d20 * d23);
                d20 = d10 - (d20 * sin3);
                double d28 = sin;
                Path path2 = path;
                path2.rLineTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                path2.cubicTo((float) d11, (float) d14, (float) d27, (float) d20, (float) d15, (float) d10);
                i++;
                d16 = d10;
                d19 = d15;
                d11 = d21;
                d17 = sin3;
                d18 = d23;
                d15 = d22;
                d14 = d24;
                d20 = d25;
                ceil = i2;
                cos = d26;
                sin = d28;
                d10 = d3;
            }
        }
    }

    static float[] copyOfRange$7b60297f(float[] fArr, int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        length = Math.min(i, length);
        i = new float[i];
        System.arraycopy(fArr, 0, i, 0, length);
        return i;
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] createNodesFromPathData = createNodesFromPathData(str);
        if (createNodesFromPathData == null) {
            return null;
        }
        try {
            PathDataNode.nodesToPath(createNodesFromPathData, path);
            return path;
        } catch (Throwable e) {
            throw new RuntimeException("Error in parsing ".concat(String.valueOf(str)), e);
        }
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            i = nextStart(str, i);
            String trim = str.substring(i2, i).trim();
            if (trim.length() > 0) {
                arrayList.add(new PathDataNode(trim.charAt(0), getFloats(trim)));
            }
            i2 = i;
            i++;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            arrayList.add(new PathDataNode(str.charAt(i2), new float[0]));
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            pathDataNodeArr2[i] = new PathDataNode(pathDataNodeArr[i]);
        }
        return pathDataNodeArr2;
    }

    public static boolean canMorph(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr != null) {
            if (pathDataNodeArr2 != null) {
                if (pathDataNodeArr.length != pathDataNodeArr2.length) {
                    return false;
                }
                int i = 0;
                while (i < pathDataNodeArr.length) {
                    if (pathDataNodeArr[i].mType == pathDataNodeArr2[i].mType) {
                        if (pathDataNodeArr[i].mParams.length == pathDataNodeArr2[i].mParams.length) {
                            i++;
                        }
                    }
                    return false;
                }
                return 1;
            }
        }
        return false;
    }

    private static int nextStart(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 65) * (charAt - 90) <= 0 || (charAt - 97) * (charAt - 122) <= 0) && charAt != 'e' && charAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static float[] getFloats(java.lang.String r13) {
        /*
        r0 = 0;
        r1 = r13.charAt(r0);
        r2 = 122; // 0x7a float:1.71E-43 double:6.03E-322;
        if (r1 == r2) goto L_0x009c;
    L_0x0009:
        r1 = r13.charAt(r0);
        r2 = 90;
        if (r1 != r2) goto L_0x0013;
    L_0x0011:
        goto L_0x009c;
    L_0x0013:
        r1 = r13.length();	 Catch:{ NumberFormatException -> 0x0082 }
        r1 = new float[r1];	 Catch:{ NumberFormatException -> 0x0082 }
        r2 = new android.support.v4.graphics.PathParser$ExtractFloatResult;	 Catch:{ NumberFormatException -> 0x0082 }
        r2.<init>();	 Catch:{ NumberFormatException -> 0x0082 }
        r3 = r13.length();	 Catch:{ NumberFormatException -> 0x0082 }
        r4 = 1;
        r6 = r0;
        r5 = r4;
    L_0x0025:
        if (r5 >= r3) goto L_0x007d;
    L_0x0027:
        r2.mEndWithNegOrDot = r0;	 Catch:{ NumberFormatException -> 0x0082 }
        r8 = r0;
        r9 = r8;
        r10 = r9;
        r7 = r5;
    L_0x002d:
        r11 = r13.length();	 Catch:{ NumberFormatException -> 0x0082 }
        if (r7 >= r11) goto L_0x0061;
    L_0x0033:
        r11 = r13.charAt(r7);	 Catch:{ NumberFormatException -> 0x0082 }
        r12 = 32;
        if (r11 == r12) goto L_0x005a;
    L_0x003b:
        r12 = 69;
        if (r11 == r12) goto L_0x0058;
    L_0x003f:
        r12 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r11 == r12) goto L_0x0058;
    L_0x0043:
        switch(r11) {
            case 44: goto L_0x005a;
            case 45: goto L_0x004f;
            case 46: goto L_0x0047;
            default: goto L_0x0046;
        };	 Catch:{ NumberFormatException -> 0x0082 }
    L_0x0046:
        goto L_0x0056;
    L_0x0047:
        if (r9 != 0) goto L_0x004c;
    L_0x0049:
        r8 = r0;
        r9 = r4;
        goto L_0x005c;
    L_0x004c:
        r2.mEndWithNegOrDot = r4;	 Catch:{ NumberFormatException -> 0x0082 }
        goto L_0x005a;
    L_0x004f:
        if (r7 == r5) goto L_0x0056;
    L_0x0051:
        if (r8 != 0) goto L_0x0056;
    L_0x0053:
        r2.mEndWithNegOrDot = r4;	 Catch:{ NumberFormatException -> 0x0082 }
        goto L_0x005a;
    L_0x0056:
        r8 = r0;
        goto L_0x005c;
    L_0x0058:
        r8 = r4;
        goto L_0x005c;
    L_0x005a:
        r8 = r0;
        r10 = r4;
    L_0x005c:
        if (r10 != 0) goto L_0x0061;
    L_0x005e:
        r7 = r7 + 1;
        goto L_0x002d;
    L_0x0061:
        r2.mEndPosition = r7;	 Catch:{ NumberFormatException -> 0x0082 }
        r7 = r2.mEndPosition;	 Catch:{ NumberFormatException -> 0x0082 }
        if (r5 >= r7) goto L_0x0074;
    L_0x0067:
        r8 = r6 + 1;
        r5 = r13.substring(r5, r7);	 Catch:{ NumberFormatException -> 0x0082 }
        r5 = java.lang.Float.parseFloat(r5);	 Catch:{ NumberFormatException -> 0x0082 }
        r1[r6] = r5;	 Catch:{ NumberFormatException -> 0x0082 }
        r6 = r8;
    L_0x0074:
        r5 = r2.mEndWithNegOrDot;	 Catch:{ NumberFormatException -> 0x0082 }
        if (r5 == 0) goto L_0x007a;
    L_0x0078:
        r5 = r7;
        goto L_0x0025;
    L_0x007a:
        r5 = r7 + 1;
        goto L_0x0025;
    L_0x007d:
        r0 = copyOfRange$7b60297f(r1, r6);	 Catch:{ NumberFormatException -> 0x0082 }
        return r0;
    L_0x0082:
        r0 = move-exception;
        r1 = new java.lang.RuntimeException;
        r2 = new java.lang.StringBuilder;
        r3 = "error in parsing \"";
        r2.<init>(r3);
        r2.append(r13);
        r13 = "\"";
        r2.append(r13);
        r13 = r2.toString();
        r1.<init>(r13, r0);
        throw r1;
    L_0x009c:
        r13 = new float[r0];
        return r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.PathParser.getFloats(java.lang.String):float[]");
    }

    public PathParser(DataLoadProvider<ImageVideoWrapper, Bitmap> dataLoadProvider, DataLoadProvider<InputStream, GifDrawable> dataLoadProvider2, BitmapPool bitmapPool) {
        ResourceDecoder gifBitmapWrapperResourceDecoder = new GifBitmapWrapperResourceDecoder(dataLoadProvider.getSourceDecoder(), dataLoadProvider2.getSourceDecoder(), bitmapPool);
        this.cacheDecoder = new FileToStreamDecoder(new TypedArrayUtils(gifBitmapWrapperResourceDecoder));
        this.sourceDecoder = gifBitmapWrapperResourceDecoder;
        this.encoder$8b2b29d$527e0935 = new ResourcesCompat(dataLoadProvider.getEncoder$743e27e$2e726854(), dataLoadProvider2.getEncoder$743e27e$2e726854());
        this.sourceEncoder$527e0935 = dataLoadProvider.getSourceEncoder$2e726854();
    }

    public final ResourceDecoder<File, GifBitmapWrapper> getCacheDecoder() {
        return this.cacheDecoder;
    }

    public final ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> getSourceDecoder() {
        return this.sourceDecoder;
    }

    public final AnimatorUpdateListener<ImageVideoWrapper> getSourceEncoder$2e726854() {
        return this.sourceEncoder$527e0935;
    }

    public final AnimatorUpdateListener<GifBitmapWrapper> getEncoder$743e27e$2e726854() {
        return this.encoder$8b2b29d$527e0935;
    }
}
