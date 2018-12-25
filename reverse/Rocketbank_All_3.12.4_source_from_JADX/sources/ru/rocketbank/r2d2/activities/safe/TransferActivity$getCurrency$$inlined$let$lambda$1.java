package ru.rocketbank.r2d2.activities.safe;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.DepositModel;

/* compiled from: TransferActivity.kt */
final class TransferActivity$getCurrency$$inlined$let$lambda$1 extends Lambda implements Function1<DepositModel, Boolean> {
    final /* synthetic */ String $token$inlined;

    TransferActivity$getCurrency$$inlined$let$lambda$1(String str) {
        this.$token$inlined = str;
        super(1);
    }

    public final boolean invoke(DepositModel depositModel) {
        return Intrinsics.areEqual(String.valueOf(depositModel.getId()), this.$token$inlined);
    }
}
