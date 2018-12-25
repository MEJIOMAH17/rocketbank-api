package kotlin.text;

/* compiled from: StringNumberConversions.kt */
final class ScreenFloatValueRegEx {
    public static final ScreenFloatValueRegEx INSTANCE = new ScreenFloatValueRegEx();
    public static final Regex value;

    static {
        String str = "(\\p{Digit}+)";
        String str2 = "(\\p{XDigit}+)";
        String concat = "[eE][+-]?".concat(String.valueOf(str));
        StringBuilder stringBuilder = new StringBuilder("(0[xX]");
        stringBuilder.append(str2);
        stringBuilder.append("(\\.)?)|(0[xX]");
        stringBuilder.append(str2);
        stringBuilder.append("?(\\.)");
        stringBuilder.append(str2);
        stringBuilder.append(')');
        String stringBuilder2 = stringBuilder.toString();
        StringBuilder stringBuilder3 = new StringBuilder("(");
        stringBuilder3.append(str);
        stringBuilder3.append("(\\.)?(");
        stringBuilder3.append(str);
        stringBuilder3.append("?)(");
        stringBuilder3.append(concat);
        stringBuilder3.append(")?)|(\\.(");
        stringBuilder3.append(str);
        stringBuilder3.append(")(");
        stringBuilder3.append(concat);
        stringBuilder3.append(")?)|((");
        stringBuilder3.append(stringBuilder2);
        stringBuilder3.append(")[pP][+-]?");
        stringBuilder3.append(str);
        stringBuilder3.append(')');
        str = stringBuilder3.toString();
        StringBuilder stringBuilder4 = new StringBuilder("[\\x00-\\x20]*[+-]?(NaN|Infinity|((");
        stringBuilder4.append(str);
        stringBuilder4.append(")[fFdD]?))[\\x00-\\x20]*");
        value = new Regex(stringBuilder4.toString());
    }

    private ScreenFloatValueRegEx() {
    }
}
