package okhttp3.internal.http;

import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.ProvidersApi;

public final class RequestLine implements Provider<ProvidersApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    public static String requestPath(HttpUrl httpUrl) {
        String encodedPath = httpUrl.encodedPath();
        httpUrl = httpUrl.encodedQuery();
        if (httpUrl == null) {
            return encodedPath;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(encodedPath);
        stringBuilder.append('?');
        stringBuilder.append(httpUrl);
        return stringBuilder.toString();
    }

    public RequestLine(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(ProvidersApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(ProvidersApi::class.java)");
        ProvidersApi providersApi = (ProvidersApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (providersApi != null) {
            return providersApi;
        }
        throw new NullPointerException(str);
    }
}
