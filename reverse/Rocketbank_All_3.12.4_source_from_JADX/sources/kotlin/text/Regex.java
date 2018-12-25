package kotlin.text;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* compiled from: Regex.kt */
public final class Regex implements Serializable {
    public static final Companion Companion = new Companion();
    private Set<? extends RegexOption> _options;
    private final Pattern nativePattern;

    /* compiled from: Regex.kt */
    public static final class Companion {
        private final int ensureUnicodeCase(int i) {
            return (i & 2) != 0 ? i | 64 : i;
        }

        private Companion() {
        }

        public final Regex fromLiteral(String str) {
            Intrinsics.checkParameterIsNotNull(str, "literal");
            return new Regex(str, RegexOption.LITERAL);
        }

        public final String escape(String str) {
            Intrinsics.checkParameterIsNotNull(str, "literal");
            str = Pattern.quote(str);
            Intrinsics.checkExpressionValueIsNotNull(str, "Pattern.quote(literal)");
            return str;
        }

        public final String escapeReplacement(String str) {
            Intrinsics.checkParameterIsNotNull(str, "literal");
            str = Matcher.quoteReplacement(str);
            Intrinsics.checkExpressionValueIsNotNull(str, "Matcher.quoteReplacement(literal)");
            return str;
        }
    }

    /* compiled from: Regex.kt */
    private static final class Serialized implements Serializable {
        public static final Companion Companion = new Companion();
        private static final long serialVersionUID = 0;
        private final int flags;
        private final String pattern;

        /* compiled from: Regex.kt */
        public static final class Companion {
            private Companion() {
            }
        }

        public Serialized(String str, int i) {
            Intrinsics.checkParameterIsNotNull(str, "pattern");
            this.pattern = str;
            this.flags = i;
        }

        public final int getFlags() {
            return this.flags;
        }

        public final String getPattern() {
            return this.pattern;
        }

        private final Object readResolve() {
            Pattern compile = Pattern.compile(this.pattern, this.flags);
            Intrinsics.checkExpressionValueIsNotNull(compile, "Pattern.compile(pattern, flags)");
            return new Regex(compile);
        }
    }

    public Regex(Pattern pattern) {
        Intrinsics.checkParameterIsNotNull(pattern, "nativePattern");
        this.nativePattern = pattern;
    }

    public Regex(String str) {
        Intrinsics.checkParameterIsNotNull(str, "pattern");
        Pattern compile = Pattern.compile(str);
        Intrinsics.checkExpressionValueIsNotNull(compile, "Pattern.compile(pattern)");
        this(compile);
    }

    public Regex(String str, RegexOption regexOption) {
        Intrinsics.checkParameterIsNotNull(str, "pattern");
        Intrinsics.checkParameterIsNotNull(regexOption, "option");
        Pattern compile = Pattern.compile(str, Companion.ensureUnicodeCase(regexOption.getValue()));
        Intrinsics.checkExpressionValueIsNotNull(compile, "Pattern.compile(pattern,…nicodeCase(option.value))");
        this(compile);
    }

    public Regex(String str, Set<? extends RegexOption> set) {
        Intrinsics.checkParameterIsNotNull(str, "pattern");
        Intrinsics.checkParameterIsNotNull(set, "options");
        Pattern compile = Pattern.compile(str, Companion.ensureUnicodeCase(RegexKt.toInt(set)));
        Intrinsics.checkExpressionValueIsNotNull(compile, "Pattern.compile(pattern,…odeCase(options.toInt()))");
        this(compile);
    }

    public final String getPattern() {
        String pattern = this.nativePattern.pattern();
        Intrinsics.checkExpressionValueIsNotNull(pattern, "nativePattern.pattern()");
        return pattern;
    }

    public final Set<RegexOption> getOptions() {
        Set<RegexOption> set = this._options;
        if (set != null) {
            return set;
        }
        int flags = this.nativePattern.flags();
        EnumSet allOf = EnumSet.allOf(RegexOption.class);
        CollectionsKt__MutableCollectionsKt.retainAll(allOf, new Regex$fromInt$$inlined$apply$lambda$1(flags));
        set = Collections.unmodifiableSet(allOf);
        Intrinsics.checkExpressionValueIsNotNull(set, "Collections.unmodifiable… == it.value }\n        })");
        this._options = set;
        return set;
    }

