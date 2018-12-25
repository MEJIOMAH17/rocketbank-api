package ru.rocketbank.core.exceptions;

import android.support.v4.app.NotificationCompat;
import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketException.kt */
public class RocketException extends Exception {
    public static final Companion Companion = new Companion();
    private static final long serialVersionUID = 6911829698873329514L;

    /* compiled from: RocketException.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public RocketException(String str) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        super(str);
    }

    public RocketException(String str, Throwable th) {
        Intrinsics.checkParameterIsNotNull(str, NotificationCompat.CATEGORY_MESSAGE);
        Intrinsics.checkParameterIsNotNull(th, "t");
        super(str, th);
    }
}
