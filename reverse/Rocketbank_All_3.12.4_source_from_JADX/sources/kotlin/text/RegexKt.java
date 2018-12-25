package kotlin.text;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: Regex.kt */
public final class RegexKt {
    private static final <T extends Enum<T> & FlagEnum> Set<T> fromInt(int i) {
        Intrinsics.reifiedOperationMarker$4f708078();
        EnumSet allOf = EnumSet.allOf(Enum.class);
        CollectionsKt__MutableCollectionsKt.retainAll(allOf, new RegexKt$fromInt$$inlined$apply$lambda$1(i));
        i = Collections.unmodifiableSet(allOf);
        Intrinsics.checkExpressionValueIsNotNull(i, "Collections.unmodifiable… == it.value }\n        })");
        return i;
    }

    private static final MatchResult findNext(Matcher matcher, int i, CharSequence charSequence) {
        return matcher.find(i) == 0 ? null : (MatchResult) new MatcherMatchResult(matcher, charSequence);
    }

    private static final MatchResult matchEntire(Matcher matcher, CharSequence charSequence) {
        return !matcher.matches() ? null : new MatcherMatchResult(matcher, charSequence);
    }

    private static final IntRange range(MatchResult matchResult) {
        int start = matchResult.start();
        matchResult = matchResult.end();
        if (matchResult > Integer.MIN_VALUE) {
            return new IntRange(start, matchResult - 1);
        }
        matchResult = IntRange.Companion;
        return IntRange.EMPTY;
    }

    private static final IntRange range(MatchResult matchResult, int i) {
        int start = matchResult.start(i);
        matchResult = matchResult.end(i);
        if (matchResult > Integer.MIN_VALUE) {
            return new IntRange(start, matchResult - 1);
        }
        matchResult = IntRange.Companion;
        return IntRange.EMPTY;
    }

    private static final int toInt(Iterable<? extends FlagEnum> iterable) {
        int i = 0;
        for (FlagEnum value : iterable) {
            i |= value.getValue();
        }
        return i;
    }
}
