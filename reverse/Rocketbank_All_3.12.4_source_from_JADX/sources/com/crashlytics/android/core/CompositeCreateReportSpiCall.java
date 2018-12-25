package com.crashlytics.android.core;

final class CompositeCreateReportSpiCall implements CreateReportSpiCall {
    private final DefaultCreateReportSpiCall javaReportSpiCall;
    private final NativeCreateReportSpiCall nativeReportSpiCall;

    public CompositeCreateReportSpiCall(DefaultCreateReportSpiCall defaultCreateReportSpiCall, NativeCreateReportSpiCall nativeCreateReportSpiCall) {
        this.javaReportSpiCall = defaultCreateReportSpiCall;
        this.nativeReportSpiCall = nativeCreateReportSpiCall;
    }

    public final boolean invoke(CreateReportRequest createReportRequest) {
        switch (createReportRequest.report.getType()) {
            case JAVA:
                this.javaReportSpiCall.invoke(createReportRequest);
                return true;
            case NATIVE:
                this.nativeReportSpiCall.invoke(createReportRequest);
                return true;
            default:
                return null;
        }
    }
}
