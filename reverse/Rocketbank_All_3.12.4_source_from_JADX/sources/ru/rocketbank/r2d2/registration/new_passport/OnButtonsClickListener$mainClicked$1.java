package ru.rocketbank.r2d2.registration.new_passport;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: OnButtonsClickListener.kt */
final class OnButtonsClickListener$mainClicked$1 extends FunctionReference implements Function0<Unit> {
    OnButtonsClickListener$mainClicked$1(OnButtonsClickListener onButtonsClickListener) {
        super(0, onButtonsClickListener);
    }

    public final String getName() {
        return "onMainButtonClicked";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(OnButtonsClickListener.class);
    }

    public final String getSignature() {
        return "onMainButtonClicked()V";
    }

    public final void invoke() {
        ((OnButtonsClickListener) this.receiver).onMainButtonClicked();
    }
}
