package kotlin.text;

import com.github.barteksc.pdfviewer.C1156R.drawable;
import java.util.Iterator;
import java.util.regex.MatchResult;
import kotlin.collections.AbstractCollection;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import kotlin.sequences.TransformingSequence;

/* compiled from: Regex.kt */
public final class MatcherMatchResult$groups$1 extends AbstractCollection<MatchGroup> implements MatchNamedGroupCollection {
    final /* synthetic */ MatcherMatchResult this$0;

    public final boolean isEmpty() {
        return false;
    }

    MatcherMatchResult$groups$1(MatcherMatchResult matcherMatchResult) {
        this.this$0 = matcherMatchResult;
    }

    public final /* bridge */ boolean contains(Object obj) {
        return !(obj != null ? obj instanceof MatchGroup : true) ? null : contains((MatchGroup) obj);
    }

    public final /* bridge */ boolean contains(MatchGroup matchGroup) {
        return super.contains(matchGroup);
    }

    public final int getSize() {
        return this.this$0.matchResult.groupCount() + 1;
    }

    public final Iterator<MatchGroup> iterator() {
        Sequence asSequence = CollectionsKt___CollectionsKt.asSequence(CollectionsKt__CollectionsKt.getIndices(this));
        Function1 matcherMatchResult$groups$1$iterator$1 = new MatcherMatchResult$groups$1$iterator$1(this);
        Intrinsics.checkParameterIsNotNull(asSequence, "$receiver");
        Intrinsics.checkParameterIsNotNull(matcherMatchResult$groups$1$iterator$1, "transform");
        return new TransformingSequence(asSequence, matcherMatchResult$groups$1$iterator$1).iterator();
    }

    public final MatchGroup get(int i) {
        MatchResult access$getMatchResult$p = this.this$0.matchResult;
        Intrinsics.checkExpressionValueIsNotNull(access$getMatchResult$p, "matchResult");
        IntRange access$range = RegexKt.range(access$getMatchResult$p, i);
        if (access$range.getFirst() < 0) {
            return 0;
        }
        i = this.this$0.matchResult.group(i);
        Intrinsics.checkExpressionValueIsNotNull(i, "matchResult.group(index)");
        return new MatchGroup(i, access$range);
    }

    public final MatchGroup get(String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        drawable drawable = PlatformImplementationsKt.IMPLEMENTATIONS$287f0623;
        MatchResult access$getMatchResult$p = this.this$0.matchResult;
        Intrinsics.checkExpressionValueIsNotNull(access$getMatchResult$p, "matchResult");
        Intrinsics.checkParameterIsNotNull(access$getMatchResult$p, "matchResult");
        Intrinsics.checkParameterIsNotNull(str, "name");
        throw ((Throwable) new UnsupportedOperationException("Retrieving groups by name is not supported on this platform."));
    }
}
