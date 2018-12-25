package kotlin.text;

import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: RegexExtensions.kt */
class StringsKt__RegexExtensionsKt extends StringsKt__IndentKt {
    private static final Regex toRegex(String str) {
        return new Regex(str);
    }

    private static final Regex toRegex(String str, RegexOption regexOption) {
        return new Regex(str, regexOption);
    }

    private static final Regex toRegex(String str, Set<? extends RegexOption> set) {
        return new Regex(str, (Set) set);
    }

    private static final Regex toRegex(Pattern pattern) {
        return new Regex(pattern);
    }
}
