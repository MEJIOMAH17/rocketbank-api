package me.leolin.shortcutbadger.impl;

import android.content.AsyncQueryHandler;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;

public class SonyHomeBadger implements Badger {
    private final Uri BADGE_CONTENT_URI = Uri.parse("content://com.sonymobile.home.resourceprovider/badge");
    private AsyncQueryHandler mQueryHandler;

    public final List<String> getSupportLaunchers() {
        return Arrays.asList(new String[]{"com.sonyericsson.home", "com.sonymobile.home"});
    }

    public final void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        boolean z = true;
        if (context.getPackageManager().resolveContentProvider("com.sonymobile.home.resourceprovider", 0) != null) {
            if (i >= 0) {
                if (this.mQueryHandler == null) {
                    this.mQueryHandler = new AsyncQueryHandler(context.getApplicationContext().getContentResolver()) {
                    };
                }
                context = componentName.getPackageName();
                componentName = componentName.getClassName();
                ContentValues contentValues = new ContentValues();
                contentValues.put("badge_count", Integer.valueOf(i));
                contentValues.put("package_name", context);
                contentValues.put("activity_name", componentName);
                this.mQueryHandler.startInsert(0, null, this.BADGE_CONTENT_URI, contentValues);
            }
            return;
        }
        Intent intent = new Intent("com.sonyericsson.home.action.UPDATE_BADGE");
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME", componentName.getPackageName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME", componentName.getClassName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.MESSAGE", String.valueOf(i));
        componentName = "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE";
        if (i <= 0) {
            z = false;
        }
        intent.putExtra(componentName, z);
        context.sendBroadcast(intent);
    }
}
