package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.flurry.sdk.hl;
import com.flurry.sdk.kf;
import com.flurry.sdk.lr;

public final class FlurryInstallReceiver extends BroadcastReceiver {
    /* renamed from: a */
    static final String f28a = "FlurryInstallReceiver";

    public final void onReceive(Context context, Intent intent) {
        String str = f28a;
        StringBuilder stringBuilder = new StringBuilder("Received an Install nofication of ");
        stringBuilder.append(intent.getAction());
        kf.m176a(4, str, stringBuilder.toString());
        str = intent.getExtras().getString("referrer");
        kf.m176a(4, f28a, "Received an Install referrer of ".concat(String.valueOf(str)));
        if (str != null) {
            if ("com.android.vending.INSTALL_REFERRER".equals(intent.getAction()) != null) {
                if (str.contains("=") == null) {
                    kf.m176a(4, f28a, "referrer is before decoding: ".concat(String.valueOf(str)));
                    str = lr.m314d(str);
                    kf.m176a(4, f28a, "referrer is: ".concat(String.valueOf(str)));
                }
                new hl(context).m8a(str);
                return;
            }
        }
        kf.m176a(5, f28a, "referrer is null");
    }
}
