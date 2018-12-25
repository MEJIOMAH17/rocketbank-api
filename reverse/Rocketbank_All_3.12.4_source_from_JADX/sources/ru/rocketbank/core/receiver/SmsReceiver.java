package ru.rocketbank.core.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.SmsMessage;
import android.text.TextUtils;

public final class SmsReceiver extends BroadcastReceiver {
    private SmsDelegate smsDelegate;

    public interface SmsDelegate {
        void onSms(String str);
    }

    public SmsReceiver(SmsDelegate smsDelegate) {
        this.smsDelegate = smsDelegate;
    }

    public final void onReceive(Context context, Intent intent) {
        context = intent.getExtras();
        if (context != null) {
            Object[] objArr = (Object[]) context.get("pdus");
            if (objArr != null) {
                if ((objArr instanceof byte[][]) != null) {
                    intent = new StringBuilder();
                    for (Object obj : objArr) {
                        intent.append(SmsMessage.createFromPdu((byte[]) obj).getMessageBody());
                        intent.append("\n");
                    }
                    if (TextUtils.isEmpty(intent.toString()) == null) {
                        if (intent.length() >= 4) {
                            context = intent.substring(0, 4);
                            if (!(TextUtils.isDigitsOnly(context) == null || this.smsDelegate == null)) {
                                this.smsDelegate.onSms(context);
                            }
                        }
                    }
                }
            }
        }
    }
}
