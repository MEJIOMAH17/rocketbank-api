package kotlin.coroutines.experimental;

import kotlin.coroutines.experimental.CoroutineContext.Element;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: CoroutineContextImpl.kt */
final class CombinedContext$toString$1 extends Lambda implements Function2<String, Element, String> {
    public static final CombinedContext$toString$1 INSTANCE = new CombinedContext$toString$1();

    CombinedContext$toString$1() {
        super(2);
    }

    public final String invoke(String str, Element element) {
        Intrinsics.checkParameterIsNotNull(str, "acc");
        Intrinsics.checkParameterIsNotNull(element, "element");
        if ((((CharSequence) str).length() == 0 ? 1 : null) != null) {
            return element.toString();
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(", ");
        stringBuilder.append(element);
        return stringBuilder.toString();
    }
}
