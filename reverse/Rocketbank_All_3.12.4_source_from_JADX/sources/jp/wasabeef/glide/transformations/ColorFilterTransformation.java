package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.support.coreui.C0888R.style;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class ColorFilterTransformation implements Transformation<Bitmap> {
    private BitmapPool mBitmapPool;
    private int mColor;

    public ColorFilterTransformation(Context context, int i) {
        this(Glide.get(context).getBitmapPool(), i);
    }

    private ColorFilterTransformation(BitmapPool bitmapPool, int i) {
        this.mBitmapPool = bitmapPool;
        this.mColor = i;
    }

    public final Resource<Bitmap> transform(Resource<Bitmap> resource, int i, int i2) {
        Bitmap bitmap = (Bitmap) resource.get();
        i = bitmap.getWidth();
        i2 = bitmap.getHeight();
        Config config = bitmap.getConfig() != null ? bitmap.getConfig() : Config.ARGB_8888;
        Bitmap bitmap2 = this.mBitmapPool.get(i, i2, config);
        if (bitmap2 == null) {
            bitmap2 = Bitmap.createBitmap(i, i2, config);
        }
        i = new Canvas(bitmap2);
        i2 = new Paint();
        i2.setAntiAlias(true);
        i2.setColorFilter(new PorterDuffColorFilter(this.mColor, Mode.SRC_ATOP));
        i.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i2);
        return bitmap2 == null ? null : new style(bitmap2, this.mBitmapPool);
    }

    public final String getId() {
        StringBuilder stringBuilder = new StringBuilder("ColorFilterTransformation(color=");
        stringBuilder.append(this.mColor);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
