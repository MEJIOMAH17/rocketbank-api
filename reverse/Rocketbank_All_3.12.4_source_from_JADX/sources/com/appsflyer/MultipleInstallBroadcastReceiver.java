package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;

public class MultipleInstallBroadcastReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        AFLogger.afLog("MultipleInstallBroadcastReceiver called");
        for (ResolveInfo resolveInfo : context.getPackageManager().queryBroadcastReceivers(new Intent("com.android.vending.INSTALL_REFERRER"), 0)) {
            String action = intent.getAction();
            if (resolveInfo.activityInfo.packageName.equals(context.getPackageName()) && "com.android.vending.INSTALL_REFERRER".equals(action) && !getClass().getName().equals(resolveInfo.activityInfo.name)) {
                StringBuilder stringBuilder = new StringBuilder("trigger onReceive: class: ");
                stringBuilder.append(resolveInfo.activityInfo.name);
                AFLogger.afLog(stringBuilder.toString());
                try {
                    ((BroadcastReceiver) Class.forName(resolveInfo.activityInfo.name).newInstance()).onReceive(context, intent);
                } catch (Throwable th) {
                    StringBuilder stringBuilder2 = new StringBuilder("error in BroadcastReceiver ");
                    stringBuilder2.append(resolveInfo.activityInfo.name);
                    AFLogger.afLogE(stringBuilder2.toString(), th);
                }
            }
        }
        AppsFlyerLib.getInstance().onReceive(context, intent);
    }
}
