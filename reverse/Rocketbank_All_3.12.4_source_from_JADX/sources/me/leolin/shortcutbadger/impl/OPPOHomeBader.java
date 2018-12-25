package me.leolin.shortcutbadger.impl;

import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.Badger;

public class OPPOHomeBader implements Badger {
    private static int ROMVERSION = -1;

    @android.annotation.TargetApi(11)
    public final void executeBadge(android.content.Context r4, android.content.ComponentName r5, int r6) throws me.leolin.shortcutbadger.ShortcutBadgeException {
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
        r3 = this;
        if (r6 != 0) goto L_0x0003;
    L_0x0002:
        r6 = -1;
    L_0x0003:
        r0 = new android.content.Intent;
        r1 = "com.oppo.unsettledevent";
        r0.<init>(r1);
        r1 = "pakeageName";
        r5 = r5.getPackageName();
        r0.putExtra(r1, r5);
        r5 = "number";
        r0.putExtra(r5, r6);
        r5 = "upgradeNumber";
        r0.putExtra(r5, r6);
        r5 = r4.getPackageManager();
        r1 = 0;
        r5 = r5.queryBroadcastReceivers(r0, r1);
        if (r5 == 0) goto L_0x002f;
    L_0x0028:
        r5 = r5.size();
        if (r5 <= 0) goto L_0x002f;
    L_0x002e:
        r1 = 1;
    L_0x002f:
        if (r1 == 0) goto L_0x0035;
    L_0x0031:
        r4.sendBroadcast(r0);
        return;
    L_0x0035:
        r5 = r3.getSupportVersion();
        r1 = 6;
        if (r5 != r1) goto L_0x006f;
    L_0x003c:
        r5 = new android.os.Bundle;	 Catch:{ Throwable -> 0x0057 }
        r5.<init>();	 Catch:{ Throwable -> 0x0057 }
        r1 = "app_badge_count";	 Catch:{ Throwable -> 0x0057 }
        r5.putInt(r1, r6);	 Catch:{ Throwable -> 0x0057 }
        r4 = r4.getContentResolver();	 Catch:{ Throwable -> 0x0057 }
        r6 = "content://com.android.badge/badge";	 Catch:{ Throwable -> 0x0057 }
        r6 = android.net.Uri.parse(r6);	 Catch:{ Throwable -> 0x0057 }
        r1 = "setAppBadgeCount";	 Catch:{ Throwable -> 0x0057 }
        r2 = 0;	 Catch:{ Throwable -> 0x0057 }
        r4.call(r6, r1, r2, r5);	 Catch:{ Throwable -> 0x0057 }
        return;
    L_0x0057:
        r4 = new me.leolin.shortcutbadger.ShortcutBadgeException;
        r5 = new java.lang.StringBuilder;
        r6 = "unable to resolve intent: ";
        r5.<init>(r6);
        r6 = r0.toString();
        r5.append(r6);
        r5 = r5.toString();
        r4.<init>(r5);
        throw r4;
    L_0x006f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: me.leolin.shortcutbadger.impl.OPPOHomeBader.executeBadge(android.content.Context, android.content.ComponentName, int):void");
    }

    public final List<String> getSupportLaunchers() {
        return Collections.singletonList("com.oppo.launcher");
    }

    private int getSupportVersion() {
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
        r3 = this;
        r0 = ROMVERSION;
        if (r0 < 0) goto L_0x0007;
    L_0x0004:
        r0 = ROMVERSION;
        return r0;
    L_0x0007:
        r0 = "com.color.os.ColorBuild";	 Catch:{ Exception -> 0x001a }
        r0 = getClass(r0);	 Catch:{ Exception -> 0x001a }
        r1 = "getColorOSVERSION";	 Catch:{ Exception -> 0x001a }
        r0 = executeClassLoad$60e657e5(r0, r1);	 Catch:{ Exception -> 0x001a }
        r0 = (java.lang.Integer) r0;	 Catch:{ Exception -> 0x001a }
        r0 = r0.intValue();	 Catch:{ Exception -> 0x001a }
        goto L_0x001b;
    L_0x001a:
        r0 = 0;
    L_0x001b:
        if (r0 != 0) goto L_0x0041;
    L_0x001d:
        r1 = "ro.build.version.opporom";	 Catch:{ Exception -> 0x0041 }
        r1 = getSystemProperty(r1);	 Catch:{ Exception -> 0x0041 }
        r2 = "V1.4";	 Catch:{ Exception -> 0x0041 }
        r2 = r1.startsWith(r2);	 Catch:{ Exception -> 0x0041 }
        if (r2 == 0) goto L_0x002d;	 Catch:{ Exception -> 0x0041 }
    L_0x002b:
        r0 = 3;	 Catch:{ Exception -> 0x0041 }
        return r0;	 Catch:{ Exception -> 0x0041 }
    L_0x002d:
        r2 = "V2.0";	 Catch:{ Exception -> 0x0041 }
        r2 = r1.startsWith(r2);	 Catch:{ Exception -> 0x0041 }
        if (r2 == 0) goto L_0x0037;	 Catch:{ Exception -> 0x0041 }
    L_0x0035:
        r0 = 4;	 Catch:{ Exception -> 0x0041 }
        return r0;	 Catch:{ Exception -> 0x0041 }
    L_0x0037:
        r2 = "V2.1";	 Catch:{ Exception -> 0x0041 }
        r1 = r1.startsWith(r2);	 Catch:{ Exception -> 0x0041 }
        if (r1 == 0) goto L_0x0041;
    L_0x003f:
        r0 = 5;
        return r0;
    L_0x0041:
        ROMVERSION = r0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: me.leolin.shortcutbadger.impl.OPPOHomeBader.getSupportVersion():int");
    }

