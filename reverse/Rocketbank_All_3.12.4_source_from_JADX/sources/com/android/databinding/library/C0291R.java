package com.android.databinding.library;

/* renamed from: com.android.databinding.library.R */
public final class C0291R {
    public final int updateSuspendDurationSeconds;
    public final String updateUrl;

    /* renamed from: com.android.databinding.library.R$id */
    public static final class id {
        public final boolean collectAnalytics;
        public final boolean collectLoggedException;
        public final boolean collectReports;
        public final boolean firebaseCrashlyticsEnabled;
        public final boolean promptEnabled;

        public id(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            this.promptEnabled = z;
            this.collectLoggedException = z2;
            this.collectReports = z3;
            this.collectAnalytics = z4;
            this.firebaseCrashlyticsEnabled = z5;
        }
    }

    public C0291R(String str, int i) {
        this.updateUrl = str;
        this.updateSuspendDurationSeconds = i;
    }
}
