package com.mattprecious.swirl;

import com.google.android.gms.common.api.GoogleApiClient;
import javax.inject.Provider;
import ru.rocketbank.core.dagger.AndroidModule;
import ru.rocketbank.core.pay.google.RxTapAndPay;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: com.mattprecious.swirl.R */
public final class C1265R implements Provider<RxTapAndPay> {
    private final Provider<GoogleApiClient> clientProvider;
    private final AndroidModule module;

    /* renamed from: com.mattprecious.swirl.R$drawable */
    public static final class drawable {
    }

    /* renamed from: com.mattprecious.swirl.R$styleable */
    public static final class styleable {
        public static final int[] swirl_Swirl = new int[]{C0859R.attr.swirl_state};
        public static final int swirl_Swirl_swirl_state = 0;
    }

    public C1265R(AndroidModule androidModule, Provider<GoogleApiClient> provider) {
        this.module = androidModule;
        this.clientProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        return this.module.provideTapAndPay((GoogleApiClient) this.clientProvider.get());
    }
}
