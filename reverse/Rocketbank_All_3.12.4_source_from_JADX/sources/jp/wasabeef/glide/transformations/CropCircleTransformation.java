package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.support.coreui.C0888R.style;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

public final class CropCircleTransformation implements Transformation<Bitmap> {
    private BitmapPool mBitmapPool;

    public final String getId() {
        return "CropCircleTransformation()";
    }

    public CropCircleTransformation(Context context) {
        this(Glide.get(context).getBitmapPool());
    }

    private CropCircleTransformation(BitmapPool bitmapPool) {
        this.mBitmapPool = bitmapPool;
    }

    public final Resource<Bitmap> transform(Resource<Bitmap> resource, int i, int i2) {
        Bitmap bitmap = (Bitmap) resource.get();
        i = Math.min(bitmap.getWidth(), bitmap.getHeight());
        i2 = (bitmap.getWidth() - i) / 2;
        int height = (bitmap.getHeight() - i) / 2;
        Bitmap bitmap2 = this.mBitmapPool.get(i, i, Config.ARGB_8888);
        if (bitmap2 == null) {
            bitmap2 = Bitmap.createBitmap(i, i, Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        TileMode tileMode = TileMode.CLAMP;
        Shader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        if (!(i2 == 0 && height == 0)) {
            resource = new Matrix();
            resource.setTranslate((float) (-i2), (float) (-height));
            bitmapShader.setLocalMatrix(resource);
        }
        paint.setShader(bitmapShader);
        paint.setAntiAlias(true);
        resource = ((float) i) / 1073741824;
        canvas.drawCircle(resource, resource, resource, paint);
        return bitmap2 == null ? null : new style(bitmap2, this.mBitmapPool);
    }
}
