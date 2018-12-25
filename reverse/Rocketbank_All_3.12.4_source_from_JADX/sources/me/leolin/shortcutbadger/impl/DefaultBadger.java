package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;

public class DefaultBadger implements Badger {
    public final void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
        intent.putExtra("badge_count", i);
        intent.putExtra("badge_count_package_name", componentName.getPackageName());
        intent.putExtra("badge_count_class_name", componentName.getClassName());
        i = 0;
        componentName = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (componentName != null && componentName.size() > null) {
            i = 1;
        }
        if (i != 0) {
            context.sendBroadcast(intent);
            return;
        }
        componentName = new StringBuilder("unable to resolve intent: ");
        componentName.append(intent.toString());
        throw new ShortcutBadgeException(componentName.toString());
    }

    public final List<String> getSupportLaunchers() {
        return new ArrayList(0);
    }

    static boolean isSupported(Context context) {
        context = context.getPackageManager().queryBroadcastReceivers(new Intent("android.intent.action.BADGE_COUNT_UPDATE"), 0);
        if (context == null || context.size() <= null) {
            return false;
        }
        return true;
    }
}
