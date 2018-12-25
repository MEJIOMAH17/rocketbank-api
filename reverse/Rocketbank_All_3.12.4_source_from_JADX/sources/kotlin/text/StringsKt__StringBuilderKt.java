package kotlin.text;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StringBuilder.kt */
class StringsKt__StringBuilderKt extends StringsKt__StringBuilderJVMKt {
    private static final String buildString(Function1<? super StringBuilder, Unit> function1) {
        StringBuilder stringBuilder = new StringBuilder();
        function1.invoke(stringBuilder);
        function1 = stringBuilder.toString();
        Intrinsics.checkExpressionValueIsNotNull(function1, "StringBuilder().apply(builderAction).toString()");
        return function1;
    }

    private static final String buildString(int i, Function1<? super StringBuilder, Unit> function1) {
        StringBuilder stringBuilder = new StringBuilder(i);
        function1.invoke(stringBuilder);
        i = stringBuilder.toString();
        Intrinsics.checkExpressionValueIsNotNull(i, "StringBuilder(capacity).…builderAction).toString()");
        return i;
    }

    public static final <T extends Appendable> T append(T t, CharSequence... charSequenceArr) {
        Intrinsics.checkParameterIsNotNull(t, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequenceArr, "value");
        for (CharSequence append : charSequenceArr) {
            t.append(append);
        }
        return t;
    }

    public static final StringBuilder append(StringBuilder stringBuilder, String... strArr) {
        Intrinsics.checkParameterIsNotNull(stringBuilder, "$receiver");
        Intrinsics.checkParameterIsNotNull(strArr, "value");
        for (String append : strArr) {
            stringBuilder.append(append);
        }
        return stringBuilder;
    }

    public static final StringBuilder append(StringBuilder stringBuilder, Object... objArr) {
        Intrinsics.checkParameterIsNotNull(stringBuilder, "$receiver");
        Intrinsics.checkParameterIsNotNull(objArr, "value");
        for (Object append : objArr) {
            stringBuilder.append(append);
        }
        return stringBuilder;
    }

    private static final void set(StringBuilder stringBuilder, int i, char c) {
        Intrinsics.checkParameterIsNotNull(stringBuilder, "$receiver");
        stringBuilder.setCharAt(i, c);
    }

    public static final <T> void appendElement(Appendable appendable, T t, Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkParameterIsNotNull(appendable, "$receiver");
        if (function1 != null) {
            appendable.append((CharSequence) function1.invoke(t));
            return;
        }
        if ((t != null ? t instanceof CharSequence : true) != null) {
            appendable.append((CharSequence) t);
        } else if ((t instanceof Character) != null) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(String.valueOf(t));
        }
    }
}
