package io.card.payment;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.card.payment.i18n.LocalizedStrings;
import io.card.payment.i18n.StringKey;
import io.card.payment.ui.ActivityHelper;
import io.card.payment.ui.ViewUtil;
import java.io.ByteArrayInputStream;
import java.util.Date;

public final class CardIOActivity extends Activity {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String EXTRA_CAPTURED_CARD_IMAGE = "io.card.payment.capturedCardImage";
    public static final String EXTRA_GUIDE_COLOR = "io.card.payment.guideColor";
    public static final String EXTRA_HIDE_CARDIO_LOGO = "io.card.payment.hideLogo";
    public static final String EXTRA_KEEP_APPLICATION_THEME = "io.card.payment.keepApplicationTheme";
    public static final String EXTRA_LANGUAGE_OR_LOCALE = "io.card.payment.languageOrLocale";
    public static final String EXTRA_NO_CAMERA = "io.card.payment.noCamera";
    public static final String EXTRA_REQUIRE_CARDHOLDER_NAME = "io.card.payment.requireCardholderName";
    public static final String EXTRA_REQUIRE_CVV = "io.card.payment.requireCVV";
    public static final String EXTRA_REQUIRE_EXPIRY = "io.card.payment.requireExpiry";
    public static final String EXTRA_REQUIRE_POSTAL_CODE = "io.card.payment.requirePostalCode";
    public static final String EXTRA_RESTRICT_POSTAL_CODE_TO_NUMERIC_ONLY = "io.card.payment.restrictPostalCodeToNumericOnly";
    public static final String EXTRA_RETURN_CARD_IMAGE = "io.card.payment.returnCardImage";
    public static final String EXTRA_SCAN_EXPIRY = "io.card.payment.scanExpiry";
    public static final String EXTRA_SCAN_INSTRUCTIONS = "io.card.payment.scanInstructions";
    public static final String EXTRA_SCAN_OVERLAY_LAYOUT_ID = "io.card.payment.scanOverlayLayoutId";
    public static final String EXTRA_SCAN_RESULT = "io.card.payment.scanResult";
    public static final String EXTRA_SUPPRESS_CONFIRMATION = "io.card.payment.suppressConfirmation";
    public static final String EXTRA_SUPPRESS_MANUAL_ENTRY = "io.card.payment.suppressManual";
    public static final String EXTRA_SUPPRESS_SCAN = "io.card.payment.suppressScan";
    public static final String EXTRA_UNBLUR_DIGITS = "io.card.payment.unblurDigits";
    public static final String EXTRA_USE_CARDIO_LOGO = "io.card.payment.useCardIOLogo";
    public static final String EXTRA_USE_PAYPAL_ACTIONBAR_ICON = "io.card.payment.intentSenderIsPayPal";
    public static final int RESULT_CARD_INFO = 13274384;
    public static final int RESULT_CONFIRMATION_SUPPRESSED;
    public static final int RESULT_ENTRY_CANCELED;
    public static final int RESULT_SCAN_NOT_AVAILABLE;
    public static final int RESULT_SCAN_SUPPRESSED;
    private static final String TAG = "CardIOActivity";
    private static final long[] VIBRATE_PATTERN = new long[]{0, 70, 10, 40};
    private static int lastResult = 13274385;
    static Bitmap markedCardImage;
    private static int numActivityAllocations;
    private LinearLayout customOverlayLayout;
    private CardScanner mCardScanner;
    private boolean mDetectOnly;
    private CreditCard mDetectedCard;
    private int mFrameOrientation;
    private Rect mGuideFrame;
    private int mLastDegrees;
    private FrameLayout mMainLayout;
    private OverlayView mOverlay;
    Preview mPreview;
    private RelativeLayout mUIBar;
    private boolean manualEntryFallbackOrForced = false;
    private OrientationEventListener orientationListener;
    private boolean suppressManualEntry;
    private boolean useApplicationTheme;
    private boolean waitingForPermission;

    /* renamed from: io.card.payment.CardIOActivity$3 */
    class C07333 implements OnClickListener {
        C07333() {
        }

