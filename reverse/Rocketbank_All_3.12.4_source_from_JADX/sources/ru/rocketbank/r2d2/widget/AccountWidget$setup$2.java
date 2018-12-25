package ru.rocketbank.r2d2.widget;

import kotlin.Pair;
import ru.rocketbank.r2d2.widget.AccountWidget.SmallAccountChooseFragment;
import rx.functions.Action1;

/* compiled from: AccountWidget.kt */
final class AccountWidget$setup$2<T> implements Action1<Pair<? extends Integer, ? extends SmallAccountChooseFragment>> {
    final /* synthetic */ AccountWidget this$0;

    AccountWidget$setup$2(AccountWidget accountWidget) {
        this.this$0 = accountWidget;
    }

    public final void call(Pair<Integer, SmallAccountChooseFragment> pair) {
        this.this$0.fromAccountToken = AccountWidget.access$getSourceAdapter$p(this.this$0).getToken(((Number) pair.component1()).intValue());
        pair = this.this$0;
        String access$getFromAccountToken$p = this.this$0.fromAccountToken;
        pair.accountFrom = access$getFromAccountToken$p != null ? this.this$0.authorization.getAccountImmediate(access$getFromAccountToken$p) : null;
        this.this$0.getOnAccountSelected().onNext(this.this$0.accountFrom);
    }
}
