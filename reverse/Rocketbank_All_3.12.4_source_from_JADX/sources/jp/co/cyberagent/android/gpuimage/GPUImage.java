package jp.co.cyberagent.android.gpuimage;

import android.opengl.GLES20;
import android.util.Log;
import java.util.LinkedList;

public final class GPUImage {
    private final String mFragmentShader;
    private final LinkedList<Runnable> mRunOnDraw;
    private final String mVertexShader;

    public enum ScaleType {
        CENTER_INSIDE,
        CENTER_CROP
    }

    public static void init() {
        String str = null.mVertexShader;
        String str2 = null.mFragmentShader;
        int[] iArr = new int[1];
        int loadShader = OpenGlUtils.loadShader(str, 35633);
        if (loadShader == 0) {
            Log.d("Load Program", "Vertex Shader Failed");
        } else {
            int loadShader2 = OpenGlUtils.loadShader(str2, 35632);
            if (loadShader2 == 0) {
                Log.d("Load Program", "Fragment Shader Failed");
            } else {
                int glCreateProgram = GLES20.glCreateProgram();
                GLES20.glAttachShader(glCreateProgram, loadShader);
                GLES20.glAttachShader(glCreateProgram, loadShader2);
                GLES20.glLinkProgram(glCreateProgram);
                GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
                if (iArr[0] <= 0) {
                    Log.d("Load Program", "Linking Failed");
                } else {
                    GLES20.glDeleteShader(loadShader);
                    GLES20.glDeleteShader(loadShader2);
                }
            }
        }
        GLES20.glGetAttribLocation(0, "position");
        GLES20.glGetUniformLocation(0, "inputImageTexture");
        GLES20.glGetAttribLocation(0, "inputTextureCoordinate");
    }

    public static void onDraw$785d2f9c() {
        GLES20.glUseProgram(0);
        while (!null.mRunOnDraw.isEmpty()) {
            ((Runnable) null.mRunOnDraw.removeFirst()).run();
        }
    }
}
