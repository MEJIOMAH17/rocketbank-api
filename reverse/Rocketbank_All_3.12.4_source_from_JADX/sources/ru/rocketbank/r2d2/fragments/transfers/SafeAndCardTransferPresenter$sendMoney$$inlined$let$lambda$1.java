package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.network.model.MoveMoneyBody;
import ru.rocketbank.core.network.model.RefillCardResponse;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: SafeAndCardTransferPresenter.kt */
final class SafeAndCardTransferPresenter$sendMoney$$inlined$let$lambda$1 extends Lambda implements Function0<Observable<RefillCardResponse>> {
    final /* synthetic */ MoveMoneyBody $moveMoneyBody$inlined;
    final /* synthetic */ Function2 $onError$inlined;
    final /* synthetic */ Function2 $onRestore$inlined;
    final /* synthetic */ Function2 $onSuccess$inlined;
    final /* synthetic */ SafeAndCardTransferPresenter this$0;

    SafeAndCardTransferPresenter$sendMoney$$inlined$let$lambda$1(SafeAndCardTransferPresenter safeAndCardTransferPresenter, MoveMoneyBody moveMoneyBody, Function2 function2, Function2 function22, Function2 function23) {
        this.this$0 = safeAndCardTransferPresenter;
        this.$moveMoneyBody$inlined = moveMoneyBody;
        this.$onSuccess$inlined = function2;
        this.$onError$inlined = function22;
        this.$onRestore$inlined = function23;
        super(0);
    }

    public final Observable<RefillCardResponse> invoke() {
        Observable<RefillCardResponse> subscribeOn = this.this$0.depositApi.moveAmount(this.$moveMoneyBody$inlined.getTo(), this.$moveMoneyBody$inlined).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io());
        Intrinsics.checkExpressionValueIsNotNull(subscribeOn, "depositApi.moveAmount(mo…scribeOn(Schedulers.io())");
        return subscribeOn;
    }
}
