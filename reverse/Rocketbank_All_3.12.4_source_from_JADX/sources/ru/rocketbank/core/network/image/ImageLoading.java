package ru.rocketbank.core.network.image;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.okhttp3.OkHttpUrlLoader.Factory;
import com.bumptech.glide.load.model.GlideUrl;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.OkHttpClient.Builder;
import ru.rocketbank.core.manager.HeaderManager;

/* compiled from: ImageLoading.kt */
public final class ImageLoading {
    public static final ImageLoading INSTANCE = new ImageLoading();
    private static Interceptor authInterceptor = ImageLoading$authInterceptor$1.INSTANCE;
    public static HeaderManager headerManager;

    private ImageLoading() {
    }

    public final HeaderManager getHeaderManager() {
        HeaderManager headerManager = headerManager;
        if (headerManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headerManager");
        }
        return headerManager;
    }

    public final void setHeaderManager(HeaderManager headerManager) {
        Intrinsics.checkParameterIsNotNull(headerManager, "<set-?>");
        headerManager = headerManager;
    }

    public final Interceptor getAuthInterceptor() {
        return authInterceptor;
    }

    public final void setAuthInterceptor(Interceptor interceptor) {
        Intrinsics.checkParameterIsNotNull(interceptor, "<set-?>");
        authInterceptor = interceptor;
    }

    public final void initialize(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Builder newBuilder = new OkHttpClient().newBuilder();
        newBuilder.addInterceptor(authInterceptor);
        Glide.get(context).register(GlideUrl.class, InputStream.class, new Factory(newBuilder.build()));
    }
}
