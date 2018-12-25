package io.card.payment;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.WindowManager;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;

class CardScanner implements AutoFocusCallback, PreviewCallback, Callback {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String TAG = "CardScanner";
    private static boolean manualFallbackForError = false;
    private static boolean processingInProgress = false;
    private long captureStart;
    private Bitmap detectedBitmap;
    private boolean isSurfaceValid;
    private long mAutoFocusCompletedAt;
    private long mAutoFocusStartedAt;
    private Camera mCamera;
    private boolean mFirstPreviewFrame = true;
    private int mFrameOrientation = 1;
    private byte[] mPreviewBuffer;
    final int mPreviewHeight = 480;
    final int mPreviewWidth = 640;
    protected WeakReference<CardIOActivity> mScanActivityRef;
    private boolean mScanExpiry;
    private boolean mSuppressScan = false;
    private int mUnblurDigits = -1;
    private int numAutoRefocus;
    private int numFramesSkipped;
    private int numManualRefocus;
    private int numManualTorchChange;
    protected boolean useCamera = true;

    private native void nCleanup();

    private native void nGetGuideFrame(int i, int i2, int i3, Rect rect);

    private native int nGetNumFramesScanned();

    private native void nResetAnalytics();

    private native void nScanFrame(byte[] bArr, int i, int i2, int i3, DetectionInfo detectionInfo, Bitmap bitmap, boolean z);

    private native void nSetup(boolean z, float f);

    private native void nSetup(boolean z, float f, int i);

    public static native boolean nUseNeon();

    public static native boolean nUseTegra();

    public static native boolean nUseX86();

    static {
        StringBuilder stringBuilder;
        Log.i("card.io", "card.io 5.5.1 03/17/2017 14:23:12 -0400");
        try {
            boolean z;
            loadLibrary("cardioDecider");
            Log.d("card.io", "Loaded card.io decider library.");
            stringBuilder = new StringBuilder("    nUseNeon(): ");
            stringBuilder.append(nUseNeon());
            Log.d("card.io", stringBuilder.toString());
            stringBuilder = new StringBuilder("    nUseTegra():");
            stringBuilder.append(nUseTegra());
            Log.d("card.io", stringBuilder.toString());
            stringBuilder = new StringBuilder("    nUseX86():  ");
            stringBuilder.append(nUseX86());
            Log.d("card.io", stringBuilder.toString());
            if (!(nUseNeon() || nUseTegra())) {
                if (!nUseX86()) {
                    z = false;
                    if (z) {
                        loadLibrary("opencv_core");
                        Log.d("card.io", "Loaded opencv core library");
                        loadLibrary("opencv_imgproc");
                        Log.d("card.io", "Loaded opencv imgproc library");
                    }
                    if (nUseNeon()) {
                        loadLibrary("cardioRecognizer");
                        Log.i("card.io", "Loaded card.io NEON library");
                    } else if (nUseX86()) {
                        loadLibrary("cardioRecognizer");
                        Log.i("card.io", "Loaded card.io x86 library");
                    } else if (nUseTegra()) {
                        Log.w("card.io", "unsupported processor - card.io scanning requires ARMv7 or x86 architecture");
                        manualFallbackForError = true;
                    } else {
                        loadLibrary("cardioRecognizer_tegra2");
                        Log.i("card.io", "Loaded card.io Tegra2 library");
                    }
                }
            }
            z = true;
            if (z) {
                loadLibrary("opencv_core");
                Log.d("card.io", "Loaded opencv core library");
                loadLibrary("opencv_imgproc");
                Log.d("card.io", "Loaded opencv imgproc library");
            }
            if (nUseNeon()) {
                loadLibrary("cardioRecognizer");
                Log.i("card.io", "Loaded card.io NEON library");
            } else if (nUseX86()) {
                loadLibrary("cardioRecognizer");
                Log.i("card.io", "Loaded card.io x86 library");
            } else if (nUseTegra()) {
                Log.w("card.io", "unsupported processor - card.io scanning requires ARMv7 or x86 architecture");
                manualFallbackForError = true;
            } else {
                loadLibrary("cardioRecognizer_tegra2");
                Log.i("card.io", "Loaded card.io Tegra2 library");
            }
        } catch (UnsatisfiedLinkError e) {
            stringBuilder = new StringBuilder("Failed to load native library: ");
            stringBuilder.append(e.getMessage());
            Log.e("card.io", stringBuilder.toString());
            manualFallbackForError = true;
        }
    }

