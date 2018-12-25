package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class LegacyTokenHelper {
    public static final String APPLICATION_ID_KEY = "com.facebook.TokenCachingStrategy.ApplicationId";
    public static final String DECLINED_PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.DeclinedPermissions";
    public static final String DEFAULT_CACHE_KEY = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
    public static final String EXPIRATION_DATE_KEY = "com.facebook.TokenCachingStrategy.ExpirationDate";
    private static final long INVALID_BUNDLE_MILLISECONDS = Long.MIN_VALUE;
    private static final String IS_SSO_KEY = "com.facebook.TokenCachingStrategy.IsSSO";
    private static final String JSON_VALUE = "value";
    private static final String JSON_VALUE_ENUM_TYPE = "enumType";
    private static final String JSON_VALUE_TYPE = "valueType";
    public static final String LAST_REFRESH_DATE_KEY = "com.facebook.TokenCachingStrategy.LastRefreshDate";
    public static final String PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.Permissions";
    private static final String TAG = "LegacyTokenHelper";
    public static final String TOKEN_KEY = "com.facebook.TokenCachingStrategy.Token";
    public static final String TOKEN_SOURCE_KEY = "com.facebook.TokenCachingStrategy.AccessTokenSource";
    private static final String TYPE_BOOLEAN = "bool";
    private static final String TYPE_BOOLEAN_ARRAY = "bool[]";
    private static final String TYPE_BYTE = "byte";
    private static final String TYPE_BYTE_ARRAY = "byte[]";
    private static final String TYPE_CHAR = "char";
    private static final String TYPE_CHAR_ARRAY = "char[]";
    private static final String TYPE_DOUBLE = "double";
    private static final String TYPE_DOUBLE_ARRAY = "double[]";
    private static final String TYPE_ENUM = "enum";
    private static final String TYPE_FLOAT = "float";
    private static final String TYPE_FLOAT_ARRAY = "float[]";
    private static final String TYPE_INTEGER = "int";
    private static final String TYPE_INTEGER_ARRAY = "int[]";
    private static final String TYPE_LONG = "long";
    private static final String TYPE_LONG_ARRAY = "long[]";
    private static final String TYPE_SHORT = "short";
    private static final String TYPE_SHORT_ARRAY = "short[]";
    private static final String TYPE_STRING = "string";
    private static final String TYPE_STRING_LIST = "stringList";
    private SharedPreferences cache;
    private String cacheKey;

    public LegacyTokenHelper(Context context) {
        this(context, null);
    }

    public LegacyTokenHelper(Context context, String str) {
        Validate.notNull(context, "context");
        if (Utility.isNullOrEmpty(str)) {
            str = DEFAULT_CACHE_KEY;
        }
        this.cacheKey = str;
        str = context.getApplicationContext();
        if (str != null) {
            context = str;
        }
        this.cache = context.getSharedPreferences(this.cacheKey, 0);
    }

    public final Bundle load() {
        Bundle bundle = new Bundle();
        for (String str : this.cache.getAll().keySet()) {
            try {
                deserializeKey(str, bundle);
            } catch (JSONException e) {
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String str2 = TAG;
                StringBuilder stringBuilder = new StringBuilder("Error reading cached value for key: '");
                stringBuilder.append(str);
                stringBuilder.append("' -- ");
                stringBuilder.append(e);
                Logger.log(loggingBehavior, 5, str2, stringBuilder.toString());
                return null;
            }
        }
        return bundle;
    }

    public final void save(Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        Editor edit = this.cache.edit();
        for (String str : bundle.keySet()) {
            try {
                serializeKey(str, bundle, edit);
            } catch (Bundle bundle2) {
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String str2 = TAG;
                StringBuilder stringBuilder = new StringBuilder("Error processing value for key: '");
                stringBuilder.append(str);
                stringBuilder.append("' -- ");
                stringBuilder.append(bundle2);
                Logger.log(loggingBehavior, 5, str2, stringBuilder.toString());
                return;
            }
        }
        edit.apply();
    }

    public final void clear() {
        this.cache.edit().clear().apply();
    }

    public static boolean hasTokenInformation(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        String string = bundle.getString(TOKEN_KEY);
        if (string != null) {
            if (string.length() != 0) {
                if (bundle.getLong(EXPIRATION_DATE_KEY, 0) == 0) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public static String getToken(Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return bundle.getString(TOKEN_KEY);
    }

    public static void putToken(Bundle bundle, String str) {
        Validate.notNull(bundle, "bundle");
        Validate.notNull(str, "value");
        bundle.putString(TOKEN_KEY, str);
    }

    public static Date getExpirationDate(Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return getDate(bundle, EXPIRATION_DATE_KEY);
    }

    public static void putExpirationDate(Bundle bundle, Date date) {
        Validate.notNull(bundle, "bundle");
        Validate.notNull(date, "value");
        putDate(bundle, EXPIRATION_DATE_KEY, date);
    }

    public static long getExpirationMilliseconds(Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return bundle.getLong(EXPIRATION_DATE_KEY);
    }

    public static void putExpirationMilliseconds(Bundle bundle, long j) {
        Validate.notNull(bundle, "bundle");
        bundle.putLong(EXPIRATION_DATE_KEY, j);
    }

    public static Set<String> getPermissions(Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        bundle = bundle.getStringArrayList(PERMISSIONS_KEY);
        if (bundle == null) {
            return null;
        }
        return new HashSet(bundle);
    }

    public static void putPermissions(Bundle bundle, Collection<String> collection) {
        Validate.notNull(bundle, "bundle");
        Validate.notNull(collection, "value");
        bundle.putStringArrayList(PERMISSIONS_KEY, new ArrayList(collection));
    }

    public static void putDeclinedPermissions(Bundle bundle, Collection<String> collection) {
        Validate.notNull(bundle, "bundle");
        Validate.notNull(collection, "value");
        bundle.putStringArrayList(DECLINED_PERMISSIONS_KEY, new ArrayList(collection));
    }

    public static AccessTokenSource getSource(Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        if (bundle.containsKey(TOKEN_SOURCE_KEY)) {
            return (AccessTokenSource) bundle.getSerializable(TOKEN_SOURCE_KEY);
        }
        return bundle.getBoolean(IS_SSO_KEY) != null ? AccessTokenSource.FACEBOOK_APPLICATION_WEB : AccessTokenSource.WEB_VIEW;
    }

    public static void putSource(Bundle bundle, AccessTokenSource accessTokenSource) {
        Validate.notNull(bundle, "bundle");
        bundle.putSerializable(TOKEN_SOURCE_KEY, accessTokenSource);
    }

    public static Date getLastRefreshDate(Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return getDate(bundle, LAST_REFRESH_DATE_KEY);
    }

    public static void putLastRefreshDate(Bundle bundle, Date date) {
        Validate.notNull(bundle, "bundle");
        Validate.notNull(date, "value");
        putDate(bundle, LAST_REFRESH_DATE_KEY, date);
    }

    public static long getLastRefreshMilliseconds(Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return bundle.getLong(LAST_REFRESH_DATE_KEY);
    }

    public static void putLastRefreshMilliseconds(Bundle bundle, long j) {
        Validate.notNull(bundle, "bundle");
        bundle.putLong(LAST_REFRESH_DATE_KEY, j);
    }

    public static String getApplicationId(Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return bundle.getString(APPLICATION_ID_KEY);
    }

    public static void putApplicationId(Bundle bundle, String str) {
        Validate.notNull(bundle, "bundle");
        bundle.putString(APPLICATION_ID_KEY, str);
    }

    static Date getDate(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        bundle = bundle.getLong(str, INVALID_BUNDLE_MILLISECONDS);
        if (bundle == -9223372036854775808) {
            return null;
        }
        return new Date(bundle);
    }

    static void putDate(Bundle bundle, String str, Date date) {
        bundle.putLong(str, date.getTime());
    }

    private void serializeKey(String str, Bundle bundle, Editor editor) throws JSONException {
        bundle = bundle.get(str);
        if (bundle != null) {
            Object obj;
            JSONObject jSONObject = new JSONObject();
            Object obj2 = null;
            if (bundle instanceof Byte) {
                obj = TYPE_BYTE;
                jSONObject.put("value", ((Byte) bundle).intValue());
            } else if (bundle instanceof Short) {
                obj = TYPE_SHORT;
                jSONObject.put("value", ((Short) bundle).intValue());
            } else if (bundle instanceof Integer) {
                obj = TYPE_INTEGER;
                jSONObject.put("value", ((Integer) bundle).intValue());
            } else if (bundle instanceof Long) {
                obj = TYPE_LONG;
                jSONObject.put("value", ((Long) bundle).longValue());
            } else if (bundle instanceof Float) {
                obj = TYPE_FLOAT;
                jSONObject.put("value", ((Float) bundle).doubleValue());
            } else if (bundle instanceof Double) {
                obj = TYPE_DOUBLE;
                jSONObject.put("value", ((Double) bundle).doubleValue());
            } else if (bundle instanceof Boolean) {
                obj = TYPE_BOOLEAN;
                jSONObject.put("value", ((Boolean) bundle).booleanValue());
            } else if (bundle instanceof Character) {
                obj = TYPE_CHAR;
                jSONObject.put("value", bundle.toString());
            } else if (bundle instanceof String) {
                obj = TYPE_STRING;
                jSONObject.put("value", (String) bundle);
            } else if (bundle instanceof Enum) {
                obj = TYPE_ENUM;
                jSONObject.put("value", bundle.toString());
                jSONObject.put(JSON_VALUE_ENUM_TYPE, bundle.getClass().getName());
            } else {
                String str2;
                JSONArray jSONArray = new JSONArray();
                int i = 0;
                int length;
                if (bundle instanceof byte[]) {
                    str2 = TYPE_BYTE_ARRAY;
                    byte[] bArr = (byte[]) bundle;
                    length = bArr.length;
                    while (i < length) {
                        jSONArray.put(bArr[i]);
                        i++;
                    }
                } else if (bundle instanceof short[]) {
                    str2 = TYPE_SHORT_ARRAY;
                    short[] sArr = (short[]) bundle;
                    length = sArr.length;
                    while (i < length) {
                        jSONArray.put(sArr[i]);
                        i++;
                    }
                } else if (bundle instanceof int[]) {
                    str2 = TYPE_INTEGER_ARRAY;
                    int[] iArr = (int[]) bundle;
                    length = iArr.length;
                    while (i < length) {
                        jSONArray.put(iArr[i]);
                        i++;
                    }
                } else if (bundle instanceof long[]) {
                    str2 = TYPE_LONG_ARRAY;
                    long[] jArr = (long[]) bundle;
                    length = jArr.length;
                    while (i < length) {
                        jSONArray.put(jArr[i]);
                        i++;
                    }
                } else if (bundle instanceof float[]) {
                    str2 = TYPE_FLOAT_ARRAY;
                    float[] fArr = (float[]) bundle;
                    length = fArr.length;
                    while (i < length) {
                        jSONArray.put((double) fArr[i]);
                        i++;
                    }
                } else if (bundle instanceof double[]) {
                    str2 = TYPE_DOUBLE_ARRAY;
                    double[] dArr = (double[]) bundle;
                    length = dArr.length;
                    while (i < length) {
                        jSONArray.put(dArr[i]);
                        i++;
                    }
                } else if (bundle instanceof boolean[]) {
                    str2 = TYPE_BOOLEAN_ARRAY;
                    boolean[] zArr = (boolean[]) bundle;
                    length = zArr.length;
                    while (i < length) {
                        jSONArray.put(zArr[i]);
                        i++;
                    }
                } else if (bundle instanceof char[]) {
                    str2 = TYPE_CHAR_ARRAY;
                    char[] cArr = (char[]) bundle;
                    length = cArr.length;
                    while (i < length) {
                        jSONArray.put(String.valueOf(cArr[i]));
                        i++;
                    }
                } else if (bundle instanceof List) {
                    str2 = TYPE_STRING_LIST;
                    for (Object obj3 : (List) bundle) {
                        Object obj32;
                        if (obj32 == null) {
                            obj32 = JSONObject.NULL;
                        }
                        jSONArray.put(obj32);
                    }
                } else {
                    obj = null;
                }
                String str3 = str2;
                obj2 = jSONArray;
                obj = str3;
            }
            if (obj != null) {
                jSONObject.put(JSON_VALUE_TYPE, obj);
                if (obj2 != null) {
                    jSONObject.putOpt("value", obj2);
                }
                editor.putString(str, jSONObject.toString());
            }
        }
    }

    private void deserializeKey(java.lang.String r8, android.os.Bundle r9) throws org.json.JSONException {
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
        r7 = this;
        r0 = r7.cache;
        r1 = "{}";
        r0 = r0.getString(r8, r1);
        r1 = new org.json.JSONObject;
        r1.<init>(r0);
        r0 = "valueType";
        r0 = r1.getString(r0);
        r2 = "bool";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0026;
    L_0x001c:
        r0 = "value";
        r0 = r1.getBoolean(r0);
        r9.putBoolean(r8, r0);
        return;
    L_0x0026:
        r2 = "bool[]";
        r2 = r0.equals(r2);
        r3 = 0;
        if (r2 == 0) goto L_0x004b;
    L_0x002f:
        r0 = "value";
        r0 = r1.getJSONArray(r0);
        r1 = r0.length();
        r1 = new boolean[r1];
    L_0x003b:
        r2 = r1.length;
        if (r3 >= r2) goto L_0x0047;
    L_0x003e:
        r2 = r0.getBoolean(r3);
        r1[r3] = r2;
        r3 = r3 + 1;
        goto L_0x003b;
    L_0x0047:
        r9.putBooleanArray(r8, r1);
        return;
    L_0x004b:
        r2 = "byte";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x005e;
    L_0x0053:
        r0 = "value";
        r0 = r1.getInt(r0);
        r0 = (byte) r0;
        r9.putByte(r8, r0);
        return;
    L_0x005e:
        r2 = "byte[]";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0083;
    L_0x0066:
        r0 = "value";
        r0 = r1.getJSONArray(r0);
        r1 = r0.length();
        r1 = new byte[r1];
    L_0x0072:
        r2 = r1.length;
        if (r3 >= r2) goto L_0x007f;
    L_0x0075:
        r2 = r0.getInt(r3);
        r2 = (byte) r2;
        r1[r3] = r2;
        r3 = r3 + 1;
        goto L_0x0072;
    L_0x007f:
        r9.putByteArray(r8, r1);
        return;
    L_0x0083:
        r2 = "short";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0096;
    L_0x008b:
        r0 = "value";
        r0 = r1.getInt(r0);
        r0 = (short) r0;
        r9.putShort(r8, r0);
        return;
    L_0x0096:
        r2 = "short[]";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x00bb;
    L_0x009e:
        r0 = "value";
        r0 = r1.getJSONArray(r0);
        r1 = r0.length();
        r1 = new short[r1];
    L_0x00aa:
        r2 = r1.length;
        if (r3 >= r2) goto L_0x00b7;
    L_0x00ad:
        r2 = r0.getInt(r3);
        r2 = (short) r2;
        r1[r3] = r2;
        r3 = r3 + 1;
        goto L_0x00aa;
    L_0x00b7:
        r9.putShortArray(r8, r1);
        return;
    L_0x00bb:
        r2 = "int";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x00cd;
    L_0x00c3:
        r0 = "value";
        r0 = r1.getInt(r0);
        r9.putInt(r8, r0);
        return;
    L_0x00cd:
        r2 = "int[]";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x00f1;
    L_0x00d5:
        r0 = "value";
        r0 = r1.getJSONArray(r0);
        r1 = r0.length();
        r1 = new int[r1];
    L_0x00e1:
        r2 = r1.length;
        if (r3 >= r2) goto L_0x00ed;
    L_0x00e4:
        r2 = r0.getInt(r3);
        r1[r3] = r2;
        r3 = r3 + 1;
        goto L_0x00e1;
    L_0x00ed:
        r9.putIntArray(r8, r1);
        return;
    L_0x00f1:
        r2 = "long";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0103;
    L_0x00f9:
        r0 = "value";
        r0 = r1.getLong(r0);
        r9.putLong(r8, r0);
        return;
    L_0x0103:
        r2 = "long[]";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0127;
    L_0x010b:
        r0 = "value";
        r0 = r1.getJSONArray(r0);
        r1 = r0.length();
        r1 = new long[r1];
    L_0x0117:
        r2 = r1.length;
        if (r3 >= r2) goto L_0x0123;
    L_0x011a:
        r4 = r0.getLong(r3);
        r1[r3] = r4;
        r3 = r3 + 1;
        goto L_0x0117;
    L_0x0123:
        r9.putLongArray(r8, r1);
        return;
    L_0x0127:
        r2 = "float";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x013a;
    L_0x012f:
        r0 = "value";
        r0 = r1.getDouble(r0);
        r0 = (float) r0;
        r9.putFloat(r8, r0);
        return;
    L_0x013a:
        r2 = "float[]";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x015f;
    L_0x0142:
        r0 = "value";
        r0 = r1.getJSONArray(r0);
        r1 = r0.length();
        r1 = new float[r1];
    L_0x014e:
        r2 = r1.length;
        if (r3 >= r2) goto L_0x015b;
    L_0x0151:
        r4 = r0.getDouble(r3);
        r2 = (float) r4;
        r1[r3] = r2;
        r3 = r3 + 1;
        goto L_0x014e;
    L_0x015b:
        r9.putFloatArray(r8, r1);
        return;
    L_0x015f:
        r2 = "double";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0171;
    L_0x0167:
        r0 = "value";
        r0 = r1.getDouble(r0);
        r9.putDouble(r8, r0);
        return;
    L_0x0171:
        r2 = "double[]";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0195;
    L_0x0179:
        r0 = "value";
        r0 = r1.getJSONArray(r0);
        r1 = r0.length();
        r1 = new double[r1];
    L_0x0185:
        r2 = r1.length;
        if (r3 >= r2) goto L_0x0191;
    L_0x0188:
        r4 = r0.getDouble(r3);
        r1[r3] = r4;
        r3 = r3 + 1;
        goto L_0x0185;
    L_0x0191:
        r9.putDoubleArray(r8, r1);
        return;
    L_0x0195:
        r2 = "char";
        r2 = r0.equals(r2);
        r4 = 1;
        if (r2 == 0) goto L_0x01b4;
    L_0x019e:
        r0 = "value";
        r0 = r1.getString(r0);
        if (r0 == 0) goto L_0x01b3;
    L_0x01a6:
        r1 = r0.length();
        if (r1 != r4) goto L_0x01b3;
    L_0x01ac:
        r0 = r0.charAt(r3);
        r9.putChar(r8, r0);
    L_0x01b3:
        return;
    L_0x01b4:
        r2 = "char[]";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x01e5;
    L_0x01bc:
        r0 = "value";
        r0 = r1.getJSONArray(r0);
        r1 = r0.length();
        r1 = new char[r1];
        r2 = r3;
    L_0x01c9:
        r5 = r1.length;
        if (r2 >= r5) goto L_0x01e1;
    L_0x01cc:
        r5 = r0.getString(r2);
        if (r5 == 0) goto L_0x01de;
    L_0x01d2:
        r6 = r5.length();
        if (r6 != r4) goto L_0x01de;
    L_0x01d8:
        r5 = r5.charAt(r3);
        r1[r2] = r5;
    L_0x01de:
        r2 = r2 + 1;
        goto L_0x01c9;
    L_0x01e1:
        r9.putCharArray(r8, r1);
        return;
    L_0x01e5:
        r2 = "string";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x01f7;
    L_0x01ed:
        r0 = "value";
        r0 = r1.getString(r0);
        r9.putString(r8, r0);
        return;
    L_0x01f7:
        r2 = "stringList";
        r2 = r0.equals(r2);
        if (r2 == 0) goto L_0x0226;
    L_0x01ff:
        r0 = "value";
        r0 = r1.getJSONArray(r0);
        r1 = r0.length();
        r2 = new java.util.ArrayList;
        r2.<init>(r1);
    L_0x020e:
        if (r3 >= r1) goto L_0x0222;
    L_0x0210:
        r4 = r0.get(r3);
        r5 = org.json.JSONObject.NULL;
        if (r4 != r5) goto L_0x021a;
    L_0x0218:
        r4 = 0;
        goto L_0x021c;
    L_0x021a:
        r4 = (java.lang.String) r4;
    L_0x021c:
        r2.add(r3, r4);
        r3 = r3 + 1;
        goto L_0x020e;
    L_0x0222:
        r9.putStringArrayList(r8, r2);
        return;
    L_0x0226:
        r2 = "enum";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0246;
    L_0x022e:
        r0 = "enumType";	 Catch:{ ClassNotFoundException -> 0x0245, IllegalArgumentException -> 0x0246 }
        r0 = r1.getString(r0);	 Catch:{ ClassNotFoundException -> 0x0245, IllegalArgumentException -> 0x0246 }
        r0 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x0245, IllegalArgumentException -> 0x0246 }
        r2 = "value";	 Catch:{ ClassNotFoundException -> 0x0245, IllegalArgumentException -> 0x0246 }
        r1 = r1.getString(r2);	 Catch:{ ClassNotFoundException -> 0x0245, IllegalArgumentException -> 0x0246 }
        r0 = java.lang.Enum.valueOf(r0, r1);	 Catch:{ ClassNotFoundException -> 0x0245, IllegalArgumentException -> 0x0246 }
        r9.putSerializable(r8, r0);	 Catch:{ ClassNotFoundException -> 0x0245, IllegalArgumentException -> 0x0246 }
    L_0x0245:
        return;
    L_0x0246:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.LegacyTokenHelper.deserializeKey(java.lang.String, android.os.Bundle):void");
    }
}
