package com.facebook.internal;

import android.annotation.SuppressLint;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

class JsonUtil {

    private static final class JSONObjectEntry implements Entry<String, Object> {
        private final String key;
        private final Object value;

        JSONObjectEntry(String str, Object obj) {
            this.key = str;
            this.value = obj;
        }

        @SuppressLint({"FieldGetter"})
        public final String getKey() {
            return this.key;
        }

        public final Object getValue() {
            return this.value;
        }

        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException("JSONObjectEntry is immutable");
        }
    }

    JsonUtil() {
    }

    static void jsonObjectClear(JSONObject jSONObject) {
        jSONObject = jSONObject.keys();
        while (jSONObject.hasNext()) {
            jSONObject.next();
            jSONObject.remove();
        }
    }

    static boolean jsonObjectContainsValue(JSONObject jSONObject, Object obj) {
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            Object opt = jSONObject.opt((String) keys.next());
            if (opt != null && opt.equals(obj)) {
                return true;
            }
        }
        return null;
    }

    static Set<Entry<String, Object>> jsonObjectEntrySet(JSONObject jSONObject) {
        Set hashSet = new HashSet();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            hashSet.add(new JSONObjectEntry(str, jSONObject.opt(str)));
        }
        return hashSet;
    }

    static Set<String> jsonObjectKeySet(JSONObject jSONObject) {
        Set hashSet = new HashSet();
        jSONObject = jSONObject.keys();
        while (jSONObject.hasNext()) {
            hashSet.add(jSONObject.next());
        }
        return hashSet;
    }

    static void jsonObjectPutAll(JSONObject jSONObject, Map<String, Object> map) {
        map = map.entrySet().iterator();
        while (map.hasNext()) {
            Entry entry = (Entry) map.next();
            try {
                jSONObject.putOpt((String) entry.getKey(), entry.getValue());
            } catch (JSONObject jSONObject2) {
                throw new IllegalArgumentException(jSONObject2);
            }
        }
    }

    static Collection<Object> jsonObjectValues(JSONObject jSONObject) {
        Collection arrayList = new ArrayList();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            arrayList.add(jSONObject.opt((String) keys.next()));
        }
        return arrayList;
    }
}
