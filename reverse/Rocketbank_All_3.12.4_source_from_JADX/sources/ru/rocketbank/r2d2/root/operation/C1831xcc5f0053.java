package ru.rocketbank.r2d2.root.operation;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.r2d2.fragments.rocketrouble.RocketRubleInfoActivity;
import ru.rocketbank.r2d2.root.operation.data.OperationViewInputData;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: DetailRocketrubleOperationActivity.kt */
/* renamed from: ru.rocketbank.r2d2.root.operation.DetailRocketrubleOperationActivity$fillFullAdapter$$inlined$let$lambda$2 */
final class C1831xcc5f0053 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ Operation $operation$inlined;
    final /* synthetic */ OperationViewInputData $viewInputData$inlined;
    final /* synthetic */ DetailRocketrubleOperationActivity this$0;

    C1831xcc5f0053(DetailRocketrubleOperationActivity detailRocketrubleOperationActivity, Operation operation, OperationViewInputData operationViewInputData) {
        this.this$0 = detailRocketrubleOperationActivity;
        this.$operation$inlined = operation;
        this.$viewInputData$inlined = operationViewInputData;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        RocketRubleInfoActivity.Companion.startActivity(this.this$0);
    }
}
