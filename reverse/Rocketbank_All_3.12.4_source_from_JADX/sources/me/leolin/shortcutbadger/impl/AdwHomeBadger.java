package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;

public class AdwHomeBadger implements Badger {
    public final void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Intent intent = new Intent("org.adw.launcher.counter.SEND");
        intent.putExtra("PNAME", componentName.getPackageName());
        intent.putExtra("CNAME", componentName.getClassName());
        intent.putExtra("COUNT", i);
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
        return Arrays.asList(new String[]{"org.adw.launcher", "org.adwfreak.launcher"});
    }
}
