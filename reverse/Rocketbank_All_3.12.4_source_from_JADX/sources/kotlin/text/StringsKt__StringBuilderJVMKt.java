package kotlin.text;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: StringBuilderJVM.kt */
class StringsKt__StringBuilderJVMKt extends StringsKt__RegexExtensionsKt {
    public static final Appendable appendln(Appendable appendable) {
        Intrinsics.checkParameterIsNotNull(appendable, "$receiver");
        appendable = appendable.append(SystemProperties.LINE_SEPARATOR);
        Intrinsics.checkExpressionValueIsNotNull(appendable, "append(SystemProperties.LINE_SEPARATOR)");
        return appendable;
    }

    private static final Appendable appendln(Appendable appendable, CharSequence charSequence) {
        appendable = appendable.append(charSequence);
        Intrinsics.checkExpressionValueIsNotNull(appendable, "append(value)");
        return appendln(appendable);
    }

    private static final Appendable appendln(Appendable appendable, char c) {
        appendable = appendable.append(c);
        Intrinsics.checkExpressionValueIsNotNull(appendable, "append(value)");
        return appendln(appendable);
    }

    public static final StringBuilder appendln(StringBuilder stringBuilder) {
        Intrinsics.checkParameterIsNotNull(stringBuilder, "$receiver");
        stringBuilder.append(SystemProperties.LINE_SEPARATOR);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(SystemProperties.LINE_SEPARATOR)");
        return stringBuilder;
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, StringBuffer stringBuffer) {
        stringBuilder.append(stringBuffer);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, CharSequence charSequence) {
        stringBuilder.append(charSequence);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, String str) {
        stringBuilder.append(str);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, Object obj) {
        stringBuilder.append(obj);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, StringBuilder stringBuilder2) {
        stringBuilder.append(stringBuilder2);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, char[] cArr) {
        stringBuilder.append(cArr);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, char c) {
        stringBuilder.append(c);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, boolean z) {
        stringBuilder.append(z);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, int i) {
        stringBuilder.append(i);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, short s) {
        stringBuilder.append(s);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value.toInt())");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, byte b) {
        stringBuilder.append(b);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value.toInt())");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, long j) {
        stringBuilder.append(j);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, float f) {
        stringBuilder.append(f);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }

    private static final StringBuilder appendln(StringBuilder stringBuilder, double d) {
        stringBuilder.append(d);
        Intrinsics.checkExpressionValueIsNotNull(stringBuilder, "append(value)");
        return appendln(stringBuilder);
    }
}
