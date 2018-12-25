package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.io.File;

final class NativeCreateReportSpiCall extends AbstractSpiCall implements CreateReportSpiCall {
    public NativeCreateReportSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory) {
        super(kit, str, str2, httpRequestFactory, HttpMethod.POST);
    }

    public final boolean invoke(CreateReportRequest createReportRequest) {
        HttpRequest httpRequest = getHttpRequest();
        String str = createReportRequest.apiKey;
        String str2 = AbstractSpiCall.HEADER_USER_AGENT;
        StringBuilder stringBuilder = new StringBuilder(AbstractSpiCall.CRASHLYTICS_USER_AGENT);
        stringBuilder.append(this.kit.getVersion());
        httpRequest.header(str2, stringBuilder.toString()).header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion()).header(AbstractSpiCall.HEADER_API_KEY, str);
        createReportRequest = applyMultipartDataTo(httpRequest, createReportRequest.report);
        StringBuilder stringBuilder2 = new StringBuilder("Sending report to: ");
        stringBuilder2.append(getUrl());
        Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder2.toString());
        createReportRequest = createReportRequest.code();
        Fabric.getLogger().mo768d("CrashlyticsCore", "Result was: ".concat(String.valueOf(createReportRequest)));
        return ResponseParser.parse(createReportRequest) == null ? true : null;
    }

    private static HttpRequest applyMultipartDataTo(HttpRequest httpRequest, Report report) {
        httpRequest.part$d4ee95d$41e34ca7("report_id", report.getIdentifier());
        for (File file : report.getFiles()) {
            if (file.getName().equals("minidump")) {
                httpRequest.part("minidump_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("metadata")) {
                httpRequest.part("crash_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("binaryImages")) {
                httpRequest.part("binary_images_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("session")) {
                httpRequest.part("session_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("app")) {
                httpRequest.part("app_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("device")) {
                httpRequest.part("device_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("os")) {
                httpRequest.part("os_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("user")) {
                httpRequest.part("user_meta_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("logs")) {
                httpRequest.part("logs_file", file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("keys")) {
                httpRequest.part("keys_file", file.getName(), "application/octet-stream", file);
            }
        }
        return httpRequest;
    }
}
