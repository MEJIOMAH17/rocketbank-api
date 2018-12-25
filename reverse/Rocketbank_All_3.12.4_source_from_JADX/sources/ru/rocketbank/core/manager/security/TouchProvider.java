package ru.rocketbank.core.manager.security;

import java.lang.ref.WeakReference;

/* compiled from: TouchProvider.kt */
public interface TouchProvider {
    void close();

    boolean gotValidToken();

    boolean hasFingerprints();

    boolean hasHardware();

    boolean initialize(boolean z);

    void invalidateToken();

    boolean isLockScreenEnabled();

    boolean isReadyTouch();

    void setListener(WeakReference<RocketFingerPrintListener> weakReference);

    void setToken(String str);
}
