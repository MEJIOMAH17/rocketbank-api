package com.crashlytics.android.answers;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.events.FilesSender;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.io.File;
import java.util.List;

final class SessionAnalyticsFilesSender extends AbstractSpiCall implements FilesSender {
    private final String apiKey;

    public SessionAnalyticsFilesSender(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, String str3) {
        super(kit, str, str2, httpRequestFactory, HttpMethod.POST);
        this.apiKey = str3;
    }

    public final boolean send(List<File> list) {
        HttpRequest header = getHttpRequest().header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion()).header(AbstractSpiCall.HEADER_API_KEY, this.apiKey);
        int i = 0;
        for (File file : list) {
            header.part("session_analytics_file_".concat(String.valueOf(i)), file.getName(), "application/vnd.crashlytics.android.events", file);
            i++;
        }
        StringBuilder stringBuilder = new StringBuilder("Sending ");
        stringBuilder.append(list.size());
        stringBuilder.append(" analytics files to ");
        stringBuilder.append(getUrl());
        Fabric.getLogger().mo768d("Answers", stringBuilder.toString());
        list = header.code();
        Fabric.getLogger().mo768d("Answers", "Response code for analytics file send is ".concat(String.valueOf(list)));
        return ResponseParser.parse(list) == null;
    }
}
