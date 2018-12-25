package ru.rocketbank.r2d2.data.binding.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: FeedTransferToSafeListener.kt */
final class FeedTransferToSafeListener$confirmClicked$1 extends FunctionReference implements Function0<Unit> {
    FeedTransferToSafeListener$confirmClicked$1(FeedTransferToSafeListener feedTransferToSafeListener) {
        super(0, feedTransferToSafeListener);
    }

    public final String getName() {
        return "onConfirmClicked";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(FeedTransferToSafeListener.class);
    }

    public final String getSignature() {
        return "onConfirmClicked()V";
    }

    public final void invoke() {
        ((FeedTransferToSafeListener) this.receiver).onConfirmClicked();
    }
}
