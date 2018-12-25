package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.support.coreui.C0888R.style;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

public final class RoundedCornersTransformation implements Transformation<Bitmap> {
    private BitmapPool mBitmapPool;
    private CornerType mCornerType;
    private int mDiameter;
    private int mMargin;
    private int mRadius;

    public enum CornerType {
        ALL,
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT,
        OTHER_TOP_LEFT,
        OTHER_TOP_RIGHT,
        OTHER_BOTTOM_LEFT,
        OTHER_BOTTOM_RIGHT,
        DIAGONAL_FROM_TOP_LEFT,
        DIAGONAL_FROM_TOP_RIGHT
    }

    public RoundedCornersTransformation(Context context, int i, int i2) {
        this(context, i, i2, CornerType.ALL);
    }

    private RoundedCornersTransformation(Context context, int i, int i2, CornerType cornerType) {
        this(Glide.get(context).getBitmapPool(), i, i2, cornerType);
    }

    private RoundedCornersTransformation(BitmapPool bitmapPool, int i, int i2, CornerType cornerType) {
        this.mBitmapPool = bitmapPool;
        this.mRadius = i;
        this.mDiameter = this.mRadius << 1;
        this.mMargin = i2;
        this.mCornerType = cornerType;
    }

    public final Resource<Bitmap> transform(Resource<Bitmap> resource, int i, int i2) {
        Bitmap bitmap = (Bitmap) resource.get();
        i = bitmap.getWidth();
        i2 = bitmap.getHeight();
        Bitmap bitmap2 = this.mBitmapPool.get(i, i2, Config.ARGB_8888);
        if (bitmap2 == null) {
            bitmap2 = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        TileMode tileMode = TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        resource = ((float) i) - ((float) this.mMargin);
        i = ((float) i2) - ((float) this.mMargin);
        switch (this.mCornerType) {
            case ALL:
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                break;
            case TOP_LEFT:
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, (float) (this.mMargin + this.mDiameter), (float) (this.mMargin + this.mDiameter)), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) (this.mMargin + this.mRadius), (float) (this.mMargin + this.mRadius), i), paint);
                canvas.drawRect(new RectF((float) (this.mMargin + this.mRadius), (float) this.mMargin, resource, i), paint);
                break;
            case TOP_RIGHT:
                canvas.drawRoundRect(new RectF(resource - ((float) this.mDiameter), (float) this.mMargin, resource, (float) (this.mMargin + this.mDiameter)), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) this.mMargin, resource - ((float) this.mRadius), i), paint);
                canvas.drawRect(new RectF(resource - ((float) this.mRadius), (float) (this.mMargin + this.mRadius), resource, i), paint);
                break;
            case BOTTOM_LEFT:
                canvas.drawRoundRect(new RectF((float) this.mMargin, i - ((float) this.mDiameter), (float) (this.mMargin + this.mDiameter), i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) this.mMargin, (float) (this.mMargin + this.mDiameter), i - ((float) this.mRadius)), paint);
                canvas.drawRect(new RectF((float) (this.mMargin + this.mRadius), (float) this.mMargin, resource, i), paint);
                break;
            case BOTTOM_RIGHT:
                canvas.drawRoundRect(new RectF(resource - ((float) this.mDiameter), i - ((float) this.mDiameter), resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) this.mMargin, resource - ((float) this.mRadius), i), paint);
                canvas.drawRect(new RectF(resource - ((float) this.mRadius), (float) this.mMargin, resource, i - ((float) this.mRadius)), paint);
                break;
            case TOP:
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, resource, (float) (this.mMargin + this.mDiameter)), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) (this.mMargin + this.mRadius), resource, i), paint);
                break;
            case BOTTOM:
                canvas.drawRoundRect(new RectF((float) this.mMargin, i - ((float) this.mDiameter), resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) this.mMargin, resource, i - ((float) this.mRadius)), paint);
                break;
            case LEFT:
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, (float) (this.mMargin + this.mDiameter), i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) (this.mMargin + this.mRadius), (float) this.mMargin, resource, i), paint);
                break;
            case RIGHT:
                canvas.drawRoundRect(new RectF(resource - ((float) this.mDiameter), (float) this.mMargin, resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) this.mMargin, resource - ((float) this.mRadius), i), paint);
                break;
            case OTHER_TOP_LEFT:
                canvas.drawRoundRect(new RectF((float) this.mMargin, i - ((float) this.mDiameter), resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRoundRect(new RectF(resource - ((float) this.mDiameter), (float) this.mMargin, resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) this.mMargin, resource - ((float) this.mRadius), i - ((float) this.mRadius)), paint);
                break;
            case OTHER_TOP_RIGHT:
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, (float) (this.mMargin + this.mDiameter), i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRoundRect(new RectF((float) this.mMargin, i - ((float) this.mDiameter), resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) (this.mMargin + this.mRadius), (float) this.mMargin, resource, i - ((float) this.mRadius)), paint);
                break;
            case OTHER_BOTTOM_LEFT:
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, resource, (float) (this.mMargin + this.mDiameter)), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRoundRect(new RectF(resource - ((float) this.mDiameter), (float) this.mMargin, resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) (this.mMargin + this.mRadius), resource - ((float) this.mRadius), i), paint);
                break;
            case OTHER_BOTTOM_RIGHT:
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, resource, (float) (this.mMargin + this.mDiameter)), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, (float) (this.mMargin + this.mDiameter), i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) (this.mMargin + this.mRadius), (float) (this.mMargin + this.mRadius), resource, i), paint);
                break;
            case DIAGONAL_FROM_TOP_LEFT:
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, (float) (this.mMargin + this.mDiameter), (float) (this.mMargin + this.mDiameter)), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRoundRect(new RectF(resource - ((float) this.mDiameter), i - ((float) this.mDiameter), resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) (this.mMargin + this.mRadius), resource - ((float) this.mDiameter), i), paint);
                canvas.drawRect(new RectF((float) (this.mMargin + this.mDiameter), (float) this.mMargin, resource, i - ((float) this.mRadius)), paint);
                break;
            case DIAGONAL_FROM_TOP_RIGHT:
                canvas.drawRoundRect(new RectF(resource - ((float) this.mDiameter), (float) this.mMargin, resource, (float) (this.mMargin + this.mDiameter)), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRoundRect(new RectF((float) this.mMargin, i - ((float) this.mDiameter), (float) (this.mMargin + this.mDiameter), i), (float) this.mRadius, (float) this.mRadius, paint);
                canvas.drawRect(new RectF((float) this.mMargin, (float) this.mMargin, resource - ((float) this.mRadius), i - ((float) this.mRadius)), paint);
                canvas.drawRect(new RectF((float) (this.mMargin + this.mRadius), (float) (this.mMargin + this.mRadius), resource, i), paint);
                break;
            default:
                canvas.drawRoundRect(new RectF((float) this.mMargin, (float) this.mMargin, resource, i), (float) this.mRadius, (float) this.mRadius, paint);
                break;
        }
        return bitmap2 == null ? null : new style(bitmap2, this.mBitmapPool);
    }

    public final String getId() {
        StringBuilder stringBuilder = new StringBuilder("RoundedTransformation(radius=");
        stringBuilder.append(this.mRadius);
        stringBuilder.append(", margin=");
        stringBuilder.append(this.mMargin);
        stringBuilder.append(", diameter=");
        stringBuilder.append(this.mDiameter);
        stringBuilder.append(", cornerType=");
        stringBuilder.append(this.mCornerType.name());
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
