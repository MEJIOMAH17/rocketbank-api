package jp.co.cyberagent.android.gpuimage;

import android.opengl.GLSurfaceView;
import android.widget.FrameLayout;

public class GPUImageView extends FrameLayout {

    private class GPUImageGLSurfaceView extends GLSurfaceView {
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
        }
    }

    private class LoadingView extends FrameLayout {
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }
}
