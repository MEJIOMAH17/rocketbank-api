package kotlin.coroutines.experimental;

import kotlin.coroutines.experimental.CoroutineContext.Element;

/* compiled from: ContinuationInterceptor.kt */
public interface ContinuationInterceptor extends Element {
    public static final Key Key = Key.$$INSTANCE;

    /* compiled from: ContinuationInterceptor.kt */
    public static final class Key implements kotlin.coroutines.experimental.CoroutineContext.Key<ContinuationInterceptor> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }

    <T> Continuation<T> interceptContinuation$644671d3();
}
