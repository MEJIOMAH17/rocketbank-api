package io.card.payment.ui;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build.VERSION;
import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.CafeApi;

public final class ActivityHelper implements Provider<CafeApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    @TargetApi(11)
    public static void setActivityTheme(Activity activity, boolean z) {
        if (z && activity.getApplicationInfo().theme) {
            activity.setTheme(activity.getApplicationInfo().theme);
            return;
        }
        if (VERSION.SDK_INT >= true) {
            activity.setTheme(true);
        } else {
            activity.setTheme(true);
        }
    }

    public ActivityHelper(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(CafeApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(CafeApi::class.java)");
        CafeApi cafeApi = (CafeApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (cafeApi != null) {
            return cafeApi;
        }
        throw new NullPointerException(str);
    }
}
