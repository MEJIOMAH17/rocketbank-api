package ru.rocketbank.r2d2.root.analytics;

/* compiled from: AnalyticsFragment.kt */
public interface ChangeAnalyticsListener {
    int[] getJointIds();

    void onChangeAnalytics(boolean z, int[] iArr);
}
