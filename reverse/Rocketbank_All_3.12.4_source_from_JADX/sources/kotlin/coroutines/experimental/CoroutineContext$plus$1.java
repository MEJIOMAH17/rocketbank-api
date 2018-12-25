package kotlin.coroutines.experimental;

import kotlin.coroutines.experimental.CoroutineContext.Element;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: CoroutineContext.kt */
final class CoroutineContext$plus$1 extends Lambda implements Function2<CoroutineContext, Element, CoroutineContext> {
    public static final CoroutineContext$plus$1 INSTANCE = new CoroutineContext$plus$1();

    CoroutineContext$plus$1() {
        super(2);
    }

    public final CoroutineContext invoke(CoroutineContext coroutineContext, Element element) {
        Intrinsics.checkParameterIsNotNull(coroutineContext, "acc");
        Intrinsics.checkParameterIsNotNull(element, "element");
        coroutineContext = coroutineContext.minusKey(element.getKey());
        if (coroutineContext == EmptyCoroutineContext.INSTANCE) {
            coroutineContext = element;
        } else {
            ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key);
            if (continuationInterceptor == null) {
                coroutineContext = new CombinedContext(coroutineContext, element);
            } else {
                coroutineContext = coroutineContext.minusKey(ContinuationInterceptor.Key);
                if (coroutineContext == EmptyCoroutineContext.INSTANCE) {
                    coroutineContext = new CombinedContext(element, continuationInterceptor);
                } else {
                    coroutineContext = new CombinedContext(new CombinedContext(coroutineContext, element), continuationInterceptor);
                }
            }
        }
        return coroutineContext;
    }
}