    public final boolean matches(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        return this.nativePattern.matcher(charSequence).matches();
    }

    public final boolean containsMatchIn(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        return this.nativePattern.matcher(charSequence).find();
    }

    public static /* synthetic */ MatchResult find$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.find(charSequence, i);
    }

    public final MatchResult find(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        Matcher matcher = this.nativePattern.matcher(charSequence);
        Intrinsics.checkExpressionValueIsNotNull(matcher, "nativePattern.matcher(input)");
        return RegexKt.findNext(matcher, i, charSequence);
    }

    public static /* synthetic */ Sequence findAll$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.findAll(charSequence, i);
    }

    public final Sequence<MatchResult> findAll(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        return SequencesKt__SequencesKt.generateSequence(new Regex$findAll$1(this, charSequence, i), (Function1) Regex$findAll$2.INSTANCE);
    }

    public final MatchResult matchEntire(CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        Matcher matcher = this.nativePattern.matcher(charSequence);
        Intrinsics.checkExpressionValueIsNotNull(matcher, "nativePattern.matcher(input)");
        return RegexKt.matchEntire(matcher, charSequence);
    }

    public final String replace(CharSequence charSequence, String str) {
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        Intrinsics.checkParameterIsNotNull(str, "replacement");
        charSequence = this.nativePattern.matcher(charSequence).replaceAll(str);
        Intrinsics.checkExpressionValueIsNotNull(charSequence, "nativePattern.matcher(in…).replaceAll(replacement)");
        return charSequence;
    }

    public final String replace(CharSequence charSequence, Function1<? super MatchResult, ? extends CharSequence> function1) {
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        int i = 0;
        MatchResult find$default = find$default(this, charSequence, 0, 2, null);
        if (find$default == null) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        StringBuilder stringBuilder = new StringBuilder(length);
        do {
            if (find$default == null) {
                Intrinsics.throwNpe();
            }
            stringBuilder.append(charSequence, i, find$default.getRange().getFirst());
            stringBuilder.append((CharSequence) function1.invoke(find$default));
            i = find$default.getRange().getLast() + 1;
            find$default = find$default.next();
            if (i >= length) {
                break;
            }
        } while (find$default != null);
        if (i < length) {
            stringBuilder.append(charSequence, i, length);
        }
        charSequence = stringBuilder.toString();
        Intrinsics.checkExpressionValueIsNotNull(charSequence, "sb.toString()");
        return charSequence;
    }

    public final String replaceFirst(CharSequence charSequence, String str) {
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        Intrinsics.checkParameterIsNotNull(str, "replacement");
        charSequence = this.nativePattern.matcher(charSequence).replaceFirst(str);
        Intrinsics.checkExpressionValueIsNotNull(charSequence, "nativePattern.matcher(in…replaceFirst(replacement)");
        return charSequence;
    }

    public static /* synthetic */ List split$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.split(charSequence, i);
    }

    public final List<String> split(CharSequence charSequence, int i) {
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        if ((i >= 0 ? 1 : null) == null) {
            charSequence = new StringBuilder("Limit must be non-negative, but was ");
            charSequence.append(i);
            charSequence.append(46);
            throw ((Throwable) new IllegalArgumentException(charSequence.toString().toString()));
        }
        Pattern pattern = this.nativePattern;
        if (i == 0) {
            i = -1;
        }
        charSequence = pattern.split(charSequence, i);
        Intrinsics.checkExpressionValueIsNotNull(charSequence, "nativePattern.split(inpu…imit == 0) -1 else limit)");
        Intrinsics.checkParameterIsNotNull(charSequence, "$receiver");
        charSequence = Arrays.asList(charSequence);
        Intrinsics.checkExpressionValueIsNotNull(charSequence, "ArraysUtilJVM.asList(this)");
        return charSequence;
    }

    public final String toString() {
        String pattern = this.nativePattern.toString();
        Intrinsics.checkExpressionValueIsNotNull(pattern, "nativePattern.toString()");
        return pattern;
    }

    public final Pattern toPattern() {
        return this.nativePattern;
    }

    private final Object writeReplace() {
        String pattern = this.nativePattern.pattern();
        Intrinsics.checkExpressionValueIsNotNull(pattern, "nativePattern.pattern()");
        return new Serialized(pattern, this.nativePattern.flags());
    }
}
