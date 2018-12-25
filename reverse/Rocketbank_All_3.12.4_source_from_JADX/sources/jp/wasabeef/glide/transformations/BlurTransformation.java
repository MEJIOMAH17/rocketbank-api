package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

public final class BlurTransformation implements Transformation<Bitmap> {
    private static int DEFAULT_DOWN_SAMPLING = 1;
    private static int MAX_RADIUS = 25;
    private BitmapPool mBitmapPool;
    private Context mContext;
    private int mRadius;
    private int mSampling;

    public BlurTransformation(Context context) {
        this(context, Glide.get(context).getBitmapPool(), DEFAULT_DOWN_SAMPLING);
    }

    private BlurTransformation(Context context, BitmapPool bitmapPool, int i) {
        this.mContext = context.getApplicationContext();
        this.mBitmapPool = bitmapPool;
        this.mRadius = 25;
        this.mSampling = i;
    }

    public final com.bumptech.glide.load.engine.Resource<android.graphics.Bitmap> transform(com.bumptech.glide.load.engine.Resource<android.graphics.Bitmap> r4, int r5, int r6) {
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
        r3 = this;
        r4 = r4.get();
        r4 = (android.graphics.Bitmap) r4;
        r5 = r4.getWidth();
        r6 = r4.getHeight();
        r0 = r3.mSampling;
        r5 = r5 / r0;
        r0 = r3.mSampling;
        r6 = r6 / r0;
        r0 = r3.mBitmapPool;
        r1 = android.graphics.Bitmap.Config.ARGB_8888;
        r0 = r0.get(r5, r6, r1);
        if (r0 != 0) goto L_0x0024;
    L_0x001e:
        r0 = android.graphics.Bitmap.Config.ARGB_8888;
        r0 = android.graphics.Bitmap.createBitmap(r5, r6, r0);
    L_0x0024:
        r5 = new android.graphics.Canvas;
        r5.<init>(r0);
        r6 = r3.mSampling;
        r6 = (float) r6;
        r1 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r6 = r1 / r6;
        r2 = r3.mSampling;
        r2 = (float) r2;
        r1 = r1 / r2;
        r5.scale(r6, r1);
        r6 = new android.graphics.Paint;
        r6.<init>();
        r1 = 2;
        r6.setFlags(r1);
        r1 = 0;
        r5.drawBitmap(r4, r1, r1, r6);
        r4 = android.os.Build.VERSION.SDK_INT;
        r5 = 18;
        if (r4 < r5) goto L_0x0053;
    L_0x004a:
        r4 = r3.mContext;	 Catch:{ RSRuntimeException -> 0x0053 }
        r5 = r3.mRadius;	 Catch:{ RSRuntimeException -> 0x0053 }
        r4 = jp.wasabeef.glide.transformations.internal.RSBlur.blur(r4, r0, r5);	 Catch:{ RSRuntimeException -> 0x0053 }
        goto L_0x0059;
    L_0x0053:
        r4 = r3.mRadius;
        r4 = jp.wasabeef.glide.transformations.internal.FastBlur.blur$2ae65b28(r0, r4);
    L_0x0059:
        r5 = r3.mBitmapPool;
        if (r4 != 0) goto L_0x005f;
    L_0x005d:
        r4 = 0;
        return r4;
    L_0x005f:
        r6 = new android.support.coreui.R$style;
        r6.<init>(r4, r5);
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: jp.wasabeef.glide.transformations.BlurTransformation.transform(com.bumptech.glide.load.engine.Resource, int, int):com.bumptech.glide.load.engine.Resource<android.graphics.Bitmap>");
    }

    public final String getId() {
        StringBuilder stringBuilder = new StringBuilder("BlurTransformation(radius=");
        stringBuilder.append(this.mRadius);
        stringBuilder.append(", sampling=");
        stringBuilder.append(this.mSampling);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
