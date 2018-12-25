package ru.rocketbank.r2d2.fragments.transfers;

import com.facebook.GraphRequest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import kotlin.Pair;
import kotlin.collections.AbstractList.Companion;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

/* compiled from: TransferBankFragment.kt */
final class ToMap$Companion$convert$1 extends Lambda implements Function1<HashMap<String, ViewField>, Map<String, String>> {
    public static final ToMap$Companion$convert$1 INSTANCE = new ToMap$Companion$convert$1();

    ToMap$Companion$convert$1() {
        super(1);
    }

    public final Map<String, String> invoke(HashMap<String, ViewField> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, GraphRequest.FIELDS_PARAM);
        Map map = hashMap;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        hashMap = map.entrySet().iterator();
        while (hashMap.hasNext()) {
            Entry entry = (Entry) hashMap.next();
            if ((StringsKt.isBlank(((ViewField) entry.getValue()).getCleanValue()) ^ 1) != 0) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Map map2 = linkedHashMap;
        Collection collection = (Collection) new ArrayList(map2.size());
        for (Entry entry2 : map2.entrySet()) {
            collection.add(new Pair(entry2.getKey(), ((ViewField) entry2.getValue()).getCleanValue()));
        }
        return Companion.toMap((List) collection, new LinkedHashMap());
    }
}
