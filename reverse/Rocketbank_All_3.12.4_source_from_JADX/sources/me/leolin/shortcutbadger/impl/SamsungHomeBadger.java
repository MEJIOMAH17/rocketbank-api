package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;

public class SamsungHomeBadger implements Badger {
    private static final String[] CONTENT_PROJECTION = new String[]{"_id", "class"};
    private DefaultBadger defaultBadger;

    public SamsungHomeBadger() {
        if (VERSION.SDK_INT >= 21) {
            this.defaultBadger = new DefaultBadger();
        }
    }

    public final void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Cursor query;
        if (this.defaultBadger == null || !DefaultBadger.isSupported(context)) {
            Uri parse = Uri.parse("content://com.sec.badge/apps?notify=true");
            context = context.getContentResolver();
            try {
                Context context2 = context;
                Uri uri = parse;
                query = context2.query(uri, CONTENT_PROJECTION, "package=?", new String[]{componentName.getPackageName()}, null);
                if (query != null) {
                    try {
                        String className = componentName.getClassName();
                        boolean z = false;
                        while (query.moveToNext()) {
                            int i2 = query.getInt(0);
                            context.update(parse, getContentValues(componentName, i, false), "_id=?", new String[]{String.valueOf(i2)});
                            if (className.equals(query.getString(query.getColumnIndex("class")))) {
                                z = true;
                            }
                        }
                        if (!z) {
                            context.insert(parse, getContentValues(componentName, i, true));
                        }
                    } catch (Throwable th) {
                        context = th;
                        query.close();
                        throw context;
                    }
                }
                if (query != null && query.isClosed() == null) {
                    query.close();
                }
                return;
            } catch (Throwable th2) {
                context = th2;
                query = null;
                if (query != null && query.isClosed() == null) {
                    query.close();
                }
                throw context;
            }
        }
        this.defaultBadger.executeBadge(context, componentName, i);
    }

    private static ContentValues getContentValues(ComponentName componentName, int i, boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("package", componentName.getPackageName());
            contentValues.put("class", componentName.getClassName());
        }
        contentValues.put("badgecount", Integer.valueOf(i));
        return contentValues;
    }

    public final List<String> getSupportLaunchers() {
        return Arrays.asList(new String[]{"com.sec.android.app.launcher", "com.sec.android.app.twlauncher"});
    }
}
