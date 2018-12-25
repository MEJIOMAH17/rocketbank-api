package dagger.internal;

import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.AgentsApi;

public final class MembersInjectors implements Provider<AgentsApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    private enum NoOpMembersInjector {
        INSTANCE;

        public final void injectMembers(Object obj) {
            String str = "Cannot inject members into a null reference";
            if (obj == null) {
                throw new NullPointerException(str);
            }
        }
    }

    public MembersInjectors(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(AgentsApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(AgentsApi::class.java)");
        AgentsApi agentsApi = (AgentsApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (agentsApi != null) {
            return agentsApi;
        }
        throw new NullPointerException(str);
    }
}
