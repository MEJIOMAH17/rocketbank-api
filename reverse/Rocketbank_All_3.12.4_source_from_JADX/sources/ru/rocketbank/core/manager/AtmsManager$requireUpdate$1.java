package ru.rocketbank.core.manager;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.AtmsCashinResponse;
import rx.functions.Func1;

/* compiled from: AtmsManager.kt */
final class AtmsManager$requireUpdate$1<T, R> implements Func1<T, R> {
    final /* synthetic */ long $atmsTime;
    final /* synthetic */ AtmsManager this$0;

    AtmsManager$requireUpdate$1(AtmsManager atmsManager, long j) {
        this.this$0 = atmsManager;
        this.$atmsTime = j;
    }

    private long call(AtmsCashinResponse atmsCashinResponse) {
        try {
            AtmsManager atmsManager = this.this$0;
            List list = atmsCashinResponse.atms;
            Intrinsics.checkExpressionValueIsNotNull(list, "response.atms");
            atmsManager.updateMap(list);
            return atmsCashinResponse.lastUpdate;
        } catch (AtmsCashinResponse atmsCashinResponse2) {
            AnalyticsManager.logException(atmsCashinResponse2);
            return this.$atmsTime;
        }
    }
}
