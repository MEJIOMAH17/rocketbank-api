package ru.rocketbank.r2d2.charges;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.charge.ChargeModel;

/* compiled from: ChargesListActivity.kt */
final class ChargesListActivity$onActivityResult$1 extends Lambda implements Function1<ChargeModel, Boolean> {
    final /* synthetic */ ChargeModel $deletedItem;

    ChargesListActivity$onActivityResult$1(ChargeModel chargeModel) {
        this.$deletedItem = chargeModel;
        super(1);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean invoke(ru.rocketbank.core.model.charge.ChargeModel r2) {
        /*
        r1 = this;
        r0 = "it";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0);
        r2 = r2.getId();
        r0 = r1.$deletedItem;
        if (r0 == 0) goto L_0x0013;
    L_0x000d:
        r0 = r0.getId();
        if (r0 != 0) goto L_0x0018;
    L_0x0013:
        r0 = -1;
        r0 = java.lang.Integer.valueOf(r0);
    L_0x0018:
        r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0);
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.charges.ChargesListActivity$onActivityResult$1.invoke(ru.rocketbank.core.model.charge.ChargeModel):boolean");
    }
}
