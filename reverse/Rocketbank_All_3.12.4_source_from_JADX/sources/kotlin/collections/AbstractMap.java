package kotlin.collections;

import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: AbstractMap.kt */
public abstract class AbstractMap<K, V> implements Map<K, V>, KMappedMarker {
    public static final Companion Companion = new Companion();

    /* compiled from: AbstractMap.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public abstract Set getEntries();

    protected AbstractMap() {
    }

    public final /* bridge */ Set<Entry<K, V>> entrySet() {
        return getEntries();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        Iterable<Entry> entrySet = map.entrySet();
        if (!((entrySet instanceof Collection) && ((Collection) entrySet).isEmpty())) {
            for (Entry entry : entrySet) {
                boolean z;
                if (entry instanceof Entry) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    Map map2 = this;
                    Object obj2 = get(key);
                    if ((Intrinsics.areEqual(value, obj2) ^ 1) == 0) {
                        if (obj2 != null || containsKey(key)) {
                            z = true;
                            continue;
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                z = false;
                continue;
                if (z) {
                    return false;
                }
            }
        }
        return true;
    }

    public int hashCode() {
        return entrySet().hashCode();
    }

    public String toString() {
        return CollectionsKt___CollectionsKt.joinToString$default$1494b5c(entrySet(), ", ", "{", "}", 0, null, new AbstractMap$toString$1(this), 24);
    }

    public final /* bridge */ int size() {
        return entrySet().size();
    }

    public static final /* synthetic */ String access$toString(AbstractMap abstractMap, Entry entry) {
        StringBuilder stringBuilder = new StringBuilder();
        AbstractMap key = entry.getKey();
        Object obj = abstractMap;
        stringBuilder.append(key == obj ? "(this Map)" : String.valueOf(key));
        stringBuilder.append("=");
        entry = entry.getValue();
        stringBuilder.append(entry == obj ? "(this Map)" : String.valueOf(entry));
        return stringBuilder.toString();
    }
}
