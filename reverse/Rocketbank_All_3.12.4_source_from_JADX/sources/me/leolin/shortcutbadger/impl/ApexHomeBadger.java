package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;

public class ApexHomeBadger implements Badger {
    public final void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Intent intent = new Intent("com.anddoes.launcher.COUNTER_CHANGED");
        intent.putExtra("package", componentName.getPackageName());
        intent.putExtra("count", i);
        intent.putExtra("class", componentName.getClassName());
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
        return Arrays.asList(new String[]{"com.anddoes.launcher"});
    }
}
