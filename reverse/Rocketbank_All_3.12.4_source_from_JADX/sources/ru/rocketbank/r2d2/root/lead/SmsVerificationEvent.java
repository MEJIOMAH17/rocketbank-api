package ru.rocketbank.r2d2.root.lead;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: SmsVerificationEvent.kt */
public final class SmsVerificationEvent {
    private final String code;
    private final String verificationId;

    public SmsVerificationEvent(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "code");
        Intrinsics.checkParameterIsNotNull(str2, "verificationId");
        this.code = str;
        this.verificationId = str2;
    }

    public final String getCode() {
        return this.code;
    }

    public final String getVerificationId() {
        return this.verificationId;
    }
}
