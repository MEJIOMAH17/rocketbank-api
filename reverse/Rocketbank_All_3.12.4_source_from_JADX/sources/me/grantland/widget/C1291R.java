package me.grantland.widget;

import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: me.grantland.widget.R */
public final class C1291R implements Provider<OperationApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    /* renamed from: me.grantland.widget.R$styleable */
    public static final class styleable {
        public static final int[] AutofitTextView = new int[]{C0859R.attr.minTextSize, C0859R.attr.precision, C0859R.attr.sizeToFit};
        public static final int AutofitTextView_minTextSize = 0;
        public static final int AutofitTextView_precision = 1;
        public static final int AutofitTextView_sizeToFit = 2;
    }

    public C1291R(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(OperationApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(OperationApi::class.java)");
        OperationApi operationApi = (OperationApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (operationApi != null) {
            return operationApi;
        }
        throw new NullPointerException(str);
    }
}
