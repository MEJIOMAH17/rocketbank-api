package ru.rocketbank.core.manager;

import android.app.Activity;
import ru.rocketbank.core.manager.security.RocketFingerPrintListener;

/* compiled from: TouchManager.kt */
public interface TouchManager {
    void clearListener();

    void close();

    boolean gotPermissions();

    boolean gotValidToken();

    boolean hasFingerPrints();

    boolean initialize(boolean z);

    void invalidateToken();

    boolean isAvailable();

    boolean isHardwareDetected();

    boolean isLockScreenEnabled();

    void refreshTouchToken();

    void requestPermission$3ef636dc(Activity activity);

    void setListener(RocketFingerPrintListener rocketFingerPrintListener);

    void setPermission(String str);
}
