package kotlin.text;

import kotlin.ranges.IntRange;

/* compiled from: CharJVM.kt */
class CharsKt__CharJVMKt {
    private static final boolean isDefined(char c) {
        return Character.isDefined(c);
    }

    private static final boolean isLetter(char c) {
        return Character.isLetter(c);
    }

    private static final boolean isLetterOrDigit(char c) {
        return Character.isLetterOrDigit(c);
    }

    private static final boolean isDigit(char c) {
        return Character.isDigit(c);
    }

    private static final boolean isIdentifierIgnorable(char c) {
        return Character.isIdentifierIgnorable(c);
    }

    private static final boolean isISOControl(char c) {
        return Character.isISOControl(c);
    }

    private static final boolean isJavaIdentifierPart(char c) {
        return Character.isJavaIdentifierPart(c);
    }

    private static final boolean isJavaIdentifierStart(char c) {
        return Character.isJavaIdentifierStart(c);
    }

    public static final boolean isWhitespace(char c) {
        if (!Character.isWhitespace(c)) {
            if (Character.isSpaceChar(c) == '\u0000') {
                return false;
            }
        }
        return true;
    }

    private static final boolean isUpperCase(char c) {
        return Character.isUpperCase(c);
    }

    private static final boolean isLowerCase(char c) {
        return Character.isLowerCase(c);
    }

    private static final char toUpperCase(char c) {
        return Character.toUpperCase(c);
    }

    private static final char toLowerCase(char c) {
        return Character.toLowerCase(c);
    }

    private static final boolean isTitleCase(char c) {
        return Character.isTitleCase(c);
    }

    private static final char toTitleCase(char c) {
        return Character.toTitleCase(c);
    }

    public static final CharCategory getCategory(char c) {
        return CharCategory.Companion.valueOf(Character.getType(c));
    }

    public static final CharDirectionality getDirectionality(char c) {
        return CharDirectionality.Companion.valueOf(Character.getDirectionality(c));
    }

    private static final boolean isHighSurrogate(char c) {
        return Character.isHighSurrogate(c);
    }

    private static final boolean isLowSurrogate(char c) {
        return Character.isLowSurrogate(c);
    }

    public static final int digitOf(char c, int i) {
        return Character.digit(c, i);
    }

    public static final int checkRadix(int i) {
        if (2 <= i) {
            if (36 >= i) {
                return i;
            }
        }
        StringBuilder stringBuilder = new StringBuilder("radix ");
        stringBuilder.append(i);
        stringBuilder.append(" was not in valid range ");
        stringBuilder.append(new IntRange(2, 36));
        throw new IllegalArgumentException(stringBuilder.toString());
    }
}
