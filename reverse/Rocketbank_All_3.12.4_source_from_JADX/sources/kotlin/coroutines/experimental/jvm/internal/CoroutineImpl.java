package kotlin.coroutines.experimental.jvm.internal;

import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.coroutines.experimental.Continuation;
import kotlin.coroutines.experimental.CoroutineContext;
import kotlin.coroutines.experimental.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: CoroutineImpl.kt */
public abstract class CoroutineImpl extends Lambda implements Continuation<Object> {
    private final CoroutineContext _context;
    private Continuation<Object> _facade;
    protected Continuation<Object> completion;
    protected int label;

    protected abstract Object doResume(Object obj, Throwable th);

    public CoroutineImpl(int i, Continuation<Object> continuation) {
        super(i);
        this.completion = continuation;
        this.label = this.completion != 0 ? 0 : -1;
        i = this.completion;
        this._context = i != 0 ? i.getContext() : 0;
    }

    public CoroutineContext getContext() {
        CoroutineContext coroutineContext = this._context;
        if (coroutineContext == null) {
            Intrinsics.throwNpe();
        }
        return coroutineContext;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final kotlin.coroutines.experimental.Continuation<java.lang.Object> getFacade() {
        /*
        r3 = this;
        r0 = r3._facade;
        if (r0 != 0) goto L_0x002d;
    L_0x0004:
        r0 = r3._context;
        if (r0 != 0) goto L_0x000b;
    L_0x0008:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x000b:
        r1 = r3;
        r1 = (kotlin.coroutines.experimental.Continuation) r1;
        r2 = "context";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r2);
        r2 = "continuation";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r1, r2);
        r2 = kotlin.coroutines.experimental.ContinuationInterceptor.Key;
        r2 = (kotlin.coroutines.experimental.CoroutineContext.Key) r2;
        r0 = r0.get(r2);
        r0 = (kotlin.coroutines.experimental.ContinuationInterceptor) r0;
        if (r0 == 0) goto L_0x002a;
    L_0x0024:
        r0 = r0.interceptContinuation$644671d3();
        if (r0 != 0) goto L_0x002b;
    L_0x002a:
        r0 = r1;
    L_0x002b:
        r3._facade = r0;
    L_0x002d:
        r0 = r3._facade;
        if (r0 != 0) goto L_0x0034;
    L_0x0031:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0034:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.experimental.jvm.internal.CoroutineImpl.getFacade():kotlin.coroutines.experimental.Continuation<java.lang.Object>");
    }

    public void resume(Object obj) {
        Continuation continuation = this.completion;
        if (continuation == null) {
            Intrinsics.throwNpe();
        }
        try {
            obj = doResume(obj, null);
            if (obj != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                if (continuation == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>");
                }
                continuation.resume(obj);
            }
        } catch (Object obj2) {
            continuation.resumeWithException(obj2);
        }
    }

    public void resumeWithException(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "exception");
        Continuation continuation = this.completion;
        if (continuation == null) {
            Intrinsics.throwNpe();
        }
        try {
            th = doResume(null, th);
            if (th != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                if (continuation == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>");
                }
                continuation.resume(th);
            }
        } catch (Throwable th2) {
            continuation.resumeWithException(th2);
        }
    }

    public Continuation<Unit> create(Continuation<?> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        throw ((Throwable) new IllegalStateException("create(Continuation) has not been overridden"));
    }

    public Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        throw ((Throwable) new IllegalStateException("create(Any?;Continuation) has not been overridden"));
    }
}
