package kotlin.collections;

import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: MapWithDefault.kt */
interface MapWithDefault<K, V> extends Map<K, V>, KMappedMarker {
    V getOrImplicitDefault(K k);
}
