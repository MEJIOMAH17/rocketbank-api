package ru.rocketbank.r2d2.fragments.tariffs;

import ru.rocketbank.core.network.model.tariffs.Tariff.TariffState;
import ru.rocketbank.r2d2.fragments.tariffs.TariffFragment.Companion.TariffStateChange;
import rx.functions.Action1;

/* compiled from: TariffFragment.kt */
final class TariffFragment$onViewCreated$1<T> implements Action1<TariffStateChange> {
    final /* synthetic */ TariffFragment this$0;

    TariffFragment$onViewCreated$1(TariffFragment tariffFragment) {
        this.this$0 = tariffFragment;
    }

    public final void call(TariffStateChange tariffStateChange) {
        if (TariffFragment.access$getTariff$p(this.this$0).getPermalink() != tariffStateChange.getPermalink() && TariffFragment.access$getTariff$p(this.this$0).getState() != TariffState.SALARY_SHOW_INSTRUCTION) {
            this.this$0.setTariffState(TariffState.NOT_ACTIVE);
        }
    }
}
