package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.Callback;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.share.internal.ShareConstants;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class Utility {
    public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
    private static final String EXTRA_APP_EVENTS_INFO_FORMAT_VERSION = "a2";
    private static final int GINGERBREAD_MR1 = 10;
    private static final String HASH_ALGORITHM_MD5 = "MD5";
    private static final String HASH_ALGORITHM_SHA1 = "SHA-1";
    static final String LOG_TAG = "FacebookSDK";
    private static final int REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS = 1800000;
    private static final String URL_SCHEME = "https";
    private static final String UTF8 = "UTF-8";
    private static long availableExternalStorageGB = -1;
    private static String carrierName = "NoCarrier";
    private static String deviceTimeZoneName = "";
    private static String deviceTimezoneAbbreviation = "";
    private static final String noCarrierConstant = "NoCarrier";
    private static int numCPUCores = 0;
    private static long timestampOfLastCheck = -1;
    private static long totalExternalStorageGB = -1;

    /* renamed from: com.facebook.internal.Utility$2 */
    static class C04042 implements FilenameFilter {
        C04042() {
        }

        public final boolean accept(File file, String str) {
            return Pattern.matches("cpu[0-9]+", str);
        }
    }

    public interface GraphMeRequestWithCacheCallback {
        void onFailure(FacebookException facebookException);

        void onSuccess(JSONObject jSONObject);
    }

    public interface Mapper<T, K> {
        K apply(T t);
    }

    public static class PermissionsPair {
        List<String> declinedPermissions;
        List<String> grantedPermissions;

        public PermissionsPair(List<String> list, List<String> list2) {
            this.grantedPermissions = list;
            this.declinedPermissions = list2;
        }

        public List<String> getGrantedPermissions() {
            return this.grantedPermissions;
        }

        public List<String> getDeclinedPermissions() {
            return this.declinedPermissions;
        }
    }

    public interface Predicate<T> {
        boolean apply(T t);
    }

    public static int[] intersectRanges(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null) {
            return iArr;
        }
        int i = 0;
        int[] iArr3 = new int[(iArr.length + iArr2.length)];
        int i2 = 0;
        int i3 = i2;
        while (i < iArr.length && i2 < iArr2.length) {
            int i4;
            int i5 = iArr[i];
            int i6 = iArr2[i2];
            int i7 = i < iArr.length + -1 ? iArr[i + 1] : Integer.MAX_VALUE;
            if (i2 < iArr2.length - 1) {
                i4 = iArr2[i2 + 1];
            } else {
                i4 = Integer.MAX_VALUE;
            }
            if (i5 < i6) {
                if (i7 <= i6) {
                    i += 2;
                    i7 = Integer.MAX_VALUE;
                    i5 = Integer.MIN_VALUE;
                } else if (i7 <= i4) {
                    i += 2;
                    i5 = i6;
                } else {
                    i5 = i6;
                }
                if (i5 == Integer.MIN_VALUE) {
                    i6 = i3 + 1;
                    iArr3[i3] = i5;
                    if (i7 != Integer.MAX_VALUE) {
                        i3 = i6;
                        break;
                    }
                    i3 = i6 + 1;
                    iArr3[i6] = i7;
                }
            } else if (i4 <= i5) {
                i4 = Integer.MAX_VALUE;
                i5 = Integer.MIN_VALUE;
            } else if (i4 > i7) {
                i += 2;
                if (i5 == Integer.MIN_VALUE) {
                    i6 = i3 + 1;
                    iArr3[i3] = i5;
                    if (i7 != Integer.MAX_VALUE) {
                        i3 = i6;
                        break;
                    }
                    i3 = i6 + 1;
                    iArr3[i6] = i7;
                }
            }
            i2 += 2;
            i7 = i4;
            if (i5 == Integer.MIN_VALUE) {
                i6 = i3 + 1;
                iArr3[i3] = i5;
                if (i7 != Integer.MAX_VALUE) {
                    i3 = i6;
                    break;
                }
                i3 = i6 + 1;
                iArr3[i6] = i7;
            }
        }
        return Arrays.copyOf(iArr3, i3);
    }

    public static <T> boolean isSubset(Collection<T> collection, Collection<T> collection2) {
        if (collection2 != null) {
            if (collection2.size() != 0) {
                HashSet hashSet = new HashSet(collection2);
                for (T contains : collection) {
                    if (hashSet.contains(contains) == null) {
                        return false;
                    }
                }
                return true;
            }
        }
        if (collection != null) {
            if (collection.size() != null) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean isNullOrEmpty(Collection<T> collection) {
        if (collection != null) {
            if (collection.size() != null) {
                return null;
            }
        }
        return true;
    }

    public static boolean isNullOrEmpty(String str) {
        if (str != null) {
            if (str.length() != null) {
                return null;
            }
        }
        return true;
    }

    public static String coerceValueIfNullOrEmpty(String str, String str2) {
        return isNullOrEmpty(str) ? str2 : str;
    }

    public static <T> Collection<T> unmodifiableCollection(T... tArr) {
        return Collections.unmodifiableCollection(Arrays.asList(tArr));
    }

    public static <T> ArrayList<T> arrayList(T... tArr) {
        ArrayList<T> arrayList = new ArrayList(tArr.length);
        for (Object add : tArr) {
            arrayList.add(add);
        }
        return arrayList;
    }

    public static <T> HashSet<T> hashSet(T... tArr) {
        HashSet<T> hashSet = new HashSet(tArr.length);
        for (Object add : tArr) {
            hashSet.add(add);
        }
        return hashSet;
    }

    public static String md5hash(String str) {
        return hashWithAlgorithm(HASH_ALGORITHM_MD5, str);
    }

    public static String sha1hash(String str) {
        return hashWithAlgorithm("SHA-1", str);
    }

    public static String sha1hash(byte[] bArr) {
        return hashWithAlgorithm("SHA-1", bArr);
    }

    private static String hashWithAlgorithm(String str, String str2) {
        return hashWithAlgorithm(str, str2.getBytes());
    }

    private static java.lang.String hashWithAlgorithm(java.lang.String r0, byte[] r1) {
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
        r0 = java.security.MessageDigest.getInstance(r0);	 Catch:{ NoSuchAlgorithmException -> 0x0009 }
        r0 = hashBytes(r0, r1);
        return r0;
    L_0x0009:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.hashWithAlgorithm(java.lang.String, byte[]):java.lang.String");
    }

    private static String hashBytes(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        messageDigest = messageDigest.digest();
        bArr = new StringBuilder();
        for (byte b : messageDigest) {
            bArr.append(Integer.toHexString((b >> 4) & 15));
            bArr.append(Integer.toHexString(b & 15));
        }
        return bArr.toString();
    }

    public static Uri buildUri(String str, String str2, Bundle bundle) {
        Builder builder = new Builder();
        builder.scheme(URL_SCHEME);
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str22 : bundle.keySet()) {
                Object obj = bundle.get(str22);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str22, (String) obj);
                }
            }
        }
        return builder.build();
    }

    public static Bundle parseUrlQueryString(String str) {
        Bundle bundle = new Bundle();
        if (!isNullOrEmpty(str)) {
            for (String split : str.split("&")) {
                String[] split2 = split.split("=");
                try {
                    if (split2.length == 2) {
                        bundle.putString(URLDecoder.decode(split2[0], UTF8), URLDecoder.decode(split2[1], UTF8));
                    } else if (split2.length == 1) {
                        bundle.putString(URLDecoder.decode(split2[0], UTF8), "");
                    }
                } catch (Exception e) {
                    logd(LOG_TAG, e);
                }
            }
        }
        return bundle;
    }

    public static void putNonEmptyString(Bundle bundle, String str, String str2) {
        if (!isNullOrEmpty(str2)) {
            bundle.putString(str, str2);
        }
    }

    public static void putCommaSeparatedStringList(Bundle bundle, String str, List<String> list) {
        if (list != null) {
            StringBuilder stringBuilder = new StringBuilder();
            for (String append : list) {
                stringBuilder.append(append);
                stringBuilder.append(",");
            }
            list = "";
            if (stringBuilder.length() > 0) {
                list = stringBuilder.substring(null, stringBuilder.length() - 1);
            }
            bundle.putString(str, list);
        }
    }

    public static void putUri(Bundle bundle, String str, Uri uri) {
        if (uri != null) {
            putNonEmptyString(bundle, str, uri.toString());
        }
    }

    public static boolean putJSONValueInBundle(Bundle bundle, String str, Object obj) {
        if (obj == null) {
            bundle.remove(str);
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
        } else if (obj instanceof String) {
            bundle.putString(str, (String) obj);
        } else if (obj instanceof JSONArray) {
            bundle.putString(str, obj.toString());
        } else if (!(obj instanceof JSONObject)) {
            return null;
        } else {
            bundle.putString(str, obj.toString());
        }
        return true;
    }

    public static void closeQuietly(java.io.Closeable r0) {
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
        if (r0 == 0) goto L_0x0007;
    L_0x0002:
        r0.close();	 Catch:{ IOException -> 0x0006 }
        goto L_0x0007;
    L_0x0006:
        return;
    L_0x0007:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.closeQuietly(java.io.Closeable):void");
    }

    public static void disconnectQuietly(URLConnection uRLConnection) {
        if (uRLConnection != null && (uRLConnection instanceof HttpURLConnection)) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    public static String getMetadataApplicationId(Context context) {
        Validate.notNull(context, "context");
        FacebookSdk.sdkInitialize(context);
        return FacebookSdk.getApplicationId();
    }

    static java.util.Map<java.lang.String, java.lang.Object> convertJSONObjectToHashMap(org.json.JSONObject r6) {
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
        r0 = new java.util.HashMap;
        r0.<init>();
        r1 = r6.names();
        r2 = 0;
    L_0x000a:
        r3 = r1.length();
        if (r2 >= r3) goto L_0x0028;
    L_0x0010:
        r3 = r1.getString(r2);	 Catch:{ JSONException -> 0x0025 }
        r4 = r6.get(r3);	 Catch:{ JSONException -> 0x0025 }
        r5 = r4 instanceof org.json.JSONObject;	 Catch:{ JSONException -> 0x0025 }
        if (r5 == 0) goto L_0x0022;	 Catch:{ JSONException -> 0x0025 }
    L_0x001c:
        r4 = (org.json.JSONObject) r4;	 Catch:{ JSONException -> 0x0025 }
        r4 = convertJSONObjectToHashMap(r4);	 Catch:{ JSONException -> 0x0025 }
    L_0x0022:
        r0.put(r3, r4);	 Catch:{ JSONException -> 0x0025 }
    L_0x0025:
        r2 = r2 + 1;
        goto L_0x000a;
    L_0x0028:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.convertJSONObjectToHashMap(org.json.JSONObject):java.util.Map<java.lang.String, java.lang.Object>");
    }

    public static Object getStringPropertyAsJSON(JSONObject jSONObject, String str, String str2) throws JSONException {
        jSONObject = jSONObject.opt(str);
        if (!(jSONObject == null || (jSONObject instanceof String) == null)) {
            jSONObject = new JSONTokener((String) jSONObject).nextValue();
        }
        if (jSONObject == null || (jSONObject instanceof JSONObject) != null || (jSONObject instanceof JSONArray) != null) {
            return jSONObject;
        }
        if (str2 != null) {
            str = new JSONObject();
            str.putOpt(str2, jSONObject);
            return str;
        }
        throw new FacebookException("Got an unexpected non-JSON object.");
    }

    public static String readStreamToString(InputStream inputStream) throws IOException {
        Throwable th;
        Closeable bufferedInputStream;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStream = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder stringBuilder = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStream.read(cArr);
                        if (read != -1) {
                            stringBuilder.append(cArr, 0, read);
                        } else {
                            String stringBuilder2 = stringBuilder.toString();
                            closeQuietly(bufferedInputStream);
                            closeQuietly(inputStream);
                            return stringBuilder2;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeQuietly(bufferedInputStream);
                    closeQuietly(inputStream);
                    throw th;
                }
            } catch (InputStream inputStream2) {
                th = inputStream2;
                inputStream2 = null;
                closeQuietly(bufferedInputStream);
                closeQuietly(inputStream2);
                throw th;
            }
        } catch (InputStream inputStream22) {
            bufferedInputStream = null;
            th = inputStream22;
            inputStream22 = bufferedInputStream;
            closeQuietly(bufferedInputStream);
            closeQuietly(inputStream22);
            throw th;
        }
    }

    public static int copyAndCloseInputStream(InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[8192];
                int i = 0;
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    i += read;
                }
                bufferedInputStream.close();
                if (inputStream != null) {
                    inputStream.close();
                }
                return i;
            } catch (Throwable th) {
                outputStream = th;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                throw outputStream;
            }
        } catch (Throwable th2) {
            outputStream = th2;
            bufferedInputStream = null;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw outputStream;
        }
    }

    public static boolean stringsEqualOrEmpty(String str, String str2) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (isEmpty && isEmpty2) {
            return true;
        }
        return (isEmpty || isEmpty2) ? null : str.equals(str2);
    }

    private static void clearCookiesForDomain(Context context, String str) {
        CookieSyncManager.createInstance(context).sync();
        context = CookieManager.getInstance();
        String cookie = context.getCookie(str);
        if (cookie != null) {
            for (String split : cookie.split(";")) {
                String[] split2 = split.split("=");
                if (split2.length > 0) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(split2[0].trim());
                    stringBuilder.append("=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
                    context.setCookie(str, stringBuilder.toString());
                }
            }
            context.removeExpiredCookie();
        }
    }

    public static void clearFacebookCookies(Context context) {
        clearCookiesForDomain(context, "facebook.com");
        clearCookiesForDomain(context, ".facebook.com");
        clearCookiesForDomain(context, "https://facebook.com");
        clearCookiesForDomain(context, "https://.facebook.com");
    }

    public static void logd(String str, Exception exception) {
        if (FacebookSdk.isDebugEnabled() && str != null && exception != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(exception.getClass().getSimpleName());
            stringBuilder.append(": ");
            stringBuilder.append(exception.getMessage());
            Log.d(str, stringBuilder.toString());
        }
    }

    public static void logd(String str, String str2) {
        if (FacebookSdk.isDebugEnabled() && str != null && str2 != null) {
            Log.d(str, str2);
        }
    }

    public static void logd(String str, String str2, Throwable th) {
        if (FacebookSdk.isDebugEnabled() && !isNullOrEmpty(str)) {
            Log.d(str, str2, th);
        }
    }

    public static <T> boolean areObjectsEqual(T t, T t2) {
        if (t == null) {
            return t2 == null ? true : null;
        } else {
            return t.equals(t2);
        }
    }

    public static boolean hasSameId(JSONObject jSONObject, JSONObject jSONObject2) {
        if (!(jSONObject == null || jSONObject2 == null || !jSONObject.has("id"))) {
            if (jSONObject2.has("id")) {
                if (jSONObject.equals(jSONObject2)) {
                    return true;
                }
                jSONObject = jSONObject.optString("id");
                jSONObject2 = jSONObject2.optString("id");
                if (jSONObject != null) {
                    if (jSONObject2 != null) {
                        return jSONObject.equals(jSONObject2);
                    }
                }
                return false;
            }
        }
        return false;
    }

    public static String safeGetStringFromResponse(JSONObject jSONObject, String str) {
        return jSONObject != null ? jSONObject.optString(str, "") : "";
    }

    public static JSONObject tryGetJSONObjectFromResponse(JSONObject jSONObject, String str) {
        return jSONObject != null ? jSONObject.optJSONObject(str) : null;
    }

    public static JSONArray tryGetJSONArrayFromResponse(JSONObject jSONObject, String str) {
        return jSONObject != null ? jSONObject.optJSONArray(str) : null;
    }

    public static void clearCaches(Context context) {
        ImageDownloader.clearCache(context);
    }

    public static void deleteDirectory(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File deleteDirectory : listFiles) {
                        deleteDirectory(deleteDirectory);
                    }
                }
            }
            file.delete();
        }
    }

    public static <T> List<T> asListNoNulls(T... tArr) {
        List arrayList = new ArrayList();
        for (Object obj : tArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static List<String> jsonArrayToStringList(JSONArray jSONArray) throws JSONException {
        List arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    public static Set<String> jsonArrayToSet(JSONArray jSONArray) throws JSONException {
        Set<String> hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.getString(i));
        }
        return hashSet;
    }

    public static void setAppEventAttributionParameters(JSONObject jSONObject, AttributionIdentifiers attributionIdentifiers, String str, boolean z) throws JSONException {
        if (!(attributionIdentifiers == null || attributionIdentifiers.getAttributionId() == null)) {
            jSONObject.put("attribution", attributionIdentifiers.getAttributionId());
        }
        if (!(attributionIdentifiers == null || attributionIdentifiers.getAndroidAdvertiserId() == null)) {
            jSONObject.put("advertiser_id", attributionIdentifiers.getAndroidAdvertiserId());
            jSONObject.put("advertiser_tracking_enabled", attributionIdentifiers.isTrackingLimited() ^ 1);
        }
        if (!(attributionIdentifiers == null || attributionIdentifiers.getAndroidInstallerPackage() == null)) {
            jSONObject.put("installer_package", attributionIdentifiers.getAndroidInstallerPackage());
        }
        jSONObject.put("anon_id", str);
        jSONObject.put("application_tracking_enabled", z ^ 1);
    }

    public static void setAppEventExtendedDeviceInfoParameters(org.json.JSONObject r6, android.content.Context r7) throws org.json.JSONException {
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
        r0 = new org.json.JSONArray;
        r0.<init>();
        r1 = "a2";
        r0.put(r1);
        refreshPeriodicExtendedDeviceInfo(r7);
        r1 = r7.getPackageName();
        r2 = "";
        r3 = 0;
        r4 = r7.getPackageManager();	 Catch:{ NameNotFoundException -> 0x0022 }
        r4 = r4.getPackageInfo(r1, r3);	 Catch:{ NameNotFoundException -> 0x0022 }
        r5 = r4.versionCode;	 Catch:{ NameNotFoundException -> 0x0022 }
        r4 = r4.versionName;	 Catch:{ NameNotFoundException -> 0x0023 }
        r2 = r4;
        goto L_0x0023;
    L_0x0022:
        r5 = -1;
    L_0x0023:
        r0.put(r1);
        r0.put(r5);
        r0.put(r2);
        r1 = android.os.Build.VERSION.RELEASE;
        r0.put(r1);
        r1 = android.os.Build.MODEL;
        r0.put(r1);
        r1 = r7.getResources();	 Catch:{ Exception -> 0x0041 }
        r1 = r1.getConfiguration();	 Catch:{ Exception -> 0x0041 }
        r1 = r1.locale;	 Catch:{ Exception -> 0x0041 }
        goto L_0x0045;
    L_0x0041:
        r1 = java.util.Locale.getDefault();
    L_0x0045:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = r1.getLanguage();
        r2.append(r4);
        r4 = "_";
        r2.append(r4);
        r1 = r1.getCountry();
        r2.append(r1);
        r1 = r2.toString();
        r0.put(r1);
        r1 = deviceTimezoneAbbreviation;
        r0.put(r1);
        r1 = carrierName;
        r0.put(r1);
        r1 = 0;
        r4 = "window";	 Catch:{ Exception -> 0x0090 }
        r7 = r7.getSystemService(r4);	 Catch:{ Exception -> 0x0090 }
        r7 = (android.view.WindowManager) r7;	 Catch:{ Exception -> 0x0090 }
        if (r7 == 0) goto L_0x0090;	 Catch:{ Exception -> 0x0090 }
    L_0x007a:
        r7 = r7.getDefaultDisplay();	 Catch:{ Exception -> 0x0090 }
        r4 = new android.util.DisplayMetrics;	 Catch:{ Exception -> 0x0090 }
        r4.<init>();	 Catch:{ Exception -> 0x0090 }
        r7.getMetrics(r4);	 Catch:{ Exception -> 0x0090 }
        r7 = r4.widthPixels;	 Catch:{ Exception -> 0x0090 }
        r5 = r4.heightPixels;	 Catch:{ Exception -> 0x008e }
        r4 = r4.density;	 Catch:{ Exception -> 0x0092 }
        r1 = (double) r4;
        goto L_0x0092;
    L_0x008e:
        r5 = r3;
        goto L_0x0092;
    L_0x0090:
        r7 = r3;
        r5 = r7;
    L_0x0092:
        r0.put(r7);
        r0.put(r5);
        r7 = "%.2f";
        r4 = 1;
        r4 = new java.lang.Object[r4];
        r1 = java.lang.Double.valueOf(r1);
        r4[r3] = r1;
        r7 = java.lang.String.format(r7, r4);
        r0.put(r7);
        r7 = refreshBestGuessNumberOfCPUCores();
        r0.put(r7);
        r1 = totalExternalStorageGB;
        r0.put(r1);
        r1 = availableExternalStorageGB;
        r0.put(r1);
        r7 = deviceTimeZoneName;
        r0.put(r7);
        r7 = "extinfo";
        r0 = r0.toString();
        r6.put(r7, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.setAppEventExtendedDeviceInfoParameters(org.json.JSONObject, android.content.Context):void");
    }

    public static java.lang.reflect.Method getMethodQuietly(java.lang.Class<?> r0, java.lang.String r1, java.lang.Class<?>... r2) {
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
        r0 = r0.getMethod(r1, r2);	 Catch:{ NoSuchMethodException -> 0x0005 }
        return r0;
    L_0x0005:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.getMethodQuietly(java.lang.Class, java.lang.String, java.lang.Class[]):java.lang.reflect.Method");
    }

    public static java.lang.reflect.Method getMethodQuietly(java.lang.String r0, java.lang.String r1, java.lang.Class<?>... r2) {
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
        r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0009 }
        r0 = getMethodQuietly(r0, r1, r2);	 Catch:{ ClassNotFoundException -> 0x0009 }
        return r0;
    L_0x0009:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.getMethodQuietly(java.lang.String, java.lang.String, java.lang.Class[]):java.lang.reflect.Method");
    }

    public static java.lang.Object invokeMethodQuietly(java.lang.Object r1, java.lang.reflect.Method r2, java.lang.Object... r3) {
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
        r0 = 0;
        r1 = r2.invoke(r1, r3);	 Catch:{ IllegalAccessException -> 0x0007, InvocationTargetException -> 0x0006 }
        return r1;
    L_0x0006:
        return r0;
    L_0x0007:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.invokeMethodQuietly(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
    }

    public static String getActivityName(Context context) {
        if (context == null) {
            return "null";
        }
        if (context == context.getApplicationContext()) {
            return "unknown";
        }
        return context.getClass().getSimpleName();
    }

    public static <T> List<T> filter(List<T> list, Predicate<T> predicate) {
        if (list == null) {
            return null;
        }
        List<T> arrayList = new ArrayList();
        for (Object next : list) {
            if (predicate.apply(next)) {
                arrayList.add(next);
            }
        }
        if (arrayList.size() == null) {
            return null;
        }
        return arrayList;
    }

    public static <T, K> List<K> map(List<T> list, Mapper<T, K> mapper) {
        if (list == null) {
            return null;
        }
        List<K> arrayList = new ArrayList();
        for (T apply : list) {
            Object apply2 = mapper.apply(apply);
            if (apply2 != null) {
                arrayList.add(apply2);
            }
        }
        if (arrayList.size() == null) {
            return null;
        }
        return arrayList;
    }

    public static String getUriString(Uri uri) {
        return uri == null ? null : uri.toString();
    }

    public static boolean isWebUri(Uri uri) {
        return (uri == null || !("http".equalsIgnoreCase(uri.getScheme()) || URL_SCHEME.equalsIgnoreCase(uri.getScheme()) || "fbstaging".equalsIgnoreCase(uri.getScheme()) != null)) ? null : true;
    }

    public static boolean isContentUri(Uri uri) {
        return (uri == null || Param.CONTENT.equalsIgnoreCase(uri.getScheme()) == null) ? null : true;
    }

    public static boolean isFileUri(Uri uri) {
        return (uri == null || "file".equalsIgnoreCase(uri.getScheme()) == null) ? null : true;
    }

    public static long getContentSize(Uri uri) {
        Throwable th;
        try {
            uri = FacebookSdk.getApplicationContext().getContentResolver().query(uri, null, null, null, null);
            try {
                int columnIndex = uri.getColumnIndex("_size");
                uri.moveToFirst();
                long j = uri.getLong(columnIndex);
                if (uri != null) {
                    uri.close();
                }
                return j;
            } catch (Throwable th2) {
                th = th2;
                if (uri != null) {
                    uri.close();
                }
                throw th;
            }
        } catch (Uri uri2) {
            th = uri2;
            uri2 = null;
            if (uri2 != null) {
                uri2.close();
            }
            throw th;
        }
    }

    public static java.util.Date getBundleLongAsDate(android.os.Bundle r5, java.lang.String r6, java.util.Date r7) {
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
        r0 = 0;
        if (r5 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r5 = r5.get(r6);
        r6 = r5 instanceof java.lang.Long;
        if (r6 == 0) goto L_0x0013;
    L_0x000c:
        r5 = (java.lang.Long) r5;
        r5 = r5.longValue();
        goto L_0x001d;
    L_0x0013:
        r6 = r5 instanceof java.lang.String;
        if (r6 == 0) goto L_0x003e;
    L_0x0017:
        r5 = (java.lang.String) r5;	 Catch:{ NumberFormatException -> 0x003d }
        r5 = java.lang.Long.parseLong(r5);	 Catch:{ NumberFormatException -> 0x003d }
    L_0x001d:
        r0 = 0;
        r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1));
        if (r2 != 0) goto L_0x002e;
    L_0x0023:
        r5 = new java.util.Date;
        r6 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r5.<init>(r6);
        return r5;
    L_0x002e:
        r0 = new java.util.Date;
        r1 = r7.getTime();
        r3 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r5 = r5 * r3;
        r3 = r1 + r5;
        r0.<init>(r3);
        return r0;
    L_0x003d:
        return r0;
    L_0x003e:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.getBundleLongAsDate(android.os.Bundle, java.lang.String, java.util.Date):java.util.Date");
    }

    public static void writeStringMapToParcel(Parcel parcel, Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        map = map.entrySet().iterator();
        while (map.hasNext()) {
            Entry entry = (Entry) map.next();
            parcel.writeString((String) entry.getKey());
            parcel.writeString((String) entry.getValue());
        }
    }

    public static Map<String, String> readStringMapFromParcel(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        Map<String, String> hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            hashMap.put(parcel.readString(), parcel.readString());
        }
        return hashMap;
    }

    public static boolean isCurrentAccessToken(AccessToken accessToken) {
        return accessToken != null ? accessToken.equals(AccessToken.getCurrentAccessToken()) : null;
    }

    public static void getGraphMeRequestWithCacheAsync(final String str, final GraphMeRequestWithCacheCallback graphMeRequestWithCacheCallback) {
        JSONObject profileInformation = ProfileInformationCache.getProfileInformation(str);
        if (profileInformation != null) {
            graphMeRequestWithCacheCallback.onSuccess(profileInformation);
            return;
        }
        Callback c10191 = new Callback() {
            public final void onCompleted(GraphResponse graphResponse) {
                if (graphResponse.getError() != null) {
                    graphMeRequestWithCacheCallback.onFailure(graphResponse.getError().getException());
                    return;
                }
                ProfileInformationCache.putProfileInformation(str, graphResponse.getJSONObject());
                graphMeRequestWithCacheCallback.onSuccess(graphResponse.getJSONObject());
            }
        };
        str = getGraphMeRequestWithCache(str);
        str.setCallback(c10191);
        str.executeAsync();
    }

    public static JSONObject awaitGetGraphMeRequestWithCache(String str) {
        JSONObject profileInformation = ProfileInformationCache.getProfileInformation(str);
        if (profileInformation != null) {
            return profileInformation;
        }
        str = getGraphMeRequestWithCache(str).executeAndWait();
        if (str.getError() != null) {
            return null;
        }
        return str.getJSONObject();
    }

    private static GraphRequest getGraphMeRequestWithCache(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(GraphRequest.FIELDS_PARAM, "id,name,first_name,middle_name,last_name,link");
        bundle.putString("access_token", str);
        return new GraphRequest(null, "me", bundle, HttpMethod.GET, null);
    }

    private static int refreshBestGuessNumberOfCPUCores() {
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
        r0 = numCPUCores;
        if (r0 <= 0) goto L_0x0007;
    L_0x0004:
        r0 = numCPUCores;
        return r0;
    L_0x0007:
        r0 = new java.io.File;	 Catch:{ Exception -> 0x001c }
        r1 = "/sys/devices/system/cpu/";	 Catch:{ Exception -> 0x001c }
        r0.<init>(r1);	 Catch:{ Exception -> 0x001c }
        r1 = new com.facebook.internal.Utility$2;	 Catch:{ Exception -> 0x001c }
        r1.<init>();	 Catch:{ Exception -> 0x001c }
        r0 = r0.listFiles(r1);	 Catch:{ Exception -> 0x001c }
        if (r0 == 0) goto L_0x001c;	 Catch:{ Exception -> 0x001c }
    L_0x0019:
        r0 = r0.length;	 Catch:{ Exception -> 0x001c }
        numCPUCores = r0;	 Catch:{ Exception -> 0x001c }
    L_0x001c:
        r0 = numCPUCores;
        if (r0 > 0) goto L_0x002f;
    L_0x0020:
        r0 = java.lang.Runtime.getRuntime();
        r0 = r0.availableProcessors();
        r1 = 1;
        r0 = java.lang.Math.max(r0, r1);
        numCPUCores = r0;
    L_0x002f:
        r0 = numCPUCores;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.refreshBestGuessNumberOfCPUCores():int");
    }

    private static void refreshPeriodicExtendedDeviceInfo(Context context) {
        if (timestampOfLastCheck == -1 || System.currentTimeMillis() - timestampOfLastCheck >= 1800000) {
            timestampOfLastCheck = System.currentTimeMillis();
            refreshTimezone();
            refreshCarrierName(context);
            refreshTotalExternalStorage();
            refreshAvailableExternalStorage();
        }
    }

    private static void refreshTimezone() {
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
        r0 = java.util.TimeZone.getDefault();	 Catch:{ Exception -> 0x001b }
        r1 = new java.util.Date;	 Catch:{ Exception -> 0x001b }
        r1.<init>();	 Catch:{ Exception -> 0x001b }
        r1 = r0.inDaylightTime(r1);	 Catch:{ Exception -> 0x001b }
        r2 = 0;	 Catch:{ Exception -> 0x001b }
        r1 = r0.getDisplayName(r1, r2);	 Catch:{ Exception -> 0x001b }
        deviceTimezoneAbbreviation = r1;	 Catch:{ Exception -> 0x001b }
        r0 = r0.getID();	 Catch:{ Exception -> 0x001b }
        deviceTimeZoneName = r0;	 Catch:{ Exception -> 0x001b }
        return;
    L_0x001b:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.refreshTimezone():void");
    }

    private static void refreshCarrierName(android.content.Context r2) {
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
        r0 = carrierName;
        r1 = "NoCarrier";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0019;
    L_0x000a:
        r0 = "phone";	 Catch:{ Exception -> 0x0019 }
        r2 = r2.getSystemService(r0);	 Catch:{ Exception -> 0x0019 }
        r2 = (android.telephony.TelephonyManager) r2;	 Catch:{ Exception -> 0x0019 }
        r2 = r2.getNetworkOperatorName();	 Catch:{ Exception -> 0x0019 }
        carrierName = r2;	 Catch:{ Exception -> 0x0019 }
        return;
    L_0x0019:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.refreshCarrierName(android.content.Context):void");
    }

    private static boolean externalStorageExists() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    private static void refreshAvailableExternalStorage() {
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
        r0 = externalStorageExists();	 Catch:{ Exception -> 0x002a }
        if (r0 == 0) goto L_0x0020;	 Catch:{ Exception -> 0x002a }
    L_0x0006:
        r0 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ Exception -> 0x002a }
        r1 = new android.os.StatFs;	 Catch:{ Exception -> 0x002a }
        r0 = r0.getPath();	 Catch:{ Exception -> 0x002a }
        r1.<init>(r0);	 Catch:{ Exception -> 0x002a }
        r0 = r1.getAvailableBlocks();	 Catch:{ Exception -> 0x002a }
        r2 = (long) r0;	 Catch:{ Exception -> 0x002a }
        r0 = r1.getBlockSize();	 Catch:{ Exception -> 0x002a }
        r0 = (long) r0;	 Catch:{ Exception -> 0x002a }
        r2 = r2 * r0;	 Catch:{ Exception -> 0x002a }
        availableExternalStorageGB = r2;	 Catch:{ Exception -> 0x002a }
    L_0x0020:
        r0 = availableExternalStorageGB;	 Catch:{ Exception -> 0x002a }
        r0 = (double) r0;	 Catch:{ Exception -> 0x002a }
        r0 = convertBytesToGB(r0);	 Catch:{ Exception -> 0x002a }
        availableExternalStorageGB = r0;	 Catch:{ Exception -> 0x002a }
        return;
    L_0x002a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.refreshAvailableExternalStorage():void");
    }

    private static void refreshTotalExternalStorage() {
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
        r0 = externalStorageExists();	 Catch:{ Exception -> 0x002a }
        if (r0 == 0) goto L_0x0020;	 Catch:{ Exception -> 0x002a }
    L_0x0006:
        r0 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ Exception -> 0x002a }
        r1 = new android.os.StatFs;	 Catch:{ Exception -> 0x002a }
        r0 = r0.getPath();	 Catch:{ Exception -> 0x002a }
        r1.<init>(r0);	 Catch:{ Exception -> 0x002a }
        r0 = r1.getBlockCount();	 Catch:{ Exception -> 0x002a }
        r2 = (long) r0;	 Catch:{ Exception -> 0x002a }
        r0 = r1.getBlockSize();	 Catch:{ Exception -> 0x002a }
        r0 = (long) r0;	 Catch:{ Exception -> 0x002a }
        r2 = r2 * r0;	 Catch:{ Exception -> 0x002a }
        totalExternalStorageGB = r2;	 Catch:{ Exception -> 0x002a }
    L_0x0020:
        r0 = totalExternalStorageGB;	 Catch:{ Exception -> 0x002a }
        r0 = (double) r0;	 Catch:{ Exception -> 0x002a }
        r0 = convertBytesToGB(r0);	 Catch:{ Exception -> 0x002a }
        totalExternalStorageGB = r0;	 Catch:{ Exception -> 0x002a }
        return;
    L_0x002a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.Utility.refreshTotalExternalStorage():void");
    }

    private static long convertBytesToGB(double d) {
        return Math.round(d / 1.073741824E9d);
    }

    public static PermissionsPair handlePermissionResponse(JSONObject jSONObject) throws JSONException {
        jSONObject = jSONObject.getJSONObject(NativeProtocol.RESULT_ARGS_PERMISSIONS).getJSONArray(ShareConstants.WEB_DIALOG_PARAM_DATA);
        List arrayList = new ArrayList(jSONObject.length());
        List arrayList2 = new ArrayList(jSONObject.length());
        for (int i = 0; i < jSONObject.length(); i++) {
            JSONObject optJSONObject = jSONObject.optJSONObject(i);
            String optString = optJSONObject.optString("permission");
            if (!(optString == null || optString.equals("installed"))) {
                String optString2 = optJSONObject.optString("status");
                if (optString2 != null) {
                    if (optString2.equals("granted")) {
                        arrayList.add(optString);
                    } else if (optString2.equals("declined")) {
                        arrayList2.add(optString);
                    }
                }
            }
        }
        return new PermissionsPair(arrayList, arrayList2);
    }

    public static String generateRandomString(int i) {
        return new BigInteger(i * 5, new Random()).toString(32);
    }
}
