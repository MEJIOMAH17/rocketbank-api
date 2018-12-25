package com.samsung.android.sdk.samsungpay.v2;

import android.os.Bundle;

public interface StatusListener {
    void onFail(int i, Bundle bundle);

    void onSuccess(int i, Bundle bundle);
}
