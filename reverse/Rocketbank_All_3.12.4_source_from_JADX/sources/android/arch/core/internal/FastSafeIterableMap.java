package android.arch.core.internal;

import android.support.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map.Entry;

@RestrictTo
public final class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {
    private HashMap<K, Entry<K, V>> mHashMap = new HashMap();

    protected final Entry<K, V> get(K k) {
        return (Entry) this.mHashMap.get(k);
    }

    public final V remove(K k) {
        V remove = super.remove(k);
        this.mHashMap.remove(k);
        return remove;
    }

    public final boolean contains(K k) {
        return this.mHashMap.containsKey(k);
    }

    public final V putIfAbsent(K k, V v) {
        Entry entry = (Entry) this.mHashMap.get(k);
        if (entry != null) {
            return entry.mValue;
        }
        this.mHashMap.put(k, put(k, v));
        return null;
    }

    public final Entry<K, V> ceil(K k) {
        return this.mHashMap.containsKey(k) ? ((Entry) this.mHashMap.get(k)).mPrevious : null;
    }
}
