package kotlin.sequences;

import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.experimental.Continuation;
import kotlin.coroutines.experimental.intrinsics.IntrinsicsKt;
import kotlin.coroutines.experimental.jvm.internal.CoroutineImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketSnackbar.Callback;

/* compiled from: _Sequences.kt */
final class SequencesKt___SequencesKt$zipWithNext$2 extends CoroutineImpl implements Function2<Callback<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2 $transform;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    private Callback p$$4de251aa;
    final /* synthetic */ Sequence receiver$0;

    SequencesKt___SequencesKt$zipWithNext$2(Sequence sequence, Function2 function2, Continuation continuation) {
        this.receiver$0 = sequence;
        this.$transform = function2;
        super(2, continuation);
    }

    public final /* bridge */ /* synthetic */ Continuation create(Object obj, Continuation continuation) {
        return create$20a6c5e9((Callback) obj, continuation);
    }

    public final Continuation<Unit> create$20a6c5e9(Callback<? super R> callback, Continuation<? super Unit> continuation) {
        Intrinsics.checkParameterIsNotNull(callback, "$receiver");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        Continuation sequencesKt___SequencesKt$zipWithNext$2 = new SequencesKt___SequencesKt$zipWithNext$2(this.receiver$0, this.$transform, continuation);
        sequencesKt___SequencesKt$zipWithNext$2.p$$4de251aa = callback;
        return sequencesKt___SequencesKt$zipWithNext$2;
    }

    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke$1ba949ec((Callback) obj, (Continuation) obj2);
    }

    public final Object invoke$1ba949ec(Callback<? super R> callback, Continuation<? super Unit> continuation) {
        Intrinsics.checkParameterIsNotNull(callback, "$receiver");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        return ((SequencesKt___SequencesKt$zipWithNext$2) create$20a6c5e9(callback, continuation)).doResume(Unit.INSTANCE, null);
    }

    public final Object doResume(Object obj, Throwable th) {
        Callback callback;
        Iterator it;
        Throwable th2;
        Throwable coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                if (th == null) {
                    th = this.p$$4de251aa;
                    Iterator it2 = this.receiver$0.iterator();
                    if (it2.hasNext()) {
                        callback = th;
                        th = it2.next();
                        it = it2;
                        break;
                    }
                    return Unit.INSTANCE;
                }
                throw th;
            case 1:
                th2 = this.L$3;
                it = (Iterator) this.L$1;
                callback = (Callback) this.L$0;
                if (th == null) {
                    th = th2;
                    break;
                }
                throw th;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        th2 = coroutine_suspended;
        SequencesKt___SequencesKt$zipWithNext$2 sequencesKt___SequencesKt$zipWithNext$2 = this;
        while (it.hasNext()) {
            Throwable next = it.next();
            sequencesKt___SequencesKt$zipWithNext$2.$transform.invoke(th, next);
            sequencesKt___SequencesKt$zipWithNext$2.L$0 = callback;
            sequencesKt___SequencesKt$zipWithNext$2.L$1 = it;
            sequencesKt___SequencesKt$zipWithNext$2.L$2 = th;
            sequencesKt___SequencesKt$zipWithNext$2.L$3 = next;
            sequencesKt___SequencesKt$zipWithNext$2.label = 1;
            if (callback.yield$55fbe4a6() == th2) {
                return th2;
            }
            th = next;
        }
        return Unit.INSTANCE;
    }
}
