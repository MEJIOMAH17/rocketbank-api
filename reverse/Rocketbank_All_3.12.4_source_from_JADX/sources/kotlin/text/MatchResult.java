package kotlin.text;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: MatchResult.kt */
public interface MatchResult {

    /* compiled from: MatchResult.kt */
    public static final class DefaultImpls {
        public static Destructured getDestructured(MatchResult matchResult) {
            return new Destructured(matchResult);
        }
    }

    /* compiled from: MatchResult.kt */
    public static final class Destructured {
        private final MatchResult match;

        public Destructured(MatchResult matchResult) {
            Intrinsics.checkParameterIsNotNull(matchResult, "match");
            this.match = matchResult;
        }

        public final MatchResult getMatch() {
            return this.match;
        }

        private final String component1() {
            return (String) getMatch().getGroupValues().get(1);
        }

        private final String component2() {
            return (String) getMatch().getGroupValues().get(2);
        }

        private final String component3() {
            return (String) getMatch().getGroupValues().get(3);
        }

        private final String component4() {
            return (String) getMatch().getGroupValues().get(4);
        }

        private final String component5() {
            return (String) getMatch().getGroupValues().get(5);
        }

        private final String component6() {
            return (String) getMatch().getGroupValues().get(6);
        }

        private final String component7() {
            return (String) getMatch().getGroupValues().get(7);
        }

        private final String component8() {
            return (String) getMatch().getGroupValues().get(8);
        }

        private final String component9() {
            return (String) getMatch().getGroupValues().get(9);
        }

        private final String component10() {
            return (String) getMatch().getGroupValues().get(10);
        }

        public final List<String> toList() {
            return this.match.getGroupValues().subList(1, this.match.getGroupValues().size());
        }
    }

    Destructured getDestructured();

    List<String> getGroupValues();

    MatchGroupCollection getGroups();

    IntRange getRange();

    String getValue();

    MatchResult next();
}
