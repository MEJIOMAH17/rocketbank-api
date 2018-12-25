package ru.rocketbank.core.exceptions;

import android.support.v4.app.NotificationCompat;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketException.kt */
public final class EnterPhoneException extends RocketException {
    public EnterPhoneException(String str, Throwable th) {
        Intrinsics.checkParameterIsNotNull(str, NotificationCompat.CATEGORY_MESSAGE);
        Intrinsics.checkParameterIsNotNull(th, "t");
        super(str, th);
    }
}
