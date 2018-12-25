package io.card.payment;

import android.content.Context;
import android.graphics.Canvas;
import android.view.SurfaceView;
import android.view.ViewGroup;

class Preview extends ViewGroup {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String TAG = "Preview";
    private int mPreviewHeight = 640;
    private int mPreviewWidth = 480;
    SurfaceView mSurfaceView;

    public Preview(Context context) {
        super(context, null);
        this.mSurfaceView = new SurfaceView(context);
        addView(this.mSurfaceView);
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawARGB(255, 255, 0, 0);
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(resolveSize(getSuggestedMinimumWidth(), i), resolveSize(getSuggestedMinimumHeight(), i2));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z && getChildCount() <= false) {
            i3 -= i;
            i4 -= i2;
            if (this.mPreviewHeight * i3 > this.mPreviewWidth * i4) {
                z = (this.mPreviewWidth * i4) / this.mPreviewHeight;
                this.mSurfaceView.layout((i3 - z) / 2, 0, (i3 + z) / 2, i4);
                return;
            }
            z = (this.mPreviewHeight * i3) / this.mPreviewWidth;
            this.mSurfaceView.layout(0, (i4 - z) / 2, i3, (i4 + z) / 2);
        }
    }
}