        public final void onClick(View view) {
            CardIOActivity.this.nextActivity();
        }
    }

    public static String sdkVersion() {
        return BuildConfig.PRODUCT_VERSION;
    }

    static {
        int i = lastResult;
        lastResult = i + 1;
        RESULT_ENTRY_CANCELED = i;
        i = lastResult;
        lastResult = i + 1;
        RESULT_SCAN_NOT_AVAILABLE = i;
        i = lastResult;
        lastResult = i + 1;
        RESULT_SCAN_SUPPRESSED = i;
        i = lastResult;
        lastResult = i + 1;
        RESULT_CONFIRMATION_SUPPRESSED = i;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = numActivityAllocations + 1;
        numActivityAllocations = i;
        if (i != 1) {
            Log.i(TAG, String.format("INTERNAL WARNING: There are %d (not 1) CardIOActivity allocations!", new Object[]{Integer.valueOf(numActivityAllocations)}));
        }
        Intent intent = getIntent();
        this.useApplicationTheme = getIntent().getBooleanExtra(EXTRA_KEEP_APPLICATION_THEME, false);
        ActivityHelper.setActivityTheme(this, this.useApplicationTheme);
        LocalizedStrings.setLanguage(intent);
        this.mDetectOnly = intent.getBooleanExtra(EXTRA_SUPPRESS_SCAN, false);
        String manifestHasConfigChange = Util.manifestHasConfigChange(getPackageManager().resolveActivity(intent, 65536), CardIOActivity.class);
        if (manifestHasConfigChange != null) {
            throw new RuntimeException(manifestHasConfigChange);
        }
        this.suppressManualEntry = intent.getBooleanExtra(EXTRA_SUPPRESS_MANUAL_ENTRY, false);
        if (bundle != null) {
            this.waitingForPermission = bundle.getBoolean("io.card.payment.waitingForPermission");
        }
        if (intent.getBooleanExtra(EXTRA_NO_CAMERA, false) != null) {
            Log.i("card.io", "EXTRA_NO_CAMERA set to true. Skipping camera.");
            this.manualEntryFallbackOrForced = true;
        } else if (CardScanner.processorSupported() == null) {
            Log.i("card.io", "Processor not Supported. Skipping camera.");
            this.manualEntryFallbackOrForced = true;
        } else {
            try {
                if (VERSION.SDK_INT < 23) {
                    checkCamera();
                    if (this.manualEntryFallbackOrForced != null) {
                        if (this.suppressManualEntry != null) {
                            Log.i("card.io", "Camera not available and manual entry suppressed.");
                            setResult(RESULT_SCAN_NOT_AVAILABLE, null);
                            markedCardImage = null;
                            finish();
                        }
                        return;
                    }
                    requestWindowFeature(1);
                    showCameraScannerOverlay();
                } else if (this.waitingForPermission == null) {
                    if (checkSelfPermission("android.permission.CAMERA") == -1) {
                        Log.d(TAG, "permission denied to camera - requesting it");
                        bundle = new String[]{"android.permission.CAMERA"};
                        this.waitingForPermission = true;
                        requestPermissions(bundle, 11);
                        return;
                    }
                    checkCamera();
                    if (this.manualEntryFallbackOrForced != null) {
                        if (this.suppressManualEntry != null) {
                            Log.i("card.io", "Camera not available and manual entry suppressed.");
                            setResult(RESULT_SCAN_NOT_AVAILABLE, null);
                            markedCardImage = null;
                            finish();
                        }
                        return;
                    }
                    showCameraScannerOverlay();
                }
            } catch (Bundle bundle2) {
                handleGeneralExceptionError(bundle2);
            }
        }
    }

