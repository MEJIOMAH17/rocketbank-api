package dagger.internal;

import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.AnalyticsApi;

public final class ReferenceReleasingProviderManager implements Provider<AnalyticsApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    private enum Operation {
        RELEASE {
            final void execute(ReferenceReleasingProvider<?> referenceReleasingProvider) {
                referenceReleasingProvider.releaseStrongReference();
            }
        },
        RESTORE {
            final void execute(ReferenceReleasingProvider<?> referenceReleasingProvider) {
                referenceReleasingProvider.restoreStrongReference();
            }
        };

        abstract void execute(ReferenceReleasingProvider<?> referenceReleasingProvider);
    }

    public ReferenceReleasingProviderManager(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(AnalyticsApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(AnalyticsApi::class.java)");
        AnalyticsApi analyticsApi = (AnalyticsApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (analyticsApi != null) {
            return analyticsApi;
        }
        throw new NullPointerException(str);
    }
}
