package ru.rocketbank.core.manager;

import android.location.Location;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import java.util.Map;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import okhttp3.internal.Util;
import ru.rocketbank.core.exceptions.RocketHeaderException;
import ru.rocketbank.core.realm.DeviceInfoData;
import ru.rocketbank.core.user.AuthorizationStorage;

/* compiled from: HeaderManager.kt */
public final class HeaderManager {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(HeaderManager.class), "md5", "getMd5()Ljava/security/MessageDigest;"))};
    public static final Companion Companion = new Companion();
    private final AppInfoManager appInfoManager;
    private final AuthorizationStorage authStorage;
    private String fcmToken = "";
    private final GeolocationManager geolocationManager;
    private final Lazy md5$delegate = ExceptionsKt__ExceptionsKt.lazy((Function0) HeaderManager$md5$2.INSTANCE);

    /* compiled from: HeaderManager.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public HeaderManager(AuthorizationStorage authorizationStorage, AppInfoManager appInfoManager, GeolocationManager geolocationManager) {
        Intrinsics.checkParameterIsNotNull(authorizationStorage, "authStorage");
        Intrinsics.checkParameterIsNotNull(appInfoManager, "appInfoManager");
        Intrinsics.checkParameterIsNotNull(geolocationManager, "geolocationManager");
        this.authStorage = authorizationStorage;
        this.appInfoManager = appInfoManager;
        this.geolocationManager = geolocationManager;
    }

    public final AuthorizationStorage getAuthStorage() {
        return this.authStorage;
    }

    public final String getToken() {
        return this.authStorage.getState().realmGet$token();
    }

    public final void setFcmToken(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.fcmToken = str;
    }

    public final Map<String, String> getHeaders() {
        Pair checkNameAndValue;
        DeviceInfoData deviceData = this.appInfoManager.getDeviceData();
        ArrayMap arrayMap = new ArrayMap(9);
        if (this.authStorage.getState().realmGet$token() != null) {
            StringBuilder stringBuilder = new StringBuilder("Token token=");
            stringBuilder.append(this.authStorage.getState().realmGet$token());
            arrayMap.put("authorization", stringBuilder.toString());
        } else {
            Log.v("HeaderManager", "Got problem? Yep");
        }
        Map<String, String> map = arrayMap;
        map.put("x-app-version", deviceData.getAppVersion());
        map.put("x-device-id", deviceData.realmGet$deviceId());
        map.put("x-device-os", deviceData.getDeviceOs());
        try {
            checkNameAndValue = checkNameAndValue("x-device-type", deviceData.getDeviceName());
        } catch (Exception e) {
            AnalyticsManager.logException(e);
            checkNameAndValue = new Pair("x-device-type", "Unknown no_name device");
        }
        Intrinsics.checkParameterIsNotNull(map, "$receiver");
        Intrinsics.checkParameterIsNotNull(checkNameAndValue, "pair");
        map.put(checkNameAndValue.getFirst(), checkNameAndValue.getSecond());
        Location location = this.geolocationManager.getLocation();
        if (location != null) {
            map.put("x-latitude", String.valueOf(location.getLatitude()));
            map.put("x-longitude", String.valueOf(location.getLongitude()));
        }
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        map.put("x-sig", getSignature(currentTimeMillis));
        map.put("x-time", String.valueOf(currentTimeMillis));
        map.put("x-device-token", this.fcmToken);
        return map;
    }

    private final java.lang.String getSignature(long r6) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r5 = this;
        r0 = new java.lang.StringBuilder;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r0.<init>();	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r1 = r5.md5$delegate;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r1 = r1.getValue();	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r1 = (java.security.MessageDigest) r1;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r2 = new java.lang.StringBuilder;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r3 = "0Jk211uvxyyYAFcSSsBK3+etfkDPKMz6asDqrzr+f7c=_";	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r2.<init>(r3);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r2.append(r6);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r6 = "_dossantos";	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r2.append(r6);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r6 = r2.toString();	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r7 = kotlin.text.Charsets.UTF_8;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        if (r6 != 0) goto L_0x002c;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
    L_0x0024:
        r6 = new kotlin.TypeCastException;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r7 = "null cannot be cast to non-null type java.lang.String";	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r6.<init>(r7);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        throw r6;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
    L_0x002c:
        r6 = r6.getBytes(r7);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r7 = "(this as java.lang.String).getBytes(charset)";	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r7);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r6 = r1.digest(r6);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r7 = r6.length;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r1 = 0;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
    L_0x003b:
        if (r1 >= r7) goto L_0x0067;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
    L_0x003d:
        r2 = r6[r1];	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r2 = r2 & 255;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r2 = r2 | 256;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r2 = java.lang.Integer.toHexString(r2);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r3 = "Integer.toHexString(oneB…oInt() and 0xFF or 0x100)";	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        if (r2 != 0) goto L_0x0056;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
    L_0x004e:
        r6 = new kotlin.TypeCastException;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r7 = "null cannot be cast to non-null type java.lang.String";	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r6.<init>(r7);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        throw r6;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
    L_0x0056:
        r3 = 3;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r4 = 1;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r2 = r2.substring(r4, r3);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r3 = "(this as java.lang.Strin…ing(startIndex, endIndex)";	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r0.append(r2);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r1 = r1 + 1;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        goto L_0x003b;	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
    L_0x0067:
        r6 = r0.toString();	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        r7 = "stringBuilder.toString()";	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r7);	 Catch:{ NoSuchAlgorithmException -> 0x0071 }
        goto L_0x0073;
    L_0x0071:
        r6 = "";
    L_0x0073:
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.manager.HeaderManager.getSignature(long):java.lang.String");
    }

    private static Pair<String, String> checkNameAndValue(String str, String str2) {
        if ((((CharSequence) str).length() == 0 ? 1 : 0) != 0) {
            StringBuilder stringBuilder = new StringBuilder("header ");
            stringBuilder.append(str);
            stringBuilder.append(" is empty");
            throw ((Throwable) new RocketHeaderException(stringBuilder.toString()));
        }
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt > ' ') {
                if (charAt < '') {
                    i++;
                }
            }
            str = Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str);
            Intrinsics.checkExpressionValueIsNotNull(str, "Util.format(\"Unexpected … %s\", c.toInt(), i, name)");
            throw ((Throwable) new RocketHeaderException(str));
        }
        if (str2 == null) {
            stringBuilder = new StringBuilder("key = ");
            stringBuilder.append(str);
            stringBuilder.append(", value == null");
            throw ((Throwable) new RocketHeaderException(stringBuilder.toString()));
        }
        length = str2.length();
        i = 0;
        while (i < length) {
            charAt = str2.charAt(i);
            if ((charAt > '\u001f' || charAt == '\t') && charAt < '') {
                i++;
            } else {
                str = Util.format("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i), str, str2);
                Intrinsics.checkExpressionValueIsNotNull(str, "Util.format(\"Unexpected ….toInt(), i, name, value)");
                throw new RocketHeaderException(str);
            }
        }
        return new Pair(str, str2);
    }
}