    private void checkCamera() {
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
        r5 = this;
        r0 = 1;
        r1 = io.card.payment.Util.hardwareSupported();	 Catch:{ CameraUnavailableException -> 0x0029 }
        if (r1 != 0) goto L_0x0028;	 Catch:{ CameraUnavailableException -> 0x0029 }
    L_0x0007:
        r1 = io.card.payment.i18n.StringKey.ERROR_NO_DEVICE_SUPPORT;	 Catch:{ CameraUnavailableException -> 0x0029 }
        r2 = io.card.payment.i18n.LocalizedStrings.getString(r1);	 Catch:{ CameraUnavailableException -> 0x0029 }
        r3 = "card.io";	 Catch:{ CameraUnavailableException -> 0x0029 }
        r4 = new java.lang.StringBuilder;	 Catch:{ CameraUnavailableException -> 0x0029 }
        r4.<init>();	 Catch:{ CameraUnavailableException -> 0x0029 }
        r4.append(r1);	 Catch:{ CameraUnavailableException -> 0x0029 }
        r1 = ": ";	 Catch:{ CameraUnavailableException -> 0x0029 }
        r4.append(r1);	 Catch:{ CameraUnavailableException -> 0x0029 }
        r4.append(r2);	 Catch:{ CameraUnavailableException -> 0x0029 }
        r1 = r4.toString();	 Catch:{ CameraUnavailableException -> 0x0029 }
        android.util.Log.w(r3, r1);	 Catch:{ CameraUnavailableException -> 0x0029 }
        r5.manualEntryFallbackOrForced = r0;	 Catch:{ CameraUnavailableException -> 0x0029 }
    L_0x0028:
        return;
    L_0x0029:
        r1 = io.card.payment.i18n.StringKey.ERROR_CAMERA_CONNECT_FAIL;
        r2 = io.card.payment.i18n.LocalizedStrings.getString(r1);
        r3 = "card.io";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r4.append(r1);
        r1 = ": ";
        r4.append(r1);
        r4.append(r2);
        r1 = r4.toString();
        android.util.Log.e(r3, r1);
        r1 = android.widget.Toast.makeText(r5, r2, r0);
        r2 = 17;
        r3 = 0;
        r4 = -75;
        r1.setGravity(r2, r3, r4);
        r1.show();
        r5.manualEntryFallbackOrForced = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.card.payment.CardIOActivity.checkCamera():void");
    }

