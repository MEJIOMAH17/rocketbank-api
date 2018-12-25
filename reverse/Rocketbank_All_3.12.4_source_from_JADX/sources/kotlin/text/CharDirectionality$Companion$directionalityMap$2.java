package kotlin.text;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: CharDirectionality.kt */
final class CharDirectionality$Companion$directionalityMap$2 extends Lambda implements Function0<Map<Integer, ? extends CharDirectionality>> {
    public static final CharDirectionality$Companion$directionalityMap$2 INSTANCE = new CharDirectionality$Companion$directionalityMap$2();

    CharDirectionality$Companion$directionalityMap$2() {
        super(0);
    }

    public final Map<Integer, CharDirectionality> invoke() {
        CharDirectionality[] values = CharDirectionality.values();
        int length = values.length;
        length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i = 16;
        if (length >= 16) {
            i = length;
        }
        Map<Integer, CharDirectionality> linkedHashMap = new LinkedHashMap(i);
        for (CharDirectionality charDirectionality : values) {
            linkedHashMap.put(Integer.valueOf(charDirectionality.getValue()), charDirectionality);
        }
        return linkedHashMap;
    }
}
