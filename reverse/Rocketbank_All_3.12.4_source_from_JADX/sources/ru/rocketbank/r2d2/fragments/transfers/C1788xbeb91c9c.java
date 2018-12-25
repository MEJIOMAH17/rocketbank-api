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
/* renamed from: ru.rocketbank.r2d2.fragments.transfers.SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$2 */
final class C1788xbeb91c9c extends Lambda implements Function0<Observable<RefillCardResponse>> {
    final /* synthetic */ Function2 $errorCallback$inlined;
    final /* synthetic */ MoveMoneyBody $moveMoneyBody$inlined;
    final /* synthetic */ Function2 $successCallback$inlined;
    final /* synthetic */ SafeAndCardTransferPresenter this$0;

    C1788xbeb91c9c(SafeAndCardTransferPresenter safeAndCardTransferPresenter, MoveMoneyBody moveMoneyBody, Function2 function2, Function2 function22) {
        this.this$0 = safeAndCardTransferPresenter;
        this.$moveMoneyBody$inlined = moveMoneyBody;
        this.$successCallback$inlined = function2;
        this.$errorCallback$inlined = function22;
        super(0);
    }

    public final Observable<RefillCardResponse> invoke() {
        Observable<RefillCardResponse> subscribeOn = this.this$0.accountApi.getBalanceAmount(this.$moveMoneyBody$inlined.getAmount(), this.$moveMoneyBody$inlined.getCurrency(), this.$moveMoneyBody$inlined.getFrom(), this.$moveMoneyBody$inlined.getTo()).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io());
        Intrinsics.checkExpressionValueIsNotNull(subscribeOn, "accountApi.getBalanceAmo…scribeOn(Schedulers.io())");
        return subscribeOn;
    }
}
