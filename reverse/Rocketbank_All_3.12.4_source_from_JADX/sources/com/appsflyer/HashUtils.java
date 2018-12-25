package com.appsflyer;

import io.fabric.sdk.android.services.common.CommonUtils;
import java.security.MessageDigest;
import java.util.Formatter;
import java.util.Map;

public class HashUtils {
    public native String getNativeCode(String str, String str2, String str3);

    public static String getHashCode(Map<String, String> map) {
        String str = (String) map.get("appsflyerKey");
        String str2 = (String) map.get("af_timestamp");
        String str3 = (String) map.get("uid");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str.substring(0, 7));
        stringBuilder.append(str3.substring(0, 7));
        stringBuilder.append(str2.substring(str2.length() - 7));
        return toSHA1(stringBuilder.toString());
    }

    public static String toSHA1(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(CommonUtils.SHA1_INSTANCE);
            instance.reset();
            instance.update(str.getBytes("UTF-8"));
            str = instance.digest();
            Formatter formatter = new Formatter();
            int length = str.length;
            for (int i = 0; i < length; i++) {
                formatter.format("%02x", new Object[]{Byte.valueOf(str[i])});
            }
            str = formatter.toString();
            formatter.close();
            return str;
        } catch (String str2) {
            AFLogger.afLog(str2.toString());
            return null;
        }
    }
}
