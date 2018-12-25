package com.crashlytics.android.answers;

final class KeepAllEventFilter implements EventFilter {
    public final boolean skipEvent(SessionEvent sessionEvent) {
        return false;
    }

    KeepAllEventFilter() {
    }
}
