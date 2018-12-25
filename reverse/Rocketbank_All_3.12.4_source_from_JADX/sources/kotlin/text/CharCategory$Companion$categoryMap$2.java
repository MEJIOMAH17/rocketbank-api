package kotlin.text;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: CharCategory.kt */
final class CharCategory$Companion$categoryMap$2 extends Lambda implements Function0<Map<Integer, ? extends CharCategory>> {
    public static final CharCategory$Companion$categoryMap$2 INSTANCE = new CharCategory$Companion$categoryMap$2();

    CharCategory$Companion$categoryMap$2() {
        super(0);
    }

    public final Map<Integer, CharCategory> invoke() {
        CharCategory[] values = CharCategory.values();
        int length = values.length;
        length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i = 16;
        if (length >= 16) {
            i = length;
        }
        Map<Integer, CharCategory> linkedHashMap = new LinkedHashMap(i);
        for (CharCategory charCategory : values) {
            linkedHashMap.put(Integer.valueOf(charCategory.getValue()), charCategory);
        }
        return linkedHashMap;
    }
}
