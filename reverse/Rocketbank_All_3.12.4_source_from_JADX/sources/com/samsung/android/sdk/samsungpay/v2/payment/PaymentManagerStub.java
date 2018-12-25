package com.samsung.android.sdk.samsungpay.v2.payment;

import com.samsung.android.sdk.samsungpay.v2.ServiceHelper;

final class PaymentManagerStub extends ServiceHelper {
    public static void disConnectStub() {
        PaymentManagerStub paymentManagerStub = null;
        paymentManagerStub.unbindService();
    }
}
