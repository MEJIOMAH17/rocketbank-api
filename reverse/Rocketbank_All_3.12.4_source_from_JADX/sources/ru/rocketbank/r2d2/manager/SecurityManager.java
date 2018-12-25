package ru.rocketbank.r2d2.manager;

import android.os.Bundle;
import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: SecurityManager.kt */
public final class SecurityManager {
    public static final Companion Companion = new Companion();
    private static final String TAG = "SecurityManager";
    private static final String TIME = "TIME";
    private static final SecurityManager instance = new SecurityManager();
    private final Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
    private boolean paused;
    private long time = System.currentTimeMillis();

    /* compiled from: SecurityManager.kt */
    public static final class Companion {
        public static /* synthetic */ void TAG$annotations() {
        }

        private Companion() {
        }

        public final String getTAG() {
            return SecurityManager.TAG;
        }

        public final SecurityManager getInstance() {
            return SecurityManager.instance;
        }
    }

    public static final String getTAG() {
        return TAG;
    }

    private SecurityManager() {
    }

    public final boolean isLocked(boolean z) {
        UserModel userImmediate = this.authorization.getUserImmediate();
        if (userImmediate == null || !this.authorization.isAuthorized() || this.authorization.getToken() == null) {
            return true;
        }
        long j = this.time;
        if (!z) {
            z = userImmediate.isShortTermLogin() ^ true;
            boolean z2 = !z && j > 180000;
            z = z && j > 4000;
            Log.v(TAG, "difference ".concat(String.valueOf(j)));
            if (!z) {
                if (!z2) {
                    return false;
                }
            }
            return true;
        } else if (j > 300000) {
            return true;
        } else {
            return false;
        }
    }

    public final void onPause() {
        this.time = System.currentTimeMillis();
        this.paused = true;
        Log.v(TAG, "onPause()");
    }

    public final void onStart() {
        if (this.paused) {
            this.time = System.currentTimeMillis() - this.time;
            this.paused = false;
            Log.v(TAG, "paused onStart()");
        }
        Log.v(TAG, "onStart()");
    }

    public final void onRestoreInstance(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "savedInstanceState");
        this.time = System.currentTimeMillis() - bundle.getLong(TIME);
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "savedInstanceState");
        bundle.putLong(TIME, this.time);
    }
}