    private static Object executeClassLoad$60e657e5(Class cls, String str) {
        if (!(cls == null || checkObjExists(str))) {
            cls = getMethod$5c0392c4(cls, str);
            if (cls != null) {
                cls.setAccessible(true);
                try {
                    return cls.invoke(null, null);
                } catch (Class cls2) {
                    cls2.printStackTrace();
                } catch (Class cls22) {
                    cls22.printStackTrace();
                }
            }
        }
        return null;
    }

    private static java.lang.reflect.Method getMethod$5c0392c4(java.lang.Class r2, java.lang.String r3) {
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
    L_0x0000:
        r0 = 0;
        if (r2 == 0) goto L_0x0026;
    L_0x0003:
        r1 = checkObjExists(r3);
        if (r1 == 0) goto L_0x000a;
    L_0x0009:
        goto L_0x0026;
    L_0x000a:
        r2.getMethods();	 Catch:{ Exception -> 0x0015 }
        r2.getDeclaredMethods();	 Catch:{ Exception -> 0x0015 }
        r1 = r2.getDeclaredMethod(r3, r0);	 Catch:{ Exception -> 0x0015 }
        return r1;
    L_0x0015:
        r1 = r2.getMethod(r3, r0);	 Catch:{ Exception -> 0x001a }
        return r1;
    L_0x001a:
        r1 = r2.getSuperclass();
        if (r1 == 0) goto L_0x0025;
    L_0x0020:
        r2 = r2.getSuperclass();
        goto L_0x0000;
    L_0x0025:
        return r0;
    L_0x0026:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: me.leolin.shortcutbadger.impl.OPPOHomeBader.getMethod$5c0392c4(java.lang.Class, java.lang.String):java.lang.reflect.Method");
    }

    private static java.lang.Class getClass(java.lang.String r0) {
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
        r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0005 }
        goto L_0x0006;
    L_0x0005:
        r0 = 0;
    L_0x0006:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: me.leolin.shortcutbadger.impl.OPPOHomeBader.getClass(java.lang.String):java.lang.Class");
    }

    private static boolean checkObjExists(Object obj) {
        if (!(obj == null || obj.toString().equals(""))) {
            if (obj.toString().trim().equals("null") == null) {
                return null;
            }
        }
        return true;
    }

    private static java.lang.String getSystemProperty(java.lang.String r3) {
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
        r0 = 0;
        r1 = java.lang.Runtime.getRuntime();	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r2 = "getprop ";	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r3 = r2.concat(r3);	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r3 = r1.exec(r3);	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r1 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r2 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r3 = r3.getInputStream();	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r2.<init>(r3);	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r3 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r1.<init>(r2, r3);	 Catch:{ IOException -> 0x0038, all -> 0x0031 }
        r3 = r1.readLine();	 Catch:{ IOException -> 0x0039, all -> 0x002e }
        r1.close();	 Catch:{ IOException -> 0x0039, all -> 0x002e }
        r1.close();	 Catch:{ IOException -> 0x002d }
    L_0x002d:
        return r3;
    L_0x002e:
        r3 = move-exception;
        r0 = r1;
        goto L_0x0032;
    L_0x0031:
        r3 = move-exception;
    L_0x0032:
        if (r0 == 0) goto L_0x0037;
    L_0x0034:
        r0.close();	 Catch:{ IOException -> 0x0037 }
    L_0x0037:
        throw r3;
    L_0x0038:
        r1 = r0;
    L_0x0039:
        if (r1 == 0) goto L_0x003e;
    L_0x003b:
        r1.close();	 Catch:{ IOException -> 0x003e }
    L_0x003e:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: me.leolin.shortcutbadger.impl.OPPOHomeBader.getSystemProperty(java.lang.String):java.lang.String");
    }
}
