package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.io.File;
import java.util.Map.Entry;

final class DefaultCreateReportSpiCall extends AbstractSpiCall implements CreateReportSpiCall {
    public DefaultCreateReportSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory) {
        super(kit, str, str2, httpRequestFactory, HttpMethod.POST);
    }

    public final boolean invoke(CreateReportRequest createReportRequest) {
        StringBuilder stringBuilder;
        HttpRequest header = getHttpRequest().header(AbstractSpiCall.HEADER_API_KEY, createReportRequest.apiKey).header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion());
        for (Entry entry : createReportRequest.report.getCustomHeaders().entrySet()) {
            header = header.header((String) entry.getKey(), (String) entry.getValue());
        }
        createReportRequest = createReportRequest.report;
        header.part$d4ee95d$41e34ca7("report[identifier]", createReportRequest.getIdentifier());
        if (createReportRequest.getFiles().length == 1) {
            stringBuilder = new StringBuilder("Adding single file ");
            stringBuilder.append(createReportRequest.getFileName());
            stringBuilder.append(" to report ");
            stringBuilder.append(createReportRequest.getIdentifier());
            Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder.toString());
            header = header.part("report[file]", createReportRequest.getFileName(), "application/octet-stream", createReportRequest.getFile());
        } else {
            File[] files = createReportRequest.getFiles();
            int length = files.length;
            int i = 0;
            int i2 = i;
            while (i < length) {
                File file = files[i];
                StringBuilder stringBuilder2 = new StringBuilder("Adding file ");
                stringBuilder2.append(file.getName());
                stringBuilder2.append(" to report ");
                stringBuilder2.append(createReportRequest.getIdentifier());
                Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder2.toString());
                StringBuilder stringBuilder3 = new StringBuilder("report[file");
                stringBuilder3.append(i2);
                stringBuilder3.append("]");
                header.part(stringBuilder3.toString(), file.getName(), "application/octet-stream", file);
                i2++;
                i++;
            }
        }
        StringBuilder stringBuilder4 = new StringBuilder("Sending report to: ");
        stringBuilder4.append(getUrl());
        Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder4.toString());
        createReportRequest = header.code();
        stringBuilder = new StringBuilder("Create report request ID: ");
        stringBuilder.append(header.header(AbstractSpiCall.HEADER_REQUEST_ID));
        Fabric.getLogger().mo768d("CrashlyticsCore", stringBuilder.toString());
        Fabric.getLogger().mo768d("CrashlyticsCore", "Result was: ".concat(String.valueOf(createReportRequest)));
        return ResponseParser.parse(createReportRequest) == null;
    }
}
