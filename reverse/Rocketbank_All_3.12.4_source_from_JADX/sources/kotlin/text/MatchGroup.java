package kotlin.text;

import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: Regex.kt */
public final class MatchGroup {
    private final IntRange range;
    private final String value;

    public static /* synthetic */ MatchGroup copy$default(MatchGroup matchGroup, String str, IntRange intRange, int i, Object obj) {
        if ((i & 1) != 0) {
            str = matchGroup.value;
        }
        if ((i & 2) != 0) {
            intRange = matchGroup.range;
        }
        return matchGroup.copy(str, intRange);
    }

    public final String component1() {
        return this.value;
    }

    public final IntRange component2() {
        return this.range;
    }

    public final MatchGroup copy(String str, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(str, "value");
        Intrinsics.checkParameterIsNotNull(intRange, "range");
        return new MatchGroup(str, intRange);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MatchGroup) {
                MatchGroup matchGroup = (MatchGroup) obj;
                if (Intrinsics.areEqual(this.value, matchGroup.value) && Intrinsics.areEqual(this.range, matchGroup.range)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.value;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        IntRange intRange = this.range;
        if (intRange != null) {
            i = intRange.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("MatchGroup(value=");
        stringBuilder.append(this.value);
        stringBuilder.append(", range=");
        stringBuilder.append(this.range);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public MatchGroup(String str, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(str, "value");
        Intrinsics.checkParameterIsNotNull(intRange, "range");
        this.value = str;
        this.range = intRange;
    }

    public final IntRange getRange() {
        return this.range;
    }

    public final String getValue() {
        return this.value;
    }
}
