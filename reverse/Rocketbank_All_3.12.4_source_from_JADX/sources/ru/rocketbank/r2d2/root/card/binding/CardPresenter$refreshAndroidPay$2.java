package ru.rocketbank.r2d2.root.card.binding;

import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.pay.google.RxTapAndPay;
import ru.rocketbank.core.pay.google.RxTapAndPay.RxTokenState;
import ru.rocketbank.r2d2.root.card.binding.CardPresenter.WhenMappings;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: CardPresenter.kt */
final class CardPresenter$refreshAndroidPay$2<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ CardPresenter this$0;

    CardPresenter$refreshAndroidPay$2(CardPresenter cardPresenter) {
        this.this$0 = cardPresenter;
    }

    public final Observable<ApCheckResult> call(final ApCheckResult apCheckResult) {
        Object obj;
        AndroidPayStatus androidPayStatus;
        String tur = apCheckResult.getTur();
        CharSequence charSequence = tur;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                obj = null;
                if (obj == null) {
                    if (apCheckResult.getStatus() != AndroidPayStatus.NO_WALLET) {
                        if (!this.this$0.getCardAddedPending()) {
                            if (apCheckResult.getPending()) {
                                androidPayStatus = AndroidPayStatus.NO_TUR;
                                apCheckResult.setStatus(androidPayStatus);
                            }
                        }
                        androidPayStatus = AndroidPayStatus.PENDING_ADD;
                        apCheckResult.setStatus(androidPayStatus);
                    }
                    return Observable.just(apCheckResult);
                }
                RxTapAndPay access$getRxTapAndPay$p = this.this$0.rxTapAndPay;
                if (tur == null) {
                    Intrinsics.throwNpe();
                }
                return access$getRxTapAndPay$p.getTokenStatus(tur).map(new Func1<T, R>() {
                    public final ApCheckResult call(Pair<? extends RxTokenState, Boolean> pair) {
                        RxTokenState rxTokenState = (RxTokenState) pair.component1();
                        pair = ((Boolean) pair.component2()).booleanValue();
                        ApCheckResult apCheckResult = apCheckResult;
                        switch (WhenMappings.$EnumSwitchMapping$2[rxTokenState.ordinal()]) {
                            case 1:
                                pair = AndroidPayStatus.TUR_NOT_ACTIVE;
                                break;
                            case 2:
                                pair = AndroidPayStatus.NOT_FOUND;
                                break;
                            case 3:
                                pair = AndroidPayStatus.TUR_UNTOKENIZED;
                                break;
                            default:
                                apCheckResult.setDefault(pair);
                                this.this$0.setCardAddedPending(false);
                                pair = AndroidPayStatus.TUR_ACTIVE;
                                break;
                        }
                        apCheckResult.setStatus(pair);
                        return apCheckResult;
                    }
                });
            }
        }
        obj = 1;
        if (obj == null) {
            RxTapAndPay access$getRxTapAndPay$p2 = this.this$0.rxTapAndPay;
            if (tur == null) {
                Intrinsics.throwNpe();
            }
            return access$getRxTapAndPay$p2.getTokenStatus(tur).map(/* anonymous class already generated */);
        }
        if (apCheckResult.getStatus() != AndroidPayStatus.NO_WALLET) {
            if (this.this$0.getCardAddedPending()) {
                if (apCheckResult.getPending()) {
                    androidPayStatus = AndroidPayStatus.NO_TUR;
                    apCheckResult.setStatus(androidPayStatus);
                }
            }
            androidPayStatus = AndroidPayStatus.PENDING_ADD;
            apCheckResult.setStatus(androidPayStatus);
        }
        return Observable.just(apCheckResult);
    }
}
