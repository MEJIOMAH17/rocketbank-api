package ru.rocketbank.r2d2.root.card.binding;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.network.model.TariffOptionsResponse;
import rx.Subscriber;

/* compiled from: CardPresenter.kt */
public final class CardPresenter$onChange$$inlined$let$lambda$1 extends Subscriber<TariffOptionsResponse> {
    final /* synthetic */ boolean $isActive$inlined;
    final /* synthetic */ AccountModel $it;
    final /* synthetic */ CardPresenter this$0;

    public final void onCompleted() {
    }

    CardPresenter$onChange$$inlined$let$lambda$1(AccountModel accountModel, CardPresenter cardPresenter, boolean z) {
        this.$it = accountModel;
        this.this$0 = cardPresenter;
        this.$isActive$inlined = z;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        CardDetailView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            access$getView$p.hideLoader();
        }
        Log.e("CardPresenter", "Can not enable notifications", th);
        th = this.this$0.tariffSubscription;
        if (th != null) {
            th.unsubscribe();
        }
    }

    public final void onNext(TariffOptionsResponse tariffOptionsResponse) {
        Intrinsics.checkParameterIsNotNull(tariffOptionsResponse, "tariffOptionsResponse");
        CardDetailView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            access$getView$p.hideLoader();
        }
        tariffOptionsResponse = tariffOptionsResponse.getTariffOption();
        TariffModel currentTariff = this.$it.getCurrentTariff();
        if (currentTariff == null) {
            Intrinsics.throwNpe();
        }
        currentTariff.setOption(tariffOptionsResponse);
        this.this$0.authorization.reloadProfile();
        tariffOptionsResponse = this.this$0.tariffSubscription;
        if (tariffOptionsResponse != null) {
            tariffOptionsResponse.unsubscribe();
        }
    }
}
