package ru.rocketbank.r2d2.root.card.binding;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.androidpay.TurResponse;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: CardPresenter.kt */
final class CardPresenter$refreshAndroidPay$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ CardPresenter this$0;

    CardPresenter$refreshAndroidPay$1(CardPresenter cardPresenter) {
        this.this$0 = cardPresenter;
    }

    public final Observable<ApCheckResult> call(String str) {
        final ApCheckResult apCheckResult = new ApCheckResult(AndroidPayStatus.TUR_ACTIVE, null, null, false, false, 30, null);
        Intrinsics.checkExpressionValueIsNotNull(str, "walletId");
        if ((((CharSequence) str).length() == 0 ? 1 : null) == null) {
            return this.this$0.androidPayApi.getTokenByWalletId(str, this.this$0.plasticToken).map(new Func1<T, R>() {
                public final ApCheckResult call(TurResponse turResponse) {
                    apCheckResult.setTur(turResponse.getTur());
                    apCheckResult.setPending(turResponse.getPending());
                    return apCheckResult;
                }
            });
        }
        apCheckResult.setStatus(AndroidPayStatus.NO_WALLET);
        return Observable.just(apCheckResult);
    }
}
