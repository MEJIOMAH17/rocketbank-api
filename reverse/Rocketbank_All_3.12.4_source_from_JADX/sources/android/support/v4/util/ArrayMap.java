package android.support.v4.util;

import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    MapCollections<K, V> mCollections;

    /* renamed from: android.support.v4.util.ArrayMap$1 */
    class C09331 extends MapCollections<K, V> {
        C09331() {
        }

        protected final int colGetSize() {
            return ArrayMap.this.mSize;
        }

        protected final Object colGetEntry(int i, int i2) {
            return ArrayMap.this.mArray[(i << 1) + i2];
        }

        protected final int colIndexOfKey(Object obj) {
            return ArrayMap.this.indexOfKey(obj);
        }

        protected final int colIndexOfValue(Object obj) {
            return ArrayMap.this.indexOfValue(obj);
        }

        protected final Map<K, V> colGetMap() {
            return ArrayMap.this;
        }

        protected final void colPut(K k, V v) {
            ArrayMap.this.put(k, v);
        }

        protected final V colSetValue(int i, V v) {
            return ArrayMap.this.setValueAt(i, v);
        }

        protected final void colRemoveAt(int i) {
            ArrayMap.this.removeAt(i);
        }

        protected final void colClear() {
            ArrayMap.this.clear();
        }
    }

    public ArrayMap(int i) {
        super(i);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }

    private MapCollections<K, V> getCollection() {
        if (this.mCollections == null) {
            this.mCollections = new C09331();
        }
        return this.mCollections;
    }

    public boolean containsAll(Collection<?> collection) {
        return MapCollections.containsAllHelper(this, collection);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.mSize + map.size());
        map = map.entrySet().iterator();
        while (map.hasNext()) {
            Entry entry = (Entry) map.next();
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(Collection<?> collection) {
        return MapCollections.removeAllHelper(this, collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return MapCollections.retainAllHelper(this, collection);
    }

    public Set<Entry<K, V>> entrySet() {
        MapCollections collection = getCollection();
        if (collection.mEntrySet == null) {
            collection.mEntrySet = new EntrySet();
        }
        return collection.mEntrySet;
    }

    public Set<K> keySet() {
        MapCollections collection = getCollection();
        if (collection.mKeySet == null) {
            collection.mKeySet = new KeySet();
        }
        return collection.mKeySet;
    }

    public Collection<V> values() {
        MapCollections collection = getCollection();
        if (collection.mValues == null) {
            collection.mValues = new ValuesCollection();
        }
        return collection.mValues;
    }
}
