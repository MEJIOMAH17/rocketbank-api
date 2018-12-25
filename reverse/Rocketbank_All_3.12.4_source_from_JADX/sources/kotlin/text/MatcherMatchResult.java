package kotlin.text;

import java.util.List;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.MatchResult.DefaultImpls;
import kotlin.text.MatchResult.Destructured;

/* compiled from: Regex.kt */
final class MatcherMatchResult implements MatchResult {
    private List<String> groupValues_;
    private final MatchGroupCollection groups = ((MatchGroupCollection) new MatcherMatchResult$groups$1(this));
    private final CharSequence input;
    private final MatchResult matchResult = this.matcher.toMatchResult();
    private final Matcher matcher;

    public MatcherMatchResult(Matcher matcher, CharSequence charSequence) {
        Intrinsics.checkParameterIsNotNull(matcher, "matcher");
        Intrinsics.checkParameterIsNotNull(charSequence, "input");
        this.matcher = matcher;
        this.input = charSequence;
    }

    public final Destructured getDestructured() {
        return DefaultImpls.getDestructured(this);
    }

    public final IntRange getRange() {
        MatchResult matchResult = this.matchResult;
        Intrinsics.checkExpressionValueIsNotNull(matchResult, "matchResult");
        return RegexKt.range(matchResult);
    }

    public final String getValue() {
        String group = this.matchResult.group();
        Intrinsics.checkExpressionValueIsNotNull(group, "matchResult.group()");
        return group;
    }

    public final MatchGroupCollection getGroups() {
        return this.groups;
    }

    public final List<String> getGroupValues() {
        if (this.groupValues_ == null) {
            this.groupValues_ = new MatcherMatchResult$groupValues$1(this);
        }
        List<String> list = this.groupValues_;
        if (list == null) {
            Intrinsics.throwNpe();
        }
        return list;
    }

    public final MatchResult next() {
        int end = this.matchResult.end() + (this.matchResult.end() == this.matchResult.start() ? 1 : 0);
        return end <= this.input.length() ? RegexKt.findNext(this.matcher, end, this.input) : null;
    }
}
