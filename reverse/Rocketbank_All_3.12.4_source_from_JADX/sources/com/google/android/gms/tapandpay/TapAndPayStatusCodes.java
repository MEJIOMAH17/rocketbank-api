package com.google.android.gms.tapandpay;

import com.google.android.gms.common.api.CommonStatusCodes;

public class TapAndPayStatusCodes extends CommonStatusCodes {
    public static final int TAP_AND_PAY_ATTESTATION_ERROR = 15005;
    public static final int TAP_AND_PAY_BAD_TRANSACTION_DATA_CRYPTOGRAM_ERROR = 15006;
    public static final int TAP_AND_PAY_INVALID_TOKEN_STATE = 15004;
    public static final int TAP_AND_PAY_NO_ACTIVE_WALLET = 15002;
    public static final int TAP_AND_PAY_NO_USABLE_CREDENTIALS_FOR_PAYMENT = 15001;
    public static final int TAP_AND_PAY_RISK_DECLINE_CRYPTOGRAM_ERROR = 15008;
    public static final int TAP_AND_PAY_TOKEN_NOT_FOUND = 15003;
    public static final int TAP_AND_PAY_TRANSACTION_UNSUPPORTED_CRYPTOGRAM_ERROR = 15007;
    public static final int TAP_AND_PAY_UNLOCK_DEVICE_FOR_PAYMENT_REQUIRED = 15000;
}
