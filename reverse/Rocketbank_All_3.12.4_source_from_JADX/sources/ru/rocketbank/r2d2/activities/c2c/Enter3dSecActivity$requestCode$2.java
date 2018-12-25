package ru.rocketbank.r2d2.activities.c2c;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: Enter3dSecActivity.kt */
final class Enter3dSecActivity$requestCode$2 extends FunctionReference implements Function2<Enter3dSecActivity, Throwable, Unit> {
    public static final Enter3dSecActivity$requestCode$2 INSTANCE = new Enter3dSecActivity$requestCode$2();

    Enter3dSecActivity$requestCode$2() {
        super(2);
    }

    public final String getName() {
        return "onError";
    }

    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass$4641416c(Enter3dSecActivity.class);
    }

    public final String getSignature() {
        return "onError(Ljava/lang/Throwable;)V";
    }

    public final void invoke(Enter3dSecActivity enter3dSecActivity, Throwable th) {
        Intrinsics.checkParameterIsNotNull(enter3dSecActivity, "p1");
        enter3dSecActivity.onError(th);
    }
}
