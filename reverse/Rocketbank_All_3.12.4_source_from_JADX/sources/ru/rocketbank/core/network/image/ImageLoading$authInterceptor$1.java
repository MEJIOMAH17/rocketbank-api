package ru.rocketbank.core.network.image;

import java.net.URI;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Request;
import okhttp3.Request.Builder;
import okhttp3.Response;

/* compiled from: ImageLoading.kt */
final class ImageLoading$authInterceptor$1 implements Interceptor {
    public static final ImageLoading$authInterceptor$1 INSTANCE = new ImageLoading$authInterceptor$1();

    ImageLoading$authInterceptor$1() {
    }

    public final Response intercept(Chain chain) {
        Request request = chain.request();
        if (!(request == null || request.url() == null)) {
            HttpUrl url = request.url();
            if (url.uri() != null) {
                URI uri = url.uri();
                Intrinsics.checkExpressionValueIsNotNull(uri, "httpUrl.uri()");
                if (uri.getHost() != null) {
                    URI uri2 = url.uri();
                    Intrinsics.checkExpressionValueIsNotNull(uri2, "httpUrl.uri()");
                    String host = uri2.getHost();
                    Intrinsics.checkExpressionValueIsNotNull(host, "httpUrl.uri().host");
                    if (StringsKt__StringsKt.contains$default((CharSequence) host, (CharSequence) "rocketbank.ru", false, 2, null)) {
                        Builder newBuilder = chain.request().newBuilder();
                        Map headers = ImageLoading.INSTANCE.getHeaderManager().getHeaders();
                        for (String str : headers.keySet()) {
                            newBuilder.addHeader(str, (String) headers.get(str));
                        }
                        return chain.proceed(newBuilder.build());
                    }
                }
            }
        }
        return chain.proceed(chain.request());
    }
}
