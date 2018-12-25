package jp.co.cyberagent.android.gpuimage;

import android.annotation.TargetApi;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView.Renderer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.Queue;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import jp.co.cyberagent.android.gpuimage.GPUImage.ScaleType;
import jp.co.cyberagent.android.gpuimage.util.TextureRotationUtil;

@TargetApi(11)
public class GPUImageRenderer implements PreviewCallback, Renderer {
    static final float[] CUBE = new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    private final FloatBuffer mGLCubeBuffer;
    private IntBuffer mGLRgbBuffer;
    private final FloatBuffer mGLTextureBuffer;
    private int mGLTextureId;
    private int mImageHeight;
    private int mImageWidth;
    private int mOutputHeight;
    private int mOutputWidth;
    private final Queue<Runnable> mRunOnDraw;
    private final Queue<Runnable> mRunOnDrawEnd;
    public final Object mSurfaceChangedWaiter;

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        GLES20.glClearColor(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        GLES20.glDisable(2929);
        GPUImage.init();
    }

    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        this.mOutputWidth = i;
        this.mOutputHeight = i2;
        GLES20.glViewport(0, 0, i, i2);
        GLES20.glUseProgram(0);
        adjustImageScaling();
        synchronized (this.mSurfaceChangedWaiter) {
            this.mSurfaceChangedWaiter.notifyAll();
        }
    }

    public void onDrawFrame(GL10 gl10) {
        GLES20.glClear(16640);
        runAll(this.mRunOnDraw);
        GPUImage.onDraw$785d2f9c();
        runAll(this.mRunOnDrawEnd);
    }

    private static void runAll(Queue<Runnable> queue) {
        synchronized (queue) {
            while (!queue.isEmpty()) {
                ((Runnable) queue.poll()).run();
            }
        }
    }

    public void onPreviewFrame(final byte[] bArr, final Camera camera) {
        final Size previewSize = camera.getParameters().getPreviewSize();
        if (this.mGLRgbBuffer == null) {
            this.mGLRgbBuffer = IntBuffer.allocate(previewSize.width * previewSize.height);
        }
        if (this.mRunOnDraw.isEmpty()) {
            C07571 c07571 = new Runnable() {
                public final void run() {
                    GPUImageNativeLibrary.YUVtoRBGA(bArr, previewSize.width, previewSize.height, GPUImageRenderer.this.mGLRgbBuffer.array());
                    GPUImageRenderer gPUImageRenderer = GPUImageRenderer.this;
                    Buffer access$000 = GPUImageRenderer.this.mGLRgbBuffer;
                    Size size = previewSize;
                    int access$100 = GPUImageRenderer.this.mGLTextureId;
                    int[] iArr = new int[1];
                    if (access$100 == -1) {
                        GLES20.glGenTextures(1, iArr, 0);
                        GLES20.glBindTexture(3553, iArr[0]);
                        GLES20.glTexParameterf(3553, 10240, 9729.0f);
                        GLES20.glTexParameterf(3553, 10241, 9729.0f);
                        GLES20.glTexParameterf(3553, 10242, 33071.0f);
                        GLES20.glTexParameterf(3553, 10243, 33071.0f);
                        GLES20.glTexImage2D(3553, 0, 6408, size.width, size.height, 0, 6408, 5121, access$000);
                    } else {
                        GLES20.glBindTexture(3553, access$100);
                        GLES20.glTexSubImage2D(3553, 0, 0, 0, size.width, size.height, 6408, 5121, access$000);
                        iArr[0] = access$100;
                    }
                    gPUImageRenderer.mGLTextureId = iArr[0];
                    camera.addCallbackBuffer(bArr);
                    if (GPUImageRenderer.this.mImageWidth != previewSize.width) {
                        GPUImageRenderer.this.mImageWidth = previewSize.width;
                        GPUImageRenderer.this.mImageHeight = previewSize.height;
                        GPUImageRenderer.this.adjustImageScaling();
                    }
                }
            };
            synchronized (this.mRunOnDraw) {
                this.mRunOnDraw.add(c07571);
            }
        }
    }

    private void adjustImageScaling() {
        float f = (float) this.mOutputWidth;
        float f2 = (float) this.mOutputHeight;
        if (Rotation.ROTATION_270 == null || Rotation.ROTATION_90 == null) {
            f = (float) r0.mOutputHeight;
            f2 = (float) r0.mOutputWidth;
        }
        float max = Math.max(f / ((float) r0.mImageWidth), f2 / ((float) r0.mImageHeight));
        float round = ((float) Math.round(((float) r0.mImageWidth) * max)) / f;
        f = ((float) Math.round(((float) r0.mImageHeight) * max)) / f2;
        float[] fArr = CUBE;
        float[] rotation$44ccd82e = TextureRotationUtil.getRotation$44ccd82e();
        if (ScaleType.CENTER_CROP == null) {
            round = (1.0f - (1.0f / round)) / 2.0f;
            f = (1.0f - (1.0f / f)) / 2.0f;
            float[] fArr2 = new float[8];
            fArr2[0] = rotation$44ccd82e[0] == BitmapDescriptorFactory.HUE_RED ? round : 1.0f - round;
            fArr2[1] = rotation$44ccd82e[1] == BitmapDescriptorFactory.HUE_RED ? f : 1.0f - f;
            fArr2[2] = rotation$44ccd82e[2] == BitmapDescriptorFactory.HUE_RED ? round : 1.0f - round;
            fArr2[3] = rotation$44ccd82e[3] == BitmapDescriptorFactory.HUE_RED ? f : 1.0f - f;
            fArr2[4] = rotation$44ccd82e[4] == BitmapDescriptorFactory.HUE_RED ? round : 1.0f - round;
            fArr2[5] = rotation$44ccd82e[5] == BitmapDescriptorFactory.HUE_RED ? f : 1.0f - f;
            if (rotation$44ccd82e[6] != BitmapDescriptorFactory.HUE_RED) {
                round = 1.0f - round;
            }
            fArr2[6] = round;
            if (rotation$44ccd82e[7] != BitmapDescriptorFactory.HUE_RED) {
                f = 1.0f - f;
            }
            fArr2[7] = f;
            rotation$44ccd82e = fArr2;
        } else {
            fArr = new float[]{CUBE[0] / f, CUBE[1] / round, CUBE[2] / f, CUBE[3] / round, CUBE[4] / f, CUBE[5] / round, CUBE[6] / f, CUBE[7] / round};
        }
        r0.mGLCubeBuffer.clear();
        r0.mGLCubeBuffer.put(fArr).position(0);
        r0.mGLTextureBuffer.clear();
        r0.mGLTextureBuffer.put(rotation$44ccd82e).position(0);
    }
}
