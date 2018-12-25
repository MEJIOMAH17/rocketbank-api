package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Bundle;

public interface AddCardListener {
    void onFail(int i, Bundle bundle);

    void onSuccess(int i, Card card);
}
