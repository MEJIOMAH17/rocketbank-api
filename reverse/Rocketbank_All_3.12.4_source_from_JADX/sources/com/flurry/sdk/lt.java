package com.flurry.sdk;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class lt {
    /* renamed from: a */
    public static void m328a(JSONObject jSONObject, String str, Object obj) throws NullPointerException, JSONException {
        if (obj == null) {
            jSONObject.put(str, JSONObject.NULL);
        } else {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: a */
    public static void m329a(JSONObject jSONObject, String str, String str2) throws IOException, JSONException {
        if (str2 != null) {
            jSONObject.put(str, str2);
        } else {
            jSONObject.put(str, JSONObject.NULL);
        }
    }

    /* renamed from: a */
    public static void m327a(JSONObject jSONObject, String str, float f) throws IOException, JSONException {
        jSONObject.putOpt(str, Float.valueOf(f));
    }

    /* renamed from: a */
    public static Map<String, String> m326a(JSONObject jSONObject) throws JSONException {
        Map<String, String> hashMap = new HashMap();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            Object next = keys.next();
            if (next instanceof String) {
                String str = (String) next;
                Object obj = jSONObject.get(str);
                if (obj instanceof String) {
                    hashMap.put(str, (String) obj);
                } else {
                    throw new JSONException("JSONObject contains unsupported type for value in the map.");
                }
            }
            throw new JSONException("JSONObject contains unsupported type for key in the map.");
        }
        return hashMap;
    }

    /* renamed from: a */
    public static List<JSONObject> m325a(JSONArray jSONArray) throws JSONException {
        List<JSONObject> arrayList = new ArrayList();
        int i = 0;
        while (i < jSONArray.length()) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONObject) {
                arrayList.add((JSONObject) obj);
                i++;
            } else {
                throw new JSONException("Array contains unsupported objects. JSONArray param must contain JSON object.");
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static List<String> m330b(JSONArray jSONArray) throws JSONException {
        List<String> arrayList = new ArrayList();
        int i = 0;
        while (i < jSONArray.length()) {
            Object obj = jSONArray.get(i);
            if (obj instanceof String) {
                arrayList.add((String) obj);
                i++;
            } else {
                throw new JSONException("Array contains unsupported objects. JSONArray param must contain String object.");
            }
        }
        return arrayList;
    }
}
