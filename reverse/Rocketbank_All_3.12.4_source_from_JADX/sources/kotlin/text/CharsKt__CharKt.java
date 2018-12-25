package kotlin.text;

/* compiled from: Char.kt */
class CharsKt__CharKt extends CharsKt__CharJVMKt {
    public static final boolean isSurrogate(char c) {
        if ('?' <= c) {
            if ('?' >= c) {
                return true;
            }
        }
        return false;
    }

    private static final String plus(char c, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(String.valueOf(c));
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public static /* synthetic */ boolean equals$default(char c, char c2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return equals(c, c2, z);
    }

    public static final boolean equals(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (z) {
            return Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
        } else {
            return false;
        }
    }
}
