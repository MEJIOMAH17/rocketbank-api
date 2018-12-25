package ru.rocketbank.core.exceptions;

import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RocketWebViewException.kt */
public final class RocketWebViewException extends RocketException {
    public static final Companion Companion = new Companion();
    private static final long serialVersionUID = 7911829698873329514L;

    /* compiled from: RocketWebViewException.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public RocketWebViewException(String str) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        super(str);
    }
}
