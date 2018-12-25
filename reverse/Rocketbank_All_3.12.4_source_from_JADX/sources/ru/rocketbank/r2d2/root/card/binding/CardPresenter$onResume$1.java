package ru.rocketbank.r2d2.root.card.binding;

import kotlin.Pair;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.facade.Account;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: CardPresenter.kt */
final class CardPresenter$onResume$1<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ CardPresenter this$0;

    CardPresenter$onResume$1(CardPresenter cardPresenter) {
        this.this$0 = cardPresenter;
    }

    public final Observable<Pair<Account, ApCheckResult>> call(final Account account) {
        AccountModel accountModel = account != null ? account.getAccountModel() : null;
        if (accountModel != null && accountModel.getAndroidPayWorks()) {
            String pan = accountModel.getPan();
            if (pan != null && pan.charAt(0) == '5' && this.this$0.canUseAndroidPay) {
                return this.this$0.refreshAndroidPay().map(new Func1<T, R>() {
                    public final Pair<Account, ApCheckResult> call(ApCheckResult apCheckResult) {
                        return new Pair(account, apCheckResult);
                    }
                }).onErrorReturn(new Func1<Throwable, Pair<? extends Account, ? extends ApCheckResult>>() {
                    public final Pair<Account, ApCheckResult> call(Throwable th) {
                        return new Pair(account, new ApCheckResult(AndroidPayStatus.NOT_WORKS, null, null, false, false, 30, null));
                    }
                });
            }
        }
        return Observable.just(new Pair(account, new ApCheckResult(AndroidPayStatus.NOT_WORKS, null, null, false, false, 30, null)));
    }
}
