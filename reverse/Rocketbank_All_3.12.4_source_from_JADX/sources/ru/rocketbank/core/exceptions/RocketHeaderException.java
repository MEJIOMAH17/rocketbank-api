package ru.rocketbank.core.exceptions;

import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketHeaderException.kt */
public final class RocketHeaderException extends Exception {
    public RocketHeaderException(String str) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        super(str);
    }
}
