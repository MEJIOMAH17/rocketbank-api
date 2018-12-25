package ru.rocketbank.r2d2.activities.rocketkitchen;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.cafe.CafeRefillResponse;
import ru.rocketbank.core.network.model.cafe.Response;
import rx.Subscriber;

/* compiled from: RocketCafeActivityPresenter.kt */
public final class RocketCafeActivityPresenter$fillSafe$1 extends Subscriber<Response<? extends CafeRefillResponse>> {
    final /* synthetic */ RocketCafeActivityPresenter this$0;

    public final void onCompleted() {
    }

    RocketCafeActivityPresenter$fillSafe$1(RocketCafeActivityPresenter rocketCafeActivityPresenter) {
        this.this$0 = rocketCafeActivityPresenter;
    }

    public final void onError(Throwable th) {
        th = this.this$0.view;
        if (th != null) {
            th.onRefillError("Произошла ошибка");
        }
    }

    public final void onNext(Response<CafeRefillResponse> response) {
        Intrinsics.checkParameterIsNotNull(response, "r");
        if (((CafeRefillResponse) response.getResponse()).getStatus() == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            response = this.this$0.view;
            if (response != null) {
                response.onRefillOk();
            }
            return;
        }
        RocketCafeView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            access$getView$p.onRefillError(((CafeRefillResponse) response.getResponse()).getShowIt() ? ((CafeRefillResponse) response.getResponse()).getDescription() : "Произошла ошибка");
        }
    }
}
