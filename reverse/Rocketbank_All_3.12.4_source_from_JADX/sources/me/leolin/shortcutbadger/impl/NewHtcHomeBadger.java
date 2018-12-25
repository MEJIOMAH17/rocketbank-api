package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;

public class NewHtcHomeBadger implements Badger {
    public final void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Intent intent = new Intent("com.htc.launcher.action.SET_NOTIFICATION");
        intent.putExtra("com.htc.launcher.extra.COMPONENT", componentName.flattenToShortString());
        intent.putExtra("com.htc.launcher.extra.COUNT", i);
        Intent intent2 = new Intent("com.htc.launcher.action.UPDATE_SHORTCUT");
        intent2.putExtra("packagename", componentName.getPackageName());
        intent2.putExtra("count", i);
        i = 0;
        componentName = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        componentName = (componentName == null || componentName.size() <= null) ? null : 1;
        if (componentName == null) {
            componentName = context.getPackageManager().queryBroadcastReceivers(intent2, 0);
            if (componentName != null && componentName.size() > null) {
                i = 1;
            }
            if (i == 0) {
                componentName = new StringBuilder("unable to resolve intent: ");
                componentName.append(intent2.toString());
                throw new ShortcutBadgeException(componentName.toString());
            }
        }
        context.sendBroadcast(intent);
        context.sendBroadcast(intent2);
    }

    public final List<String> getSupportLaunchers() {
        return Arrays.asList(new String[]{"com.htc.launcher"});
    }
}
