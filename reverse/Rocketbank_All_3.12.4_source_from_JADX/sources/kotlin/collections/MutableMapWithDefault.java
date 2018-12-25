package kotlin.collections;

import java.util.Map;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: MapWithDefault.kt */
interface MutableMapWithDefault<K, V> extends Map<K, V>, MapWithDefault<K, V>, KMutableMap {
    Map<K, V> getMap();
}
