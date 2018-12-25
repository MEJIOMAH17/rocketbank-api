package com.crashlytics.android.core;

final class CreateReportRequest {
    public final String apiKey;
    public final Report report;

    public CreateReportRequest(String str, Report report) {
        this.apiKey = str;
        this.report = report;
    }
}
