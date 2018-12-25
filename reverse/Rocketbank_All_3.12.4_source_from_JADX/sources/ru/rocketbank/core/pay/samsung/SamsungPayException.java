package ru.rocketbank.core.pay.samsung;

import android.os.Bundle;

/* compiled from: RxSPay.kt */
public final class SamsungPayException extends RuntimeException {
    private final int error;
    private final Bundle errorData;

    public SamsungPayException(int i, Bundle bundle) {
        this.error = i;
        this.errorData = bundle;
    }

    public final int getError() {
        return this.error;
    }

    public final Bundle getErrorData() {
        return this.errorData;
    }
}
