package android.support.customtabs;

import android.os.IBinder;
import android.support.compat.C0886R.dimen;

public final class CustomTabsSessionToken {
    private final dimen mCallback$875e033 = new C13501();
    private final ICustomTabsCallback mCallbackBinder;

    /* renamed from: android.support.customtabs.CustomTabsSessionToken$1 */
    class C13501 extends dimen {
        C13501() {
        }
    }

    CustomTabsSessionToken(ICustomTabsCallback iCustomTabsCallback) {
        this.mCallbackBinder = iCustomTabsCallback;
    }

    final IBinder getCallbackBinder() {
        return this.mCallbackBinder.asBinder();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CustomTabsSessionToken) {
            return ((CustomTabsSessionToken) obj).mCallbackBinder.asBinder().equals(this.mCallbackBinder.asBinder());
        }
        return null;
    }

    public final int hashCode() {
        return this.mCallbackBinder.asBinder().hashCode();
    }
}
