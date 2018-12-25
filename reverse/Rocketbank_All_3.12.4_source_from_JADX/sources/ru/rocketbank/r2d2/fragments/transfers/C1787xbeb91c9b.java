package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.core.model.RocketDepositModel;
import ru.rocketbank.core.network.api.DepositApi;
import ru.rocketbank.core.network.model.MoveMoneyBody;
import ru.rocketbank.core.network.model.RefillCardResponse;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: SafeAndCardTransferPresenter.kt */
/* renamed from: ru.rocketbank.r2d2.fragments.transfers.SafeAndCardTransferPresenter$sendMoneyDescription$$inlined$let$lambda$1 */
final class C1787xbeb91c9b extends Lambda implements Function0<Observable<RefillCardResponse>> {
    final /* synthetic */ Function2 $errorCallback$inlined;
    final /* synthetic */ MoveMoneyBody $moveMoneyBody$inlined;
    final /* synthetic */ Object $product;
    final /* synthetic */ Function2 $successCallback$inlined;
    final /* synthetic */ SafeAndCardTransferPresenter this$0;

    C1787xbeb91c9b(Object obj, SafeAndCardTransferPresenter safeAndCardTransferPresenter, MoveMoneyBody moveMoneyBody, Function2 function2, Function2 function22) {
        this.$product = obj;
        this.this$0 = safeAndCardTransferPresenter;
        this.$moveMoneyBody$inlined = moveMoneyBody;
        this.$successCallback$inlined = function2;
        this.$errorCallback$inlined = function22;
        super(0);
    }

    public final Observable<RefillCardResponse> invoke() {
        DepositApi access$getDepositApi$p = this.this$0.depositApi;
        RocketDepositModel rocketDeposit = ((DepositModel) this.$product).getRocketDeposit();
        Observable<RefillCardResponse> subscribeOn = access$getDepositApi$p.getBalanceAmount(rocketDeposit != null ? rocketDeposit.getPermalink() : null, this.$moveMoneyBody$inlined.getAmount(), this.$moveMoneyBody$inlined.getCurrency(), this.$moveMoneyBody$inlined.getFrom(), this.$moveMoneyBody$inlined.getTo()).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.io());
        Intrinsics.checkExpressionValueIsNotNull(subscribeOn, "depositApi.getBalanceAmo…scribeOn(Schedulers.io())");
        return subscribeOn;
    }
}
