package me.leolin.shortcutbadger.impl;

import android.content.pm.ResolveInfo;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;

@Deprecated
public class XiaomiHomeBadger implements Badger {
    private ResolveInfo resolveInfo;

    public final void executeBadge(android.content.Context r8, android.content.ComponentName r9, int r10) throws me.leolin.shortcutbadger.ShortcutBadgeException {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r7 = this;
        r0 = 1;
        r1 = 0;
        r2 = "android.app.MiuiNotification";	 Catch:{ Exception -> 0x0032 }
        r2 = java.lang.Class.forName(r2);	 Catch:{ Exception -> 0x0032 }
        r2 = r2.newInstance();	 Catch:{ Exception -> 0x0032 }
        r3 = r2.getClass();	 Catch:{ Exception -> 0x0032 }
        r4 = "messageCount";	 Catch:{ Exception -> 0x0032 }
        r3 = r3.getDeclaredField(r4);	 Catch:{ Exception -> 0x0032 }
        r3.setAccessible(r0);	 Catch:{ Exception -> 0x0032 }
        if (r10 != 0) goto L_0x001e;
    L_0x001b:
        r4 = "";	 Catch:{ Exception -> 0x002a }
        goto L_0x0022;	 Catch:{ Exception -> 0x002a }
    L_0x001e:
        r4 = java.lang.Integer.valueOf(r10);	 Catch:{ Exception -> 0x002a }
    L_0x0022:
        r4 = java.lang.String.valueOf(r4);	 Catch:{ Exception -> 0x002a }
        r3.set(r2, r4);	 Catch:{ Exception -> 0x002a }
        goto L_0x0084;
    L_0x002a:
        r4 = java.lang.Integer.valueOf(r10);	 Catch:{ Exception -> 0x0032 }
        r3.set(r2, r4);	 Catch:{ Exception -> 0x0032 }
        goto L_0x0084;
    L_0x0032:
        r2 = new android.content.Intent;
        r3 = "android.intent.action.APPLICATION_MESSAGE_UPDATE";
        r2.<init>(r3);
        r3 = "android.intent.extra.update_application_component_name";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = r9.getPackageName();
        r4.append(r5);
        r5 = "/";
        r4.append(r5);
        r9 = r9.getClassName();
        r4.append(r9);
        r9 = r4.toString();
        r2.putExtra(r3, r9);
        r9 = "android.intent.extra.update_application_message_text";
        if (r10 != 0) goto L_0x0061;
    L_0x005e:
        r3 = "";
        goto L_0x0065;
    L_0x0061:
        r3 = java.lang.Integer.valueOf(r10);
    L_0x0065:
        r3 = java.lang.String.valueOf(r3);
        r2.putExtra(r9, r3);
        r9 = r8.getPackageManager();
        r9 = r9.queryBroadcastReceivers(r2, r1);
        if (r9 == 0) goto L_0x007e;
    L_0x0076:
        r9 = r9.size();
        if (r9 <= 0) goto L_0x007e;
    L_0x007c:
        r9 = r0;
        goto L_0x007f;
    L_0x007e:
        r9 = r1;
    L_0x007f:
        if (r9 == 0) goto L_0x0084;
    L_0x0081:
        r8.sendBroadcast(r2);
    L_0x0084:
        r9 = android.os.Build.MANUFACTURER;
        r2 = "Xiaomi";
        r9 = r9.equalsIgnoreCase(r2);
        if (r9 == 0) goto L_0x010b;
    L_0x008e:
        r9 = r7.resolveInfo;
        if (r9 != 0) goto L_0x00aa;
    L_0x0092:
        r9 = new android.content.Intent;
        r2 = "android.intent.action.MAIN";
        r9.<init>(r2);
        r2 = "android.intent.category.HOME";
        r9.addCategory(r2);
        r2 = r8.getPackageManager();
        r3 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;
        r9 = r2.resolveActivity(r9, r3);
        r7.resolveInfo = r9;
    L_0x00aa:
        r9 = r7.resolveInfo;
        if (r9 == 0) goto L_0x010b;
    L_0x00ae:
        r9 = "notification";
        r9 = r8.getSystemService(r9);
        r9 = (android.app.NotificationManager) r9;
        r2 = new android.app.Notification$Builder;
        r2.<init>(r8);
        r8 = "";
        r8 = r2.setContentTitle(r8);
        r2 = "";
        r8 = r8.setContentText(r2);
        r2 = r7.resolveInfo;
        r2 = r2.getIconResource();
        r8 = r8.setSmallIcon(r2);
        r8 = r8.build();
        r2 = r8.getClass();	 Catch:{ Exception -> 0x0102 }
        r3 = "extraNotification";	 Catch:{ Exception -> 0x0102 }
        r2 = r2.getDeclaredField(r3);	 Catch:{ Exception -> 0x0102 }
        r2 = r2.get(r8);	 Catch:{ Exception -> 0x0102 }
        r3 = r2.getClass();	 Catch:{ Exception -> 0x0102 }
        r4 = "setMessageCount";	 Catch:{ Exception -> 0x0102 }
        r5 = new java.lang.Class[r0];	 Catch:{ Exception -> 0x0102 }
        r6 = java.lang.Integer.TYPE;	 Catch:{ Exception -> 0x0102 }
        r5[r1] = r6;	 Catch:{ Exception -> 0x0102 }
        r3 = r3.getDeclaredMethod(r4, r5);	 Catch:{ Exception -> 0x0102 }
        r0 = new java.lang.Object[r0];	 Catch:{ Exception -> 0x0102 }
        r10 = java.lang.Integer.valueOf(r10);	 Catch:{ Exception -> 0x0102 }
        r0[r1] = r10;	 Catch:{ Exception -> 0x0102 }
        r3.invoke(r2, r0);	 Catch:{ Exception -> 0x0102 }
        r9.notify(r1, r8);	 Catch:{ Exception -> 0x0102 }
        return;
    L_0x0102:
        r8 = move-exception;
        r9 = new me.leolin.shortcutbadger.ShortcutBadgeException;
        r10 = "not able to set badge";
        r9.<init>(r10, r8);
        throw r9;
    L_0x010b:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: me.leolin.shortcutbadger.impl.XiaomiHomeBadger.executeBadge(android.content.Context, android.content.ComponentName, int):void");
    }

    public final List<String> getSupportLaunchers() {
        return Arrays.asList(new String[]{"com.miui.miuilite", "com.miui.home", "com.miui.miuihome", "com.miui.miuihome2", "com.miui.mihome", "com.miui.mihome2", "com.i.miui.launcher"});
    }
}