    private static void loadLibrary(String str) throws UnsatisfiedLinkError {
        try {
            System.loadLibrary(str);
        } catch (UnsatisfiedLinkError e) {
            String alternativeLibsPath = CardIONativeLibsConfig.getAlternativeLibsPath();
            if (alternativeLibsPath != null) {
                if (alternativeLibsPath.length() != 0) {
                    StringBuilder stringBuilder;
                    if (!File.separator.equals(Character.valueOf(alternativeLibsPath.charAt(alternativeLibsPath.length() - 1)))) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(alternativeLibsPath);
                        stringBuilder.append(File.separator);
                        alternativeLibsPath = stringBuilder.toString();
                    }
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(alternativeLibsPath);
                    stringBuilder.append(Build.CPU_ABI);
                    stringBuilder.append(File.separator);
                    stringBuilder.append(System.mapLibraryName(str));
                    String stringBuilder2 = stringBuilder.toString();
                    StringBuilder stringBuilder3 = new StringBuilder("loadLibrary failed for library ");
                    stringBuilder3.append(str);
                    stringBuilder3.append(". Trying ");
                    stringBuilder3.append(stringBuilder2);
                    Log.d("card.io", stringBuilder3.toString());
                    System.load(stringBuilder2);
                    return;
                }
            }
            throw e;
        }
    }

    static boolean processorSupported() {
        if (!manualFallbackForError) {
            boolean z;
            if (!(nUseNeon() || nUseTegra())) {
                if (!nUseX86()) {
                    z = false;
                    if (z) {
                    }
                }
            }
            z = true;
            return z;
        }
    }

    CardScanner(CardIOActivity cardIOActivity, int i) {
        boolean z = false;
        Intent intent = cardIOActivity.getIntent();
        if (intent != null) {
            this.mSuppressScan = intent.getBooleanExtra(CardIOActivity.EXTRA_SUPPRESS_SCAN, false);
            if (intent.getBooleanExtra(CardIOActivity.EXTRA_REQUIRE_EXPIRY, false) && intent.getBooleanExtra(CardIOActivity.EXTRA_SCAN_EXPIRY, true)) {
                z = true;
            }
            this.mScanExpiry = z;
            this.mUnblurDigits = intent.getIntExtra(CardIOActivity.EXTRA_UNBLUR_DIGITS, -1);
        }
        this.mScanActivityRef = new WeakReference(cardIOActivity);
        this.mFrameOrientation = i;
        nSetup(this.mSuppressScan, 1086324736, this.mUnblurDigits);
    }

    private android.hardware.Camera connectToCamera$366b0d9a(int r8) {
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
        r7 = this;
        r0 = java.lang.System.currentTimeMillis();
        r2 = r7.useCamera;
        if (r2 == 0) goto L_0x0037;
    L_0x0008:
        r2 = android.hardware.Camera.open();	 Catch:{ RuntimeException -> 0x0017, Exception -> 0x000d }
        return r2;
    L_0x000d:
        r8 = move-exception;
        r2 = "card.io";
        r3 = "Unexpected exception. Please report it as a GitHub issue";
        android.util.Log.e(r2, r3, r8);
        r8 = 0;
        goto L_0x002c;
    L_0x0017:
        r2 = "card.io";	 Catch:{ InterruptedException -> 0x0024 }
        r3 = "Wasn't able to connect to camera service. Waiting and trying again...";	 Catch:{ InterruptedException -> 0x0024 }
        android.util.Log.w(r2, r3);	 Catch:{ InterruptedException -> 0x0024 }
        r2 = 50;	 Catch:{ InterruptedException -> 0x0024 }
        java.lang.Thread.sleep(r2);	 Catch:{ InterruptedException -> 0x0024 }
        goto L_0x002c;
    L_0x0024:
        r2 = move-exception;
        r3 = "card.io";
        r4 = "Interrupted while waiting for camera";
        android.util.Log.e(r3, r4, r2);
    L_0x002c:
        r2 = java.lang.System.currentTimeMillis();
        r4 = r2 - r0;
        r2 = (long) r8;
        r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r6 < 0) goto L_0x0008;
    L_0x0037:
        r8 = TAG;
        r0 = "camera connect timeout";
        android.util.Log.w(r8, r0);
        r8 = 0;
        return r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.card.payment.CardScanner.connectToCamera$366b0d9a(int):android.hardware.Camera");
    }

    final void prepareScanner() {
        this.mFirstPreviewFrame = true;
        this.mAutoFocusStartedAt = 0;
        this.mAutoFocusCompletedAt = 0;
        this.numManualRefocus = 0;
        this.numAutoRefocus = 0;
        this.numManualTorchChange = 0;
        this.numFramesSkipped = 0;
        if (this.useCamera && this.mCamera == null) {
            this.mCamera = connectToCamera$366b0d9a(5000);
            if (this.mCamera == null) {
                Log.e("card.io", "prepare scanner couldn't connect to camera!");
                return;
            }
            int rotationalOffset;
            Camera camera = this.mCamera;
            if (VERSION.SDK_INT >= 21) {
                CameraInfo cameraInfo = new CameraInfo();
                Camera.getCameraInfo(0, cameraInfo);
                rotationalOffset = ((cameraInfo.orientation - getRotationalOffset()) + 360) % 360;
            } else {
                rotationalOffset = 90;
            }
            camera.setDisplayOrientation(rotationalOffset);
            Parameters parameters = this.mCamera.getParameters();
            List<Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
            if (supportedPreviewSizes != null) {
                Size size = null;
                for (Size size2 : supportedPreviewSizes) {
                    if (size2.width == 640 && size2.height == 480) {
                        size = size2;
                        break;
                    }
                }
                if (size == null) {
                    Log.w("card.io", "Didn't find a supported 640x480 resolution, so forcing");
                    Size size3 = (Size) supportedPreviewSizes.get(0);
                    size3.width = 640;
                    size3.height = 480;
                }
            }
            parameters.setPreviewSize(640, 480);
            this.mCamera.setParameters(parameters);
        } else if (!this.useCamera) {
            Log.w(TAG, "useCamera is false!");
        } else if (this.mCamera != null) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder("we already have a camera instance: ");
            stringBuilder.append(this.mCamera);
            Log.v(str, stringBuilder.toString());
        }
        if (this.detectedBitmap == null) {
            this.detectedBitmap = Bitmap.createBitmap(428, SubsamplingScaleImageView.ORIENTATION_270, Config.ARGB_8888);
        }
    }

    final boolean resumeScanning(SurfaceHolder surfaceHolder) {
        if (this.mCamera == null) {
            prepareScanner();
        }
        if (this.useCamera && this.mCamera == null) {
            Log.i(TAG, "null camera. failure");
            return false;
        }
        if (this.useCamera && this.mPreviewBuffer == null) {
            this.mPreviewBuffer = new byte[(((ImageFormat.getBitsPerPixel(this.mCamera.getParameters().getPreviewFormat()) / 8) * 307200) * 3)];
            this.mCamera.addCallbackBuffer(this.mPreviewBuffer);
        }
        surfaceHolder.addCallback(this);
        surfaceHolder.setType(3);
        if (this.useCamera) {
            this.mCamera.setPreviewCallbackWithBuffer(this);
        }
        if (this.isSurfaceValid) {
            makePreviewGo(surfaceHolder);
        }
        setFlashOn(false);
        this.captureStart = System.currentTimeMillis();
        nResetAnalytics();
        return true;
    }

    public final void pauseScanning() {
        setFlashOn(false);
        if (this.mCamera != null) {
            try {
                this.mCamera.stopPreview();
                this.mCamera.setPreviewDisplay(null);
            } catch (Throwable e) {
                Log.w("card.io", "can't stop preview display", e);
            }
            this.mCamera.setPreviewCallback(null);
            this.mCamera.release();
            this.mPreviewBuffer = null;
            this.mCamera = null;
        }
    }

    public final void endScanning() {
        if (this.mCamera != null) {
            pauseScanning();
        }
        nCleanup();
        this.mPreviewBuffer = null;
    }

    private boolean makePreviewGo(SurfaceHolder surfaceHolder) {
        this.mFirstPreviewFrame = true;
        if (this.useCamera) {
            try {
                this.mCamera.setPreviewDisplay(surfaceHolder);
                try {
                    this.mCamera.startPreview();
                    this.mCamera.autoFocus(this);
                } catch (SurfaceHolder surfaceHolder2) {
                    Log.e("card.io", "startPreview failed on camera. Error: ", surfaceHolder2);
                    return false;
                }
            } catch (SurfaceHolder surfaceHolder22) {
                Log.e("card.io", "can't set preview display", surfaceHolder22);
                return false;
            }
        }
        return true;
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.mCamera == null) {
            if (this.useCamera) {
                Log.wtf("card.io", "CardScanner.surfaceCreated() - camera is null!");
                return;
            }
        }
        this.isSurfaceValid = true;
        makePreviewGo(surfaceHolder);
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        String str = TAG;
        String str2 = "Preview.surfaceChanged(holder?:%b, f:%d, w:%d, h:%d )";
        Object[] objArr = new Object[4];
        objArr[0] = Boolean.valueOf(surfaceHolder != null ? 1 : null);
        objArr[1] = Integer.valueOf(i);
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = Integer.valueOf(i3);
        Log.d(str, String.format(str2, objArr));
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (this.mCamera != null) {
            try {
                this.mCamera.stopPreview();
            } catch (SurfaceHolder surfaceHolder2) {
                Log.e("card.io", "error stopping camera", surfaceHolder2);
            }
        }
        this.isSurfaceValid = null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onPreviewFrame(byte[] r12, android.hardware.Camera r13) {
        /*
        r11 = this;
        if (r12 != 0) goto L_0x000a;
    L_0x0002:
        r12 = TAG;
        r13 = "frame is null! skipping";
        android.util.Log.w(r12, r13);
        return;
    L_0x000a:
        r0 = processingInProgress;
        r1 = 1;
        if (r0 == 0) goto L_0x0021;
    L_0x000f:
        r0 = TAG;
        r2 = "processing in progress.... dropping frame";
        android.util.Log.e(r0, r2);
        r0 = r11.numFramesSkipped;
        r0 = r0 + r1;
        r11.numFramesSkipped = r0;
        if (r13 == 0) goto L_0x0020;
    L_0x001d:
        r13.addCallbackBuffer(r12);
    L_0x0020:
        return;
    L_0x0021:
        processingInProgress = r1;
        r0 = r11.mFirstPreviewFrame;
        r2 = 0;
        if (r0 == 0) goto L_0x0037;
    L_0x0028:
        r11.mFirstPreviewFrame = r2;
        r11.mFrameOrientation = r1;
        r0 = r11.mScanActivityRef;
        r0 = r0.get();
        r0 = (io.card.payment.CardIOActivity) r0;
        r0.onFirstFrame$13462e();
    L_0x0037:
        r0 = new io.card.payment.DetectionInfo;
        r0.<init>();
        r5 = 640; // 0x280 float:8.97E-43 double:3.16E-321;
        r6 = 480; // 0x1e0 float:6.73E-43 double:2.37E-321;
        r7 = r11.mFrameOrientation;
        r9 = r11.detectedBitmap;
        r10 = r11.mScanExpiry;
        r3 = r11;
        r4 = r12;
        r8 = r0;
        r3.nScanFrame(r4, r5, r6, r7, r8, r9, r10);
        r3 = r0.focusScore;
        r4 = 1086324736; // 0x40c00000 float:6.0 double:5.367157323E-315;
        r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1));
        if (r3 < 0) goto L_0x0056;
    L_0x0054:
        r3 = r1;
        goto L_0x0057;
    L_0x0056:
        r3 = r2;
    L_0x0057:
        if (r3 != 0) goto L_0x005d;
    L_0x0059:
        r11.triggerAutoFocus(r2);
        goto L_0x0086;
    L_0x005d:
        r3 = r0.complete;
        if (r3 != 0) goto L_0x0079;
    L_0x0061:
        r3 = r11.mSuppressScan;
        if (r3 == 0) goto L_0x0086;
    L_0x0065:
        r3 = r0.topEdge;
        if (r3 == 0) goto L_0x0076;
    L_0x0069:
        r3 = r0.bottomEdge;
        if (r3 == 0) goto L_0x0076;
    L_0x006d:
        r3 = r0.rightEdge;
        if (r3 == 0) goto L_0x0076;
    L_0x0071:
        r3 = r0.leftEdge;
        if (r3 == 0) goto L_0x0076;
    L_0x0075:
        goto L_0x0077;
    L_0x0076:
        r1 = r2;
    L_0x0077:
        if (r1 == 0) goto L_0x0086;
    L_0x0079:
        r1 = r11.mScanActivityRef;
        r1 = r1.get();
        r1 = (io.card.payment.CardIOActivity) r1;
        r3 = r11.detectedBitmap;
        r1.onCardDetected(r3, r0);
    L_0x0086:
        if (r13 == 0) goto L_0x008b;
    L_0x0088:
        r13.addCallbackBuffer(r12);
    L_0x008b:
        processingInProgress = r2;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.card.payment.CardScanner.onPreviewFrame(byte[], android.hardware.Camera):void");
    }

    void onEdgeUpdate(DetectionInfo detectionInfo) {
        ((CardIOActivity) this.mScanActivityRef.get()).onEdgeUpdate(detectionInfo);
    }

    final Rect getGuideFrame(int i, int i2) {
        int i3 = this.mFrameOrientation;
        if (!processorSupported()) {
            return null;
        }
        Rect rect = new Rect();
        nGetGuideFrame(i3, i, i2, rect);
        return rect;
    }

    final void setDeviceOrientation(int i) {
        this.mFrameOrientation = i;
    }

    public void onAutoFocus(boolean z, Camera camera) {
        this.mAutoFocusCompletedAt = System.currentTimeMillis();
    }

    final void triggerAutoFocus(boolean z) {
        if (this.useCamera) {
            if ((this.mAutoFocusCompletedAt < this.mAutoFocusStartedAt ? 1 : 0) == 0) {
                try {
                    this.mAutoFocusStartedAt = System.currentTimeMillis();
                    this.mCamera.autoFocus(this);
                    if (z) {
                        this.numManualRefocus += true;
                    } else {
                        this.numAutoRefocus += true;
                    }
                } catch (boolean z2) {
                    Log.w(TAG, "could not trigger auto focus: ".concat(String.valueOf(z2)));
                }
            }
        }
    }

    public final boolean isFlashOn() {
        if (this.useCamera) {
            return this.mCamera.getParameters().getFlashMode().equals("torch");
        }
        return false;
    }

    public final boolean setFlashOn(boolean z) {
        if (this.mCamera != null) {
            try {
                Parameters parameters = this.mCamera.getParameters();
                parameters.setFlashMode(z ? "torch" : "off");
                this.mCamera.setParameters(parameters);
                this.numManualTorchChange += true;
                return true;
            } catch (boolean z2) {
                Log.w(TAG, "Could not set flash mode: ".concat(String.valueOf(z2)));
            }
        }
        return false;
    }

    final int getRotationalOffset() {
        int rotation = ((WindowManager) ((CardIOActivity) this.mScanActivityRef.get()).getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation != 0) {
            if (rotation == 1) {
                return 90;
            }
            if (rotation == 2) {
                return SubsamplingScaleImageView.ORIENTATION_180;
            }
            if (rotation == 3) {
                return SubsamplingScaleImageView.ORIENTATION_270;
            }
        }
        return 0;
    }
}
