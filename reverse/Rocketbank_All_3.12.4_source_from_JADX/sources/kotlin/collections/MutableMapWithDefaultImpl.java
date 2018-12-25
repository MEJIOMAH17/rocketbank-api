package kotlin.collections;

import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MapWithDefault.kt */
final class MutableMapWithDefaultImpl<K, V> implements MutableMapWithDefault<K, V> {
    /* renamed from: default */
    private final Function1<K, V> f750default;
    private final Map<K, V> map;

    public MutableMapWithDefaultImpl(Map<K, V> map, Function1<? super K, ? extends V> function1) {
        Intrinsics.checkParameterIsNotNull(map, "map");
        Intrinsics.checkParameterIsNotNull(function1, "default");
        this.map = map;
        this.f750default = function1;
    }

    public final Map<K, V> getMap() {
        return this.map;
    }

    public final boolean equals(Object obj) {
        return this.map.equals(obj);
    }

    public final int hashCode() {
        return this.map.hashCode();
    }

    public final String toString() {
        return this.map.toString();
    }

    public final /* bridge */ int size() {
        return this.map.size();
    }

    public final boolean isEmpty() {
        return this.map.isEmpty();
    }

    public final boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    public final boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    public final V get(Object obj) {
        return this.map.get(obj);
    }

    public final /* bridge */ Set<K> keySet() {
        return this.map.keySet();
    }

    public final /* bridge */ Collection<V> values() {
        return this.map.values();
    }

    public final /* bridge */ Set<Entry<K, V>> entrySet() {
        return this.map.entrySet();
    }

    public final V put(K k, V v) {
        return this.map.put(k, v);
    }

    public final V remove(Object obj) {
        return this.map.remove(obj);
    }

    public final void putAll(Map<? extends K, ? extends V> map) {
        Intrinsics.checkParameterIsNotNull(map, "from");
        this.map.putAll(map);
    }

    public final void clear() {
        this.map.clear();
    }

    public final V getOrImplicitDefault(K k) {
        Map map = this.map;
        V v = map.get(k);
        return (v != null || map.containsKey(k)) ? v : this.f750default.invoke(k);
    }
}
