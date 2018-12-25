package android.arch.lifecycle;

import android.content.Context;
import android.os.Looper;
import android.os.Process;
import android.support.annotation.RestrictTo;
import android.support.v4.app.AppOpsManagerCompat;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.support.v4.graphics.ColorUtils;
import android.support.v7.appcompat.C0219R.dimen;
import android.support.v7.appcompat.C0219R.drawable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.StyleSpan;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.mikepenz.iconics.typeface.ITypeface;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Intrinsics;
import org.slf4j.Marker;

@RestrictTo
public final class MethodCallsLogger {
    private static String devKey;
    private static String replacedKey;
    private Map<String, Integer> mCalledMethods = new HashMap();

    public static int checkSelfPermission(Context context, String str) {
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) == -1) {
            return -1;
        }
        str = AppOpsManagerCompat.permissionToOp(str);
        if (str != null) {
            if (packageName == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                if (packagesForUid != null) {
                    if (packagesForUid.length > 0) {
                        packageName = packagesForUid[0];
                    }
                }
                return -1;
            }
            if (AppOpsManagerCompat.noteProxyOpNoThrow(context, str, packageName) != null) {
                return -2;
            }
        }
        return 0;
    }

    public static void setDevKey(String str) {
        devKey = str;
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            if (!(i == 0 || i == 1)) {
                if (i <= str.length() - 5) {
                    stringBuilder.append(Marker.ANY_MARKER);
                    i++;
                }
            }
            stringBuilder.append(str.charAt(i));
            i++;
        }
        replacedKey = stringBuilder.toString();
    }

    public static void logMessageMaskKey(String str) {
        if (devKey == null) {
            setDevKey(AppsFlyerProperties.getInstance().getString("AppsFlyerKey"));
            return;
        }
        if (devKey != null && str.contains(devKey)) {
            AFLogger.afLog(str.replace(devKey, replacedKey));
        }
    }

    public static KeyPair zzHg() {
        try {
            KeyPairGenerator instance = KeyPairGenerator.getInstance("RSA");
            instance.initialize(2048);
            return instance.generateKeyPair();
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public static void checkUiThread() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            StringBuilder stringBuilder = new StringBuilder("Must be called from the main thread. Was: ");
            stringBuilder.append(Thread.currentThread());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public static String[] getFields(Context context) {
        Class resolveRClass = resolveRClass(context.getPackageName());
        int i = 0;
        if (resolveRClass == null) {
            return new String[0];
        }
        Field[] fields = resolveRClass.getFields();
        ArrayList arrayList = new ArrayList();
        int length = fields.length;
        while (i < length) {
            Field field = fields[i];
            if (field.getName().contains("define_font_")) {
                Object obj;
                int identifier = context.getResources().getIdentifier(field.getName(), "string", context.getPackageName());
                if (identifier == 0) {
                    obj = "";
                } else {
                    obj = context.getString(identifier);
                }
                arrayList.add(obj);
            }
            i++;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static java.lang.Class resolveRClass(java.lang.String r2) {
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
        r0 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x0016 }
        r0.<init>();	 Catch:{ ClassNotFoundException -> 0x0016 }
        r0.append(r2);	 Catch:{ ClassNotFoundException -> 0x0016 }
        r1 = ".R$string";	 Catch:{ ClassNotFoundException -> 0x0016 }
        r0.append(r1);	 Catch:{ ClassNotFoundException -> 0x0016 }
        r0 = r0.toString();	 Catch:{ ClassNotFoundException -> 0x0016 }
        r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0016 }
        return r0;
    L_0x0016:
        r0 = ".";
        r0 = r2.contains(r0);
        if (r0 == 0) goto L_0x002a;
    L_0x001e:
        r0 = 0;
        r1 = 46;
        r1 = r2.lastIndexOf(r1);
        r2 = r2.substring(r0, r1);
        goto L_0x002c;
    L_0x002a:
        r2 = "";
    L_0x002c:
        r0 = android.text.TextUtils.isEmpty(r2);
        if (r0 == 0) goto L_0x0000;
    L_0x0032:
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.arch.lifecycle.MethodCallsLogger.resolveRClass(java.lang.String):java.lang.Class");
    }

    public static drawable findIcons$1da7ef4d(Spanned spanned, HashMap<String, ITypeface> hashMap) {
        LinkedList linkedList = new LinkedList();
        Collection linkedList2 = new LinkedList();
        int i = 0;
        for (StyleSpan styleSpan : (StyleSpan[]) spanned.getSpans(0, spanned.length(), StyleSpan.class)) {
            linkedList2.add(new dimen(spanned.getSpanStart(styleSpan), spanned.getSpanEnd(styleSpan), styleSpan));
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        CharSequence spannableStringBuilder2 = new SpannableStringBuilder();
        while (i < spanned.length()) {
            Character valueOf = Character.valueOf(spanned.charAt(i));
            if (valueOf.charValue() == '{') {
                spannableStringBuilder.append(spannableStringBuilder2);
                spannableStringBuilder2 = new SpannableStringBuilder();
                spannableStringBuilder2.append(valueOf.charValue());
            } else if (valueOf.charValue() == '}') {
                spannableStringBuilder2.append(valueOf.charValue());
                if (spannableStringBuilder2.length() > 5) {
                    dimen placeFontIcon$60e45538 = placeFontIcon$60e45538(spannableStringBuilder, spannableStringBuilder2, hashMap);
                    if (placeFontIcon$60e45538 != null) {
                        linkedList.add(placeFontIcon$60e45538);
                        Iterator it = linkedList2.iterator();
                        while (it.hasNext()) {
                            dimen dimen = (dimen) it.next();
                            if (dimen.startIndex > i) {
                                dimen.startIndex = (dimen.startIndex - spannableStringBuilder2.length()) + 1;
                            }
                            if (dimen.endIndex > i) {
                                dimen.endIndex = (dimen.endIndex - spannableStringBuilder2.length()) + 1;
                            }
                        }
                    }
                } else {
                    spannableStringBuilder.append(spannableStringBuilder2);
                }
                spannableStringBuilder2 = new SpannableStringBuilder();
            } else if (spannableStringBuilder2.length() == 0) {
                spannableStringBuilder.append(valueOf.charValue());
            } else {
                spannableStringBuilder2.append(valueOf.charValue());
            }
            i++;
        }
        spannableStringBuilder.append(spannableStringBuilder2);
        linkedList.addAll(linkedList2);
        return new drawable(spannableStringBuilder, linkedList);
    }

    private static android.support.v7.appcompat.C0219R.dimen placeFontIcon$60e45538(android.text.SpannableStringBuilder r5, android.text.SpannableStringBuilder r6, java.util.HashMap<java.lang.String, com.mikepenz.iconics.typeface.ITypeface> r7) {
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
        r0 = r6.length();
        r1 = 6;
        if (r0 < r1) goto L_0x007f;
    L_0x0007:
        r0 = r6.length();
        r1 = 1;
        r0 = r0 - r1;
        r0 = r6.subSequence(r1, r0);
        r0 = r0.toString();
        r2 = "-";
        r3 = "_";
        r0 = r0.replace(r2, r3);
        r2 = 4;
        r2 = r6.subSequence(r1, r2);
        r2 = r2.toString();
        r3 = r7.get(r2);	 Catch:{ IllegalArgumentException -> 0x0070 }
        r3 = (com.mikepenz.iconics.typeface.ITypeface) r3;	 Catch:{ IllegalArgumentException -> 0x0070 }
        if (r3 == 0) goto L_0x0060;	 Catch:{ IllegalArgumentException -> 0x0070 }
    L_0x002e:
        r3 = r3.getIcon(r0);	 Catch:{ IllegalArgumentException -> 0x0070 }
        if (r3 == 0) goto L_0x0050;	 Catch:{ IllegalArgumentException -> 0x0070 }
    L_0x0034:
        r3 = r3.getCharacter();	 Catch:{ IllegalArgumentException -> 0x0070 }
        r5.append(r3);	 Catch:{ IllegalArgumentException -> 0x0070 }
        r3 = new android.support.v7.appcompat.R$dimen;	 Catch:{ IllegalArgumentException -> 0x0070 }
        r4 = r5.length();	 Catch:{ IllegalArgumentException -> 0x0070 }
        r4 = r4 - r1;	 Catch:{ IllegalArgumentException -> 0x0070 }
        r1 = r5.length();	 Catch:{ IllegalArgumentException -> 0x0070 }
        r7 = r7.get(r2);	 Catch:{ IllegalArgumentException -> 0x0070 }
        r7 = (com.mikepenz.iconics.typeface.ITypeface) r7;	 Catch:{ IllegalArgumentException -> 0x0070 }
        r3.<init>(r4, r1, r0, r7);	 Catch:{ IllegalArgumentException -> 0x0070 }
        return r3;	 Catch:{ IllegalArgumentException -> 0x0070 }
    L_0x0050:
        r7 = com.mikepenz.iconics.Iconics.TAG;	 Catch:{ IllegalArgumentException -> 0x0070 }
        r1 = "Wrong icon name: ";	 Catch:{ IllegalArgumentException -> 0x0070 }
        r2 = java.lang.String.valueOf(r0);	 Catch:{ IllegalArgumentException -> 0x0070 }
        r1 = r1.concat(r2);	 Catch:{ IllegalArgumentException -> 0x0070 }
        android.util.Log.e(r7, r1);	 Catch:{ IllegalArgumentException -> 0x0070 }
        goto L_0x007f;	 Catch:{ IllegalArgumentException -> 0x0070 }
    L_0x0060:
        r7 = com.mikepenz.iconics.Iconics.TAG;	 Catch:{ IllegalArgumentException -> 0x0070 }
        r1 = "Wrong fontId: ";	 Catch:{ IllegalArgumentException -> 0x0070 }
        r2 = java.lang.String.valueOf(r0);	 Catch:{ IllegalArgumentException -> 0x0070 }
        r1 = r1.concat(r2);	 Catch:{ IllegalArgumentException -> 0x0070 }
        android.util.Log.e(r7, r1);	 Catch:{ IllegalArgumentException -> 0x0070 }
        goto L_0x007f;
    L_0x0070:
        r7 = com.mikepenz.iconics.Iconics.TAG;
        r1 = "Wrong icon name: ";
        r0 = java.lang.String.valueOf(r0);
        r0 = r1.concat(r0);
        android.util.Log.e(r7, r0);
    L_0x007f:
        r5.append(r6);
        r5 = 0;
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.arch.lifecycle.MethodCallsLogger.placeFontIcon$60e45538(android.text.SpannableStringBuilder, android.text.SpannableStringBuilder, java.util.HashMap):android.support.v7.appcompat.R$dimen");
    }

    public static String urlEncode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF8");
        } catch (String str2) {
            throw new RuntimeException(str2.getMessage(), str2);
        }
    }

    private static int differenceModulo(int i, int i2, int i3) {
        i %= i3;
        if (i < 0) {
            i += i3;
        }
        i2 %= i3;
        if (i2 < 0) {
            i2 += i3;
        }
        i = (i - i2) % i3;
        return i >= 0 ? i : i + i3;
    }

    public static int getProgressionLastElement(int i, int i2, int i3) {
        if (i3 > 0) {
            return i2 - differenceModulo(i2, i, i3);
        }
        if (i3 < 0) {
            return i2 + differenceModulo(i, i2, -i3);
        }
        throw ((Throwable) new IllegalArgumentException("Step is zero."));
    }

    public static <T> Class<T> getJavaObjectType$53192d4(OnLoadCompleteListener<T> onLoadCompleteListener) {
        Intrinsics.checkParameterIsNotNull(onLoadCompleteListener, "$receiver");
        onLoadCompleteListener = ((ClassBasedDeclarationContainer) onLoadCompleteListener).getJClass();
        if (onLoadCompleteListener.isPrimitive()) {
            String name = onLoadCompleteListener.getName();
            if (name != null) {
                switch (name.hashCode()) {
                    case -1325958191:
                        if (name.equals("double")) {
                            onLoadCompleteListener = Double.class;
                            break;
                        }
                        break;
                    case 104431:
                        if (name.equals("int")) {
                            onLoadCompleteListener = Integer.class;
                            break;
                        }
                        break;
                    case 3039496:
                        if (name.equals("byte")) {
                            onLoadCompleteListener = Byte.class;
                            break;
                        }
                        break;
                    case 3052374:
                        if (name.equals("char")) {
                            onLoadCompleteListener = Character.class;
                            break;
                        }
                        break;
                    case 3327612:
                        if (name.equals("long")) {
                            onLoadCompleteListener = Long.class;
                            break;
                        }
                        break;
                    case 3625364:
                        if (name.equals("void")) {
                            onLoadCompleteListener = Void.class;
                            break;
                        }
                        break;
                    case 64711720:
                        if (name.equals("boolean")) {
                            onLoadCompleteListener = Boolean.class;
                            break;
                        }
                        break;
                    case 97526364:
                        if (name.equals("float")) {
                            onLoadCompleteListener = Float.class;
                            break;
                        }
                        break;
                    case 109413500:
                        if (name.equals("short")) {
                            onLoadCompleteListener = Short.class;
                            break;
                        }
                        break;
                    default:
                        break;
                }
            }
            if (onLoadCompleteListener != null) {
                return onLoadCompleteListener;
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<T>");
        } else if (onLoadCompleteListener != null) {
            return onLoadCompleteListener;
        } else {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<T>");
        }
    }

    public static boolean requiresRequestBody(String str) {
        if (!(str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH"))) {
            if (str.equals("REPORT") == null) {
                return null;
            }
        }
        return true;
    }

    public static int parseColor(java.lang.String r0) {
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
        r0 = android.graphics.Color.parseColor(r0);	 Catch:{ Exception -> 0x0005 }
        goto L_0x0006;
    L_0x0005:
        r0 = 0;
    L_0x0006:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.arch.lifecycle.MethodCallsLogger.parseColor(java.lang.String):int");
    }

    public static boolean isSuperLightColor(int i) {
        float[] fArr = new float[3];
        ColorUtils.colorToHSL(i, fArr);
        return fArr[2] > 1064514355 && fArr[1] < 0.05f;
    }
}
