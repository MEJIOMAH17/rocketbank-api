package com.google.maps.android.geojson;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

class BiMultiMap<K> extends HashMap<K, Object> {
    private final Map<Object, K> mValuesToKeys = new HashMap();

    BiMultiMap() {
    }

    public void putAll(Map<? extends K, ?> map) {
        map = map.entrySet().iterator();
        while (map.hasNext()) {
            Entry entry = (Entry) map.next();
            put(entry.getKey(), entry.getValue());
        }
    }

    public Object put(K k, Object obj) {
        this.mValuesToKeys.put(obj, k);
        return super.put(k, obj);
    }

    public Object put(K k, Collection collection) {
        for (Object put : collection) {
            this.mValuesToKeys.put(put, k);
        }
        return super.put(k, collection);
    }

    public Object remove(Object obj) {
        obj = super.remove(obj);
        if (obj instanceof Collection) {
            for (Object remove : (Collection) obj) {
                this.mValuesToKeys.remove(remove);
            }
        } else {
            this.mValuesToKeys.remove(obj);
        }
        return obj;
    }

    public void clear() {
        super.clear();
        this.mValuesToKeys.clear();
    }

    public BiMultiMap<K> clone() {
        BiMultiMap<K> biMultiMap = new BiMultiMap();
        biMultiMap.putAll((Map) super.clone());
        return biMultiMap;
    }

    public K getKey(Object obj) {
        return this.mValuesToKeys.get(obj);
    }
}
