package com.samsung.android.sdk.samsungpay.v2.card;

import android.os.Bundle;
import java.util.List;

public interface GetCardListener {
    void onFail(int i, Bundle bundle);

    void onSuccess(List<Card> list);
}
