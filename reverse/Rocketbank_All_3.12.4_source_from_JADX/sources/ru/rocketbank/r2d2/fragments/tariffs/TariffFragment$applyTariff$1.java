package ru.rocketbank.r2d2.fragments.tariffs;

import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.network.model.TariffResponse;
import ru.rocketbank.core.network.model.tariffs.Tariff.TariffState;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.tariffs.TariffFragment.Companion.TariffStateChange;
import rx.Subscriber;

/* compiled from: TariffFragment.kt */
public final class TariffFragment$applyTariff$1 extends Subscriber<TariffResponse> {
    final /* synthetic */ TariffState $newState;
    final /* synthetic */ String $tariffPermalink;
    final /* synthetic */ String $token;
    final /* synthetic */ TariffFragment this$0;

    public final void onCompleted() {
    }

    TariffFragment$applyTariff$1(TariffFragment tariffFragment, TariffState tariffState, String str, String str2) {
        this.this$0 = tariffFragment;
        this.$newState = tariffState;
        this.$tariffPermalink = str;
        this.$token = str2;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.hideSpinner();
        Toast.makeText(this.this$0.getContext(), C0859R.string.could_not_apply, 0).show();
    }

    public final void onNext(TariffResponse tariffResponse) {
        Intrinsics.checkParameterIsNotNull(tariffResponse, "t");
        TariffFragment.access$getTariff$p(this.this$0).setState(this.$newState);
        UserModel userImmediate = this.this$0.getAuthorization().getUserImmediate();
        TariffFragment.Companion.getTariffUpdateSubject().onNext(new TariffStateChange(this.$newState, this.$tariffPermalink));
        this.this$0.setTariffState(this.$newState);
        if (userImmediate != null) {
            AccountModel account = userImmediate.getAccount(this.$token);
            if (account != null) {
                account.setNextTariff(tariffResponse.getNextTariff());
            }
        }
        this.this$0.hideSpinner();
    }
}
