package com.flurry.sdk;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class hm {
    /* renamed from: a */
    private static final String f36a = "hm";

    /* renamed from: a */
    public static Map<String, List<String>> m10a(String str) {
        kf.m176a(3, f36a, "Parsing referrer map");
        if (str == null) {
            return Collections.emptyMap();
        }
        Map<String, List<String>> hashMap = new HashMap();
        for (String str2 : str.split("&")) {
            String str22;
            String[] split = str22.split("=");
            if (split.length != 2) {
                String str3 = f36a;
                StringBuilder stringBuilder = new StringBuilder("Invalid referrer Element: ");
                stringBuilder.append(str22);
                stringBuilder.append(" in referrer tag ");
                stringBuilder.append(str);
                kf.m176a(5, str3, stringBuilder.toString());
            } else {
                String decode = URLDecoder.decode(split[0]);
                str22 = URLDecoder.decode(split[1]);
                if (hashMap.get(decode) == null) {
                    hashMap.put(decode, new ArrayList());
                }
                ((List) hashMap.get(decode)).add(str22);
            }
        }
        for (Entry entry : hashMap.entrySet()) {
            String str4 = f36a;
            StringBuilder stringBuilder2 = new StringBuilder("entry: ");
            stringBuilder2.append((String) entry.getKey());
            stringBuilder2.append("=");
            stringBuilder2.append(entry.getValue());
            kf.m176a(3, str4, stringBuilder2.toString());
        }
        str = new StringBuilder();
        if (hashMap.get("utm_source") == null) {
            str.append("Campaign Source is missing.\n");
        }
        if (hashMap.get("utm_medium") == null) {
            str.append("Campaign Medium is missing.\n");
        }
        if (hashMap.get("utm_campaign") == null) {
            str.append("Campaign Name is missing.\n");
        }
        if (str.length() > 0) {
            String str5 = f36a;
            StringBuilder stringBuilder3 = new StringBuilder("Detected missing referrer keys : ");
            stringBuilder3.append(str.toString());
            kf.m176a(5, str5, stringBuilder3.toString());
        }
        return hashMap;
    }
}
