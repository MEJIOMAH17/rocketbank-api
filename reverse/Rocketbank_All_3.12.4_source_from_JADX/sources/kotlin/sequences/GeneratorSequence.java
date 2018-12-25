package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Sequences.kt */
final class GeneratorSequence<T> implements Sequence<T> {
    private final Function0<T> getInitialValue;
    private final Function1<T, T> getNextValue;

    public GeneratorSequence(Function0<? extends T> function0, Function1<? super T, ? extends T> function1) {
        Intrinsics.checkParameterIsNotNull(function0, "getInitialValue");
        Intrinsics.checkParameterIsNotNull(function1, "getNextValue");
        this.getInitialValue = function0;
        this.getNextValue = function1;
    }

    public final Iterator<T> iterator() {
        return new GeneratorSequence$iterator$1(this);
    }
}
