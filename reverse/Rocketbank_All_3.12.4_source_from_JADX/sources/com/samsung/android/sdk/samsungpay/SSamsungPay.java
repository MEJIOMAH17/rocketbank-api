package com.samsung.android.sdk.samsungpay;

@Deprecated
public final class SSamsungPay {
    private static boolean mIsInitialized = false;

    public static String getVersionName() {
        return String.format("%d.%d.%02d", new Object[]{Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(3)});
    }
}
