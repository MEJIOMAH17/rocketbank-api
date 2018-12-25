package com.samsung.android.sdk.samsungpay.v2;

import com.samsung.android.sdk.samsungpay.v2.ServiceHelper.BindingResult;

public interface StubConnector {
    void onFailed(BindingResult bindingResult);

    void onReceivedStub(Object obj);
}
