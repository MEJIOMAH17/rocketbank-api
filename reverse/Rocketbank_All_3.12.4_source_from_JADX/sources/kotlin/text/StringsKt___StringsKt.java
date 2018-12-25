package kotlin.text;

import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.EmptySet;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.SlidingWindowKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntProgression.Companion;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import kotlin.sequences.TransformingSequence;

/* compiled from: _Strings.kt */
class StringsKt___StringsKt extends StringsKt__StringsKt {
    private static final char elementAt(CharSequence charSequence, int i) {
        return charSequence.charAt(i);
    }

    private static final char elementAtOrElse(CharSequence charSequence, int i, Function1<? super Integer, Character> function1) {
        return (i < 0 || i > StringsKt__StringsKt.getLastIndex(charSequence)) ? ((Character) function1.invoke(Integer.valueOf(i))).charValue() : charSequence.charAt(i);
    }

    private static final Character elementAtOrNull(CharSequence charSequence, int i) {
        return getOrNull(charSequence, i);
    }

    public static final char first(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if ((charSequence.length() == 0 ? 1 : 0) == 0) {
            return charSequence.charAt(0);
        }
        throw ((Throwable) new NoSuchElementException("Char sequence is empty."));
    }

    public static final char first(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                return charAt;
            }
        }
        throw ((Throwable) new NoSuchElementException("Char sequence contains no character matching the predicate."));
    }

    public static final Character firstOrNull(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return (charSequence.length() == 0 ? 1 : 0) != 0 ? null : Character.valueOf(charSequence.charAt(0));
    }

    public static final Character firstOrNull(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                return Character.valueOf(charAt);
            }
        }
        return null;
    }

    private static final char getOrElse(CharSequence charSequence, int i, Function1<? super Integer, Character> function1) {
        return (i < 0 || i > StringsKt__StringsKt.getLastIndex(charSequence)) ? ((Character) function1.invoke(Integer.valueOf(i))).charValue() : charSequence.charAt(i);
    }

    public static final Character getOrNull(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return (i < 0 || i > StringsKt__StringsKt.getLastIndex(charSequence)) ? null : Character.valueOf(charSequence.charAt(i));
    }

    public static final int indexOfFirst(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i)))).booleanValue()) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfLast(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(length)))).booleanValue()) {
                return length;
            }
        }
        return -1;
    }

    public static final char last(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if ((charSequence.length() == 0 ? 1 : null) == null) {
            return charSequence.charAt(StringsKt__StringsKt.getLastIndex(charSequence));
        }
        throw ((Throwable) new NoSuchElementException("Char sequence is empty."));
    }

    public static final char last(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        char charAt;
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = charSequence.length();
        do {
            length--;
            if (length >= 0) {
                charAt = charSequence.charAt(length);
            } else {
                throw ((Throwable) new NoSuchElementException("Char sequence contains no character matching the predicate."));
            }
        } while (!((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue());
        return charAt;
    }

    public static final Character lastOrNull(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return (charSequence.length() == 0 ? 1 : 0) != 0 ? null : Character.valueOf(charSequence.charAt(charSequence.length() - 1));
    }

    public static final Character lastOrNull(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        char charAt;
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                return null;
            }
            charAt = charSequence.charAt(length);
        } while (!((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue());
        return Character.valueOf(charAt);
    }

    public static final char single(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        switch (charSequence.length()) {
            case 0:
                throw ((Throwable) new NoSuchElementException("Char sequence is empty."));
            case 1:
                return charSequence.charAt(0);
            default:
                throw ((Throwable) new IllegalArgumentException("Char sequence has more than one element."));
        }
    }

    public static final char single(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int i = 0;
        Character ch = null;
        int i2 = 0;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                if (i2 != 0) {
                    throw ((Throwable) new IllegalArgumentException("Char sequence contains more than one matching element."));
                }
                ch = Character.valueOf(charAt);
                i2 = 1;
            }
            i++;
        }
        if (i2 == 0) {
            throw ((Throwable) new NoSuchElementException("Char sequence contains no character matching the predicate."));
        } else if (ch != null) {
            return ch.charValue();
        } else {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Char");
        }
    }

    public static final Character singleOrNull(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return charSequence.length() == 1 ? Character.valueOf(charSequence.charAt(0)) : null;
    }

    public static final Character singleOrNull(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int i = 0;
        int i2 = 0;
        Character ch = null;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                if (i2 != 0) {
                    return null;
                }
                ch = Character.valueOf(charAt);
                i2 = 1;
            }
            i++;
        }
        if (i2 == 0) {
            return null;
        }
        return ch;
    }

    public static final CharSequence drop(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if ((i >= 0 ? 1 : null) == null) {
            charSequence = new StringBuilder("Requested character count ");
            charSequence.append(i);
            charSequence.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
        }
        int length = charSequence.length();
        if (i > length) {
            i = length;
        }
        return charSequence.subSequence(i, charSequence.length());
    }

    public static final String drop(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        if ((i >= 0 ? 1 : null) == null) {
            str = new StringBuilder("Requested character count ");
            str.append(i);
            str.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(str.toString().toString()));
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        str = str.substring(i);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).substring(startIndex)");
        return str;
    }

    public static final CharSequence dropLast(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if ((i >= 0 ? 1 : null) == null) {
            charSequence = new StringBuilder("Requested character count ");
            charSequence.append(i);
            charSequence.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
        }
        i = charSequence.length() - i;
        if (i < 0) {
            i = 0;
        }
        return take(charSequence, i);
    }

    public static final String dropLast(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        if ((i >= 0 ? 1 : null) == null) {
            str = new StringBuilder("Requested character count ");
            str.append(i);
            str.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(str.toString().toString()));
        }
        i = str.length() - i;
        if (i < 0) {
            i = 0;
        }
        return take(str, i);
    }

    public static final CharSequence dropLastWhile(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        for (int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence); lastIndex >= 0; lastIndex--) {
            if (!((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(lastIndex)))).booleanValue()) {
                return charSequence.subSequence(null, lastIndex + 1);
            }
        }
        return "";
    }

    public static final String dropLastWhile(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int lastIndex = StringsKt__StringsKt.getLastIndex(str);
        while (lastIndex >= 0) {
            if (((Boolean) function1.invoke(Character.valueOf(str.charAt(lastIndex)))).booleanValue()) {
                lastIndex--;
            } else {
                str = str.substring(null, lastIndex + 1);
                Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                return str;
            }
        }
        return "";
    }

    public static final CharSequence dropWhile(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
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

    public static final String dropWhile(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (((Boolean) function1.invoke(Character.valueOf(str.charAt(i)))).booleanValue()) {
                i++;
            } else {
                str = str.substring(i);
                Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).substring(startIndex)");
                return str;
            }
        }
        return "";
    }

    public static final CharSequence filter(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        Appendable stringBuilder = new StringBuilder();
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                stringBuilder.append(charAt);
            }
        }
        return (CharSequence) stringBuilder;
    }

    public static final String filter(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        CharSequence charSequence = str;
        Appendable stringBuilder = new StringBuilder();
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                stringBuilder.append(charAt);
            }
        }
        str = ((StringBuilder) stringBuilder).toString();
        Intrinsics.checkExpressionValueIsNotNull(str, "filterTo(StringBuilder(), predicate).toString()");
        return str;
    }

    public static final CharSequence filterIndexed(CharSequence charSequence, Function2<? super Integer, ? super Character, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, "predicate");
        Appendable stringBuilder = new StringBuilder();
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            int i3 = i2 + 1;
            if (((Boolean) function2.invoke(Integer.valueOf(i2), Character.valueOf(charAt))).booleanValue()) {
                stringBuilder.append(charAt);
            }
            i++;
            i2 = i3;
        }
        return (CharSequence) stringBuilder;
    }

    public static final String filterIndexed(String str, Function2<? super Integer, ? super Character, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, "predicate");
        CharSequence charSequence = str;
        Appendable stringBuilder = new StringBuilder();
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            int i3 = i2 + 1;
            if (((Boolean) function2.invoke(Integer.valueOf(i2), Character.valueOf(charAt))).booleanValue()) {
                stringBuilder.append(charAt);
            }
            i++;
            i2 = i3;
        }
        str = ((StringBuilder) stringBuilder).toString();
        Intrinsics.checkExpressionValueIsNotNull(str, "filterIndexedTo(StringBu…(), predicate).toString()");
        return str;
    }

    public static final CharSequence filterNot(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        Appendable stringBuilder = new StringBuilder();
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            if (!((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                stringBuilder.append(charAt);
            }
        }
        return (CharSequence) stringBuilder;
    }

    public static final String filterNot(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        CharSequence charSequence = str;
        Appendable stringBuilder = new StringBuilder();
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            if (!((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                stringBuilder.append(charAt);
            }
        }
        str = ((StringBuilder) stringBuilder).toString();
        Intrinsics.checkExpressionValueIsNotNull(str, "filterNotTo(StringBuilder(), predicate).toString()");
        return str;
    }

    public static final <C extends Appendable> C filterNotTo(CharSequence charSequence, C c, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            if (!((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                c.append(charAt);
            }
        }
        return c;
    }

    public static final <C extends Appendable> C filterTo(CharSequence charSequence, C c, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                c.append(charAt);
            }
        }
        return c;
    }

    public static final CharSequence slice(CharSequence charSequence, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(intRange, "indices");
        if (intRange.isEmpty()) {
            return "";
        }
        return StringsKt__StringsKt.subSequence(charSequence, intRange);
    }

    public static final String slice(String str, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(intRange, "indices");
        if (intRange.isEmpty()) {
            return "";
        }
        return StringsKt__StringsKt.substring(str, intRange);
    }

    public static final CharSequence slice(CharSequence charSequence, Iterable<Integer> iterable) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(iterable, "indices");
        int collectionSizeOrDefault$251b5948 = CollectionsKt__IterablesKt.collectionSizeOrDefault$251b5948(iterable);
        if (collectionSizeOrDefault$251b5948 == 0) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder(collectionSizeOrDefault$251b5948);
        for (Number intValue : iterable) {
            stringBuilder.append(charSequence.charAt(intValue.intValue()));
        }
        return stringBuilder;
    }

    private static final String slice(String str, Iterable<Integer> iterable) {
        if (str != null) {
            return slice((CharSequence) str, (Iterable) iterable).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public static final CharSequence take(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if ((i >= 0 ? 1 : 0) == 0) {
            charSequence = new StringBuilder("Requested character count ");
            charSequence.append(i);
            charSequence.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
        }
        int length = charSequence.length();
        if (i > length) {
            i = length;
        }
        return charSequence.subSequence(0, i);
    }

    public static final String take(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        if ((i >= 0 ? 1 : 0) == 0) {
            str = new StringBuilder("Requested character count ");
            str.append(i);
            str.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(str.toString().toString()));
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        str = str.substring(0, i);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static final CharSequence takeLast(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if ((i >= 0 ? 1 : null) == null) {
            charSequence = new StringBuilder("Requested character count ");
            charSequence.append(i);
            charSequence.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
        }
        int length = charSequence.length();
        if (i > length) {
            i = length;
        }
        return charSequence.subSequence(length - i, length);
    }

    public static final String takeLast(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        if ((i >= 0 ? 1 : null) == null) {
            str = new StringBuilder("Requested character count ");
            str.append(i);
            str.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(str.toString().toString()));
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        str = str.substring(length - i);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).substring(startIndex)");
        return str;
    }

    public static final CharSequence takeLastWhile(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        for (int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence); lastIndex >= 0; lastIndex--) {
            if (!((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(lastIndex)))).booleanValue()) {
                return charSequence.subSequence(lastIndex + 1, charSequence.length());
            }
        }
        return charSequence.subSequence(null, charSequence.length());
    }

    public static final String takeLastWhile(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int lastIndex = StringsKt__StringsKt.getLastIndex(str);
        while (lastIndex >= 0) {
            if (((Boolean) function1.invoke(Character.valueOf(str.charAt(lastIndex)))).booleanValue()) {
                lastIndex--;
            } else {
                str = str.substring(lastIndex + 1);
                Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).substring(startIndex)");
                return str;
            }
        }
        return str;
    }

    public static final CharSequence takeWhile(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i)))).booleanValue()) {
                return charSequence.subSequence(0, i);
            }
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    public static final String takeWhile(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (((Boolean) function1.invoke(Character.valueOf(str.charAt(i)))).booleanValue()) {
                i++;
            } else {
                str = str.substring(0, i);
                Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                return str;
            }
        }
        return str;
    }

    public static final CharSequence reversed(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        charSequence = new StringBuilder(charSequence).reverse();
        Intrinsics.checkExpressionValueIsNotNull(charSequence, "StringBuilder(this).reverse()");
        return charSequence;
    }

    private static final String reversed(String str) {
        if (str != null) {
            return reversed((CharSequence) str).toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public static final <K, V> Map<K, V> associate(CharSequence charSequence, Function1<? super Character, ? extends Pair<? extends K, ? extends V>> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        int length = charSequence.length();
        length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if (length < 16) {
            length = 16;
        }
        Map<K, V> linkedHashMap = new LinkedHashMap(length);
        for (length = 0; length < charSequence.length(); length++) {
            Pair pair = (Pair) function1.invoke(Character.valueOf(charSequence.charAt(length)));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    public static final <K> Map<K, Character> associateBy(CharSequence charSequence, Function1<? super Character, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        int length = charSequence.length();
        length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if (length < 16) {
            length = 16;
        }
        Map<K, Character> linkedHashMap = new LinkedHashMap(length);
        for (length = 0; length < charSequence.length(); length++) {
            char charAt = charSequence.charAt(length);
            linkedHashMap.put(function1.invoke(Character.valueOf(charAt)), Character.valueOf(charAt));
        }
        return linkedHashMap;
    }

    public static final <K, V> Map<K, V> associateBy(CharSequence charSequence, Function1<? super Character, ? extends K> function1, Function1<? super Character, ? extends V> function12) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Intrinsics.checkParameterIsNotNull(function12, "valueTransform");
        int length = charSequence.length();
        length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if (length < 16) {
            length = 16;
        }
        Map<K, V> linkedHashMap = new LinkedHashMap(length);
        for (length = 0; length < charSequence.length(); length++) {
            char charAt = charSequence.charAt(length);
            linkedHashMap.put(function1.invoke(Character.valueOf(charAt)), function12.invoke(Character.valueOf(charAt)));
        }
        return linkedHashMap;
    }

    public static final <K, M extends Map<? super K, ? super Character>> M associateByTo(CharSequence charSequence, M m, Function1<? super Character, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(m, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            m.put(function1.invoke(Character.valueOf(charAt)), Character.valueOf(charAt));
        }
        return m;
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M associateByTo(CharSequence charSequence, M m, Function1<? super Character, ? extends K> function1, Function1<? super Character, ? extends V> function12) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(m, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Intrinsics.checkParameterIsNotNull(function12, "valueTransform");
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            m.put(function1.invoke(Character.valueOf(charAt)), function12.invoke(Character.valueOf(charAt)));
        }
        return m;
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M associateTo(CharSequence charSequence, M m, Function1<? super Character, ? extends Pair<? extends K, ? extends V>> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(m, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        for (int i = 0; i < charSequence.length(); i++) {
            Pair pair = (Pair) function1.invoke(Character.valueOf(charSequence.charAt(i)));
            m.put(pair.getFirst(), pair.getSecond());
        }
        return m;
    }

    public static final <C extends Collection<? super Character>> C toCollection(CharSequence charSequence, C c) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        for (int i = 0; i < charSequence.length(); i++) {
            c.add(Character.valueOf(charSequence.charAt(i)));
        }
        return c;
    }

    public static final HashSet<Character> toHashSet(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        int length = charSequence.length();
        length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        return (HashSet) toCollection(charSequence, new HashSet(length));
    }

    public static final List<Character> toList(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        switch (charSequence.length()) {
            case 0:
                return CollectionsKt__CollectionsKt.emptyList();
            case 1:
                return CollectionsKt__CollectionsKt.listOf((Object) Character.valueOf(charSequence.charAt(0)));
            default:
                return toMutableList(charSequence);
        }
    }

    public static final List<Character> toMutableList(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return (List) toCollection(charSequence, new ArrayList(charSequence.length()));
    }

    public static final Set<Character> toSet(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        switch (charSequence.length()) {
            case 0:
                return (Set) EmptySet.INSTANCE;
            case 1:
                charSequence = Collections.singleton(Character.valueOf(charSequence.charAt(0)));
                Intrinsics.checkExpressionValueIsNotNull(charSequence, "java.util.Collections.singleton(element)");
                return charSequence;
            default:
                int length = charSequence.length();
                length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                return (Set) toCollection(charSequence, new LinkedHashSet(length));
        }
    }

    public static final SortedSet<Character> toSortedSet(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return (SortedSet) toCollection(charSequence, new TreeSet());
    }

    public static final <R> List<R> flatMap(CharSequence charSequence, Function1<? super Character, ? extends Iterable<? extends R>> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        Collection arrayList = new ArrayList();
        for (int i = 0; i < charSequence.length(); i++) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, (Iterable) function1.invoke(Character.valueOf(charSequence.charAt(i))));
        }
        return (List) arrayList;
    }

    public static final <R, C extends Collection<? super R>> C flatMapTo(CharSequence charSequence, C c, Function1<? super Character, ? extends Iterable<? extends R>> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        for (int i = 0; i < charSequence.length(); i++) {
            CollectionsKt__MutableCollectionsKt.addAll(c, (Iterable) function1.invoke(Character.valueOf(charSequence.charAt(i))));
        }
        return c;
    }

    public static final <K> Map<K, List<Character>> groupBy(CharSequence charSequence, Function1<? super Character, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Map<K, List<Character>> linkedHashMap = new LinkedHashMap();
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            Object invoke = function1.invoke(Character.valueOf(charAt));
            ArrayList arrayList = linkedHashMap.get(invoke);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(invoke, arrayList);
            }
            arrayList.add(Character.valueOf(charAt));
        }
        return linkedHashMap;
    }

    public static final <K, V> Map<K, List<V>> groupBy(CharSequence charSequence, Function1<? super Character, ? extends K> function1, Function1<? super Character, ? extends V> function12) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Intrinsics.checkParameterIsNotNull(function12, "valueTransform");
        Map<K, List<V>> linkedHashMap = new LinkedHashMap();
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            Object invoke = function1.invoke(Character.valueOf(charAt));
            ArrayList arrayList = linkedHashMap.get(invoke);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(invoke, arrayList);
            }
            arrayList.add(function12.invoke(Character.valueOf(charAt)));
        }
        return linkedHashMap;
    }

    public static final <K, M extends Map<? super K, List<Character>>> M groupByTo(CharSequence charSequence, M m, Function1<? super Character, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(m, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            Object invoke = function1.invoke(Character.valueOf(charAt));
            ArrayList arrayList = m.get(invoke);
            if (arrayList == null) {
                arrayList = new ArrayList();
                m.put(invoke, arrayList);
            }
            arrayList.add(Character.valueOf(charAt));
        }
        return m;
    }

    public static final <K, V, M extends Map<? super K, List<V>>> M groupByTo(CharSequence charSequence, M m, Function1<? super Character, ? extends K> function1, Function1<? super Character, ? extends V> function12) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(m, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Intrinsics.checkParameterIsNotNull(function12, "valueTransform");
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            Object invoke = function1.invoke(Character.valueOf(charAt));
            ArrayList arrayList = m.get(invoke);
            if (arrayList == null) {
                arrayList = new ArrayList();
                m.put(invoke, arrayList);
            }
            arrayList.add(function12.invoke(Character.valueOf(charAt)));
        }
        return m;
    }

    public static final <K> OnLoadCompleteListener<Character, K> groupingBy$83ff9bb(CharSequence charSequence, Function1<? super Character, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        return new StringsKt___StringsKt$groupingBy$1(charSequence, function1);
    }

    public static final <R> List<R> map(CharSequence charSequence, Function1<? super Character, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        Collection arrayList = new ArrayList(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            arrayList.add(function1.invoke(Character.valueOf(charSequence.charAt(i))));
        }
        return (List) arrayList;
    }

    public static final <R> List<R> mapIndexed(CharSequence charSequence, Function2<? super Integer, ? super Character, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        Collection arrayList = new ArrayList(charSequence.length());
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            Integer valueOf = Integer.valueOf(i2);
            i2++;
            arrayList.add(function2.invoke(valueOf, Character.valueOf(charAt)));
            i++;
        }
        return (List) arrayList;
    }

    public static final <R> List<R> mapIndexedNotNull(CharSequence charSequence, Function2<? super Integer, ? super Character, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        Collection arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            int i3 = i2 + 1;
            Object invoke = function2.invoke(Integer.valueOf(i2), Character.valueOf(charSequence.charAt(i)));
            if (invoke != null) {
                arrayList.add(invoke);
            }
            i++;
            i2 = i3;
        }
        return (List) arrayList;
    }

    public static final <R, C extends Collection<? super R>> C mapIndexedTo(CharSequence charSequence, C c, Function2<? super Integer, ? super Character, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            Integer valueOf = Integer.valueOf(i2);
            i2++;
            c.add(function2.invoke(valueOf, Character.valueOf(charAt)));
            i++;
        }
        return c;
    }

    public static final <R> List<R> mapNotNull(CharSequence charSequence, Function1<? super Character, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        Collection arrayList = new ArrayList();
        for (int i = 0; i < charSequence.length(); i++) {
            Object invoke = function1.invoke(Character.valueOf(charSequence.charAt(i)));
            if (invoke != null) {
                arrayList.add(invoke);
            }
        }
        return (List) arrayList;
    }

    public static final <R, C extends Collection<? super R>> C mapTo(CharSequence charSequence, C c, Function1<? super Character, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        for (int i = 0; i < charSequence.length(); i++) {
            c.add(function1.invoke(Character.valueOf(charSequence.charAt(i))));
        }
        return c;
    }

    public static final Iterable<IndexedValue<Character>> withIndex(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return new IndexingIterable(new StringsKt___StringsKt$withIndex$1(charSequence));
    }

    public static final boolean all(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        for (int i = 0; i < charSequence.length(); i++) {
            if (!((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i)))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final boolean any(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return (charSequence.length() == null ? 1 : null) == null;
    }

    public static final boolean any(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        for (int i = 0; i < charSequence.length(); i++) {
            if (((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i)))).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    private static final int count(CharSequence charSequence) {
        return charSequence.length();
    }

    public static final int count(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            if (((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i)))).booleanValue()) {
                i2++;
            }
            i++;
        }
        return i2;
    }

    public static final <R> R fold(CharSequence charSequence, R r, Function2<? super R, ? super Character, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        for (int i = 0; i < charSequence.length(); i++) {
            r = function2.invoke(r, Character.valueOf(charSequence.charAt(i)));
        }
        return r;
    }

    public static final <R> R foldIndexed(CharSequence charSequence, R r, Function3<? super Integer, ? super R, ? super Character, ? extends R> function3) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function3, "operation");
        int i = 0;
        R r2 = r;
        r = null;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            Integer valueOf = Integer.valueOf(r);
            r++;
            r2 = function3.invoke(valueOf, r2, Character.valueOf(charAt));
            i++;
        }
        return r2;
    }

    public static final <R> R foldRight(CharSequence charSequence, R r, Function2<? super Character, ? super R, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        while (lastIndex >= 0) {
            int i = lastIndex - 1;
            r = function2.invoke(Character.valueOf(charSequence.charAt(lastIndex)), r);
            lastIndex = i;
        }
        return r;
    }

    public static final <R> R foldRightIndexed(CharSequence charSequence, R r, Function3<? super Integer, ? super Character, ? super R, ? extends R> function3) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function3, "operation");
        for (int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence); lastIndex >= 0; lastIndex--) {
            r = function3.invoke(Integer.valueOf(lastIndex), Character.valueOf(charSequence.charAt(lastIndex)), r);
        }
        return r;
    }

    public static final void forEach(CharSequence charSequence, Function1<? super Character, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, NativeProtocol.WEB_DIALOG_ACTION);
        for (int i = 0; i < charSequence.length(); i++) {
            function1.invoke(Character.valueOf(charSequence.charAt(i)));
        }
    }

    public static final void forEachIndexed(CharSequence charSequence, Function2<? super Integer, ? super Character, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, NativeProtocol.WEB_DIALOG_ACTION);
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            Integer valueOf = Integer.valueOf(i2);
            i2++;
            function2.invoke(valueOf, Character.valueOf(charAt));
            i++;
        }
    }

    public static final Character max(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        int i = 1;
        if ((charSequence.length() == 0 ? 1 : 0) != 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex > 0) {
            while (true) {
                char charAt2 = charSequence.charAt(i);
                if (charAt < charAt2) {
                    charAt = charAt2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(charAt);
    }

    public static final <R extends Comparable<? super R>> Character maxBy(CharSequence charSequence, Function1<? super Character, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        int i = 1;
        if ((charSequence.length() == 0 ? 1 : 0) != 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        Comparable comparable = (Comparable) function1.invoke(Character.valueOf(charAt));
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex > 0) {
            while (true) {
                char charAt2 = charSequence.charAt(i);
                Comparable comparable2 = (Comparable) function1.invoke(Character.valueOf(charAt2));
                if (comparable.compareTo(comparable2) < 0) {
                    charAt = charAt2;
                    comparable = comparable2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(charAt);
    }

    public static final Character maxWith(CharSequence charSequence, Comparator<? super Character> comparator) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        int i = 1;
        if ((charSequence.length() == 0 ? 1 : 0) != 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex > 0) {
            while (true) {
                char charAt2 = charSequence.charAt(i);
                if (comparator.compare(Character.valueOf(charAt), Character.valueOf(charAt2)) < 0) {
                    charAt = charAt2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(charAt);
    }

    public static final Character min(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        int i = 1;
        if ((charSequence.length() == 0 ? 1 : 0) != 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex > 0) {
            while (true) {
                char charAt2 = charSequence.charAt(i);
                if (charAt > charAt2) {
                    charAt = charAt2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(charAt);
    }

    public static final <R extends Comparable<? super R>> Character minBy(CharSequence charSequence, Function1<? super Character, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        int i = 1;
        if ((charSequence.length() == 0 ? 1 : 0) != 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        Comparable comparable = (Comparable) function1.invoke(Character.valueOf(charAt));
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex > 0) {
            while (true) {
                char charAt2 = charSequence.charAt(i);
                Comparable comparable2 = (Comparable) function1.invoke(Character.valueOf(charAt2));
                if (comparable.compareTo(comparable2) > 0) {
                    charAt = charAt2;
                    comparable = comparable2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(charAt);
    }

    public static final Character minWith(CharSequence charSequence, Comparator<? super Character> comparator) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        int i = 1;
        if ((charSequence.length() == 0 ? 1 : 0) != 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex > 0) {
            while (true) {
                char charAt2 = charSequence.charAt(i);
                if (comparator.compare(Character.valueOf(charAt), Character.valueOf(charAt2)) > 0) {
                    charAt = charAt2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Character.valueOf(charAt);
    }

    public static final boolean none(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return charSequence.length() == null ? true : null;
    }

    public static final boolean none(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        for (int i = 0; i < charSequence.length(); i++) {
            if (((Boolean) function1.invoke(Character.valueOf(charSequence.charAt(i)))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <S extends CharSequence> S onEach(S s, Function1<? super Character, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(s, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, NativeProtocol.WEB_DIALOG_ACTION);
        for (int i = 0; i < s.length(); i++) {
            function1.invoke(Character.valueOf(s.charAt(i)));
        }
        return s;
    }

    public static final char reduce(CharSequence charSequence, Function2<? super Character, ? super Character, Character> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        int i = 1;
        if ((charSequence.length() == 0 ? 1 : 0) != 0) {
            throw ((Throwable) new UnsupportedOperationException("Empty char sequence can't be reduced."));
        }
        char charAt = charSequence.charAt(0);
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex > 0) {
            while (true) {
                charAt = ((Character) function2.invoke(Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i)))).charValue();
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return charAt;
    }

    public static final char reduceIndexed(CharSequence charSequence, Function3<? super Integer, ? super Character, ? super Character, Character> function3) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function3, "operation");
        int i = 1;
        if ((charSequence.length() == 0 ? 1 : 0) != 0) {
            throw ((Throwable) new UnsupportedOperationException("Empty char sequence can't be reduced."));
        }
        char charAt = charSequence.charAt(0);
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex > 0) {
            while (true) {
                charAt = ((Character) function3.invoke(Integer.valueOf(i), Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i)))).charValue();
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return charAt;
    }

    public static final char reduceRight(CharSequence charSequence, Function2<? super Character, ? super Character, Character> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex < 0) {
            throw ((Throwable) new UnsupportedOperationException("Empty char sequence can't be reduced."));
        }
        int i = lastIndex - 1;
        char charAt = charSequence.charAt(lastIndex);
        while (i >= 0) {
            int i2 = i - 1;
            charAt = ((Character) function2.invoke(Character.valueOf(charSequence.charAt(i)), Character.valueOf(charAt))).charValue();
            i = i2;
        }
        return charAt;
    }

    public static final char reduceRightIndexed(CharSequence charSequence, Function3<? super Integer, ? super Character, ? super Character, Character> function3) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function3, "operation");
        int lastIndex = StringsKt__StringsKt.getLastIndex(charSequence);
        if (lastIndex < 0) {
            throw ((Throwable) new UnsupportedOperationException("Empty char sequence can't be reduced."));
        }
        char charAt = charSequence.charAt(lastIndex);
        for (int i = lastIndex - 1; i >= 0; i--) {
            charAt = ((Character) function3.invoke(Integer.valueOf(i), Character.valueOf(charSequence.charAt(i)), Character.valueOf(charAt))).charValue();
        }
        return charAt;
    }

    public static final int sumBy(CharSequence charSequence, Function1<? super Character, Integer> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            i2 += ((Number) function1.invoke(Character.valueOf(charSequence.charAt(i)))).intValue();
            i++;
        }
        return i2;
    }

    public static final double sumByDouble(CharSequence charSequence, Function1<? super Character, Double> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        double d = 0.0d;
        for (int i = 0; i < charSequence.length(); i++) {
            d += ((Number) function1.invoke(Character.valueOf(charSequence.charAt(i)))).doubleValue();
        }
        return d;
    }

    public static final List<String> chunked(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return windowed(charSequence, i, i, true);
    }

    public static final <R> List<R> chunked(CharSequence charSequence, int i, Function1<? super CharSequence, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        return windowed(charSequence, i, i, true, function1);
    }

    public static final Sequence<String> chunkedSequence(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return chunkedSequence(charSequence, i, StringsKt___StringsKt$chunkedSequence$1.INSTANCE);
    }

    public static final <R> Sequence<R> chunkedSequence(CharSequence charSequence, int i, Function1<? super CharSequence, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        return windowedSequence(charSequence, i, i, true, function1);
    }

    public static final Pair<CharSequence, CharSequence> partition(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                stringBuilder.append(charAt);
            } else {
                stringBuilder2.append(charAt);
            }
        }
        return new Pair(stringBuilder, stringBuilder2);
    }

    public static final Pair<String, String> partition(String str, Function1<? super Character, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                stringBuilder.append(charAt);
            } else {
                stringBuilder2.append(charAt);
            }
        }
        return new Pair(stringBuilder.toString(), stringBuilder2.toString());
    }

    public static /* synthetic */ List windowed$default(CharSequence charSequence, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != null) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return windowed(charSequence, i, i2, z);
    }

    public static final List<String> windowed(CharSequence charSequence, int i, int i2, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return windowed(charSequence, i, i2, z, StringsKt___StringsKt$windowed$1.INSTANCE);
    }

    public static /* synthetic */ List windowed$default(CharSequence charSequence, int i, int i2, boolean z, Function1 function1, int i3, Object obj) {
        if ((i3 & 2) != null) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return windowed(charSequence, i, i2, z, function1);
    }

    public static final <R> List<R> windowed(CharSequence charSequence, int i, int i2, boolean z, Function1<? super CharSequence, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        SlidingWindowKt.checkWindowSizeStep(i, i2);
        int length = charSequence.length();
        ArrayList arrayList = new ArrayList(((length + i2) - 1) / i2);
        int i3 = 0;
        while (i3 < length) {
            int i4 = i3 + i;
            if (i4 > length) {
                if (!z) {
                    break;
                }
                i4 = length;
            }
            arrayList.add(function1.invoke(charSequence.subSequence(i3, i4)));
            i3 += i2;
        }
        return arrayList;
    }

    public static /* synthetic */ Sequence windowedSequence$default(CharSequence charSequence, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != null) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return windowedSequence(charSequence, i, i2, z);
    }

    public static final Sequence<String> windowedSequence(CharSequence charSequence, int i, int i2, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        return windowedSequence(charSequence, i, i2, z, StringsKt___StringsKt$windowedSequence$1.INSTANCE);
    }

    public static /* synthetic */ Sequence windowedSequence$default(CharSequence charSequence, int i, int i2, boolean z, Function1 function1, int i3, Object obj) {
        if ((i3 & 2) != null) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return windowedSequence(charSequence, i, i2, z, function1);
    }

    public static final <R> Sequence<R> windowedSequence(CharSequence charSequence, int i, int i2, boolean z, Function1<? super CharSequence, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        SlidingWindowKt.checkWindowSizeStep(i, i2);
        int i3 = 0;
        if (z) {
            z = StringsKt__StringsKt.getIndices(charSequence);
        } else {
            z = (charSequence.length() - i) + true;
            if (z <= true) {
                z = IntRange.Companion;
                z = IntRange.EMPTY;
            } else {
                z = new IntRange(0, z - true);
            }
        }
        IntProgression intProgression = (IntProgression) z;
        Intrinsics.checkParameterIsNotNull(intProgression, "$receiver");
        if (i2 > 0) {
            i3 = 1;
        }
        Number valueOf = Integer.valueOf(i2);
        Intrinsics.checkParameterIsNotNull(valueOf, "step");
        if (i3 == 0) {
            i = new StringBuilder("Step must be positive, was: ");
            i.append(valueOf);
            i.append(46);
            throw ((Throwable) new IllegalArgumentException(i.toString()));
        }
        Companion companion = IntProgression.Companion;
        i3 = intProgression.getFirst();
        int last = intProgression.getLast();
        if (intProgression.getStep() > false) {
            i2 = -i2;
        }
        i2 = CollectionsKt___CollectionsKt.asSequence((Iterable) new IntProgression(i3, last, i2));
        Function1 function12 = (Function1) new StringsKt___StringsKt$windowedSequence$2(charSequence, function1, i);
        Intrinsics.checkParameterIsNotNull(i2, "$receiver");
        Intrinsics.checkParameterIsNotNull(function12, "transform");
        return (Sequence) new TransformingSequence(i2, function12);
    }

    public static final <V> List<V> zip(CharSequence charSequence, CharSequence charSequence2, Function2<? super Character, ? super Character, ? extends V> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, FacebookRequestErrorClassification.KEY_OTHER);
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        int min = Math.min(charSequence.length(), charSequence2.length());
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(function2.invoke(Character.valueOf(charSequence.charAt(i)), Character.valueOf(charSequence2.charAt(i))));
        }
        return arrayList;
    }

    public static final <R> List<R> zipWithNext(CharSequence charSequence, Function2<? super Character, ? super Character, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        int length = charSequence.length() - 1;
        if (length <= 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(length);
        int i = 0;
        while (i < length) {
            i++;
            arrayList.add(function2.invoke(Character.valueOf(charSequence.charAt(i)), Character.valueOf(charSequence.charAt(i))));
        }
        return arrayList;
    }

    public static final Iterable<Character> asIterable(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if (charSequence instanceof String) {
            if ((charSequence.length() == 0 ? 1 : null) != null) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
        }
        return new StringsKt___StringsKt$asIterable$$inlined$Iterable$1(charSequence);
    }

    public static final Sequence<Character> asSequence(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if (charSequence instanceof String) {
            if ((charSequence.length() == 0 ? 1 : null) != null) {
                return SequencesKt__SequencesKt.emptySequence();
            }
        }
        return new StringsKt___StringsKt$asSequence$$inlined$Sequence$1(charSequence);
    }

    private static final Character find(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
                return Character.valueOf(charAt);
            }
        }
        return null;
    }

    private static final Character findLast(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        char charAt;
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                return null;
            }
            charAt = charSequence.charAt(length);
        } while (!((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue());
        return Character.valueOf(charAt);
    }

    public static final <C extends Appendable> C filterIndexedTo(CharSequence charSequence, C c, Function2<? super Integer, ? super Character, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        Intrinsics.checkParameterIsNotNull(function2, "predicate");
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            char charAt = charSequence.charAt(i);
            int i3 = i2 + 1;
            if (((Boolean) function2.invoke(Integer.valueOf(i2), Character.valueOf(charAt))).booleanValue()) {
                c.append(charAt);
            }
            i++;
            i2 = i3;
        }
        return c;
    }

    public static final <R, C extends Collection<? super R>> C mapIndexedNotNullTo(CharSequence charSequence, C c, Function2<? super Integer, ? super Character, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            int i3 = i2 + 1;
            Object invoke = function2.invoke(Integer.valueOf(i2), Character.valueOf(charSequence.charAt(i)));
            if (invoke != null) {
                c.add(invoke);
            }
            i++;
            i2 = i3;
        }
        return c;
    }

    public static final <R, C extends Collection<? super R>> C mapNotNullTo(CharSequence charSequence, C c, Function1<? super Character, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        for (int i = 0; i < charSequence.length(); i++) {
            Object invoke = function1.invoke(Character.valueOf(charSequence.charAt(i)));
            if (invoke != null) {
                c.add(invoke);
            }
        }
        return c;
    }

    public static final List<Pair<Character, Character>> zip(CharSequence charSequence, CharSequence charSequence2) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, FacebookRequestErrorClassification.KEY_OTHER);
        int min = Math.min(charSequence.length(), charSequence2.length());
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(new Pair(Character.valueOf(charSequence.charAt(i)), Character.valueOf(charSequence2.charAt(i))));
        }
        return arrayList;
    }

    public static final List<Pair<Character, Character>> zipWithNext(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        int length = charSequence.length() - 1;
        if (length <= 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(length);
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            i++;
            arrayList.add(new Pair(Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i))));
        }
        return arrayList;
    }
}
