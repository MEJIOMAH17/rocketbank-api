package kotlin.collections;

import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.MessageApi;

/* compiled from: SlidingWindow.kt */
public final class SlidingWindowKt implements Provider<MessageApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    public static final void checkWindowSizeStep(int i, int i2) {
        Object obj = (i <= 0 || i2 <= 0) ? null : 1;
        if (obj == null) {
            if (i != i2) {
                StringBuilder stringBuilder = new StringBuilder("Both size ");
                stringBuilder.append(i);
                stringBuilder.append(" and step ");
                stringBuilder.append(i2);
                stringBuilder.append(" must be greater than zero.");
                i = stringBuilder.toString();
            } else {
                i2 = new StringBuilder("size ");
                i2.append(i);
                i2.append(" must be greater than zero.");
                i = i2.toString();
            }
            throw ((Throwable) new IllegalArgumentException(i.toString()));
        }
    }

    public SlidingWindowKt(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(MessageApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(MessageApi::class.java)");
        MessageApi messageApi = (MessageApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (messageApi != null) {
            return messageApi;
        }
        throw new NullPointerException(str);
    }
}
