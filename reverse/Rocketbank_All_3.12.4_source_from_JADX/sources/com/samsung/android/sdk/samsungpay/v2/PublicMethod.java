package com.samsung.android.sdk.samsungpay.v2;

import android.content.Context;
import android.os.Bundle;

public abstract class PublicMethod {
    Bundle extraErrorData = new Bundle();
    int mReadyStatus;

    public abstract void run(int i, Bundle bundle);

    public PublicMethod(Context context, PartnerInfo partnerInfo, String str) {
        SpayValidity spayValidity = new SpayValidity(context);
        context = spayValidity.getSpayValidity(partnerInfo, str);
        spayValidity.setPartnerDefinedSdkApiLevel(partnerInfo.getData());
        this.extraErrorData.putInt("errorReason", context);
        this.mReadyStatus = spayValidity.errorCodeToReadyStatus(context);
        run(this.mReadyStatus, this.extraErrorData);
    }
}
