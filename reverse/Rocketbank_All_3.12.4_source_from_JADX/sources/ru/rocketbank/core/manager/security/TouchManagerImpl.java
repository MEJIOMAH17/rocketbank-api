package ru.rocketbank.core.manager.security;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.TouchManager;
import ru.rocketbank.core.network.api.RocketAPI;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: TouchManagerImpl.kt */
public final class TouchManagerImpl implements TouchManager {
    public static final Companion Companion = new Companion();
    private static final String TAG = "TouchImpl";
    private static final String TOUCH_ENABLED = "TOUCH_ENABLED";
    private static final String TOUCH_ID = "TOUCH_ID";
    private static final String TOUCH_TOKEN = "TOUCH_TOKEN";
    private TouchProvider activeTouchProvider;
    private final TouchProvider androidTouchProvider;
    private final Context context;
    private String permissionID;
    private final RocketAPI rocketAPI;
    private final AtomicBoolean touchIdInProgress;
    private WeakReference<RocketFingerPrintListener> touchListener;

    /* compiled from: TouchManagerImpl.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public TouchManagerImpl(RocketAPI rocketAPI, Context context) {
        Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketAPI");
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.rocketAPI = rocketAPI;
        this.context = context;
        this.androidTouchProvider = VERSION.SDK_INT >= 23 ? (TouchProvider) new Android23TouchProvider(this.context) : null;
        this.touchIdInProgress = new AtomicBoolean(false);
        this.touchListener = new WeakReference(null);
        this.activeTouchProvider = this.androidTouchProvider;
    }

    public final Context getContext() {
        return this.context;
    }

    public final void setPermission(String str) {
        this.permissionID = str;
    }

    public final void setListener(RocketFingerPrintListener rocketFingerPrintListener) {
        Intrinsics.checkParameterIsNotNull(rocketFingerPrintListener, "touchListener");
        this.touchListener = new WeakReference(rocketFingerPrintListener);
        rocketFingerPrintListener = this.activeTouchProvider;
        if (rocketFingerPrintListener != null) {
            rocketFingerPrintListener.setListener(this.touchListener);
        }
    }

    public final void clearListener() {
        this.touchListener = new WeakReference(null);
        TouchProvider touchProvider = this.activeTouchProvider;
        if (touchProvider != null) {
            touchProvider.setListener(this.touchListener);
        }
    }

    public final boolean initialize(boolean z) {
        TouchProvider touchProvider = this.activeTouchProvider;
        if (touchProvider == null) {
            return false;
        }
        touchProvider.setListener(this.touchListener);
        return touchProvider.initialize(z);
    }

    public final void close() {
        TouchProvider touchProvider = this.activeTouchProvider;
        if (touchProvider != null) {
            touchProvider.close();
        }
    }

    public final boolean isAvailable() {
        Log.v(TAG, "isAvailable");
        if (VERSION.SDK_INT >= 23) {
            Log.v(TAG, "isAvailable version ok");
            if (gotPermissions()) {
                Log.v(TAG, "isAvailable permitted ok");
                TouchProvider touchProvider = this.androidTouchProvider;
                if (touchProvider != null) {
                    return touchProvider.isReadyTouch();
                }
                return false;
            }
        }
        return false;
    }

    public final boolean isHardwareDetected() {
        TouchProvider touchProvider = this.androidTouchProvider;
        return touchProvider != null ? touchProvider.hasHardware() : false;
    }

    public final boolean hasFingerPrints() {
        TouchProvider touchProvider = this.androidTouchProvider;
        return touchProvider != null ? touchProvider.hasFingerprints() : false;
    }

    public final boolean isLockScreenEnabled() {
        TouchProvider touchProvider = this.androidTouchProvider;
        return touchProvider != null ? touchProvider.isLockScreenEnabled() : false;
    }

    public final boolean gotPermissions() {
        if (VERSION.SDK_INT < 23) {
            return false;
        }
        Context context = this.context;
        String str = this.permissionID;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("permissionID");
        }
        int checkSelfPermission = ContextCompat.checkSelfPermission(context, str);
        str = TAG;
        StringBuilder stringBuilder = new StringBuilder("permission ");
        stringBuilder.append(checkSelfPermission);
        stringBuilder.append(' ');
        stringBuilder.append(0);
        Log.v(str, stringBuilder.toString());
        if (checkSelfPermission == 0) {
            return true;
        }
        return false;
    }

    public final boolean gotValidToken() {
        TouchProvider touchProvider = this.activeTouchProvider;
        return touchProvider != null ? touchProvider.gotValidToken() : false;
    }

    public final void invalidateToken() {
        TouchProvider touchProvider = this.activeTouchProvider;
        if (touchProvider != null) {
            touchProvider.invalidateToken();
        }
    }

    public final void setToken(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        TouchProvider touchProvider = this.activeTouchProvider;
        if (touchProvider != null) {
            touchProvider.setToken(str);
        }
    }

    public final void requestPermission$3ef636dc(Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        String[] strArr = new String[1];
        String str = this.permissionID;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("permissionID");
        }
        strArr[0] = str;
        ActivityCompat.requestPermissions(activity, strArr, 16);
    }

    public final void refreshTouchToken() {
        TouchProvider touchProvider = this.activeTouchProvider;
        if (!(touchProvider != null ? touchProvider.gotValidToken() : false) && !this.touchIdInProgress.get()) {
            this.touchIdInProgress.set(true);
            this.rocketAPI.requestTouchToken("").subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new TouchManagerImpl$makeTouchRequest$1(this));
        }
    }
}
