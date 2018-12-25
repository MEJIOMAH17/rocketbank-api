package kotlin.text;

import com.facebook.internal.FacebookRequestErrorClassification;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CharIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;
import kotlin.sequences.TransformingSequence;

/* compiled from: Strings.kt */
class StringsKt__StringsKt extends StringsKt__StringsJVMKt {
    private static final String orEmpty(String str) {
        return str == null ? "" : str;
    }

    public static final CharSequence trim(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = charSequence.length() - 1;
        int i = 0;
        int i2 = 0;
        while (i <= length) {
            boolean booleanValue = ((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i2 == 0 ? i : length)))).booleanValue();
            if (i2 != 0) {
                if (!booleanValue) {
                    break;
                }
                length--;
            } else if (booleanValue) {
                i++;
            } else {
                i2 = 1;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final String trim(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        CharSequence charSequence = str;
        int length = charSequence.length() - 1;
        int i = 0;
        int i2 = 0;
        while (i <= length) {
            boolean booleanValue = ((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i2 == 0 ? i : length)))).booleanValue();
            if (i2 != 0) {
                if (!booleanValue) {
                    break;
                }
                length--;
            } else if (booleanValue) {
                i++;
            } else {
                i2 = 1;
            }
        }
        return charSequence.subSequence(i, length + 1).toString();
    }

    public static final CharSequence trimStart(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i)))).booleanValue()) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return "";
    }

    public static final String trimStart(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        CharSequence charSequence = str;
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i)))).booleanValue()) {
                str = charSequence.subSequence(i, charSequence.length());
                break;
            }
        }
        str = "";
        return str.toString();
    }

    public static final CharSequence trimEnd(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                return "";
            }
        } while (((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(length)))).booleanValue());
        return charSequence.subSequence(null, length + 1).toString();
    }

    public static final String trimEnd(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        CharSequence charSequence = str;
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                str = "";
                break;
            }
        } while (((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(length)))).booleanValue());
        str = charSequence.subSequence(null, length + 1).toString();
        return str.toString();
    }

    private static final String trim(String str) {
        if (str != null) {
            return trim((CharSequence) str).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    private static final String trimStart(String str) {
        if (str != null) {
            return trimStart((CharSequence) str).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    private static final String trimEnd(String str) {
        if (str != null) {
            return trimEnd((CharSequence) str).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public static /* synthetic */ CharSequence padStart$default(CharSequence charSequence, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return padStart(charSequence, i, c);
    }

    public static final CharSequence padStart(CharSequence charSequence, int i, char c) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if (i < 0) {
            c = new StringBuilder("Desired length ");
            c.append(i);
            c.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(c.toString()));
        } else if (i <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        } else {
            StringBuilder stringBuilder = new StringBuilder(i);
            i -= charSequence.length();
            if (i > 0) {
                int i2 = 1;
                while (true) {
                    stringBuilder.append(c);
                    if (i2 == i) {
                        break;
                    }
                    i2++;
                }
            }
            stringBuilder.append(charSequence);
            return stringBuilder;
        }
    }

    public static /* synthetic */ String padStart$default(String str, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return padStart(str, i, c);
    }

    public static final String padStart(String str, int i, char c) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        return padStart((CharSequence) str, i, c).toString();
    }

    public static /* synthetic */ CharSequence padEnd$default(CharSequence charSequence, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return padEnd(charSequence, i, c);
    }

    public static final CharSequence padEnd(CharSequence charSequence, int i, char c) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if (i < 0) {
            c = new StringBuilder("Desired length ");
            c.append(i);
            c.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(c.toString()));
        } else if (i <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        } else {
            StringBuilder stringBuilder = new StringBuilder(i);
            stringBuilder.append(charSequence);
            i -= charSequence.length();
            if (i > 0) {
                charSequence = true;
                while (true) {
                    stringBuilder.append(c);
                    if (charSequence == i) {
                        break;
                    }
                    charSequence++;
                }
            }
            return stringBuilder;
        }
    }

    public static /* synthetic */ String padEnd$default(String str, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = ' ';
        }
        return padEnd(str, i, c);
    }

    public static final String padEnd(String str, int i, char c) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        return padEnd((CharSequence) str, i, c).toString();
    }

    private static final boolean isNullOrEmpty(CharSequence charSequence) {
        if (charSequence != null) {
            if (charSequence.length() != null) {
                return null;
            }
        }
        return true;
    }

    private static final boolean isEmpty(CharSequence charSequence) {
        return charSequence.length() == null ? true : null;
    }

    private static final boolean isNotEmpty(CharSequence charSequence) {
        return charSequence.length() > null ? true : null;
    }

    private static final boolean isNotBlank(CharSequence charSequence) {
        return StringsKt__StringsJVMKt.isBlank(charSequence) == null ? true : null;
    }

    private static final boolean isNullOrBlank(CharSequence charSequence) {
        if (charSequence != null) {
            if (StringsKt__StringsJVMKt.isBlank(charSequence) == null) {
                return null;
            }
        }
        return true;
    }

    public static final CharIterator iterator(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return new StringsKt__StringsKt$iterator$1(charSequence);
    }

    public static final IntRange getIndices(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return new IntRange(0, charSequence.length() - 1);
    }

    public static final int getLastIndex(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return charSequence.length() - 1;
    }

    public static final boolean hasSurrogatePairAt(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        int length = charSequence.length() - 2;
        if (i >= 0) {
            if (length >= i && Character.isHighSurrogate(charSequence.charAt(i)) && Character.isLowSurrogate(charSequence.charAt(i + 1)) != null) {
                return true;
            }
        }
        return null;
    }

    private static final CharSequence subSequence(String str, int i, int i2) {
        return str.subSequence(i, i2);
    }

    private static final String substring(CharSequence charSequence, int i, int i2) {
        return charSequence.subSequence(i, i2).toString();
    }

    static /* synthetic */ String substring$default(CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = charSequence.length();
        }
        return charSequence.subSequence(i, i2).toString();
    }

    public static /* synthetic */ String substringBefore$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringBefore(str, c, str2);
    }

    public static final String substringBefore(String str, char c, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "missingDelimiterValue");
        c = indexOf$default((CharSequence) str, c, 0, false, 6, null);
        if (c == '￿') {
            return str2;
        }
        str = str.substring(null, c);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static /* synthetic */ String substringBefore$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringBefore(str, str2, str3);
    }

    public static final String substringBefore(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "delimiter");
        Intrinsics.checkParameterIsNotNull(str3, "missingDelimiterValue");
        str2 = indexOf$default((CharSequence) str, str2, 0, false, 6, null);
        if (str2 == -1) {
            return str3;
        }
        str = str.substring(null, str2);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static /* synthetic */ String substringAfter$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringAfter(str, c, str2);
    }

    public static final String substringAfter(String str, char c, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "missingDelimiterValue");
        c = indexOf$default((CharSequence) str, c, 0, false, 6, null);
        if (c == '￿') {
            return str2;
        }
        str = str.substring(c + 1, str.length());
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static /* synthetic */ String substringAfter$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringAfter(str, str2, str3);
    }

    public static final String substringAfter(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "delimiter");
        Intrinsics.checkParameterIsNotNull(str3, "missingDelimiterValue");
        int indexOf$default = indexOf$default((CharSequence) str, str2, 0, false, 6, null);
        if (indexOf$default == -1) {
            return str3;
        }
        str = str.substring(indexOf$default + str2.length(), str.length());
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringBeforeLast(str, c, str2);
    }

    public static final String substringBeforeLast(String str, char c, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "missingDelimiterValue");
        c = lastIndexOf$default((CharSequence) str, c, 0, false, 6, null);
        if (c == '￿') {
            return str2;
        }
        str = str.substring(null, c);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringBeforeLast(str, str2, str3);
    }

    public static final String substringBeforeLast(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "delimiter");
        Intrinsics.checkParameterIsNotNull(str3, "missingDelimiterValue");
        str2 = lastIndexOf$default((CharSequence) str, str2, 0, false, 6, null);
        if (str2 == -1) {
            return str3;
        }
        str = str.substring(null, str2);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static /* synthetic */ String substringAfterLast$default(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringAfterLast(str, c, str2);
    }

    public static final String substringAfterLast(String str, char c, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "missingDelimiterValue");
        c = lastIndexOf$default((CharSequence) str, c, 0, false, 6, null);
        if (c == '￿') {
            return str2;
        }
        str = str.substring(c + 1, str.length());
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static /* synthetic */ String substringAfterLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringAfterLast(str, str2, str3);
    }

    public static final String substringAfterLast(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "delimiter");
        Intrinsics.checkParameterIsNotNull(str3, "missingDelimiterValue");
        int lastIndexOf$default = lastIndexOf$default((CharSequence) str, str2, 0, false, 6, null);
        if (lastIndexOf$default == -1) {
            return str3;
        }
        str = str.substring(lastIndexOf$default + str2.length(), str.length());
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static final CharSequence replaceRange(CharSequence charSequence, int i, int i2, CharSequence charSequence2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, "replacement");
        if (i2 < i) {
            charSequence2 = new StringBuilder("End index (");
            charSequence2.append(i2);
            charSequence2.append(") is less than start index (");
            charSequence2.append(i);
            charSequence2.append(").");
            throw ((Throwable) new IndexOutOfBoundsException(charSequence2.toString()));
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(charSequence, 0, i);
        stringBuilder.append(charSequence2);
        stringBuilder.append(charSequence, i2, charSequence.length());
        return stringBuilder;
    }

    private static final String replaceRange(String str, int i, int i2, CharSequence charSequence) {
        if (str != null) {
            return replaceRange((CharSequence) str, i, i2, charSequence).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    private static final String replaceRange(String str, IntRange intRange, CharSequence charSequence) {
        if (str != null) {
            return replaceRange((CharSequence) str, intRange, charSequence).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public static final CharSequence removeRange(CharSequence charSequence, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if (i2 < i) {
            StringBuilder stringBuilder = new StringBuilder("End index (");
            stringBuilder.append(i2);
            stringBuilder.append(") is less than start index (");
            stringBuilder.append(i);
            stringBuilder.append(").");
            throw ((Throwable) new IndexOutOfBoundsException(stringBuilder.toString()));
        } else if (i2 == i) {
            return charSequence.subSequence(0, charSequence.length());
        } else {
            StringBuilder stringBuilder2 = new StringBuilder(charSequence.length() - (i2 - i));
            stringBuilder2.append(charSequence, 0, i);
            stringBuilder2.append(charSequence, i2, charSequence.length());
            return stringBuilder2;
        }
    }

    private static final String removeRange(String str, int i, int i2) {
        if (str != null) {
            return removeRange((CharSequence) str, i, i2).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    private static final String removeRange(String str, IntRange intRange) {
        if (str != null) {
            return removeRange((CharSequence) str, intRange).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public static final CharSequence removePrefix(CharSequence charSequence, CharSequence charSequence2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, "prefix");
        if (startsWith$default(charSequence, charSequence2, false, 2, null)) {
            return charSequence.subSequence(charSequence2.length(), charSequence.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    public static final String removePrefix(String str, CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence, "prefix");
        if (!startsWith$default((CharSequence) str, charSequence, false, 2, null)) {
            return str;
        }
        str = str.substring(charSequence.length());
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).substring(startIndex)");
        return str;
    }

    public static final CharSequence removeSuffix(CharSequence charSequence, CharSequence charSequence2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, "suffix");
        if (endsWith$default(charSequence, charSequence2, false, 2, null)) {
            return charSequence.subSequence(0, charSequence.length() - charSequence2.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    public static final String removeSuffix(String str, CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence, "suffix");
        if (!endsWith$default((CharSequence) str, charSequence, false, 2, null)) {
            return str;
        }
        str = str.substring(0, str.length() - charSequence.length());
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static final CharSequence removeSurrounding(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, "prefix");
        Intrinsics.checkParameterIsNotNull(charSequence3, "suffix");
        if (charSequence.length() >= charSequence2.length() + charSequence3.length() && startsWith$default(charSequence, charSequence2, false, 2, null) && endsWith$default(charSequence, charSequence3, false, 2, null)) {
            return charSequence.subSequence(charSequence2.length(), charSequence.length() - charSequence3.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    public static final String removeSurrounding(String str, CharSequence charSequence, CharSequence charSequence2) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence, "prefix");
        Intrinsics.checkParameterIsNotNull(charSequence2, "suffix");
        if (str.length() >= charSequence.length() + charSequence2.length()) {
            CharSequence charSequence3 = str;
            if (startsWith$default(charSequence3, charSequence, false, 2, null) && endsWith$default(charSequence3, charSequence2, false, 2, null)) {
                str = str.substring(charSequence.length(), str.length() - charSequence2.length());
                Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                return str;
            }
        }
        return str;
    }

    public static final CharSequence removeSurrounding(CharSequence charSequence, CharSequence charSequence2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, "delimiter");
        return removeSurrounding(charSequence, charSequence2, charSequence2);
    }

    public static final String removeSurrounding(String str, CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence, "delimiter");
        return removeSurrounding(str, charSequence, charSequence);
    }

    public static /* synthetic */ String replaceBefore$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceBefore(str, c, str2, str3);
    }

    public static final String replaceBefore(String str, char c, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "replacement");
        Intrinsics.checkParameterIsNotNull(str3, "missingDelimiterValue");
        CharSequence charSequence = str;
        c = indexOf$default(charSequence, c, 0, false, 6, null);
        if (c == '￿') {
            return str3;
        }
        return replaceRange(charSequence, (int) null, (int) c, (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceBefore$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceBefore(str, str2, str3, str4);
    }

    public static final String replaceBefore(String str, String str2, String str3, String str4) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "delimiter");
        Intrinsics.checkParameterIsNotNull(str3, "replacement");
        Intrinsics.checkParameterIsNotNull(str4, "missingDelimiterValue");
        CharSequence charSequence = str;
        str2 = indexOf$default(charSequence, str2, 0, false, 6, null);
        if (str2 == -1) {
            return str4;
        }
        return replaceRange(charSequence, (int) null, (int) str2, (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceAfter$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceAfter(str, c, str2, str3);
    }

    public static final String replaceAfter(String str, char c, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "replacement");
        Intrinsics.checkParameterIsNotNull(str3, "missingDelimiterValue");
        CharSequence charSequence = str;
        c = indexOf$default(charSequence, c, 0, false, 6, null);
        if (c == '￿') {
            return str3;
        }
        return replaceRange(charSequence, (int) c + 1, (int) str.length(), (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceAfter$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceAfter(str, str2, str3, str4);
    }

    public static final String replaceAfter(String str, String str2, String str3, String str4) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "delimiter");
        Intrinsics.checkParameterIsNotNull(str3, "replacement");
        Intrinsics.checkParameterIsNotNull(str4, "missingDelimiterValue");
        CharSequence charSequence = str;
        int indexOf$default = indexOf$default(charSequence, str2, 0, false, 6, null);
        if (indexOf$default == -1) {
            return str4;
        }
        return replaceRange(charSequence, indexOf$default + str2.length(), (int) str.length(), (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceAfterLast(str, str2, str3, str4);
    }

    public static final String replaceAfterLast(String str, String str2, String str3, String str4) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "delimiter");
        Intrinsics.checkParameterIsNotNull(str3, "replacement");
        Intrinsics.checkParameterIsNotNull(str4, "missingDelimiterValue");
        CharSequence charSequence = str;
        int lastIndexOf$default = lastIndexOf$default(charSequence, str2, 0, false, 6, null);
        if (lastIndexOf$default == -1) {
            return str4;
        }
        return replaceRange(charSequence, lastIndexOf$default + str2.length(), (int) str.length(), (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceAfterLast(str, c, str2, str3);
    }

    public static final String replaceAfterLast(String str, char c, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "replacement");
        Intrinsics.checkParameterIsNotNull(str3, "missingDelimiterValue");
        CharSequence charSequence = str;
        c = lastIndexOf$default(charSequence, c, 0, false, 6, null);
        if (c == '￿') {
            return str3;
        }
        return replaceRange(charSequence, (int) c + 1, (int) str.length(), (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, char c, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceBeforeLast(str, c, str2, str3);
    }

    public static final String replaceBeforeLast(String str, char c, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "replacement");
        Intrinsics.checkParameterIsNotNull(str3, "missingDelimiterValue");
        CharSequence charSequence = str;
        c = lastIndexOf$default(charSequence, c, 0, false, 6, null);
        if (c == '￿') {
            return str3;
        }
        return replaceRange(charSequence, (int) null, (int) c, (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceBeforeLast(str, str2, str3, str4);
    }

    public static final String replaceBeforeLast(String str, String str2, String str3, String str4) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "delimiter");
        Intrinsics.checkParameterIsNotNull(str3, "replacement");
        Intrinsics.checkParameterIsNotNull(str4, "missingDelimiterValue");
        CharSequence charSequence = str;
        str2 = lastIndexOf$default(charSequence, str2, 0, false, 6, null);
        if (str2 == -1) {
            return str4;
        }
        return replaceRange(charSequence, (int) null, (int) str2, (CharSequence) str3).toString();
    }

    private static final String replace(CharSequence charSequence, Regex regex, String str) {
        return regex.replace(charSequence, str);
    }

    private static final String replace(CharSequence charSequence, Regex regex, Function1<? super MatchResult, ? extends CharSequence> function1) {
        return regex.replace(charSequence, (Function1) function1);
    }

    private static final String replaceFirst(CharSequence charSequence, Regex regex, String str) {
        return regex.replaceFirst(charSequence, str);
    }

    private static final boolean matches(CharSequence charSequence, Regex regex) {
        return regex.matches(charSequence);
    }

    public static final boolean regionMatchesImpl(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, FacebookRequestErrorClassification.KEY_OTHER);
        if (i2 >= 0 && i >= 0 && i <= charSequence.length() - i3) {
            if (i2 <= charSequence2.length() - i3) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (!CharsKt__CharKt.equals(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return startsWith(charSequence, c, z);
    }

    public static final boolean startsWith(CharSequence charSequence, char c, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return charSequence.length() > 0 && CharsKt__CharKt.equals(charSequence.charAt(0), c, z) != null;
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return endsWith(charSequence, c, z);
    }

    public static final boolean endsWith(CharSequence charSequence, char c, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return (charSequence.length() <= 0 || CharsKt__CharKt.equals(charSequence.charAt(getLastIndex(charSequence)), c, z) == null) ? null : true;
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return startsWith(charSequence, charSequence2, z);
    }

    public static final boolean startsWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, "prefix");
        if (!z && (charSequence instanceof String) && (charSequence2 instanceof String)) {
            return StringsKt__StringsJVMKt.startsWith$default((String) charSequence, (String) charSequence2, false, 2, null);
        }
        return regionMatchesImpl(charSequence, 0, charSequence2, 0, charSequence2.length(), z);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return startsWith(charSequence, charSequence2, i, z);
    }

    public static final boolean startsWith(CharSequence charSequence, CharSequence charSequence2, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, "prefix");
        if (!z && (charSequence instanceof String) && (charSequence2 instanceof String)) {
            return StringsKt__StringsJVMKt.startsWith$default((String) charSequence, (String) charSequence2, i, false, 4, null);
        }
        return regionMatchesImpl(charSequence, i, charSequence2, 0, charSequence2.length(), z);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return endsWith(charSequence, charSequence2, z);
    }

    public static final boolean endsWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, "suffix");
        if (!z && (charSequence instanceof String) && (charSequence2 instanceof String)) {
            return StringsKt__StringsJVMKt.endsWith$default((String) charSequence, (String) charSequence2, false, 2, null);
        }
        return regionMatchesImpl(charSequence, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length(), z);
    }

    public static /* synthetic */ String commonPrefixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return commonPrefixWith(charSequence, charSequence2, z);
    }

    public static final String commonPrefixWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, FacebookRequestErrorClassification.KEY_OTHER);
        int min = Math.min(charSequence.length(), charSequence2.length());
        int i = 0;
        while (i < min && CharsKt__CharKt.equals(charSequence.charAt(i), charSequence2.charAt(i), z)) {
            i++;
        }
        z = i - 1;
        if (hasSurrogatePairAt(charSequence, z) || hasSurrogatePairAt(charSequence2, z) != null) {
            i--;
        }
        return charSequence.subSequence(0, i).toString();
    }

    public static /* synthetic */ String commonSuffixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return commonSuffixWith(charSequence, charSequence2, z);
    }

    public static final String commonSuffixWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, FacebookRequestErrorClassification.KEY_OTHER);
        int length = charSequence.length();
        int length2 = charSequence2.length();
        int min = Math.min(length, length2);
        int i = 0;
        while (i < min && CharsKt__CharKt.equals(charSequence.charAt((length - i) - 1), charSequence2.charAt((length2 - i) - 1), z)) {
            i++;
        }
        if (hasSurrogatePairAt(charSequence, (length - i) - 1) || hasSurrogatePairAt(charSequence2, (length2 - i) - 1) != null) {
            i--;
        }
        return charSequence.subSequence(length - i, length).toString();
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOfAny(charSequence, cArr, i, z);
    }

    public static final int indexOfAny(CharSequence charSequence, char[] cArr, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "chars");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(ArraysKt___ArraysKt.single(cArr), i);
        }
        if (i < 0) {
            i = 0;
        }
        int lastIndex = getLastIndex(charSequence);
        if (i <= lastIndex) {
            while (true) {
                Object obj;
                char charAt = charSequence.charAt(i);
                for (char equals : cArr) {
                    if (CharsKt__CharKt.equals(equals, charAt, z)) {
                        obj = 1;
                        break;
                    }
                }
                obj = null;
                if (obj == null) {
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                } else {
                    return i;
                }
            }
        }
        return -1;
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOfAny(charSequence, cArr, i, z);
    }

    public static final int lastIndexOfAny(CharSequence charSequence, char[] cArr, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "chars");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(ArraysKt___ArraysKt.single(cArr), i);
        }
        int lastIndex = getLastIndex(charSequence);
        if (i > lastIndex) {
            i = lastIndex;
        }
        while (i >= 0) {
            char charAt = charSequence.charAt(i);
            Object obj = null;
            for (char equals : cArr) {
                if (CharsKt__CharKt.equals(equals, charAt, z)) {
                    obj = 1;
                    break;
                }
            }
            if (obj != null) {
                return i;
            }
            i--;
        }
        return -1;
    }

    static /* synthetic */ int indexOf$StringsKt__StringsKt$default(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return indexOf$StringsKt__StringsKt(charSequence, charSequence2, i, i2, z, z2);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final int indexOf$StringsKt__StringsKt(java.lang.CharSequence r7, java.lang.CharSequence r8, int r9, int r10, boolean r11, boolean r12) {
        /*
        r0 = -1;
        r1 = 0;
        if (r12 != 0) goto L_0x0016;
    L_0x0004:
        if (r9 >= 0) goto L_0x0007;
    L_0x0006:
        r9 = r1;
    L_0x0007:
        r12 = new kotlin.ranges.IntRange;
        r1 = r7.length();
        if (r10 <= r1) goto L_0x0010;
    L_0x000f:
        r10 = r1;
    L_0x0010:
        r12.<init>(r9, r10);
        r12 = (kotlin.ranges.IntProgression) r12;
        goto L_0x0027;
    L_0x0016:
        r12 = getLastIndex(r7);
        if (r9 <= r12) goto L_0x001d;
    L_0x001c:
        r9 = r12;
    L_0x001d:
        if (r10 >= 0) goto L_0x0020;
    L_0x001f:
        r10 = r1;
    L_0x0020:
        r12 = kotlin.ranges.IntProgression.Companion;
        r12 = new kotlin.ranges.IntProgression;
        r12.<init>(r9, r10, r0);
    L_0x0027:
        r9 = r7 instanceof java.lang.String;
        if (r9 == 0) goto L_0x005a;
    L_0x002b:
        r9 = r8 instanceof java.lang.String;
        if (r9 == 0) goto L_0x005a;
    L_0x002f:
        r9 = r12.getFirst();
        r10 = r12.getLast();
        r12 = r12.getStep();
        if (r12 <= 0) goto L_0x0040;
    L_0x003d:
        if (r9 > r10) goto L_0x0081;
    L_0x003f:
        goto L_0x0042;
    L_0x0040:
        if (r9 < r10) goto L_0x0081;
    L_0x0042:
        r1 = r8;
        r1 = (java.lang.String) r1;
        r2 = 0;
        r3 = r7;
        r3 = (java.lang.String) r3;
        r5 = r8.length();
        r4 = r9;
        r6 = r11;
        r1 = kotlin.text.StringsKt__StringsJVMKt.regionMatches(r1, r2, r3, r4, r5, r6);
        if (r1 == 0) goto L_0x0056;
    L_0x0055:
        return r9;
    L_0x0056:
        if (r9 == r10) goto L_0x0081;
    L_0x0058:
        r9 = r9 + r12;
        goto L_0x0042;
    L_0x005a:
        r9 = r12.getFirst();
        r10 = r12.getLast();
        r12 = r12.getStep();
        if (r12 <= 0) goto L_0x006b;
    L_0x0068:
        if (r9 > r10) goto L_0x0081;
    L_0x006a:
        goto L_0x006d;
    L_0x006b:
        if (r9 < r10) goto L_0x0081;
    L_0x006d:
        r2 = 0;
        r5 = r8.length();
        r1 = r8;
        r3 = r7;
        r4 = r9;
        r6 = r11;
        r1 = regionMatchesImpl(r1, r2, r3, r4, r5, r6);
        if (r1 == 0) goto L_0x007d;
    L_0x007c:
        return r9;
    L_0x007d:
        if (r9 == r10) goto L_0x0081;
    L_0x007f:
        r9 = r9 + r12;
        goto L_0x006d;
    L_0x0081:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringsKt.indexOf$StringsKt__StringsKt(java.lang.CharSequence, java.lang.CharSequence, int, int, boolean, boolean):int");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final kotlin.Pair<java.lang.Integer, java.lang.String> findAnyOf$StringsKt__StringsKt(java.lang.CharSequence r10, java.util.Collection<java.lang.String> r11, int r12, boolean r13, boolean r14) {
        /*
        r0 = 0;
        if (r13 != 0) goto L_0x0036;
    L_0x0003:
        r1 = r11.size();
        r2 = 1;
        if (r1 != r2) goto L_0x0036;
    L_0x000a:
        r11 = (java.lang.Iterable) r11;
        r11 = kotlin.collections.CollectionsKt___CollectionsKt.single(r11);
        r11 = (java.lang.String) r11;
        if (r14 != 0) goto L_0x001f;
    L_0x0014:
        r4 = 0;
        r5 = 4;
        r6 = 0;
        r1 = r10;
        r2 = r11;
        r3 = r12;
        r10 = indexOf$default(r1, r2, r3, r4, r5, r6);
        goto L_0x0029;
    L_0x001f:
        r4 = 0;
        r5 = 4;
        r6 = 0;
        r1 = r10;
        r2 = r11;
        r3 = r12;
        r10 = lastIndexOf$default(r1, r2, r3, r4, r5, r6);
    L_0x0029:
        if (r10 >= 0) goto L_0x002c;
    L_0x002b:
        return r0;
    L_0x002c:
        r10 = java.lang.Integer.valueOf(r10);
        r12 = new kotlin.Pair;
        r12.<init>(r10, r11);
        return r12;
    L_0x0036:
        r1 = 0;
        if (r14 != 0) goto L_0x0048;
    L_0x0039:
        if (r12 >= 0) goto L_0x003c;
    L_0x003b:
        r12 = r1;
    L_0x003c:
        r14 = new kotlin.ranges.IntRange;
        r1 = r10.length();
        r14.<init>(r12, r1);
        r14 = (kotlin.ranges.IntProgression) r14;
        goto L_0x0057;
    L_0x0048:
        r14 = getLastIndex(r10);
        if (r12 <= r14) goto L_0x004f;
    L_0x004e:
        r12 = r14;
    L_0x004f:
        r14 = kotlin.ranges.IntProgression.Companion;
        r14 = new kotlin.ranges.IntProgression;
        r2 = -1;
        r14.<init>(r12, r1, r2);
    L_0x0057:
        r12 = r10 instanceof java.lang.String;
        if (r12 == 0) goto L_0x00a6;
    L_0x005b:
        r12 = r14.getFirst();
        r1 = r14.getLast();
        r14 = r14.getStep();
        if (r14 <= 0) goto L_0x006c;
    L_0x0069:
        if (r12 > r1) goto L_0x00f4;
    L_0x006b:
        goto L_0x006e;
    L_0x006c:
        if (r12 < r1) goto L_0x00f4;
    L_0x006e:
        r2 = r11;
        r2 = (java.lang.Iterable) r2;
        r8 = r2.iterator();
    L_0x0075:
        r2 = r8.hasNext();
        if (r2 == 0) goto L_0x0093;
    L_0x007b:
        r9 = r8.next();
        r2 = r9;
        r2 = (java.lang.String) r2;
        r3 = 0;
        r4 = r10;
        r4 = (java.lang.String) r4;
        r6 = r2.length();
        r5 = r12;
        r7 = r13;
        r2 = kotlin.text.StringsKt__StringsJVMKt.regionMatches(r2, r3, r4, r5, r6, r7);
        if (r2 == 0) goto L_0x0075;
    L_0x0092:
        goto L_0x0094;
    L_0x0093:
        r9 = r0;
    L_0x0094:
        r9 = (java.lang.String) r9;
        if (r9 == 0) goto L_0x00a2;
    L_0x0098:
        r10 = java.lang.Integer.valueOf(r12);
        r11 = new kotlin.Pair;
        r11.<init>(r10, r9);
        return r11;
    L_0x00a2:
        if (r12 == r1) goto L_0x00f4;
    L_0x00a4:
        r12 = r12 + r14;
        goto L_0x006e;
    L_0x00a6:
        r12 = r14.getFirst();
        r1 = r14.getLast();
        r14 = r14.getStep();
        if (r14 <= 0) goto L_0x00b7;
    L_0x00b4:
        if (r12 > r1) goto L_0x00f4;
    L_0x00b6:
        goto L_0x00b9;
    L_0x00b7:
        if (r12 < r1) goto L_0x00f4;
    L_0x00b9:
        r2 = r11;
        r2 = (java.lang.Iterable) r2;
        r8 = r2.iterator();
    L_0x00c0:
        r2 = r8.hasNext();
        if (r2 == 0) goto L_0x00e1;
    L_0x00c6:
        r9 = r8.next();
        r2 = r9;
        r2 = (java.lang.String) r2;
        r3 = r2;
        r3 = (java.lang.CharSequence) r3;
        r4 = 0;
        r6 = r2.length();
        r2 = r3;
        r3 = r4;
        r4 = r10;
        r5 = r12;
        r7 = r13;
        r2 = regionMatchesImpl(r2, r3, r4, r5, r6, r7);
        if (r2 == 0) goto L_0x00c0;
    L_0x00e0:
        goto L_0x00e2;
    L_0x00e1:
        r9 = r0;
    L_0x00e2:
        r9 = (java.lang.String) r9;
        if (r9 == 0) goto L_0x00f0;
    L_0x00e6:
        r10 = java.lang.Integer.valueOf(r12);
        r11 = new kotlin.Pair;
        r11.<init>(r10, r9);
        return r11;
    L_0x00f0:
        if (r12 == r1) goto L_0x00f4;
    L_0x00f2:
        r12 = r12 + r14;
        goto L_0x00b9;
    L_0x00f4:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringsKt.findAnyOf$StringsKt__StringsKt(java.lang.CharSequence, java.util.Collection, int, boolean, boolean):kotlin.Pair<java.lang.Integer, java.lang.String>");
    }

    public static /* synthetic */ Pair findAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return findAnyOf(charSequence, collection, i, z);
    }

    public static final Pair<Integer, String> findAnyOf(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(collection, "strings");
        return findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, false);
    }

    public static /* synthetic */ Pair findLastAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return findLastAnyOf(charSequence, collection, i, z);
    }

    public static final Pair<Integer, String> findLastAnyOf(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(collection, "strings");
        return findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, true);
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOfAny(charSequence, collection, i, z);
    }

    public static final int indexOfAny(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(collection, "strings");
        charSequence = findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, false);
        if (charSequence != null) {
            Integer num = (Integer) charSequence.getFirst();
            if (num != null) {
                return num.intValue();
            }
        }
        return -1;
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOfAny(charSequence, collection, i, z);
    }

    public static final int lastIndexOfAny(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(collection, "strings");
        charSequence = findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, true);
        if (charSequence != null) {
            Integer num = (Integer) charSequence.getFirst();
            if (num != null) {
                return num.intValue();
            }
        }
        return -1;
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOf(charSequence, c, i, z);
    }

    public static final int indexOf(CharSequence charSequence, char c, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if (!z) {
            if (charSequence instanceof String) {
                return ((String) charSequence).indexOf(c, i);
            }
        }
        return indexOfAny(charSequence, new char[]{c}, i, z);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOf(charSequence, str, i, z);
    }

    public static final int indexOf(CharSequence charSequence, String str, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(str, "string");
        if (!z) {
            if (charSequence instanceof String) {
                return ((String) charSequence).indexOf(str, i);
            }
        }
        return indexOf$StringsKt__StringsKt$default(charSequence, str, i, charSequence.length(), z, false, 16, null);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOf(charSequence, c, i, z);
    }

    public static final int lastIndexOf(CharSequence charSequence, char c, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if (!z) {
            if (charSequence instanceof String) {
                return ((String) charSequence).lastIndexOf(c, i);
            }
        }
        return lastIndexOfAny(charSequence, new char[]{c}, i, z);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != null) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOf(charSequence, str, i, z);
    }

    public static final int lastIndexOf(CharSequence charSequence, String str, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(str, "string");
        if (!z) {
            if (charSequence instanceof String) {
                return ((String) charSequence).lastIndexOf(str, i);
            }
        }
        return indexOf$StringsKt__StringsKt(charSequence, str, i, 0, z, true);
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return contains(charSequence, charSequence2, z);
    }

    public static final boolean contains(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, FacebookRequestErrorClassification.KEY_OTHER);
        if (charSequence2 instanceof String) {
            return indexOf$default(charSequence, (String) charSequence2, 0, z, 2, null) >= null;
        } else {
            return indexOf$StringsKt__StringsKt$default(charSequence, charSequence2, 0, charSequence.length(), z, false, 16, null) >= null;
        }
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return contains(charSequence, c, z);
    }

    public static final boolean contains(CharSequence charSequence, char c, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return indexOf$default(charSequence, c, 0, z, 2, null) >= null ? true : null;
    }

    private static final boolean contains(CharSequence charSequence, Regex regex) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return regex.containsMatchIn(charSequence);
    }

    static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != null) {
            i = 0;
        }
        if ((i3 & 4) != null) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, cArr, i, z, i2);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(CharSequence charSequence, char[] cArr, int i, boolean z, int i2) {
        if ((i2 >= 0 ? 1 : null) != null) {
            return new DelimitedRangesSequence(charSequence, i, i2, new StringsKt__StringsKt$rangesDelimitedBy$2(cArr, z));
        }
        charSequence = new StringBuilder("Limit must be non-negative, but was ");
        charSequence.append(i2);
        charSequence.append(46);
        throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
    }

    static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != null) {
            i = 0;
        }
        if ((i3 & 4) != null) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, strArr, i, z, i2);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(CharSequence charSequence, String[] strArr, int i, boolean z, int i2) {
        if ((i2 >= 0 ? 1 : null) == null) {
            charSequence = new StringBuilder("Limit must be non-negative, but was ");
            charSequence.append(i2);
            charSequence.append(46);
            throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
        }
        Intrinsics.checkParameterIsNotNull(strArr, "$receiver");
        strArr = Arrays.asList(strArr);
        Intrinsics.checkExpressionValueIsNotNull(strArr, "ArraysUtilJVM.asList(this)");
        return new DelimitedRangesSequence(charSequence, i, i2, new StringsKt__StringsKt$rangesDelimitedBy$4(strArr, z));
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != null) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return splitToSequence(charSequence, strArr, z, i);
    }

    public static final Sequence<String> splitToSequence(CharSequence charSequence, String[] strArr, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(strArr, "delimiters");
        strArr = rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, strArr, 0, z, i, 2, null);
        Function1 function1 = (Function1) new StringsKt__StringsKt$splitToSequence$1(charSequence);
        Intrinsics.checkParameterIsNotNull(strArr, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        return (Sequence) new TransformingSequence(strArr, function1);
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != null) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return split(charSequence, strArr, z, i);
    }

    public static final List<String> split(CharSequence charSequence, String[] strArr, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(strArr, "delimiters");
        int i2 = 1;
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                i2 = 0;
            }
            if (i2 == 0) {
                return split$StringsKt__StringsKt(charSequence, str, z, i);
            }
        }
        strArr = rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, strArr, 0, z, i, 2, null);
        Intrinsics.checkParameterIsNotNull(strArr, "$receiver");
        Iterable<IntRange> iterable = (Iterable) new SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1(strArr);
        Collection collection = (Collection) new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable));
        for (IntRange substring : iterable) {
            collection.add(substring(charSequence, substring));
        }
        return (List) collection;
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != null) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return splitToSequence(charSequence, cArr, z, i);
    }

    public static final Sequence<String> splitToSequence(CharSequence charSequence, char[] cArr, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "delimiters");
        cArr = rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, cArr, 0, z, i, 2, null);
        Function1 function1 = (Function1) new StringsKt__StringsKt$splitToSequence$2(charSequence);
        Intrinsics.checkParameterIsNotNull(cArr, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        return (Sequence) new TransformingSequence(cArr, function1);
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != null) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return split(charSequence, cArr, z, i);
    }

    public static final List<String> split(CharSequence charSequence, char[] cArr, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "delimiters");
        if (cArr.length == 1) {
            return split$StringsKt__StringsKt(charSequence, String.valueOf(cArr[0]), z, i);
        }
        cArr = rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, cArr, 0, z, i, 2, null);
        Intrinsics.checkParameterIsNotNull(cArr, "$receiver");
        Iterable<IntRange> iterable = (Iterable) new SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1(cArr);
        Collection collection = (Collection) new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable));
        for (IntRange substring : iterable) {
            collection.add(substring(charSequence, substring));
        }
        return (List) collection;
    }

    private static final List<String> split$StringsKt__StringsKt(CharSequence charSequence, String str, boolean z, int i) {
        int i2 = 0;
        if ((i >= 0 ? 1 : 0) == 0) {
            charSequence = new StringBuilder("Limit must be non-negative, but was ");
            charSequence.append(i);
            charSequence.append('.');
            throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
        }
        int indexOf = indexOf(charSequence, str, 0, z);
        if (indexOf != -1) {
            if (i != 1) {
                int i3 = i > 0 ? 1 : 0;
                int i4 = 10;
                if (i3 != 0 && i <= 10) {
                    i4 = i;
                }
                ArrayList arrayList = new ArrayList(i4);
                do {
                    arrayList.add(charSequence.subSequence(i2, indexOf).toString());
                    i2 = str.length() + indexOf;
                    if (i3 != 0 && arrayList.size() == i - 1) {
                        break;
                    }
                    indexOf = indexOf(charSequence, str, i2, z);
                } while (indexOf != -1);
                arrayList.add(charSequence.subSequence(i2, charSequence.length()).toString());
                return arrayList;
            }
        }
        return CollectionsKt__CollectionsKt.listOf((Object) charSequence.toString());
    }

    private static final List<String> split(CharSequence charSequence, Regex regex, int i) {
        return regex.split(charSequence, i);
    }

    public static final Sequence<String> lineSequence(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return splitToSequence$default(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, null);
    }

    public static final List<String> lines(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return SequencesKt___SequencesKt.toList(lineSequence(charSequence));
    }

    public static final CharSequence trim(CharSequence charSequence, char... cArr) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "chars");
        int length = charSequence.length() - 1;
        int i = 0;
        int i2 = 0;
        while (i <= length) {
            boolean contains = ArraysKt___ArraysKt.contains(cArr, charSequence.charAt(i2 == 0 ? i : length));
            if (i2 != 0) {
                if (!contains) {
                    break;
                }
                length--;
            } else if (contains) {
                i++;
            } else {
                i2 = 1;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final String trim(String str, char... cArr) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "chars");
        CharSequence charSequence = str;
        int length = charSequence.length() - 1;
        int i = 0;
        int i2 = 0;
        while (i <= length) {
            boolean contains = ArraysKt___ArraysKt.contains(cArr, charSequence.charAt(i2 == 0 ? i : length));
            if (i2 != 0) {
                if (!contains) {
                    break;
                }
                length--;
            } else if (contains) {
                i++;
            } else {
                i2 = 1;
            }
        }
        return charSequence.subSequence(i, length + 1).toString();
    }

    public static final CharSequence trimStart(CharSequence charSequence, char... cArr) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "chars");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!ArraysKt___ArraysKt.contains(cArr, charSequence.charAt(i))) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return "";
    }

    public static final String trimStart(String str, char... cArr) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "chars");
        CharSequence charSequence = str;
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!ArraysKt___ArraysKt.contains(cArr, charSequence.charAt(i))) {
                str = charSequence.subSequence(i, charSequence.length());
                break;
            }
        }
        str = "";
        return str.toString();
    }

    public static final CharSequence trimEnd(CharSequence charSequence, char... cArr) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "chars");
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                return "";
            }
        } while (ArraysKt___ArraysKt.contains(cArr, charSequence.charAt(length)));
        return charSequence.subSequence(null, length + 1).toString();
    }

    public static final String trimEnd(String str, char... cArr) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(cArr, "chars");
        CharSequence charSequence = str;
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                str = "";
                break;
            }
        } while (ArraysKt___ArraysKt.contains(cArr, charSequence.charAt(length)));
        str = charSequence.subSequence(null, length + 1).toString();
        return str.toString();
    }

    public static final CharSequence trim(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        int length = charSequence.length() - 1;
        int i = 0;
        int i2 = 0;
        while (i <= length) {
            boolean isWhitespace = CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(i2 == 0 ? i : length));
            if (i2 != 0) {
                if (!isWhitespace) {
                    break;
                }
                length--;
            } else if (isWhitespace) {
                i++;
            } else {
                i2 = 1;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final CharSequence trimStart(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(i))) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return "";
    }

    public static final CharSequence trimEnd(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                return "";
            }
        } while (CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(length)));
        return charSequence.subSequence(0, length + 1).toString();
    }

    static /* synthetic */ List split$default(CharSequence charSequence, Regex regex, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.split(charSequence, i);
    }

    public static final String substring(String str, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(intRange, "range");
        str = str.substring(intRange.getFirst(), intRange.getLast() + 1);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static final CharSequence subSequence(CharSequence charSequence, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(intRange, "range");
        return charSequence.subSequence(intRange.getFirst(), intRange.getLast() + 1);
    }

    public static final String substring(CharSequence charSequence, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(intRange, "range");
        return charSequence.subSequence(intRange.getFirst(), intRange.getLast() + 1).toString();
    }

    public static final CharSequence replaceRange(CharSequence charSequence, IntRange intRange, CharSequence charSequence2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(intRange, "range");
        Intrinsics.checkParameterIsNotNull(charSequence2, "replacement");
        return replaceRange(charSequence, intRange.getFirst(), (int) intRange.getLast() + 1, charSequence2);
    }

    public static final CharSequence removeRange(CharSequence charSequence, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(intRange, "range");
        return removeRange(charSequence, intRange.getFirst(), (int) intRange.getLast() + 1);
    }
}
