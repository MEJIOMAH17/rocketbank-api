package com.crashlytics.android.answers;

import java.util.HashSet;
import java.util.Set;

final class SamplingEventFilter implements EventFilter {
    static final Set<Type> EVENTS_TYPE_TO_SAMPLE = new C03121();
    final int samplingRate;

    /* renamed from: com.crashlytics.android.answers.SamplingEventFilter$1 */
    static class C03121 extends HashSet<Type> {
        C03121() {
            add(Type.START);
            add(Type.RESUME);
            add(Type.PAUSE);
            add(Type.STOP);
        }
    }

    public SamplingEventFilter(int i) {
        this.samplingRate = i;
    }

    public final boolean skipEvent(SessionEvent sessionEvent) {
        boolean z = EVENTS_TYPE_TO_SAMPLE.contains(sessionEvent.type) && sessionEvent.sessionEventMetadata.betaDeviceToken == null;
        return z && (Math.abs(sessionEvent.sessionEventMetadata.installationId.hashCode() % this.samplingRate) != null ? 1 : null) != null;
    }
}
