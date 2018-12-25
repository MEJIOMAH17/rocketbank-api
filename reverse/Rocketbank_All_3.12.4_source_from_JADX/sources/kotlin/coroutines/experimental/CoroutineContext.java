package kotlin.coroutines.experimental;

import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.MigrationApi;

/* compiled from: CoroutineContext.kt */
public interface CoroutineContext {

    /* compiled from: CoroutineContext.kt */
    public interface Key<E extends Element> {
    }

    /* compiled from: CoroutineContext.kt */
    public static final class DefaultImpls implements Provider<MigrationApi> {
        private final KeyboardUtil module$3d1596a7;
        private final Provider<Retrofit> retrofitProvider;

        public DefaultImpls(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
            this.module$3d1596a7 = keyboardUtil;
            this.retrofitProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(MigrationApi.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(MigrationApi::class.java)");
            MigrationApi migrationApi = (MigrationApi) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (migrationApi != null) {
                return migrationApi;
            }
            throw new NullPointerException(str);
        }
    }

    /* compiled from: CoroutineContext.kt */
    public interface Element extends CoroutineContext {
        <E extends Element> E get(Key<E> key);

        Key<?> getKey();
    }

    <R> R fold(R r, Function2<? super R, ? super Element, ? extends R> function2);

    <E extends Element> E get(Key<E> key);

    CoroutineContext minusKey(Key<?> key);
}
