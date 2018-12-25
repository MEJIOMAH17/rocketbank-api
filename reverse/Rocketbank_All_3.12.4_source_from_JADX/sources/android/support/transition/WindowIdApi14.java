package android.support.transition;

import android.os.IBinder;

final class WindowIdApi14 implements WindowIdImpl {
    private final IBinder mToken;

    WindowIdApi14(IBinder iBinder) {
        this.mToken = iBinder;
    }

    public final boolean equals(Object obj) {
        return (!(obj instanceof WindowIdApi14) || ((WindowIdApi14) obj).mToken.equals(this.mToken) == null) ? null : true;
    }

    public final int hashCode() {
        return this.mToken.hashCode();
    }
}
