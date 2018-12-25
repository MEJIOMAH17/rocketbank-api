package jp.wasabeef.glide.transformations;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.support.coreui.C0888R.style;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class CropTransformation implements Transformation<Bitmap> {
    private int mHeight;
    private int mWidth;

    /* renamed from: jp.wasabeef.glide.transformations.CropTransformation$1 */
    static /* synthetic */ class C07601 {
        /* renamed from: $SwitchMap$jp$wasabeef$glide$transformations$CropTransformation$CropType */
        static final /* synthetic */ int[] f454xcea3632 = new int[CropType.values().length];

        static {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = jp.wasabeef.glide.transformations.CropTransformation.CropType.values();
            r0 = r0.length;
            r0 = new int[r0];
            f454xcea3632 = r0;
            r0 = f454xcea3632;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = jp.wasabeef.glide.transformations.CropTransformation.CropType.TOP;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = 1;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r0 = f454xcea3632;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = jp.wasabeef.glide.transformations.CropTransformation.CropType.CENTER;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x001f }
            r2 = 2;	 Catch:{ NoSuchFieldError -> 0x001f }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            r0 = f454xcea3632;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = jp.wasabeef.glide.transformations.CropTransformation.CropType.BOTTOM;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x002a }
            r2 = 3;	 Catch:{ NoSuchFieldError -> 0x002a }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: jp.wasabeef.glide.transformations.CropTransformation.1.<clinit>():void");
        }
    }

    public enum CropType {
        TOP,
        CENTER,
        BOTTOM
    }

    public final Resource<Bitmap> transform(Resource<Bitmap> resource, int i, int i2) {
        Bitmap bitmap = (Bitmap) resource.get();
        this.mWidth = this.mWidth == 0 ? bitmap.getWidth() : this.mWidth;
        this.mHeight = this.mHeight == 0 ? bitmap.getHeight() : this.mHeight;
        i = bitmap.getConfig() != 0 ? bitmap.getConfig() : Config.ARGB_8888;
        Object obj = null;
        i2 = obj.get(this.mWidth, this.mHeight, i);
        if (i2 == 0) {
            i2 = Bitmap.createBitmap(this.mWidth, this.mHeight, i);
        }
        i = Math.max(((float) this.mWidth) / ((float) bitmap.getWidth()), ((float) this.mHeight) / ((float) bitmap.getHeight()));
        float width = ((float) bitmap.getWidth()) * i;
        i *= (float) bitmap.getHeight();
        float f = (((float) this.mWidth) - width) / 2.0f;
        int i3 = C07601.f454xcea3632[obj.ordinal()];
        float f2 = BitmapDescriptorFactory.HUE_RED;
        switch (i3) {
            case 1:
                break;
            case 2:
                f2 = (((float) this.mHeight) - i) / 2.0f;
                break;
            case 3:
                f2 = ((float) this.mHeight) - i;
                break;
            default:
                break;
        }
        new Canvas(i2).drawBitmap(bitmap, obj, new RectF(f, f2, width + f, i + f2), obj);
        return i2 == 0 ? obj : new style(i2, obj);
    }

    public final String getId() {
        StringBuilder stringBuilder = new StringBuilder("CropTransformation(width=");
        stringBuilder.append(this.mWidth);
        stringBuilder.append(", height=");
        stringBuilder.append(this.mHeight);
        stringBuilder.append(", cropType=");
        stringBuilder.append(null);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
