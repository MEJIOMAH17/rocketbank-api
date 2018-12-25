package ru.rocketbank.r2d2.root.operation;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.r2d2.fragments.rocketrouble.RocketRubleInfoActivity;
import ru.rocketbank.r2d2.root.operation.data.OperationViewInputData;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: DetailRocketrubleOperationActivity.kt */
/* renamed from: ru.rocketbank.r2d2.root.operation.DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$1 */
final class C1830xcc5f0052 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ OperationAdapter $adapter$inlined;
    final /* synthetic */ Operation $operation$inlined;
    final /* synthetic */ OperationViewInputData $viewInputData$inlined;
    final /* synthetic */ DetailRocketrubleOperationActivity this$0;

    C1830xcc5f0052(OperationAdapter operationAdapter, DetailRocketrubleOperationActivity detailRocketrubleOperationActivity, Operation operation, OperationViewInputData operationViewInputData) {
        this.$adapter$inlined = operationAdapter;
        this.this$0 = detailRocketrubleOperationActivity;
        this.$operation$inlined = operation;
        this.$viewInputData$inlined = operationViewInputData;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        RocketRubleInfoActivity.Companion.startActivity(this.this$0);
    }
}
