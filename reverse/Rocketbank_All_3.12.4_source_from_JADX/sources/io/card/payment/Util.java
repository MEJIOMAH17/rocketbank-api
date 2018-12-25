package io.card.payment;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.hardware.Camera;
import android.hardware.Camera.Size;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Debug;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.Log;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.ByteArrayOutputStream;
import java.util.List;

class Util {
    private static final String TAG = "Util";
    private static final boolean TORCH_BLACK_LISTED = Build.MODEL.equals("DROID2");
    private static Boolean sHardwareSupported;

    Util() {
    }

    public static boolean deviceSupportsTorch(Context context) {
        return (TORCH_BLACK_LISTED || context.getPackageManager().hasSystemFeature("android.hardware.camera.flash") == null) ? null : true;
    }

    public static String manifestHasConfigChange(ResolveInfo resolveInfo, Class cls) {
        int i = 0;
        if (resolveInfo == null) {
            resolveInfo = String.format("Didn't find %s in the AndroidManifest.xml", new Object[]{cls.getName()});
        } else {
            if ((resolveInfo.activityInfo.configChanges & 128) == 128) {
                i = 1;
            }
            if (i == 0) {
                resolveInfo = new StringBuilder();
                resolveInfo.append(cls.getName());
                resolveInfo.append(" requires attribute android:configChanges=\"orientation\"");
                resolveInfo = resolveInfo.toString();
            } else {
                resolveInfo = null;
            }
        }
        if (resolveInfo != null) {
            Log.e("card.io", resolveInfo);
        }
        return resolveInfo;
    }

    public static boolean hardwareSupported() {
        if (sHardwareSupported == null) {
            sHardwareSupported = Boolean.valueOf(hardwareSupportCheck());
        }
        return sHardwareSupported.booleanValue();
    }

    private static boolean hardwareSupportCheck() {
        if (CardScanner.processorSupported()) {
            try {
                Camera open = Camera.open();
                if (open == null) {
                    Log.w("card.io", "- No camera found");
                    return false;
                }
                boolean z;
                List<Size> supportedPreviewSizes = open.getParameters().getSupportedPreviewSizes();
                open.release();
                for (Size size : supportedPreviewSizes) {
                    if (size.width == 640 && size.height == 480) {
                        z = true;
                        break;
                    }
                }
                z = false;
                if (z) {
                    return true;
                }
                Log.w("card.io", "- Camera resolution is insufficient");
                return false;
            } catch (RuntimeException e) {
                if (VERSION.SDK_INT >= 23) {
                    return true;
                }
                Log.w("card.io", "- Error opening camera: ".concat(String.valueOf(e)));
                throw new CameraUnavailableException();
            }
        }
        Log.w("card.io", "- Processor type is not supported");
        return false;
    }

    public static void logNativeMemoryStats() {
        StringBuilder stringBuilder = new StringBuilder("Native memory stats: ");
        StringBuilder stringBuilder2 = new StringBuilder("(free/alloc'd/total)");
        stringBuilder2.append(Debug.getNativeHeapFreeSize());
        stringBuilder2.append("/");
        stringBuilder2.append(Debug.getNativeHeapAllocatedSize());
        stringBuilder2.append("/");
        stringBuilder2.append(Debug.getNativeHeapSize());
        stringBuilder.append(stringBuilder2.toString());
        Log.d("MEMORY", stringBuilder.toString());
    }

    public static Rect rectGivenCenter(Point point, int i, int i2) {
        i /= 2;
        i2 /= 2;
        return new Rect(point.x - i, point.y - i2, point.x + i, point.y + i2);
    }

    public static void setupTextPaintStyle(Paint paint) {
        paint.setColor(-1);
        paint.setStyle(Style.FILL);
        paint.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
        paint.setAntiAlias(true);
        paint.setShadowLayer(1.5f, 0.5f, BitmapDescriptorFactory.HUE_RED, Color.HSVToColor(Callback.DEFAULT_DRAG_ANIMATION_DURATION, new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED}));
    }

    static void writeCapturedCardImageIfNecessary(Intent intent, Intent intent2, OverlayView overlayView) {
        if (intent.getBooleanExtra(CardIOActivity.EXTRA_RETURN_CARD_IMAGE, false) != null && overlayView != null && overlayView.getBitmap() != null) {
            intent = new ByteArrayOutputStream();
            overlayView.getBitmap().compress(CompressFormat.JPEG, 80, intent);
            intent2.putExtra(CardIOActivity.EXTRA_CAPTURED_CARD_IMAGE, intent.toByteArray());
        }
    }
}
