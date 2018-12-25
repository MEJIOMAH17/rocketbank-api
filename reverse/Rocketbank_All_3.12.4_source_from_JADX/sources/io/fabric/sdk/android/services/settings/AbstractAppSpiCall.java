package io.fabric.sdk.android.services.settings;

import android.content.res.Resources.NotFoundException;
import android.support.v7.cardview.C0943R.dimen;
import android.support.v7.recyclerview.C0945R.id;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Locale;

abstract class AbstractAppSpiCall extends AbstractSpiCall {
    public AbstractAppSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, HttpMethod httpMethod) {
        super(kit, str, str2, httpRequestFactory, httpMethod);
    }

    public boolean invoke$42569de1(id idVar) {
        HttpRequest applyMultipartDataTo$1bd3449b = applyMultipartDataTo$1bd3449b(getHttpRequest().header(AbstractSpiCall.HEADER_API_KEY, idVar.apiKey).header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion()), idVar);
        StringBuilder stringBuilder = new StringBuilder("Sending app info to ");
        stringBuilder.append(getUrl());
        Fabric.getLogger().mo768d("Fabric", stringBuilder.toString());
        if (idVar.icon != null) {
            stringBuilder = new StringBuilder("App icon hash is ");
            stringBuilder.append(idVar.icon.hash);
            Fabric.getLogger().mo768d("Fabric", stringBuilder.toString());
            stringBuilder = new StringBuilder("App icon size is ");
            stringBuilder.append(idVar.icon.width);
            stringBuilder.append("x");
            stringBuilder.append(idVar.icon.height);
            Fabric.getLogger().mo768d("Fabric", stringBuilder.toString());
        }
        idVar = applyMultipartDataTo$1bd3449b.code();
        String str = "POST".equals(applyMultipartDataTo$1bd3449b.method()) ? "Create" : "Update";
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(str);
        stringBuilder2.append(" app request ID: ");
        stringBuilder2.append(applyMultipartDataTo$1bd3449b.header(AbstractSpiCall.HEADER_REQUEST_ID));
        Fabric.getLogger().mo768d("Fabric", stringBuilder2.toString());
        Fabric.getLogger().mo768d("Fabric", "Result was ".concat(String.valueOf(idVar)));
        return ResponseParser.parse(idVar) == null ? true : null;
    }

    private HttpRequest applyMultipartDataTo$1bd3449b(HttpRequest httpRequest, id idVar) {
        String obj;
        Throwable e;
        StringBuilder stringBuilder;
        httpRequest = httpRequest.part$d4ee95d$41e34ca7("app[identifier]", idVar.appId).part$d4ee95d$41e34ca7("app[name]", idVar.name).part$d4ee95d$41e34ca7("app[display_version]", idVar.displayVersion).part$d4ee95d$41e34ca7("app[build_version]", idVar.buildVersion);
        String str = "app[source]";
        Integer valueOf = Integer.valueOf(idVar.source);
        Closeable closeable = null;
        if (valueOf != null) {
            obj = valueOf.toString();
        } else {
            obj = null;
        }
        httpRequest = httpRequest.part$d4ee95d$41e34ca7(str, obj).part$d4ee95d$41e34ca7("app[minimum_sdk_version]", idVar.minSdkVersion).part$d4ee95d$41e34ca7("app[built_sdk_version]", idVar.builtSdkVersion);
        if (!CommonUtils.isNullOrEmpty(idVar.instanceIdentifier)) {
            httpRequest.part$d4ee95d$41e34ca7("app[instance_identifier]", idVar.instanceIdentifier);
        }
        if (idVar.icon != null) {
            try {
                Closeable openRawResource = this.kit.getContext().getResources().openRawResource(idVar.icon.iconResourceId);
                try {
                    String obj2;
                    String obj3;
                    HttpRequest part = httpRequest.part$d4ee95d$41e34ca7("app[icon][hash]", idVar.icon.hash).part("app[icon][data]", "icon.png", "application/octet-stream", (InputStream) openRawResource);
                    String str2 = "app[icon][width]";
                    Integer valueOf2 = Integer.valueOf(idVar.icon.width);
                    if (valueOf2 != null) {
                        obj2 = valueOf2.toString();
                    } else {
                        obj2 = null;
                    }
                    part = part.part$d4ee95d$41e34ca7(str2, obj2);
                    str2 = "app[icon][height]";
                    valueOf2 = Integer.valueOf(idVar.icon.height);
                    if (valueOf2 != null) {
                        obj3 = valueOf2.toString();
                    }
                    part.part$d4ee95d$41e34ca7(str2, obj3);
                    CommonUtils.closeOrLog(openRawResource, "Failed to close app icon InputStream.");
                } catch (NotFoundException e2) {
                    e = e2;
                    closeable = openRawResource;
                    try {
                        stringBuilder = new StringBuilder("Failed to find app icon with resource ID: ");
                        stringBuilder.append(idVar.icon.iconResourceId);
                        Fabric.getLogger().mo771e("Fabric", stringBuilder.toString(), e);
                        CommonUtils.closeOrLog(closeable, "Failed to close app icon InputStream.");
                        if (idVar.sdkKits != null) {
                            for (dimen dimen : idVar.sdkKits) {
                                httpRequest.part$d4ee95d$41e34ca7(String.format(Locale.US, "app[build][libraries][%s][version]", new Object[]{dimen.getIdentifier()}), dimen.getVersion());
                                httpRequest.part$d4ee95d$41e34ca7(String.format(Locale.US, "app[build][libraries][%s][type]", new Object[]{dimen.getIdentifier()}), dimen.getBuildType());
                            }
                        }
                        return httpRequest;
                    } catch (Throwable th) {
                        httpRequest = th;
                        openRawResource = closeable;
                        CommonUtils.closeOrLog(openRawResource, "Failed to close app icon InputStream.");
                        throw httpRequest;
                    }
                } catch (Throwable th2) {
                    httpRequest = th2;
                    CommonUtils.closeOrLog(openRawResource, "Failed to close app icon InputStream.");
                    throw httpRequest;
                }
            } catch (NotFoundException e3) {
                e = e3;
                stringBuilder = new StringBuilder("Failed to find app icon with resource ID: ");
                stringBuilder.append(idVar.icon.iconResourceId);
                Fabric.getLogger().mo771e("Fabric", stringBuilder.toString(), e);
                CommonUtils.closeOrLog(closeable, "Failed to close app icon InputStream.");
                if (idVar.sdkKits != null) {
                    for (dimen dimen2 : idVar.sdkKits) {
                        httpRequest.part$d4ee95d$41e34ca7(String.format(Locale.US, "app[build][libraries][%s][version]", new Object[]{dimen2.getIdentifier()}), dimen2.getVersion());
                        httpRequest.part$d4ee95d$41e34ca7(String.format(Locale.US, "app[build][libraries][%s][type]", new Object[]{dimen2.getIdentifier()}), dimen2.getBuildType());
                    }
                }
                return httpRequest;
            }
        }
        if (idVar.sdkKits != null) {
            for (dimen dimen22 : idVar.sdkKits) {
                httpRequest.part$d4ee95d$41e34ca7(String.format(Locale.US, "app[build][libraries][%s][version]", new Object[]{dimen22.getIdentifier()}), dimen22.getVersion());
                httpRequest.part$d4ee95d$41e34ca7(String.format(Locale.US, "app[build][libraries][%s][type]", new Object[]{dimen22.getIdentifier()}), dimen22.getBuildType());
            }
        }
        return httpRequest;
    }
}
