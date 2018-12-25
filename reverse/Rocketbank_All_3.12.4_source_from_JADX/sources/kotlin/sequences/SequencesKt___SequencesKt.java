package kotlin.sequences;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: _Sequences.kt */
public final class SequencesKt___SequencesKt extends SequencesKt__SequencesKt {
    public static final <T, C extends Collection<? super T>> C toCollection(Sequence<? extends T> sequence, C c) {
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        for (Object add : sequence) {
            c.add(add);
        }
        return c;
    }

    public static final <T> List<T> toList(Sequence<? extends T> sequence) {
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        return CollectionsKt__CollectionsKt.optimizeReadOnlyList((List) toCollection(sequence, new ArrayList()));
    }

    private static <T, A extends Appendable> A joinTo$3ee47ddd(Sequence<? extends T> sequence, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(a, "buffer");
        Intrinsics.checkParameterIsNotNull(charSequence, "separator");
        Intrinsics.checkParameterIsNotNull(charSequence2, "prefix");
        Intrinsics.checkParameterIsNotNull(charSequence3, "postfix");
        Intrinsics.checkParameterIsNotNull(charSequence4, "truncated");
        a.append(charSequence2);
        charSequence2 = null;
        for (CharSequence charSequence42 : sequence) {
            charSequence2 += 1;
            if (charSequence2 > 1) {
                a.append(charSequence);
            }
            StringsKt__StringBuilderKt.appendElement(a, charSequence42, null);
        }
        a.append(charSequence3);
        return a;
    }

    public static /* synthetic */ String joinToString$default$5488afc2$3cafef9e(Sequence sequence, CharSequence charSequence) {
        CharSequence charSequence2 = "";
        CharSequence charSequence3 = "";
        CharSequence charSequence4 = "...";
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence, "separator");
        Intrinsics.checkParameterIsNotNull(charSequence2, "prefix");
        Intrinsics.checkParameterIsNotNull(charSequence3, "postfix");
        Intrinsics.checkParameterIsNotNull(charSequence4, "truncated");
        sequence = ((StringBuilder) joinTo$3ee47ddd(sequence, new StringBuilder(), charSequence, charSequence2, charSequence3, charSequence4)).toString();
        Intrinsics.checkExpressionValueIsNotNull(sequence, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sequence;
    }
}
