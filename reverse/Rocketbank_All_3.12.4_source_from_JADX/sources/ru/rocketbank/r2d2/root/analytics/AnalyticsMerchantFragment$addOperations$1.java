package ru.rocketbank.r2d2.root.analytics;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity;
import ru.rocketbank.r2d2.root.operation.AbstractDetailOperationActivity.Companion;

/* compiled from: AnalyticsMerchantFragment.kt */
final class AnalyticsMerchantFragment$addOperations$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Operation $operation;
    final /* synthetic */ AnalyticsMerchantFragment this$0;

    AnalyticsMerchantFragment$addOperations$1(AnalyticsMerchantFragment analyticsMerchantFragment, Operation operation) {
        this.this$0 = analyticsMerchantFragment;
        this.$operation = operation;
        super(0);
    }

    public final void invoke() {
        Companion companion = AbstractDetailOperationActivity.Companion;
        Context context = this.this$0.getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        companion.start(context, this.$operation);
    }
}
