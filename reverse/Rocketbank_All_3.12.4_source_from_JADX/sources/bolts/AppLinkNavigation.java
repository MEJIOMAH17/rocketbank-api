package bolts;

import com.facebook.internal.AnalyticsEvents;

public final class AppLinkNavigation {
    public final AppIconSettingsData icon;
    public final String identifier;
    public final String ndkReportsUrl;
    public final String reportsUrl;
    public final String status;
    public final boolean updateRequired;
    public final String url;

    public enum NavigationResult {
        FAILED("failed", false),
        WEB(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_WEB, true),
        APP("app", true);
        
        private String code;
        private boolean succeeded;

        public final String getCode() {
            return this.code;
        }

        public final boolean isSucceeded() {
            return this.succeeded;
        }

        private NavigationResult(String str, boolean z) {
            this.code = str;
            this.succeeded = z;
        }
    }

    public AppLinkNavigation(String str, String str2, String str3, String str4, String str5, boolean z, AppIconSettingsData appIconSettingsData) {
        this.identifier = str;
        this.status = str2;
        this.url = str3;
        this.reportsUrl = str4;
        this.ndkReportsUrl = str5;
        this.updateRequired = z;
        this.icon = appIconSettingsData;
    }
}
