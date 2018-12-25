package kotlin.collections;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: Maps.kt */
final class EmptyMap implements Serializable, Map, KMappedMarker {
    public static final EmptyMap INSTANCE = new EmptyMap();
    private static final long serialVersionUID = 8246714829545688274L;

    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean containsKey(Object obj) {
        return false;
    }

    public final boolean containsValue(Void voidR) {
        Intrinsics.checkParameterIsNotNull(voidR, "value");
        return false;
    }

    /* renamed from: get */
    public final Void m683get(Object obj) {
        return null;
    }

    public final int getSize() {
        return 0;
    }

    public final int hashCode() {
        return 0;
    }

    public final boolean isEmpty() {
        return true;
    }

    public final /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Void put(Object obj, Void voidR) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final String toString() {
        return "{}";
    }

    private EmptyMap() {
    }

    public final /* bridge */ boolean containsValue(Object obj) {
        return !(obj instanceof Void) ? null : containsValue((Void) obj);
    }

    public final /* bridge */ Set<Entry> entrySet() {
        return getEntries();
    }

    public final /* bridge */ Object get(Object obj) {
        return get(obj);
    }

    public final /* bridge */ Set<Object> keySet() {
        return getKeys();
    }

    public final /* bridge */ int size() {
        return getSize();
    }

    public final /* bridge */ Collection values() {
        return getValues();
    }

    public final boolean equals(Object obj) {
        return (!(obj instanceof Map) || ((Map) obj).isEmpty() == null) ? null : true;
    }

    public final Set<Entry> getEntries() {
        return EmptySet.INSTANCE;
    }

    public final Set<Object> getKeys() {
        return EmptySet.INSTANCE;
    }

    public final Collection getValues() {
        return EmptyList.INSTANCE;
    }

    private final Object readResolve() {
        return INSTANCE;
    }
}
