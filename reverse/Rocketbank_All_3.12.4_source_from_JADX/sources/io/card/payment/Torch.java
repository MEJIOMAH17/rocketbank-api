package io.card.payment;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.drawable.shapes.RoundRectShape;
import android.support.v4.view.ViewCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;

class Torch {
    private static final String TAG = "Torch";
    private float mHeight;
    private boolean mOn = false;
    private float mWidth;

    public Torch(float f, float f2) {
        this.mWidth = f;
        this.mHeight = f2;
    }

    public final void draw(Canvas canvas) {
        canvas.save();
        canvas.translate((-this.mWidth) / 2.0f, (-this.mHeight) / 2.0f);
        Paint paint = new Paint();
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint.setStyle(Style.STROKE);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(1.5f);
        Paint paint2 = new Paint();
        paint2.setStyle(Style.FILL);
        paint2.setColor(-1);
        if (this.mOn) {
            paint2.setAlpha(192);
        } else {
            paint2.setAlpha(96);
        }
        float[] fArr = new float[8];
        Arrays.fill(fArr, 5.0f);
        RoundRectShape roundRectShape = new RoundRectShape(fArr, null, null);
        roundRectShape.resize(this.mWidth, this.mHeight);
        roundRectShape.draw(canvas, paint2);
        roundRectShape.draw(canvas, paint);
        paint = new Paint();
        paint.setStyle(Style.FILL_AND_STROKE);
        paint.setAntiAlias(true);
        if (this.mOn) {
            paint.setColor(-1);
        } else {
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        }
        Path path = new Path();
        path.moveTo(10.0f, BitmapDescriptorFactory.HUE_RED);
        path.lineTo(BitmapDescriptorFactory.HUE_RED, 11.0f);
        path.lineTo(6.0f, 11.0f);
        path.lineTo(2.0f, 20.0f);
        path.lineTo(13.0f, 8.0f);
        path.lineTo(7.0f, 8.0f);
        path.lineTo(10.0f, BitmapDescriptorFactory.HUE_RED);
        path.setLastPoint(10.0f, BitmapDescriptorFactory.HUE_RED);
        Matrix matrix = new Matrix();
        matrix.postTranslate(-6.5f, -10.0f);
        matrix.postScale(0.05f, 0.05f);
        path.transform(matrix);
        matrix = new Matrix();
        float f = 0.8f * this.mHeight;
        matrix.postScale(f, f);
        path.transform(matrix);
        canvas.translate(this.mWidth / 2.0f, this.mHeight / 2.0f);
        canvas.drawPath(path, paint);
        canvas.restore();
    }

    public final void setOn(boolean z) {
        this.mOn = z;
    }
}
