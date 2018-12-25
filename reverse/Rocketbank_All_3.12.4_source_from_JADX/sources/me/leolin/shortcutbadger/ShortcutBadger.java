package me.leolin.shortcutbadger;

import android.content.ComponentName;
import android.content.Context;
import android.util.Log;
import java.util.LinkedList;
import java.util.List;
import me.leolin.shortcutbadger.impl.AdwHomeBadger;
import me.leolin.shortcutbadger.impl.ApexHomeBadger;
import me.leolin.shortcutbadger.impl.AsusHomeBadger;
import me.leolin.shortcutbadger.impl.HuaweiHomeBadger;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import me.leolin.shortcutbadger.impl.OPPOHomeBader;
import me.leolin.shortcutbadger.impl.SamsungHomeBadger;
import me.leolin.shortcutbadger.impl.SonyHomeBadger;
import me.leolin.shortcutbadger.impl.VivoHomeBadger;
import me.leolin.shortcutbadger.impl.ZukHomeBadger;

public final class ShortcutBadger {
    private static final List<Class<? extends Badger>> BADGERS;
    private static ComponentName sComponentName;
    private static Badger sShortcutBadger;

    static {
        List linkedList = new LinkedList();
        BADGERS = linkedList;
        linkedList.add(AdwHomeBadger.class);
        BADGERS.add(ApexHomeBadger.class);
        BADGERS.add(NewHtcHomeBadger.class);
        BADGERS.add(NovaHomeBadger.class);
        BADGERS.add(SonyHomeBadger.class);
        BADGERS.add(AsusHomeBadger.class);
        BADGERS.add(HuaweiHomeBadger.class);
        BADGERS.add(OPPOHomeBader.class);
        BADGERS.add(SamsungHomeBadger.class);
        BADGERS.add(ZukHomeBadger.class);
        BADGERS.add(VivoHomeBadger.class);
    }

    public static boolean removeCount(Context context) {
        return applyCount(context, 0);
    }

    private static boolean initBadger(android.content.Context r4) {
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
        r0 = r4.getPackageManager();
        r1 = r4.getPackageName();
        r0 = r0.getLaunchIntentForPackage(r1);
        r1 = 0;
        if (r0 != 0) goto L_0x0027;
    L_0x000f:
        r0 = "ShortcutBadger";
        r2 = new java.lang.StringBuilder;
        r3 = "Unable to find launch intent for package ";
        r2.<init>(r3);
        r4 = r4.getPackageName();
        r2.append(r4);
        r4 = r2.toString();
        android.util.Log.e(r0, r4);
        return r1;
    L_0x0027:
        r0 = r0.getComponent();
        sComponentName = r0;
        r0 = new android.content.Intent;
        r2 = "android.intent.action.MAIN";
        r0.<init>(r2);
        r2 = "android.intent.category.HOME";
        r0.addCategory(r2);
        r4 = r4.getPackageManager();
        r2 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;
        r4 = r4.resolveActivity(r0, r2);
        if (r4 == 0) goto L_0x00c7;
    L_0x0045:
        r0 = r4.activityInfo;
        r0 = r0.name;
        r0 = r0.toLowerCase();
        r2 = "resolver";
        r0 = r0.contains(r2);
        if (r0 == 0) goto L_0x0057;
    L_0x0055:
        goto L_0x00c7;
    L_0x0057:
        r4 = r4.activityInfo;
        r4 = r4.packageName;
        r0 = BADGERS;
        r0 = r0.iterator();
    L_0x0061:
        r1 = r0.hasNext();
        if (r1 == 0) goto L_0x0084;
    L_0x0067:
        r1 = r0.next();
        r1 = (java.lang.Class) r1;
        r2 = 0;
        r1 = r1.newInstance();	 Catch:{ Exception -> 0x0075 }
        r1 = (me.leolin.shortcutbadger.Badger) r1;	 Catch:{ Exception -> 0x0075 }
        goto L_0x0076;
    L_0x0075:
        r1 = r2;
    L_0x0076:
        if (r1 == 0) goto L_0x0061;
    L_0x0078:
        r2 = r1.getSupportLaunchers();
        r2 = r2.contains(r4);
        if (r2 == 0) goto L_0x0061;
    L_0x0082:
        sShortcutBadger = r1;
    L_0x0084:
        r4 = sShortcutBadger;
        if (r4 != 0) goto L_0x00c5;
    L_0x0088:
        r4 = android.os.Build.MANUFACTURER;
        r0 = "ZUK";
        r4 = r4.equalsIgnoreCase(r0);
        if (r4 == 0) goto L_0x009a;
    L_0x0092:
        r4 = new me.leolin.shortcutbadger.impl.ZukHomeBadger;
        r4.<init>();
        sShortcutBadger = r4;
        goto L_0x00c5;
    L_0x009a:
        r4 = android.os.Build.MANUFACTURER;
        r0 = "OPPO";
        r4 = r4.equalsIgnoreCase(r0);
        if (r4 == 0) goto L_0x00ac;
    L_0x00a4:
        r4 = new me.leolin.shortcutbadger.impl.OPPOHomeBader;
        r4.<init>();
        sShortcutBadger = r4;
        goto L_0x00c5;
    L_0x00ac:
        r4 = android.os.Build.MANUFACTURER;
        r0 = "VIVO";
        r4 = r4.equalsIgnoreCase(r0);
        if (r4 == 0) goto L_0x00be;
    L_0x00b6:
        r4 = new me.leolin.shortcutbadger.impl.VivoHomeBadger;
        r4.<init>();
        sShortcutBadger = r4;
        goto L_0x00c5;
    L_0x00be:
        r4 = new me.leolin.shortcutbadger.impl.DefaultBadger;
        r4.<init>();
        sShortcutBadger = r4;
    L_0x00c5:
        r4 = 1;
        return r4;
    L_0x00c7:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: me.leolin.shortcutbadger.ShortcutBadger.initBadger(android.content.Context):boolean");
    }

    public static boolean applyCount(Context context, int i) {
        try {
            if (sShortcutBadger != null || initBadger(context)) {
                sShortcutBadger.executeBadge(context, sComponentName, i);
                return true;
            }
            throw new ShortcutBadgeException("No default launcher available");
        } catch (Context context2) {
            throw new ShortcutBadgeException("Unable to execute badge", context2);
        } catch (Context context22) {
            if (Log.isLoggable("ShortcutBadger", 3) != 0) {
                Log.d("ShortcutBadger", "Unable to execute badge", context22);
            }
            return null;
        }
    }
}
