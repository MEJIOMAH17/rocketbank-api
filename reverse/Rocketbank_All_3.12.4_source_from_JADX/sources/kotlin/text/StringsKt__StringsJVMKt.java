package kotlin.text;

import com.facebook.internal.FacebookRequestErrorClassification;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.TypeCastException;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.sequences.SequencesKt___SequencesKt;

/* compiled from: StringsJVM.kt */
class StringsKt__StringsJVMKt extends StringsKt__StringNumberConversionsKt {
    private static final int nativeIndexOf(String str, char c, int i) {
        if (str != null) {
            return str.indexOf(c, i);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    private static final int nativeIndexOf(String str, String str2, int i) {
        if (str != null) {
            return str.indexOf(str2, i);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    private static final int nativeLastIndexOf(String str, char c, int i) {
        if (str != null) {
            return str.lastIndexOf(c, i);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    private static final int nativeLastIndexOf(String str, String str2, int i) {
        if (str != null) {
            return str.lastIndexOf(str2, i);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    public static /* synthetic */ boolean equals$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return equals(str, str2, z);
    }

    public static final boolean equals(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null ? true : null;
        } else {
            if (z) {
                return str.equalsIgnoreCase(str2);
            }
            return str.equals(str2);
        }
    }

    public static /* synthetic */ String replace$default(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return replace(str, c, c2, z);
    }

    public static final String replace(String str, char c, char c2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        if (z) {
            return SequencesKt___SequencesKt.joinToString$default$5488afc2$3cafef9e(StringsKt__StringsKt.splitToSequence$default((CharSequence) str, new char[]{c}, z, 0, 4, null), String.valueOf(c2));
        }
        str = str.replace(c, c2);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…replace(oldChar, newChar)");
        return str;
    }

    public static /* synthetic */ String replace$default(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return replace(str, str2, str3, z);
    }

    public static final String replace(String str, String str2, String str3, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "oldValue");
        Intrinsics.checkParameterIsNotNull(str3, "newValue");
        return SequencesKt___SequencesKt.joinToString$default$5488afc2$3cafef9e(StringsKt__StringsKt.splitToSequence$default((CharSequence) str, new String[]{str2}, z, 0, 4, null), str3);
    }

    public static /* synthetic */ String replaceFirst$default(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return replaceFirst(str, c, c2, z);
    }

    public static final String replaceFirst(String str, char c, char c2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        CharSequence charSequence = str;
        c = StringsKt__StringsKt.indexOf$default(charSequence, c, 0, z, 2, null);
        if (c < '\u0000') {
            return str;
        }
        return StringsKt__StringsKt.replaceRange(charSequence, (int) c, (int) c + 1, (CharSequence) String.valueOf(c2)).toString();
    }

    public static /* synthetic */ String replaceFirst$default(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return replaceFirst(str, str2, str3, z);
    }

    public static final String replaceFirst(String str, String str2, String str3, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "oldValue");
        Intrinsics.checkParameterIsNotNull(str3, "newValue");
        CharSequence charSequence = str;
        z = StringsKt__StringsKt.indexOf$default(charSequence, str2, 0, z, 2, null);
        if (z >= false) {
            return str;
        }
        return StringsKt__StringsKt.replaceRange(charSequence, (int) z, (int) str2.length() + z, (CharSequence) str3).toString();
    }

    private static final String toUpperCase(String str) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toUpperCase()");
        return str;
    }

    private static final String toLowerCase(String str) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toLowerCase()");
        return str;
    }

    private static final char[] toCharArray(String str) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.toCharArray();
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toCharArray()");
        return str;
    }

    static /* synthetic */ char[] toCharArray$default(String str, char[] cArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != null) {
            i = 0;
        }
        if ((i4 & 4) != null) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = str.length();
        }
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str.getChars(i2, i3, cArr, i);
        return cArr;
    }

    private static final char[] toCharArray(String str, char[] cArr, int i, int i2, int i3) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str.getChars(i2, i3, cArr, i);
        return cArr;
    }

    private static final String format(String str, Object... objArr) {
        str = String.format(str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(this, *args)");
        return str;
    }

    private static final String format(StringCompanionObject stringCompanionObject, String str, Object... objArr) {
        stringCompanionObject = String.format(str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(stringCompanionObject, "java.lang.String.format(format, *args)");
        return stringCompanionObject;
    }

    private static final String format(String str, Locale locale, Object... objArr) {
        str = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, this, *args)");
        return str;
    }

    private static final String format(StringCompanionObject stringCompanionObject, Locale locale, String str, Object... objArr) {
        stringCompanionObject = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(stringCompanionObject, "java.lang.String.format(locale, format, *args)");
        return stringCompanionObject;
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, Pattern pattern, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return split(charSequence, pattern, i);
    }

    public static final List<String> split(CharSequence charSequence, Pattern pattern, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(pattern, "regex");
        if ((i >= 0 ? 1 : null) == null) {
            charSequence = new StringBuilder("Limit must be non-negative, but was ");
            charSequence.append(i);
            charSequence.append('.');
            throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
        }
        if (i == 0) {
            i = -1;
        }
        charSequence = pattern.split(charSequence, i);
        Intrinsics.checkExpressionValueIsNotNull(charSequence, "regex.split(this, if (limit == 0) -1 else limit)");
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        charSequence = Arrays.asList(charSequence);
        Intrinsics.checkExpressionValueIsNotNull(charSequence, "ArraysUtilJVM.asList(this)");
        return charSequence;
    }

    private static final String substring(String str, int i) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.substring(i);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).substring(startIndex)");
        return str;
    }

    private static final String substring(String str, int i, int i2) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.substring(i, i2);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return str;
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return startsWith(str, str2, z);
    }

    public static final boolean startsWith(String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "prefix");
        if (!z) {
            return str.startsWith(str2);
        }
        return regionMatches(str, 0, str2, 0, str2.length(), z);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return startsWith(str, str2, i, z);
    }

    public static final boolean startsWith(String str, String str2, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "prefix");
        if (!z) {
            return str.startsWith(str2, i);
        }
        return regionMatches(str, i, str2, 0, str2.length(), z);
    }

    public static /* synthetic */ boolean endsWith$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return endsWith(str, str2, z);
    }

    public static final boolean endsWith(String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, "suffix");
        if (!z) {
            return str.endsWith(str2);
        }
        return regionMatches(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    private static final String String(byte[] bArr, int i, int i2, Charset charset) {
        return new String(bArr, i, i2, charset);
    }

    private static final String String(byte[] bArr, Charset charset) {
        return new String(bArr, charset);
    }

    private static final String String(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charsets.UTF_8);
    }

    private static final String String(byte[] bArr) {
        return new String(bArr, Charsets.UTF_8);
    }

    private static final String String(char[] cArr) {
        return new String(cArr);
    }

    private static final String String(char[] cArr, int i, int i2) {
        return new String(cArr, i, i2);
    }

    private static final String String(int[] iArr, int i, int i2) {
        return new String(iArr, i, i2);
    }

    private static final String String(StringBuffer stringBuffer) {
        return new String(stringBuffer);
    }

    private static final String String(StringBuilder stringBuilder) {
        return new String(stringBuilder);
    }

    private static final int codePointAt(String str, int i) {
        if (str != null) {
            return str.codePointAt(i);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    private static final int codePointBefore(String str, int i) {
        if (str != null) {
            return str.codePointBefore(i);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    private static final int codePointCount(String str, int i, int i2) {
        if (str != null) {
            return str.codePointCount(i, i2);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    public static /* synthetic */ int compareTo$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return compareTo(str, str2, z);
    }

    public static final int compareTo(String str, String str2, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, FacebookRequestErrorClassification.KEY_OTHER);
        if (z) {
            return str.compareToIgnoreCase(str2);
        }
        return str.compareTo(str2);
    }

    private static final boolean contentEquals(String str, CharSequence charSequence) {
        if (str != null) {
            return str.contentEquals(charSequence);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    private static final boolean contentEquals(String str, StringBuffer stringBuffer) {
        if (str != null) {
            return str.contentEquals(stringBuffer);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    private static final String intern(String str) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.intern();
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).intern()");
        return str;
    }

    public static final boolean isBlank(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        if (charSequence.length() != 0) {
            Iterable indices = StringsKt__StringsKt.getIndices(charSequence);
            if (!((indices instanceof Collection) && ((Collection) indices).isEmpty())) {
                Iterator it = indices.iterator();
                while (it.hasNext()) {
                    if (!CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(((IntIterator) it).nextInt()))) {
                        charSequence = null;
                        break;
                    }
                }
            }
            charSequence = 1;
            if (charSequence == null) {
                return false;
            }
        }
        return true;
    }

    private static final int offsetByCodePoints(String str, int i, int i2) {
        if (str != null) {
            return str.offsetByCodePoints(i, i2);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    public static /* synthetic */ boolean regionMatches$default(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            z = false;
        }
        return regionMatches(charSequence, i, charSequence2, i2, i3, z);
    }

    public static final boolean regionMatches(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence2, FacebookRequestErrorClassification.KEY_OTHER);
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            return StringsKt__StringsKt.regionMatchesImpl(charSequence, i, charSequence2, i2, i3, z);
        }
        return regionMatches((String) charSequence, i, (String) charSequence2, i2, i3, z);
    }

    public static /* synthetic */ boolean regionMatches$default(String str, int i, String str2, int i2, int i3, boolean z, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            z = false;
        }
        return regionMatches(str, i, str2, i2, i3, z);
    }

    public static final boolean regionMatches(String str, int i, String str2, int i2, int i3, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        Intrinsics.checkParameterIsNotNull(str2, FacebookRequestErrorClassification.KEY_OTHER);
        if (z) {
            return str.regionMatches(z, i, str2, i2, i3);
        }
        return str.regionMatches(i, str2, i2, i3);
    }

    private static final String toLowerCase(String str, Locale locale) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.toLowerCase(locale);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toLowerCase(locale)");
        return str;
    }

    private static final String toUpperCase(String str, Locale locale) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.toUpperCase(locale);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toUpperCase(locale)");
        return str;
    }

    private static final byte[] toByteArray(String str, Charset charset) {
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.getBytes(charset);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).getBytes(charset)");
        return str;
    }

    static /* synthetic */ byte[] toByteArray$default(String str, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        str = str.getBytes(charset);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).getBytes(charset)");
        return str;
    }

    private static final Pattern toPattern(String str, int i) {
        str = Pattern.compile(str, i);
        Intrinsics.checkExpressionValueIsNotNull(str, "java.util.regex.Pattern.compile(this, flags)");
        return str;
    }

    public static final String capitalize(String str) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        if ((((CharSequence) str).length() > 0 ? 1 : 0) == 0 || !Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        String substring = str.substring(0, 1);
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        if (substring == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        substring = substring.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.String).toUpperCase()");
        stringBuilder.append(substring);
        str = str.substring(1);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).substring(startIndex)");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public static final String decapitalize(String str) {
        Intrinsics.checkParameterIsNotNull(str, "$receiver");
        if ((((CharSequence) str).length() > 0 ? 1 : 0) == 0 || !Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        String substring = str.substring(0, 1);
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        if (substring == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        substring = substring.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.String).toLowerCase()");
        stringBuilder.append(substring);
        str = str.substring(1);
        Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).substring(startIndex)");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public static final String repeat(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        int i2 = 0;
        int i3 = 1;
        if ((i >= 0 ? 1 : 0) == 0) {
            charSequence = new StringBuilder("Count 'n' must be non-negative, but was ");
            charSequence.append(i);
            charSequence.append(46);
            throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
        }
        switch (i) {
            case 0:
                return "";
            case 1:
                return charSequence.toString();
            default:
                switch (charSequence.length()) {
                    case 0:
                        return "";
                    case 1:
                        charSequence = charSequence.charAt(0);
                        char[] cArr = new char[i];
                        while (i2 < i) {
                            cArr[i2] = charSequence;
                            i2++;
                        }
                        return new String(cArr);
                    default:
                        StringBuilder stringBuilder = new StringBuilder(charSequence.length() * i);
                        if (i > 0) {
                            while (true) {
                                stringBuilder.append(charSequence);
                                if (i3 != i) {
                                    i3++;
                                }
                            }
                        }
                        charSequence = stringBuilder.toString();
                        Intrinsics.checkExpressionValueIsNotNull(charSequence, "sb.toString()");
                        return charSequence;
                }
        }
    }

    public static final Comparator<String> getCASE_INSENSITIVE_ORDER(StringCompanionObject stringCompanionObject) {
        Intrinsics.checkParameterIsNotNull(stringCompanionObject, "$receiver");
        stringCompanionObject = String.CASE_INSENSITIVE_ORDER;
        Intrinsics.checkExpressionValueIsNotNull(stringCompanionObject, "java.lang.String.CASE_INSENSITIVE_ORDER");
        return stringCompanionObject;
    }

    static /* synthetic */ Pattern toPattern$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        str = Pattern.compile(str, i);
        Intrinsics.checkExpressionValueIsNotNull(str, "java.util.regex.Pattern.compile(this, flags)");
        return str;
    }
}
