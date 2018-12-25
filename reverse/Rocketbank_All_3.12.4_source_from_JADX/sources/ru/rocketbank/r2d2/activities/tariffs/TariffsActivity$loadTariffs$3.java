package ru.rocketbank.r2d2.activities.tariffs;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref.ObjectRef;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.network.model.tariffs.Salary;
import ru.rocketbank.core.network.model.tariffs.Tariff;
import ru.rocketbank.core.network.model.tariffs.Tariff.TariffState;
import ru.rocketbank.core.network.model.tariffs.TariffsResp;
import rx.Subscriber;

/* compiled from: TariffsActivity.kt */
public final class TariffsActivity$loadTariffs$3 extends Subscriber<TariffsResp> {
    final /* synthetic */ UserModel $userModel;
    final /* synthetic */ TariffsActivity this$0;

    public final void onCompleted() {
    }

    TariffsActivity$loadTariffs$3(TariffsActivity tariffsActivity, UserModel userModel) {
        this.this$0 = tariffsActivity;
        this.$userModel = userModel;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e("error tariffs", th.getMessage(), th);
        this.this$0.hideProgressDialog();
    }

    public final void onNext(TariffsResp tariffsResp) {
        Intrinsics.checkParameterIsNotNull(tariffsResp, "resp");
        this.this$0.tariffs.clear();
        TariffModel access$getCurrentTariff$p = this.this$0.getCurrentTariff();
        ObjectRef objectRef = new ObjectRef();
        ObjectRef objectRef2 = new ObjectRef();
        Iterable<Tariff> tariffs = tariffsResp.getTariffs();
        for (Tariff tariff : tariffs) {
            tariff.setState(TariffState.NOT_ACTIVE);
            Salary salary = tariff.getSalary();
            if (!(salary == null || salary.getCanChoose())) {
                tariff.setState(TariffState.SALARY_SHOW_INSTRUCTION);
            }
            String permalink = tariff.getPermalink();
            TariffModel access$getNextTariff$p = this.this$0.getNextTariff();
            Object obj = null;
            if (Intrinsics.areEqual(permalink, access$getNextTariff$p != null ? access$getNextTariff$p.getPermalinkString() : null)) {
                objectRef2.element = tariff;
                ((Tariff) objectRef2.element).setState(TariffState.WILL_BE_ACTIVATED);
            }
            permalink = tariff.getPermalink();
            if (access$getCurrentTariff$p != null) {
                obj = access$getCurrentTariff$p.getPermalinkString();
            }
            if (Intrinsics.areEqual(permalink, obj)) {
                objectRef.element = tariff;
                ((Tariff) objectRef.element).setState(TariffState.ACTIVE);
                this.this$0.tariffs.add(tariff);
            }
        }
        Collection arrayList = new ArrayList();
        for (Object next : tariffs) {
            if (!this.this$0.tariffs.contains((Tariff) next)) {
                arrayList.add(next);
            }
        }
        for (Tariff add : (List) arrayList) {
            this.this$0.tariffs.add(add);
        }
        tariffsResp = this.this$0.getCurrentTariff(this.$userModel);
        if (tariffsResp != null) {
            TariffsActivity.access$getPagerAdapter$p(this.this$0).swap(this.this$0.tariffs, tariffsResp);
        }
        this.this$0.hideProgressDialog();
    }
}
