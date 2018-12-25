package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.NativeProtocol;

public class FacebookBroadcastReceiver extends BroadcastReceiver {
    protected void onFailedAppCall(String str, String str2, Bundle bundle) {
    }

    protected void onSuccessfulAppCall(String str, String str2, Bundle bundle) {
    }

    public void onReceive(Context context, Intent intent) {
        context = intent.getStringExtra(NativeProtocol.EXTRA_PROTOCOL_CALL_ID);
        String stringExtra = intent.getStringExtra(NativeProtocol.EXTRA_PROTOCOL_ACTION);
        if (!(context == null || stringExtra == null)) {
            Bundle extras = intent.getExtras();
            if (NativeProtocol.isErrorResult(intent) != null) {
                onFailedAppCall(context, stringExtra, extras);
                return;
            }
            onSuccessfulAppCall(context, stringExtra, extras);
        }
    }
}
