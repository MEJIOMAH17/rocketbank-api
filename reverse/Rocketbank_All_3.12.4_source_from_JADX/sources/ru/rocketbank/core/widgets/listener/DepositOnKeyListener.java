package ru.rocketbank.core.widgets.listener;

import android.support.v4.app.NotificationCompat;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DepositOnKeyListener.kt */
public final class DepositOnKeyListener implements OnKeyListener {
    public static final Companion Companion = new Companion();
    private static final String TAG = "DepositOnKeyListener";

    /* compiled from: DepositOnKeyListener.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Intrinsics.checkParameterIsNotNull(keyEvent, NotificationCompat.CATEGORY_EVENT);
        view = TAG;
        StringBuilder stringBuilder = new StringBuilder("keyCode=");
        stringBuilder.append(i);
        stringBuilder.append(" event=");
        stringBuilder.append(keyEvent);
        Log.w(view, stringBuilder.toString());
        return null;
    }
}