    private void showCameraScannerOverlay() {
        if (VERSION.SDK_INT >= 16) {
            getWindow().getDecorView().setSystemUiVisibility(4);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.hide();
            }
        }
        try {
            this.mGuideFrame = new Rect();
            this.mFrameOrientation = 1;
            if (!getIntent().getBooleanExtra("io.card.payment.cameraBypassTestMode", false)) {
                this.mCardScanner = new CardScanner(this, this.mFrameOrientation);
            } else if (getPackageName().contentEquals("io.card.development")) {
                this.mCardScanner = (CardScanner) Class.forName("io.card.payment.CardScannerTester").getConstructor(new Class[]{getClass(), Integer.TYPE}).newInstance(new Object[]{this, Integer.valueOf(this.mFrameOrientation)});
            } else {
                throw new IllegalStateException("Illegal access of private extra");
            }
            this.mCardScanner.prepareScanner();
            setPreviewLayout();
            this.orientationListener = new OrientationEventListener(this) {
                public final void onOrientationChanged(int i) {
                    CardIOActivity.this.doOrientationChange(i);
                }
            };
        } catch (Exception e) {
            handleGeneralExceptionError(e);
        }
    }

    private void handleGeneralExceptionError(Exception exception) {
        CharSequence string = LocalizedStrings.getString(StringKey.ERROR_CAMERA_UNEXPECTED_FAIL);
        Log.e("card.io", "Unknown exception, please post the stack trace as a GitHub issue", exception);
        Toast makeText = Toast.makeText(this, string, 1);
        makeText.setGravity(17, 0, -75);
        makeText.show();
        this.manualEntryFallbackOrForced = true;
    }

    private void doOrientationChange(int i) {
        if (i >= 0) {
            if (this.mCardScanner != null) {
                i += this.mCardScanner.getRotationalOffset();
                if (i > 360) {
                    i -= 360;
                }
                int i2 = -1;
                if (i >= 15) {
                    if (i <= 345) {
                        if (i > 75 && i < 105) {
                            this.mFrameOrientation = 4;
                            i2 = 90;
                            this.mCardScanner.setDeviceOrientation(this.mFrameOrientation);
                            setDeviceDegrees(i2);
                            if (i2 != 90) {
                                rotateCustomOverlay(1132920832);
                            } else if (i2 != SubsamplingScaleImageView.ORIENTATION_270) {
                                rotateCustomOverlay(1119092736);
                            } else {
                                rotateCustomOverlay((float) i2);
                            }
                        } else if (i <= 165 || i >= 195) {
                            if (i > 255 && i < 285) {
                                this.mFrameOrientation = 3;
                                i2 = SubsamplingScaleImageView.ORIENTATION_270;
                            }
                            if (i2 >= 0 && i2 != this.mLastDegrees) {
                                this.mCardScanner.setDeviceOrientation(this.mFrameOrientation);
                                setDeviceDegrees(i2);
                                if (i2 != 90) {
                                    rotateCustomOverlay(1132920832);
                                } else if (i2 != SubsamplingScaleImageView.ORIENTATION_270) {
                                    rotateCustomOverlay(1119092736);
                                } else {
                                    rotateCustomOverlay((float) i2);
                                }
                            }
                        } else {
                            i2 = SubsamplingScaleImageView.ORIENTATION_180;
                            this.mFrameOrientation = 2;
                            this.mCardScanner.setDeviceOrientation(this.mFrameOrientation);
                            setDeviceDegrees(i2);
                            if (i2 != 90) {
                                rotateCustomOverlay(1132920832);
                            } else if (i2 != SubsamplingScaleImageView.ORIENTATION_270) {
                                rotateCustomOverlay((float) i2);
                            } else {
                                rotateCustomOverlay(1119092736);
                            }
                        }
                    }
                }
                i2 = 0;
                this.mFrameOrientation = 1;
                this.mCardScanner.setDeviceOrientation(this.mFrameOrientation);
                setDeviceDegrees(i2);
                if (i2 != 90) {
                    rotateCustomOverlay(1132920832);
                } else if (i2 != SubsamplingScaleImageView.ORIENTATION_270) {
                    rotateCustomOverlay((float) i2);
                } else {
                    rotateCustomOverlay(1119092736);
                }
            }
        }
    }

    protected final void onResume() {
        super.onResume();
        if (!this.waitingForPermission) {
            if (this.manualEntryFallbackOrForced) {
                nextActivity();
                return;
            }
            Util.logNativeMemoryStats();
            getWindow().addFlags(1024);
            getWindow().addFlags(128);
            if (VERSION.SDK_INT >= 11) {
                getWindow().addFlags(8192);
            }
            setRequestedOrientation(1);
            this.orientationListener.enable();
            this.mDetectedCard = null;
            boolean resumeScanning = this.mCardScanner.resumeScanning(this.mPreview.mSurfaceView.getHolder());
            if (resumeScanning) {
                this.mUIBar.setVisibility(0);
            }
            if (resumeScanning) {
                setFlashOn(false);
            } else {
                Log.e(TAG, "Could not connect to camera.");
                CharSequence string = LocalizedStrings.getString(StringKey.ERROR_CAMERA_UNEXPECTED_FAIL);
                Log.e("card.io", "error display: ".concat(String.valueOf(string)));
                Toast.makeText(this, string, 1).show();
                nextActivity();
            }
            doOrientationChange(this.mLastDegrees);
        }
    }

    protected final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("io.card.payment.waitingForPermission", this.waitingForPermission);
    }

    protected final void onPause() {
        super.onPause();
        if (this.orientationListener != null) {
            this.orientationListener.disable();
        }
        setFlashOn(false);
        if (this.mCardScanner != null) {
            this.mCardScanner.pauseScanning();
        }
    }

    protected final void onDestroy() {
        this.mOverlay = null;
        numActivityAllocations--;
        if (this.orientationListener != null) {
            this.orientationListener.disable();
        }
        setFlashOn(false);
        if (this.mCardScanner != null) {
            this.mCardScanner.endScanning();
            this.mCardScanner = null;
        }
        super.onDestroy();
    }

    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 11) {
            this.waitingForPermission = false;
            if (iArr.length <= null || iArr[0] != 0) {
                this.manualEntryFallbackOrForced = true;
            } else {
                showCameraScannerOverlay();
            }
        }
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10) {
            if (i2 == 0) {
                Log.d(TAG, "ignoring onActivityResult(RESULT_CANCELED) caused only when Camera Permissions are Denied in Android 23");
                return;
            }
            if (!(i2 == RESULT_CARD_INFO || i2 == RESULT_ENTRY_CANCELED)) {
                if (this.manualEntryFallbackOrForced == 0) {
                    if (this.mUIBar != 0) {
                        this.mUIBar.setVisibility(0);
                    }
                }
            }
            if (intent == null || intent.hasExtra(EXTRA_SCAN_RESULT) == 0) {
                Log.d(TAG, "no data in EXTRA_SCAN_RESULT");
            } else {
                i = TAG;
                StringBuilder stringBuilder = new StringBuilder("EXTRA_SCAN_RESULT: ");
                stringBuilder.append(intent.getParcelableExtra(EXTRA_SCAN_RESULT));
                Log.v(i, stringBuilder.toString());
            }
            setResult(i2, intent);
            markedCardImage = 0;
            finish();
        }
    }

    public final void onBackPressed() {
        if (this.mCardScanner != null) {
            super.onBackPressed();
        }
    }

    public static boolean canReadCardWithCamera() {
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
        r0 = 0;
        r1 = io.card.payment.Util.hardwareSupported();	 Catch:{ CameraUnavailableException -> 0x000e, RuntimeException -> 0x0006 }
        return r1;
    L_0x0006:
        r1 = TAG;
        r2 = "RuntimeException accessing Util.hardwareSupported()";
        android.util.Log.w(r1, r2);
        return r0;
    L_0x000e:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.card.payment.CardIOActivity.canReadCardWithCamera():boolean");
    }

    public static Date sdkBuildDate() {
        return new Date(BuildConfig.BUILD_TIME);
    }

    public static Bitmap getCapturedCardImage(Intent intent) {
        if (intent != null) {
            if (intent.hasExtra(EXTRA_CAPTURED_CARD_IMAGE)) {
                return BitmapFactory.decodeStream(new ByteArrayInputStream(intent.getByteArrayExtra(EXTRA_CAPTURED_CARD_IMAGE)), null, new Options());
            }
        }
        return null;
    }

    final void onFirstFrame$13462e() {
        SurfaceView surfaceView = this.mPreview.mSurfaceView;
        if (this.mOverlay != null) {
            this.mOverlay.setCameraPreviewRect(new Rect(surfaceView.getLeft(), surfaceView.getTop(), surfaceView.getRight(), surfaceView.getBottom()));
        }
        this.mFrameOrientation = 1;
        setDeviceDegrees(0);
        if (1 != this.mFrameOrientation) {
            Log.wtf("card.io", "the orientation of the scanner doesn't match the orientation of the activity");
        }
        this.mOverlay.setDetectionInfo(new DetectionInfo());
    }

    final void onEdgeUpdate(DetectionInfo detectionInfo) {
        this.mOverlay.setDetectionInfo(detectionInfo);
    }

    final void onCardDetected(android.graphics.Bitmap r8, io.card.payment.DetectionInfo r9) {
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
        r0 = "vibrator";	 Catch:{ SecurityException -> 0x0018, Exception -> 0x000f }
        r0 = r7.getSystemService(r0);	 Catch:{ SecurityException -> 0x0018, Exception -> 0x000f }
        r0 = (android.os.Vibrator) r0;	 Catch:{ SecurityException -> 0x0018, Exception -> 0x000f }
        r1 = VIBRATE_PATTERN;	 Catch:{ SecurityException -> 0x0018, Exception -> 0x000f }
        r2 = -1;	 Catch:{ SecurityException -> 0x0018, Exception -> 0x000f }
        r0.vibrate(r1, r2);	 Catch:{ SecurityException -> 0x0018, Exception -> 0x000f }
        goto L_0x001f;
    L_0x000f:
        r0 = move-exception;
        r1 = "card.io";
        r2 = "Exception while attempting to vibrate: ";
        android.util.Log.w(r1, r2, r0);
        goto L_0x001f;
    L_0x0018:
        r0 = "card.io";
        r1 = "Could not activate vibration feedback. Please add <uses-permission android:name=\"android.permission.VIBRATE\" /> to your application's manifest.";
        android.util.Log.e(r0, r1);
    L_0x001f:
        r0 = r7.mCardScanner;
        r0.pauseScanning();
        r0 = r7.mUIBar;
        r1 = 4;
        r0.setVisibility(r1);
        r0 = r9.complete;
        if (r0 == 0) goto L_0x007b;
    L_0x002e:
        r0 = new java.lang.String;
        r0.<init>();
        r1 = 0;
    L_0x0034:
        r2 = 16;
        if (r1 >= r2) goto L_0x0060;
    L_0x0038:
        r2 = r9.prediction;
        r2 = r2[r1];
        if (r2 < 0) goto L_0x0060;
    L_0x003e:
        r2 = r9.prediction;
        r2 = r2[r1];
        r3 = 10;
        if (r2 >= r3) goto L_0x0060;
    L_0x0046:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r2.append(r0);
        r0 = r9.prediction;
        r0 = r0[r1];
        r0 = java.lang.String.valueOf(r0);
        r2.append(r0);
        r0 = r2.toString();
        r1 = r1 + 1;
        goto L_0x0034;
    L_0x0060:
        r1 = r9.detectedCard;
        r1.cardNumber = r0;
        r0 = r9.detectedCard;
        r1 = r9.expiry_month;
        r0.expiryMonth = r1;
        r0 = r9.detectedCard;
        r1 = r9.expiry_year;
        r0.expiryYear = r1;
        r9 = r9.detectedCard;
        r7.mDetectedCard = r9;
        r9 = r7.mOverlay;
        r0 = r7.mDetectedCard;
        r9.setDetectedCard(r0);
    L_0x007b:
        r9 = r7.mFrameOrientation;
        r0 = 1138098176; // 0x43d60000 float:428.0 double:5.622952104E-315;
        r1 = 1;
        if (r9 == r1) goto L_0x0093;
    L_0x0082:
        r9 = r7.mFrameOrientation;
        r1 = 2;
        if (r9 != r1) goto L_0x0088;
    L_0x0087:
        goto L_0x0093;
    L_0x0088:
        r9 = r7.mGuideFrame;
        r9 = r9.right;
        r9 = (float) r9;
        r9 = r9 / r0;
        r0 = 1066611507; // 0x3f933333 float:1.15 double:5.26976103E-315;
        r9 = r9 * r0;
        goto L_0x009d;
    L_0x0093:
        r9 = r7.mGuideFrame;
        r9 = r9.right;
        r9 = (float) r9;
        r9 = r9 / r0;
        r0 = 1064514355; // 0x3f733333 float:0.95 double:5.259399723E-315;
        r9 = r9 * r0;
    L_0x009d:
        r5 = new android.graphics.Matrix;
        r5.<init>();
        r5.postScale(r9, r9);
        r1 = 0;
        r2 = 0;
        r3 = r8.getWidth();
        r4 = r8.getHeight();
        r6 = 0;
        r0 = r8;
        r8 = android.graphics.Bitmap.createBitmap(r0, r1, r2, r3, r4, r5, r6);
        r9 = r7.mOverlay;
        r9.setBitmap(r8);
        r8 = r7.mDetectOnly;
        if (r8 == 0) goto L_0x00d8;
    L_0x00be:
        r8 = new android.content.Intent;
        r8.<init>();
        r9 = r7.getIntent();
        r0 = r7.mOverlay;
        io.card.payment.Util.writeCapturedCardImageIfNecessary(r9, r8, r0);
        r9 = RESULT_SCAN_SUPPRESSED;
        r7.setResult(r9, r8);
        r8 = 0;
        markedCardImage = r8;
        r7.finish();
        return;
    L_0x00d8:
        r7.nextActivity();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.card.payment.CardIOActivity.onCardDetected(android.graphics.Bitmap, io.card.payment.DetectionInfo):void");
    }

    private void nextActivity() {
        final Intent intent = getIntent();
        if (intent == null || !intent.getBooleanExtra(EXTRA_SUPPRESS_CONFIRMATION, false)) {
            new Handler().post(new Runnable() {
                public final void run() {
                    CardIOActivity.this.getWindow().clearFlags(1024);
                    CardIOActivity.this.getWindow().addFlags(512);
                    Intent intent = new Intent(CardIOActivity.this, DataEntryActivity.class);
                    Util.writeCapturedCardImageIfNecessary(intent, intent, CardIOActivity.this.mOverlay);
                    if (CardIOActivity.this.mOverlay != null) {
                        CardIOActivity.this.mOverlay.markupCard();
                        if (!(CardIOActivity.markedCardImage == null || CardIOActivity.markedCardImage.isRecycled())) {
                            CardIOActivity.markedCardImage.recycle();
                        }
                        CardIOActivity.markedCardImage = CardIOActivity.this.mOverlay.getCardImage();
                    }
                    if (CardIOActivity.this.mDetectedCard != null) {
                        intent.putExtra(CardIOActivity.EXTRA_SCAN_RESULT, CardIOActivity.this.mDetectedCard);
                        CardIOActivity.this.mDetectedCard = null;
                    } else {
                        intent.putExtra("io.card.payment.manualEntryScanResult", true);
                    }
                    intent.putExtras(CardIOActivity.this.getIntent());
                    intent.addFlags(1082195968);
                    CardIOActivity.this.startActivityForResult(intent, 10);
                }
            });
            return;
        }
        Intent intent2 = new Intent(this, DataEntryActivity.class);
        if (this.mDetectedCard != null) {
            intent2.putExtra(EXTRA_SCAN_RESULT, this.mDetectedCard);
            this.mDetectedCard = null;
        }
        Util.writeCapturedCardImageIfNecessary(intent, intent2, this.mOverlay);
        setResult(RESULT_CONFIRMATION_SUPPRESSED, intent2);
        markedCardImage = null;
        finish();
    }

    private void setDeviceDegrees(int i) {
        View view = this.mPreview.mSurfaceView;
        if (view == null) {
            Log.wtf("card.io", "surface view is null.. recovering... rotation might be weird.");
            return;
        }
        this.mGuideFrame = this.mCardScanner.getGuideFrame(view.getWidth(), view.getHeight());
        Rect rect = this.mGuideFrame;
        rect.top += view.getTop();
        rect = this.mGuideFrame;
        rect.bottom += view.getTop();
        this.mOverlay.setGuideAndRotation(this.mGuideFrame, i);
        this.mLastDegrees = i;
    }

    final void toggleFlash() {
        setFlashOn(this.mCardScanner.isFlashOn() ^ 1);
    }

    private void setFlashOn(boolean z) {
        Object obj = (this.mPreview == null || this.mOverlay == null || !this.mCardScanner.setFlashOn(z)) ? null : 1;
        if (obj != null) {
            this.mOverlay.setTorchOn(z);
        }
    }

    final void triggerAutoFocus() {
        this.mCardScanner.triggerAutoFocus(true);
    }

    private void setPreviewLayout() {
        int intExtra;
        this.mMainLayout = new FrameLayout(this);
        this.mMainLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.mMainLayout.setLayoutParams(new LayoutParams(-1, -1));
        View frameLayout = new FrameLayout(this);
        frameLayout.setId(1);
        this.mCardScanner.getClass();
        this.mCardScanner.getClass();
        this.mPreview = new Preview(this);
        this.mPreview.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 48));
        frameLayout.addView(this.mPreview);
        this.mOverlay = new OverlayView(this, Util.deviceSupportsTorch(this));
        this.mOverlay.setLayoutParams(new LayoutParams(-1, -1));
        if (getIntent() != null) {
            this.mOverlay.setUseCardIOLogo(getIntent().getBooleanExtra(EXTRA_USE_CARDIO_LOGO, false));
            intExtra = getIntent().getIntExtra(EXTRA_GUIDE_COLOR, 0);
            if (intExtra != 0) {
                int i = ViewCompat.MEASURED_STATE_MASK | intExtra;
                if (intExtra != i) {
                    Log.w("card.io", "Removing transparency from provided guide color.");
                }
                this.mOverlay.setGuideColor(i);
            } else {
                this.mOverlay.setGuideColor(-16711936);
            }
            this.mOverlay.setHideCardIOLogo(getIntent().getBooleanExtra(EXTRA_HIDE_CARDIO_LOGO, false));
            String stringExtra = getIntent().getStringExtra(EXTRA_SCAN_INSTRUCTIONS);
            if (stringExtra != null) {
                this.mOverlay.setScanInstructions(stringExtra);
            }
        }
        frameLayout.addView(this.mOverlay);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10);
        layoutParams.addRule(2, 2);
        this.mMainLayout.addView(frameLayout, layoutParams);
        this.mUIBar = new RelativeLayout(this);
        this.mUIBar.setGravity(80);
        LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        this.mUIBar.setLayoutParams(layoutParams2);
        this.mUIBar.setId(2);
        this.mUIBar.setGravity(85);
        if (!this.suppressManualEntry) {
            frameLayout = new Button(this);
            frameLayout.setId(3);
            frameLayout.setText(LocalizedStrings.getString(StringKey.KEYBOARD));
            frameLayout.setOnClickListener(new C07333());
            this.mUIBar.addView(frameLayout);
            ViewUtil.styleAsButton(frameLayout, false, this, this.useApplicationTheme);
            if (!this.useApplicationTheme) {
                frameLayout.setTextSize(14.0f);
            }
            frameLayout.setMinimumHeight(ViewUtil.typedDimensionValueToPixelsInt("42dip", this));
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) frameLayout.getLayoutParams();
            layoutParams3.width = -2;
            layoutParams3.height = -2;
            layoutParams3.addRule(12);
            ViewUtil.setPadding(frameLayout, "16dip", null, "16dip", null);
            ViewUtil.setMargins(frameLayout, "4dip", "4dip", "4dip", "4dip");
        }
        layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        intExtra = (int) ((15.0f * getResources().getDisplayMetrics().density) + 0.5f);
        layoutParams2.setMargins(0, intExtra, 0, intExtra);
        this.mMainLayout.addView(this.mUIBar, layoutParams2);
        if (getIntent() != null) {
            if (this.customOverlayLayout != null) {
                this.mMainLayout.removeView(this.customOverlayLayout);
                this.customOverlayLayout = null;
            }
            int intExtra2 = getIntent().getIntExtra(EXTRA_SCAN_OVERLAY_LAYOUT_ID, -1);
            if (intExtra2 != -1) {
                this.customOverlayLayout = new LinearLayout(this);
                this.customOverlayLayout.setLayoutParams(new LayoutParams(-1, -1));
                getLayoutInflater().inflate(intExtra2, this.customOverlayLayout);
                this.mMainLayout.addView(this.customOverlayLayout);
            }
        }
        setContentView(this.mMainLayout);
    }

    private void rotateCustomOverlay(float f) {
        if (this.customOverlayLayout != null) {
            Animation rotateAnimation = new RotateAnimation(BitmapDescriptorFactory.HUE_RED, f, (float) (this.customOverlayLayout.getWidth() / 2), (float) (this.customOverlayLayout.getHeight() / 2));
            rotateAnimation.setDuration(0);
            rotateAnimation.setRepeatCount(BitmapDescriptorFactory.HUE_RED);
            rotateAnimation.setFillAfter(Float.MIN_VALUE);
            this.customOverlayLayout.setAnimation(rotateAnimation);
        }
    }

    public final Rect getTorchRect() {
        if (this.mOverlay == null) {
            return null;
        }
        return this.mOverlay.getTorchRect();
    }
}
