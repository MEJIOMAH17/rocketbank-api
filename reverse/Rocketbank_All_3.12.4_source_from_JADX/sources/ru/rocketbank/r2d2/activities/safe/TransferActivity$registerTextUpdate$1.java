package ru.rocketbank.r2d2.activities.safe;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import ru.rocketbank.core.network.model.MoveMoneyBody;
import ru.rocketbank.core.network.model.RefillCardResponse;
import ru.rocketbank.r2d2.fragments.transfers.SafeAndCardTransferPresenter;
import rx.functions.Action1;

/* compiled from: TransferActivity.kt */
final class TransferActivity$registerTextUpdate$1<T> implements Action1<MoveMoneyBody> {
    final /* synthetic */ TransferActivity this$0;

    /* compiled from: TransferActivity.kt */
    /* renamed from: ru.rocketbank.r2d2.activities.safe.TransferActivity$registerTextUpdate$1$1 */
    static final class C14941 extends FunctionReference implements Function2<TransferActivity, RefillCardResponse, Unit> {
        public static final C14941 INSTANCE = new C14941();

        C14941() {
            super(2);
        }

        public final String getName() {
            return "onDetailMoneyResult";
        }

        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass$4641416c(TransferActivity.class);
        }

        public final String getSignature() {
            return "onDetailMoneyResult(Lru/rocketbank/core/network/model/RefillCardResponse;)V";
        }

        public final void invoke(TransferActivity transferActivity, RefillCardResponse refillCardResponse) {
            Intrinsics.checkParameterIsNotNull(transferActivity, "p1");
            Intrinsics.checkParameterIsNotNull(refillCardResponse, "p2");
            transferActivity.onDetailMoneyResult(refillCardResponse);
        }
    }

    /* compiled from: TransferActivity.kt */
    /* renamed from: ru.rocketbank.r2d2.activities.safe.TransferActivity$registerTextUpdate$1$2 */
    static final class C14952 extends FunctionReference implements Function2<TransferActivity, Throwable, Unit> {
        public static final C14952 INSTANCE = new C14952();

        C14952() {
            super(2);
        }

        public final String getName() {
            return "onDetailMoneyError";
        }

        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass$4641416c(TransferActivity.class);
        }

        public final String getSignature() {
            return "onDetailMoneyError(Ljava/lang/Throwable;)V";
        }

        public final void invoke(TransferActivity transferActivity, Throwable th) {
            Intrinsics.checkParameterIsNotNull(transferActivity, "p1");
            Intrinsics.checkParameterIsNotNull(th, "p2");
            transferActivity.onDetailMoneyError(th);
        }
    }

    TransferActivity$registerTextUpdate$1(TransferActivity transferActivity) {
        this.this$0 = transferActivity;
    }

    public final void call(MoveMoneyBody moveMoneyBody) {
        SafeAndCardTransferPresenter safeAndCardTransferPresenter = (SafeAndCardTransferPresenter) this.this$0.getPresenter();
        Intrinsics.checkExpressionValueIsNotNull(moveMoneyBody, "it");
        safeAndCardTransferPresenter.sendMoneyDescription(moveMoneyBody, C14941.INSTANCE, C14952.INSTANCE);
    }
}
