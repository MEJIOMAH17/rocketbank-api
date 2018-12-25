package ru.rocketbank.r2d2.fragments.tariffs;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.network.model.tariffs.Tariff;
import ru.rocketbank.core.network.model.tariffs.Tariff.TariffState;
import ru.rocketbank.r2d2.fragments.tariffs.TariffFragment.Companion;
import ru.rocketbank.r2d2.fragments.tariffs.TariffFragment.Companion.TariffStateChange;
import rx.Subscription;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: TariffsPageAdapter.kt */
public final class TariffsPageAdapter extends FragmentStatePagerAdapter {
    private TariffModel lastTariff;
    private final Subscription tariffUpdateSubscription;
    private List<Tariff> tariffs;
    private final String token;

    public final String getToken() {
        return this.token;
    }

    public TariffsPageAdapter(FragmentManager fragmentManager, String str) {
        Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
        Intrinsics.checkParameterIsNotNull(str, "token");
        super(fragmentManager);
        this.token = str;
        fragmentManager = TariffFragment.Companion.getTariffUpdateSubject().observeOn(Schedulers.computation()).subscribe((Action1) new Action1<TariffStateChange>() {
            public final void call(TariffStateChange tariffStateChange) {
                List<Tariff> access$getTariffs$p = this.tariffs;
                if (access$getTariffs$p != null) {
                    for (Tariff tariff : access$getTariffs$p) {
                        if (tariff.getPermalink() != tariffStateChange.getPermalink() && tariff.getState() == TariffState.WILL_BE_ACTIVATED) {
                            tariff.setState(TariffState.NOT_ACTIVE);
                        }
                    }
                }
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "TariffFragment.tariffUpd…      }\n                }");
        this.tariffUpdateSubscription = fragmentManager;
    }

    public final Fragment getItem(int i) {
        List list = this.tariffs;
        if (list != null) {
            Companion companion = TariffFragment.Companion;
            String str = this.token;
            Tariff tariff = (Tariff) list.get(i);
            TariffModel tariffModel = this.lastTariff;
            if (tariffModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lastTariff");
            }
            i = companion.newInstance(str, tariff, tariffModel);
        } else {
            i = 0;
        }
        return (Fragment) i;
    }

    public final void swap(List<Tariff> list, TariffModel tariffModel) {
        Intrinsics.checkParameterIsNotNull(tariffModel, "lastTariff");
        this.tariffs = list;
        this.lastTariff = tariffModel;
        notifyDataSetChanged();
    }

    public final void onDestroy() {
        this.tariffUpdateSubscription.unsubscribe();
    }

    public final int getCount() {
        List list = this.tariffs;
        return list != null ? list.size() : 0;
    }
}
