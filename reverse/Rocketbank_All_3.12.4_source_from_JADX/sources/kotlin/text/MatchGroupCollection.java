package kotlin.text;

import java.util.Collection;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: MatchResult.kt */
public interface MatchGroupCollection extends Collection<MatchGroup>, KMappedMarker {
    MatchGroup get(int i);
}
