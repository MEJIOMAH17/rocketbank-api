package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: Sequences.kt */
public final class GeneratorSequence$iterator$1 implements Iterator<T>, KMappedMarker {
    private T nextItem;
    private int nextState = -2;
    final /* synthetic */ GeneratorSequence this$0;

    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    GeneratorSequence$iterator$1(GeneratorSequence generatorSequence) {
        this.this$0 = generatorSequence;
    }

    private final void calcNext() {
        Object invoke;
        if (this.nextState == -2) {
            invoke = this.this$0.getInitialValue.invoke();
        } else {
            Function1 access$getGetNextValue$p = this.this$0.getNextValue;
            Object obj = this.nextItem;
            if (obj == null) {
                Intrinsics.throwNpe();
            }
            invoke = access$getGetNextValue$p.invoke(obj);
        }
        this.nextItem = invoke;
        this.nextState = this.nextItem == null ? 0 : 1;
    }

    public final T next() {
        if (this.nextState < 0) {
            calcNext();
        }
        if (this.nextState == 0) {
            throw new NoSuchElementException();
        }
        T t = this.nextItem;
        if (t == null) {
            throw new TypeCastException("null cannot be cast to non-null type T");
        }
        this.nextState = -1;
        return t;
    }

    public final boolean hasNext() {
        if (this.nextState < 0) {
            calcNext();
        }
        return this.nextState == 1;
    }
}
