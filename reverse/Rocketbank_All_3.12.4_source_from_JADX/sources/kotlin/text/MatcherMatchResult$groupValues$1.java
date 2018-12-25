package kotlin.text;

import kotlin.collections.AbstractList;

/* compiled from: Regex.kt */
public final class MatcherMatchResult$groupValues$1 extends AbstractList<String> {
    final /* synthetic */ MatcherMatchResult this$0;

    MatcherMatchResult$groupValues$1(MatcherMatchResult matcherMatchResult) {
        this.this$0 = matcherMatchResult;
    }

    public final /* bridge */ boolean contains(Object obj) {
        return !(obj instanceof String) ? null : contains((String) obj);
    }

    public final /* bridge */ boolean contains(String str) {
        return super.contains(str);
    }

    public final /* bridge */ int indexOf(Object obj) {
        return !(obj instanceof String) ? -1 : indexOf((String) obj);
    }

    public final /* bridge */ int indexOf(String str) {
        return super.indexOf(str);
    }

    public final /* bridge */ int lastIndexOf(Object obj) {
        return !(obj instanceof String) ? -1 : lastIndexOf((String) obj);
    }

    public final /* bridge */ int lastIndexOf(String str) {
        return super.lastIndexOf(str);
    }

    public final int getSize() {
        return this.this$0.matchResult.groupCount() + 1;
    }

    public final String get(int i) {
        i = this.this$0.matchResult.group(i);
        return i == 0 ? "" : i;
    }
}
