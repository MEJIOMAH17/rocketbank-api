package ru.rocketbank.r2d2.fragments.rocketrouble;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.RocketRoubles;
import rx.Subscriber;

/* compiled from: RocketRoubleFragment.kt */
public final class RocketRoubleFragment$refreshUserData$1 extends Subscriber<RocketRoubles> {
    final /* synthetic */ RocketRoubleFragment this$0;

    public final void onCompleted() {
    }

    RocketRoubleFragment$refreshUserData$1(RocketRoubleFragment rocketRoubleFragment) {
        this.this$0 = rocketRoubleFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.getSwipeRefreshLayout().setRefreshing(false);
    }

    public final void onNext(RocketRoubles rocketRoubles) {
        if (rocketRoubles != null) {
            rocketRoubles = rocketRoubles.getRocketrubles();
            if (rocketRoubles != null) {
                List arrayList;
                this.this$0.getSwipeRefreshLayout().setRefreshing(false);
                this.this$0.balance = (double) rocketRoubles.getBalance();
                this.this$0.showBalance();
                if (rocketRoubles.getMonths() == null) {
                    arrayList = new ArrayList();
                } else {
                    arrayList = rocketRoubles.getMonths();
                    if (arrayList == null) {
                        Intrinsics.throwNpe();
                    }
                }
                RocketRoubleFragment.access$getBarChartAdapter$p(this.this$0).setValues(arrayList, Calendar.getInstance().get(2));
                if (!this.this$0.isNeedShowFloating) {
                    this.this$0.isNeedShowFloating = true;
                    this.this$0.getFloatingActionButton().show();
                }
                this.this$0.fillAdapterWithData(rocketRoubles.getHistory(), rocketRoubles.getOperations(), arrayList, Float.valueOf(rocketRoubles.getTotal()));
            }
        }
    }
}
