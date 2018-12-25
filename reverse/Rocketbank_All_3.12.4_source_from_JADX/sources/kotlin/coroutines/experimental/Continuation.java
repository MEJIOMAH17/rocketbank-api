package kotlin.coroutines.experimental;

/* compiled from: Coroutines.kt */
public interface Continuation<T> {
    CoroutineContext getContext();

    void resume(T t);

    void resumeWithException(Throwable th);
}
